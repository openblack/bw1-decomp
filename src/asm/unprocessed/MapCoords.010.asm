.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl ?GetNearestTown@MapCoords@@QBEPAVTown@@M@Z
.globl _jmp_addr_0x00602160
.globl _jmp_addr_0x00602200
.globl _jmp_addr_0x006022c0
.globl _jmp_addr_0x00602460
.globl _jmp_addr_0x006024d0
.globl ?ConvertToText@MapCoords@@QAEPADPAD@Z
.globl _jmp_addr_0x00602a80
.globl _jmp_addr_0x00602fc0
.globl _jmp_addr_0x00602ff0
.globl _jmp_addr_0x00603030
.globl _jmp_addr_0x00603070
.globl ??0MapCoords@@QAE@ABULHPoint@@@Z
.globl ??0MapCoords@@QAE@JJM@Z
.globl ??0MapCoords@@QAE@PBD@Z
.globl _jmp_addr_0x00603260
.globl ?Set@MapCoords@@QAEXPBD@Z
.globl _jmp_addr_0x00603320
.globl ?Set@MapCoords@@QAEPAU1@ABULHPoint@@@Z
.globl _jmp_addr_0x00603390
.globl _jmp_addr_0x006033b0
.globl _jmp_addr_0x006033f0
.globl _jmp_addr_0x00603420
.globl ?ToMap@MapCoords@@QBEPAUMapCell@@XZ
.globl ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ
.globl ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ
.globl ?GetFirstIterator@MapCoords@@QBE?AUMapCellIterator@@XZ
.globl _jmp_addr_0x00603500
.globl ?IsWater@MapCoords@@QBEIXZ
.globl _jmp_addr_0x00603620
.globl _jmp_addr_0x006036a0
.globl _jmp_addr_0x00603720
.globl _jmp_addr_0x00603790
.globl _jmp_addr_0x00603830
.globl _jmp_addr_0x00603840
.globl _jmp_addr_0x00603860
.globl _jmp_addr_0x006038b0
.globl ?IsSuitableForFixed@MapCoords@@QAEXW4MESH_LIST@@MM@Z
.globl ?IsSuitableForFixed@MapCoords@@QBEXPAVGame3DObject@@@Z
.globl _jmp_addr_0x006041c0
.globl _jmp_addr_0x00604250
.globl ?InBounds@MapCoords@@QBEIXZ
.globl _jmp_addr_0x006042ea
.globl _jmp_addr_0x006042f0
.globl _jmp_addr_0x00604370
.globl ?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z
.globl _jmp_addr_0x006045f0
.globl _jmp_addr_0x00604870
.globl _jmp_addr_0x00604af0
.globl _jmp_addr_0x00604c30
.globl _jmp_addr_0x00604f40
.globl _jmp_addr_0x00604f90
.globl ?CollideCollideWithFixe@MapCoords@@QBEHXZ
.globl _jmp_addr_0x00605050
.globl _jmp_addr_0x006050d0
.globl _jmp_addr_0x00605250
.globl ?IsCloseToEqual@MapCoords@@QBEIABU1@M@Z
.globl _jmp_addr_0x00605400
.globl ??YMapCoords@@QAEXABU0@@Z
.globl ??YMapCoords@@QAEXABUJustMapXZ@@@Z
.globl _jmp_addr_0x00605490
.globl _jmp_addr_0x006054a0
.globl ??HMapCoords@@QBE?AU0@ABU0@@Z
.globl _jmp_addr_0x006055c0
.globl ??8MapCoords@@QBEIABU0@@Z
.globl ??9MapCoords@@QBEIABU0@@Z
.globl _jmp_addr_0x006057b0
.globl _jmp_addr_0x00605870
.globl _jmp_addr_0x006059a0
.globl ?GetLHPoint@MapCoords@@QBE?AULHPoint@@XZ
.globl _jmp_addr_0x00605c90
.globl ?GetTemperature@MapCoords@@QBEMXZ
.globl ?GetMetresDistance@MapCoords@@QBEMABU1@@Z
.globl ?GetAngle@MapCoords@@QBEMABU1@@Z
.globl ?GetMetresDistanceSq@MapCoords@@QBEMABU1@@Z

?GetNearestTown@MapCoords@@QBEPAVTown@@M@Z:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006020e0    8b442404
                         push               ebx                                           // 0x006020e4    53
                         push               ebp                                           // 0x006020e5    55
                         push               edi                                           // 0x006020e6    57
                         mov.s              ebp, ecx                                      // 0x006020e7    8be9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006020e9    8b0d5c19d000
                         xor.s              ebx, ebx                                      // 0x006020ef    33db
                         push               ebx                                           // 0x006020f1    53
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006020f2    89442414
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x006020f6    e885e8f4ff
                         mov.s              edi, eax                                      // 0x006020fb    8bf8
                         test               edi, edi                                      // 0x006020fd    85ff
                         {disp8} je         .Lbl_addr_0x00602151                          // 0x006020ff    7450
                         push               esi                                           // 0x00602101    56
.Lbl_addr_0x00602102:    {disp32} mov       esi, dword ptr [edi + 0x00000a50]             // 0x00602102    8bb7500a0000
                         test               esi, esi                                      // 0x00602108    85f6
                         {disp8} je         .Lbl_addr_0x00602136                          // 0x0060210a    742a
.Lbl_addr_0x0060210c:    {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0060210c    8d4e14
                         push               ecx                                           // 0x0060210f    51
                         mov.s              ecx, ebp                                      // 0x00602110    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00602112    e8b93b0000
                         {disp8} fcom       dword ptr [esp + 0x14]                        // 0x00602117    d8542414
                         fnstsw             ax                                            // 0x0060211b    dfe0
                         test               ah, 0x01                                      // 0x0060211d    f6c401
                         {disp8} je         .Lbl_addr_0x0060212a                          // 0x00602120    7408
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00602122    d95c2414
                         mov.s              ebx, esi                                      // 0x00602126    8bde
                         {disp8} jmp        .Lbl_addr_0x0060212c                          // 0x00602128    eb02
.Lbl_addr_0x0060212a:    fstp               st(0)                                         // 0x0060212a    ddd8
.Lbl_addr_0x0060212c:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x0060212c    8bb65c070000
                         test               esi, esi                                      // 0x00602132    85f6
                         {disp8} jne        .Lbl_addr_0x0060210c                          // 0x00602134    75d6
.Lbl_addr_0x00602136:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00602136    8b0d5c19d000
                         push               edi                                           // 0x0060213c    57
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x0060213d    e83ee8f4ff
                         mov.s              edi, eax                                      // 0x00602142    8bf8
                         test               edi, edi                                      // 0x00602144    85ff
                         {disp8} jne        .Lbl_addr_0x00602102                          // 0x00602146    75ba
                         pop                esi                                           // 0x00602148    5e
                         pop                edi                                           // 0x00602149    5f
                         pop                ebp                                           // 0x0060214a    5d
                         mov.s              eax, ebx                                      // 0x0060214b    8bc3
                         pop                ebx                                           // 0x0060214d    5b
                         ret                0x0004                                        // 0x0060214e    c20400
.Lbl_addr_0x00602151:    pop                edi                                           // 0x00602151    5f
                         pop                ebp                                           // 0x00602152    5d
                         mov.s              eax, ebx                                      // 0x00602153    8bc3
                         pop                ebx                                           // 0x00602155    5b
                         ret                0x0004                                        // 0x00602156    c20400
                         nop                                                              // 0x00602159    90
                         nop                                                              // 0x0060215a    90
                         nop                                                              // 0x0060215b    90
                         nop                                                              // 0x0060215c    90
                         nop                                                              // 0x0060215d    90
                         nop                                                              // 0x0060215e    90
                         nop                                                              // 0x0060215f    90
_jmp_addr_0x00602160:    push               ecx                                           // 0x00602160    51
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00602161    8b442408
                         push               ebx                                           // 0x00602165    53
                         push               ebp                                           // 0x00602166    55
                         push               edi                                           // 0x00602167    57
                         mov.s              ebp, ecx                                      // 0x00602168    8be9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0060216a    8b0d5c19d000
                         xor.s              ebx, ebx                                      // 0x00602170    33db
                         push               ebx                                           // 0x00602172    53
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00602173    89442410
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00602177    e804e8f4ff
                         mov.s              edi, eax                                      // 0x0060217c    8bf8
                         test               edi, edi                                      // 0x0060217e    85ff
                         {disp8} je         .Lbl_addr_0x006021ec                          // 0x00602180    746a
                         push               esi                                           // 0x00602182    56
.Lbl_addr_0x00602183:    {disp32} mov       esi, dword ptr [edi + 0x00000a50]             // 0x00602183    8bb7500a0000
                         test               esi, esi                                      // 0x00602189    85f6
                         {disp8} je         .Lbl_addr_0x006021d0                          // 0x0060218b    7443
.Lbl_addr_0x0060218d:    {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0060218d    8d4e14
                         push               ecx                                           // 0x00602190    51
                         mov.s              ecx, ebp                                      // 0x00602191    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00602193    e8383b0000
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00602198    d9542418
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0060219c    d85c2410
                         fnstsw             ax                                            // 0x006021a0    dfe0
                         test               ah, 0x01                                      // 0x006021a2    f6c401
                         {disp8} je         .Lbl_addr_0x006021c6                          // 0x006021a5    741f
                         {disp32} mov       eax, dword ptr [esi + 0x000009a4]             // 0x006021a7    8b86a4090000
                         test               eax, eax                                      // 0x006021ad    85c0
                         {disp8} jne        .Lbl_addr_0x006021bc                          // 0x006021af    750b
                         mov.s              ecx, esi                                      // 0x006021b1    8bce
                         call               _jmp_addr_0x00741020                          // 0x006021b3    e868ee1300
                         test               eax, eax                                      // 0x006021b8    85c0
                         {disp8} je         .Lbl_addr_0x006021c6                          // 0x006021ba    740a
.Lbl_addr_0x006021bc:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006021bc    8b542418
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x006021c0    89542410
                         mov.s              ebx, esi                                      // 0x006021c4    8bde
.Lbl_addr_0x006021c6:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x006021c6    8bb65c070000
                         test               esi, esi                                      // 0x006021cc    85f6
                         {disp8} jne        .Lbl_addr_0x0060218d                          // 0x006021ce    75bd
.Lbl_addr_0x006021d0:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006021d0    8b0d5c19d000
                         push               edi                                           // 0x006021d6    57
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x006021d7    e8a4e7f4ff
                         mov.s              edi, eax                                      // 0x006021dc    8bf8
                         test               edi, edi                                      // 0x006021de    85ff
                         {disp8} jne        .Lbl_addr_0x00602183                          // 0x006021e0    75a1
                         pop                esi                                           // 0x006021e2    5e
                         pop                edi                                           // 0x006021e3    5f
                         pop                ebp                                           // 0x006021e4    5d
                         mov.s              eax, ebx                                      // 0x006021e5    8bc3
                         pop                ebx                                           // 0x006021e7    5b
                         pop                ecx                                           // 0x006021e8    59
                         ret                0x0004                                        // 0x006021e9    c20400
.Lbl_addr_0x006021ec:    pop                edi                                           // 0x006021ec    5f
                         pop                ebp                                           // 0x006021ed    5d
                         mov.s              eax, ebx                                      // 0x006021ee    8bc3
                         pop                ebx                                           // 0x006021f0    5b
                         pop                ecx                                           // 0x006021f1    59
                         ret                0x0004                                        // 0x006021f2    c20400
                         nop                                                              // 0x006021f5    90
                         nop                                                              // 0x006021f6    90
                         nop                                                              // 0x006021f7    90
                         nop                                                              // 0x006021f8    90
                         nop                                                              // 0x006021f9    90
                         nop                                                              // 0x006021fa    90
                         nop                                                              // 0x006021fb    90
                         nop                                                              // 0x006021fc    90
                         nop                                                              // 0x006021fd    90
                         nop                                                              // 0x006021fe    90
                         nop                                                              // 0x006021ff    90
_jmp_addr_0x00602200:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00602200    8b442404
                         push               ebx                                           // 0x00602204    53
                         push               ebp                                           // 0x00602205    55
                         push               esi                                           // 0x00602206    56
                         mov.s              ebp, ecx                                      // 0x00602207    8be9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00602209    8b0d5c19d000
                         xor.s              ebx, ebx                                      // 0x0060220f    33db
                         push               ebx                                           // 0x00602211    53
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00602212    89442414
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00602216    e865e7f4ff
                         mov.s              esi, eax                                      // 0x0060221b    8bf0
                         test               esi, esi                                      // 0x0060221d    85f6
                         {disp8} je         .Lbl_addr_0x00602267                          // 0x0060221f    7446
                         push               edi                                           // 0x00602221    57
.Lbl_addr_0x00602222:    {disp32} mov       edi, dword ptr [esi + 0x00000a48]             // 0x00602222    8bbe480a0000
                         test               edi, edi                                      // 0x00602228    85ff
                         {disp8} je         .Lbl_addr_0x0060224c                          // 0x0060222a    7420
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x0060222c    8d4f14
                         push               ecx                                           // 0x0060222f    51
                         mov.s              ecx, ebp                                      // 0x00602230    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00602232    e8993a0000
                         {disp8} fcom       dword ptr [esp + 0x14]                        // 0x00602237    d8542414
                         fnstsw             ax                                            // 0x0060223b    dfe0
                         test               ah, 0x01                                      // 0x0060223d    f6c401
                         {disp8} je         .Lbl_addr_0x0060224a                          // 0x00602240    7408
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00602242    d95c2414
                         mov.s              ebx, edi                                      // 0x00602246    8bdf
                         {disp8} jmp        .Lbl_addr_0x0060224c                          // 0x00602248    eb02
.Lbl_addr_0x0060224a:    fstp               st(0)                                         // 0x0060224a    ddd8
.Lbl_addr_0x0060224c:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0060224c    8b0d5c19d000
                         push               esi                                           // 0x00602252    56
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00602253    e828e7f4ff
                         mov.s              esi, eax                                      // 0x00602258    8bf0
                         test               esi, esi                                      // 0x0060225a    85f6
                         {disp8} jne        .Lbl_addr_0x00602222                          // 0x0060225c    75c4
                         pop                edi                                           // 0x0060225e    5f
                         pop                esi                                           // 0x0060225f    5e
                         pop                ebp                                           // 0x00602260    5d
                         mov.s              eax, ebx                                      // 0x00602261    8bc3
                         pop                ebx                                           // 0x00602263    5b
                         ret                0x0004                                        // 0x00602264    c20400
.Lbl_addr_0x00602267:    pop                esi                                           // 0x00602267    5e
                         pop                ebp                                           // 0x00602268    5d
                         mov.s              eax, ebx                                      // 0x00602269    8bc3
                         pop                ebx                                           // 0x0060226b    5b
                         ret                0x0004                                        // 0x0060226c    c20400
                         nop                                                              // 0x0060226f    90
                         push               esi                                           // 0x00602270    56
                         mov.s              esi, ecx                                      // 0x00602271    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00602273    e8b8110000
                         test               eax, eax                                      // 0x00602278    85c0
                         {disp8} je         .Lbl_addr_0x006022ad                          // 0x0060227a    7431
                         push               0x0                                           // 0x0060227c    6a00
                         push               0x8                                           // 0x0060227e    6a08
                         mov.s              ecx, esi                                      // 0x00602280    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00602282    e8a9110000
                         mov.s              ecx, eax                                      // 0x00602287    8bc8
                         call               ?FindTypeOnMap@MapCell@@QAEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x00602289    e852f3ffff
                         test               eax, eax                                      // 0x0060228e    85c0
                         {disp8} je         .Lbl_addr_0x006022ad                          // 0x00602290    741b
                         push               0x0                                           // 0x00602292    6a00
                         push               0x009ce8c8                                    // 0x00602294    68c8e89c00
                         push               0x009c7f50                                    // 0x00602299    68507f9c00
                         push               0x0                                           // 0x0060229e    6a00
                         push               eax                                           // 0x006022a0    50
                         call               ___RTDynamicCast                              // 0x006022a1    e873371c00
                         add                esp, 0x14                                     // 0x006022a6    83c414
                         test               eax, eax                                      // 0x006022a9    85c0
                         {disp8} jne        .Lbl_addr_0x006022af                          // 0x006022ab    7502
.Lbl_addr_0x006022ad:    xor.s              eax, eax                                      // 0x006022ad    33c0
.Lbl_addr_0x006022af:    pop                esi                                           // 0x006022af    5e
                         ret                                                              // 0x006022b0    c3
                         nop                                                              // 0x006022b1    90
                         nop                                                              // 0x006022b2    90
                         nop                                                              // 0x006022b3    90
                         nop                                                              // 0x006022b4    90
                         nop                                                              // 0x006022b5    90
                         nop                                                              // 0x006022b6    90
                         nop                                                              // 0x006022b7    90
                         nop                                                              // 0x006022b8    90
                         nop                                                              // 0x006022b9    90
                         nop                                                              // 0x006022ba    90
                         nop                                                              // 0x006022bb    90
                         nop                                                              // 0x006022bc    90
                         nop                                                              // 0x006022bd    90
                         nop                                                              // 0x006022be    90
                         nop                                                              // 0x006022bf    90
_jmp_addr_0x006022c0:    sub                esp, 0x1c                                     // 0x006022c0    83ec1c
                         push               ebx                                           // 0x006022c3    53
                         push               ebp                                           // 0x006022c4    55
                         push               esi                                           // 0x006022c5    56
                         push               edi                                           // 0x006022c6    57
                         {disp8} mov        edi, dword ptr [esp + 0x30]                   // 0x006022c7    8b7c2430
                         mov                eax, dword ptr [edi]                          // 0x006022cb    8b07
                         mov.s              esi, ecx                                      // 0x006022cd    8bf1
                         mov.s              ecx, edi                                      // 0x006022cf    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x006022d1    c744241000000000
                         call               dword ptr [eax + 0x64]                        // 0x006022d9    ff5064
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006022dc    d95c2414
                         xor.s              ecx, ecx                                      // 0x006022e0    33c9
                         {disp8} mov        cx, word ptr [edi + 0x14]                     // 0x006022e2    668b4f14
                         xor.s              edx, edx                                      // 0x006022e6    33d2
                         {disp8} mov        dx, word ptr [edi + 0x18]                     // 0x006022e8    668b5718
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x006022ec    894c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x006022f0    db44241c
                         mov.s              ecx, esi                                      // 0x006022f4    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x006022f6    8954241c
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006022fa    d80d1cc48a00
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x00602300    d80d50009300
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00602306    d95c2420
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x0060230a    db44241c
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x0060230e    d80d1cc48a00
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x00602314    d80d50009300
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0060231a    d95c2424
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x0060231e    e89d1f0000
                         test               eax, eax                                      // 0x00602323    85c0
                         {disp32} je        .Lbl_addr_0x0060244d                          // 0x00602325    0f8422010000
                         mov.s              ecx, esi                                      // 0x0060232b    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x0060232d    e8fe100000
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00602332    8b7004
                         test               esi, esi                                      // 0x00602335    85f6
                         mov                ecx, 0x00000001                               // 0x00602337    b901000000
                         {disp8} jne        .Lbl_addr_0x00602342                          // 0x0060233c    7504
                         mov                esi, dword ptr [eax]                          // 0x0060233e    8b30
                         xor.s              ecx, ecx                                      // 0x00602340    33c9
.Lbl_addr_0x00602342:    test               esi, esi                                      // 0x00602342    85f6
                         mov.s              ebp, ecx                                      // 0x00602344    8be9
                         mov.s              edi, eax                                      // 0x00602346    8bf8
                         {disp32} je        .Lbl_addr_0x0060244d                          // 0x00602348    0f84ff000000
                         {disp8} mov        bl, byte ptr [esp + 0x34]                     // 0x0060234e    8a5c2434
.Lbl_addr_0x00602352:    cmp                dword ptr [esp + 0x30], esi                   // 0x00602352    39742430
                         {disp32} je        .Lbl_addr_0x00602428                          // 0x00602356    0f84cc000000
                         test               bl, bl                                        // 0x0060235c    84db
                         {disp8} je         .Lbl_addr_0x00602384                          // 0x0060235e    7424
                         mov                eax, dword ptr [esi]                          // 0x00602360    8b06
                         mov.s              ecx, esi                                      // 0x00602362    8bce
                         call               dword ptr [eax + 0x3c4]                       // 0x00602364    ff90c4030000
                         test               eax, eax                                      // 0x0060236a    85c0
                         {disp32} jne       .Lbl_addr_0x00602428                          // 0x0060236c    0f85b6000000
                         mov                edx, dword ptr [esi]                          // 0x00602372    8b16
                         mov.s              ecx, esi                                      // 0x00602374    8bce
                         call               dword ptr [edx + 0x174]                       // 0x00602376    ff9274010000
                         test               eax, eax                                      // 0x0060237c    85c0
                         {disp32} jne       .Lbl_addr_0x00602428                          // 0x0060237e    0f85a4000000
.Lbl_addr_0x00602384:    mov                eax, dword ptr [esi]                          // 0x00602384    8b06
                         mov.s              ecx, esi                                      // 0x00602386    8bce
                         call               dword ptr [eax + 0x630]                       // 0x00602388    ff9030060000
                         {disp8} fst        dword ptr [esp + 0x1c]                        // 0x0060238e    d954241c
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00602392    d85c2410
                         fnstsw             ax                                            // 0x00602396    dfe0
                         test               ah, 0x41                                      // 0x00602398    f6c441
                         {disp32} jne       .Lbl_addr_0x00602428                          // 0x0060239b    0f8587000000
                         xor.s              ecx, ecx                                      // 0x006023a1    33c9
                         {disp8} mov        cx, word ptr [esi + 0x14]                     // 0x006023a3    668b4e14
                         mov                eax, dword ptr [esi]                          // 0x006023a7    8b06
                         xor.s              edx, edx                                      // 0x006023a9    33d2
                         {disp8} mov        dx, word ptr [esi + 0x18]                     // 0x006023ab    668b5618
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x006023af    894c2434
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x006023b3    db442434
                         mov.s              ecx, esi                                      // 0x006023b7    8bce
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x006023b9    89542434
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006023bd    d80d1cc48a00
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006023c3    d80d50009300
                         {disp8} fsubr      dword ptr [esp + 0x20]                        // 0x006023c9    d86c2420
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x006023cd    d95c2418
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x006023d1    db442434
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006023d5    d80d1cc48a00
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006023db    d80d50009300
                         {disp8} fsubr      dword ptr [esp + 0x24]                        // 0x006023e1    d86c2424
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x006023e5    d95c2434
                         call               dword ptr [eax + 0x64]                        // 0x006023e9    ff5064
                         mov                edx, dword ptr [esi]                          // 0x006023ec    8b16
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x006023ee    d95c2428
                         mov.s              ecx, esi                                      // 0x006023f2    8bce
                         call               dword ptr [edx + 0x64]                        // 0x006023f4    ff5264
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x006023f7    d84c2428
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x006023fb    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x006023ff    d84c2414
                         faddp              st(1), st                                     // 0x00602403    dec1
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00602405    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x00602409    d84c2434
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0060240d    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00602411    d84c2418
                         faddp              st(1), st                                     // 0x00602415    dec1
                         fcompp                                                           // 0x00602417    ded9
                         fnstsw             ax                                            // 0x00602419    dfe0
                         test               ah, 0x01                                      // 0x0060241b    f6c401
                         {disp8} je         .Lbl_addr_0x00602428                          // 0x0060241e    7408
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00602420    8b44241c
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00602424    89442410
.Lbl_addr_0x00602428:    mov                edx, dword ptr [esi]                          // 0x00602428    8b16
                         push               edi                                           // 0x0060242a    57
                         mov.s              ecx, esi                                      // 0x0060242b    8bce
                         call               dword ptr [edx + 0x53c]                       // 0x0060242d    ff923c050000
                         mov.s              esi, eax                                      // 0x00602433    8bf0
                         test               esi, esi                                      // 0x00602435    85f6
                         {disp32} jne       .Lbl_addr_0x00602352                          // 0x00602437    0f8515ffffff
                         test               ebp, ebp                                      // 0x0060243d    85ed
                         {disp8} je         .Lbl_addr_0x0060244d                          // 0x0060243f    740c
                         mov                esi, dword ptr [edi]                          // 0x00602441    8b37
                         xor.s              ebp, ebp                                      // 0x00602443    33ed
                         test               esi, esi                                      // 0x00602445    85f6
                         {disp32} jne       .Lbl_addr_0x00602352                          // 0x00602447    0f8505ffffff
.Lbl_addr_0x0060244d:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0060244d    d9442410
                         pop                edi                                           // 0x00602451    5f
                         pop                esi                                           // 0x00602452    5e
                         pop                ebp                                           // 0x00602453    5d
                         pop                ebx                                           // 0x00602454    5b
                         add                esp, 0x1c                                     // 0x00602455    83c41c
                         ret                0x0008                                        // 0x00602458    c20800
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x0060245b    e899f3dfff
_jmp_addr_0x00602460:    push               esi                                           // 0x00602460    56
                         mov.s              esi, ecx                                      // 0x00602461    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00602463    e8c80f0000
                         test               eax, eax                                      // 0x00602468    85c0
                         {disp8} je         .Lbl_addr_0x006024c4                          // 0x0060246a    7458
                         push               0x0                                           // 0x0060246c    6a00
                         push               0x8                                           // 0x0060246e    6a08
                         mov.s              ecx, esi                                      // 0x00602470    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00602472    e8b90f0000
                         mov.s              ecx, eax                                      // 0x00602477    8bc8
                         call               ?FindTypeOnMap@MapCell@@QAEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x00602479    e862f1ffff
                         mov.s              esi, eax                                      // 0x0060247e    8bf0
                         test               esi, esi                                      // 0x00602480    85f6
                         {disp8} je         .Lbl_addr_0x006024c4                          // 0x00602482    7440
                         push               0x0                                           // 0x00602484    6a00
                         push               0x009d96c0                                    // 0x00602486    68c0969d00
                         push               0x009c7f50                                    // 0x0060248b    68507f9c00
                         push               0x0                                           // 0x00602490    6a00
                         push               esi                                           // 0x00602492    56
                         call               ___RTDynamicCast                              // 0x00602493    e881351c00
                         add                esp, 0x14                                     // 0x00602498    83c414
                         test               eax, eax                                      // 0x0060249b    85c0
                         {disp8} jne        .Lbl_addr_0x006024c6                          // 0x0060249d    7527
                         push               eax                                           // 0x0060249f    50
                         push               0x00bf4178                                    // 0x006024a0    687841bf00
                         push               0x009c7f50                                    // 0x006024a5    68507f9c00
                         push               eax                                           // 0x006024aa    50
                         push               esi                                           // 0x006024ab    56
                         call               ___RTDynamicCast                              // 0x006024ac    e868351c00
                         add                esp, 0x14                                     // 0x006024b1    83c414
                         test               eax, eax                                      // 0x006024b4    85c0
                         {disp8} je         .Lbl_addr_0x006024c4                          // 0x006024b6    740c
                         mov                edx, dword ptr [eax]                          // 0x006024b8    8b10
                         mov.s              ecx, eax                                      // 0x006024ba    8bc8
                         call               dword ptr [edx + 0x30c]                       // 0x006024bc    ff920c030000
                         pop                esi                                           // 0x006024c2    5e
                         ret                                                              // 0x006024c3    c3
.Lbl_addr_0x006024c4:    xor.s              eax, eax                                      // 0x006024c4    33c0
.Lbl_addr_0x006024c6:    pop                esi                                           // 0x006024c6    5e
                         ret                                                              // 0x006024c7    c3
                         nop                                                              // 0x006024c8    90
                         nop                                                              // 0x006024c9    90
                         nop                                                              // 0x006024ca    90
                         nop                                                              // 0x006024cb    90
                         nop                                                              // 0x006024cc    90
                         nop                                                              // 0x006024cd    90
                         nop                                                              // 0x006024ce    90
                         nop                                                              // 0x006024cf    90
_jmp_addr_0x006024d0:    push               esi                                           // 0x006024d0    56
                         mov.s              esi, ecx                                      // 0x006024d1    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006024d3    e8580f0000
                         test               eax, eax                                      // 0x006024d8    85c0
                         {disp8} je         .Lbl_addr_0x006024ef                          // 0x006024da    7413
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006024dc    8b442408
                         push               eax                                           // 0x006024e0    50
                         mov.s              ecx, esi                                      // 0x006024e1    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006024e3    e8480f0000
                         mov.s              ecx, eax                                      // 0x006024e8    8bc8
                         call               _jmp_addr_0x00601880                          // 0x006024ea    e891f3ffff
.Lbl_addr_0x006024ef:    pop                esi                                           // 0x006024ef    5e
                         ret                0x0004                                        // 0x006024f0    c20400
                         nop                                                              // 0x006024f3    90
                         nop                                                              // 0x006024f4    90
                         nop                                                              // 0x006024f5    90
                         nop                                                              // 0x006024f6    90
                         nop                                                              // 0x006024f7    90
                         nop                                                              // 0x006024f8    90
                         nop                                                              // 0x006024f9    90
                         nop                                                              // 0x006024fa    90
                         nop                                                              // 0x006024fb    90
                         nop                                                              // 0x006024fc    90
                         nop                                                              // 0x006024fd    90
                         nop                                                              // 0x006024fe    90
                         nop                                                              // 0x006024ff    90
                         sub                esp, 0x1c                                     // 0x00602500    83ec1c
                         push               ebx                                           // 0x00602503    53
                         push               ebp                                           // 0x00602504    55
                         mov.s              ebp, ecx                                      // 0x00602505    8be9
                         mov.s              eax, ebp                                      // 0x00602507    8bc5
                         mov                ecx, dword ptr [eax]                          // 0x00602509    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0060250b    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0060250e    8b4008
                         push               esi                                           // 0x00602511    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x37232c]        // 0x00602512    8b352c83d300
                         xor.s              ebx, ebx                                      // 0x00602518    33db
                         cmp.s              esi, ebx                                      // 0x0060251a    3bf3
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0060251c    894c241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00602520    89542420
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00602524    89442424
                         {disp8} jne        .Lbl_addr_0x00602551                          // 0x00602528    7527
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0060252a    8b4c2438
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x0060252e    8b542434
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00602532    8b44242c
                         push               ecx                                           // 0x00602536    51
                         push               edx                                           // 0x00602537    52
                         push               eax                                           // 0x00602538    50
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00602539    8d4c2428
                         push               ebx                                           // 0x0060253d    53
                         push               ecx                                           // 0x0060253e    51
                         call               ?Create@Game3DObject@@SAPAV1@ABUMapCoords@@W4ObjectType@LH3DObject@@W4MESH_LIST@@MM@Z                          // 0x0060253f    e83c880300
                         add                esp, 0x14                                     // 0x00602544    83c414
                         {disp32} mov       dword ptr [data_bytes + 0x37232c], eax        // 0x00602547    a32c83d300
                         {disp32} jmp       .Lbl_addr_0x00602699                          // 0x0060254c    e948010000
.Lbl_addr_0x00602551:    {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00602551    8b542424
                         push               edi                                           // 0x00602555    57
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00602556    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0060255a    89542410
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x0060255e    e82d0b2000
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x00602563    d8442410
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00602567    d95c2418
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x0060256b    db442420
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060256f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00602575    d95c2414
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x00602579    db442424
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060257d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00602583    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00602587    d9442438
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x0060258b    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00602591    d944243c
                         fnstsw             ax                                            // 0x00602595    dfe0
                         {disp32} fcomp     dword ptr [__real@4@3fff8000000000000000]                   // 0x00602597    d81d90a38a00
                         test               ah, 0x40                                      // 0x0060259d    f6c440
                         fnstsw             ax                                            // 0x006025a0    dfe0
                         {disp32} jne       .Lbl_addr_0x00602630                          // 0x006025a2    0f8588000000
                         test               ah, 0x40                                      // 0x006025a8    f6c440
                         {disp8} jne        .Lbl_addr_0x00602603                          // 0x006025ab    7556
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x006025ad    8b44243c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x006025b1    d9442414
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x006025b5    8d4e14
                         {disp8} mov        dword ptr [ecx + 0x2c], ebx                   // 0x006025b8    89592c
                         {disp8} mov        dword ptr [ecx + 0x28], ebx                   // 0x006025bb    895928
                         {disp8} mov        dword ptr [ecx + 0x24], ebx                   // 0x006025be    895924
                         {disp8} mov        dword ptr [ecx + 0x1c], ebx                   // 0x006025c1    89591c
                         {disp8} mov        dword ptr [ecx + 0x18], ebx                   // 0x006025c4    895918
                         {disp8} mov        dword ptr [ecx + 0x14], ebx                   // 0x006025c7    895914
                         {disp8} mov        dword ptr [ecx + 0x0c], ebx                   // 0x006025ca    89590c
                         {disp8} mov        dword ptr [ecx + 0x08], ebx                   // 0x006025cd    895908
                         {disp8} mov        dword ptr [ecx + 0x04], ebx                   // 0x006025d0    895904
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x006025d3    894120
                         mov                dword ptr [ecx], eax                          // 0x006025d6    8901
                         mov.s              edx, eax                                      // 0x006025d8    8bd0
                         {disp8} mov        dword ptr [ecx + 0x10], edx                   // 0x006025da    895110
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x006025dd    d84124
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x006025e0    8b542438
                         push               edx                                           // 0x006025e4    52
                         {disp8} fstp       dword ptr [ecx + 0x24]                        // 0x006025e5    d95924
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x006025e8    d944241c
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x006025ec    d84128
                         {disp8} fstp       dword ptr [ecx + 0x28]                        // 0x006025ef    d95928
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x006025f2    d9442420
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x006025f6    d8412c
                         {disp8} fstp       dword ptr [ecx + 0x2c]                        // 0x006025f9    d9592c
                         call               _jmp_addr_0x005198f0                          // 0x006025fc    e8ef72f1ff
                         {disp8} jmp        .Lbl_addr_0x0060265d                          // 0x00602601    eb5a
.Lbl_addr_0x00602603:    {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00602603    8d7e14
                         mov.s              ecx, edi                                      // 0x00602606    8bcf
                         call               ?SetIdentityMatrix@LHMatrix@@QAEXXZ                 // 0x00602608    e8f30ee0ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0060260d    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00602611    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00602615    8b54241c
                         {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x00602619    894724
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060261c    8b442438
                         {disp8} mov        dword ptr [edi + 0x28], ecx                   // 0x00602620    894f28
                         push               eax                                           // 0x00602623    50
                         mov.s              ecx, edi                                      // 0x00602624    8bcf
                         {disp8} mov        dword ptr [edi + 0x2c], edx                   // 0x00602626    89572c
                         call               _jmp_addr_0x005198f0                          // 0x00602629    e8c272f1ff
                         {disp8} jmp        .Lbl_addr_0x0060265d                          // 0x0060262e    eb2d
.Lbl_addr_0x00602630:    test               ah, 0x40                                      // 0x00602630    f6c440
                         {disp8} jne        .Lbl_addr_0x00602651                          // 0x00602633    751c
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x00602635    8b4c243c
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00602639    8d7e14
                         push               ecx                                           // 0x0060263c    51
                         mov.s              ecx, edi                                      // 0x0060263d    8bcf
                         call               _jmp_addr_0x00519320                          // 0x0060263f    e8dc6cf1ff
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00602644    8d542414
                         mov.s              ecx, edi                                      // 0x00602648    8bcf
                         call               ?PostTranslation@LHMatrix@@QAEXABULHPoint@@@Z      // 0x0060264a    e8210fe0ff
                         {disp8} jmp        .Lbl_addr_0x0060265d                          // 0x0060264f    eb0c
.Lbl_addr_0x00602651:    {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00602651    8d542414
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00602655    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABULHPoint@@@Z     // 0x00602658    e8d30ee0ff
.Lbl_addr_0x0060265d:    {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060265d    8b442438
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00602661    8b54243c
                         {disp8} mov        dword ptr [esi + 0x48], eax                   // 0x00602665    894648
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00602668    8b442430
                         cmp.s              eax, ebx                                      // 0x0060266c    3bc3
                         {disp8} mov        dword ptr [esi + 0x44], edx                   // 0x0060266e    895644
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAUPack@1@A]        // 0x00602671    8b1534fee900
                         pop                edi                                           // 0x00602677    5f
                         {disp8} jl         .Lbl_addr_0x0060267e                          // 0x00602678    7c04
                         cmp                eax, dword ptr [edx]                          // 0x0060267a    3b02
                         {disp8} jl         .Lbl_addr_0x00602680                          // 0x0060267c    7c02
.Lbl_addr_0x0060267e:    xor.s              eax, eax                                      // 0x0060267e    33c0
.Lbl_addr_0x00602680:    {disp32} mov       ecx, dword ptr [data_bytes + 0x37232c]        // 0x00602680    8b0d2c83d300
                         mov                esi, dword ptr [ecx]                          // 0x00602686    8b31
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x00602688    8b548204
                         push               ebx                                           // 0x0060268c    53
                         push               ebx                                           // 0x0060268d    53
                         call               dword ptr [esi + 0xf4]                        // 0x0060268e    ff96f4000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x37232c]        // 0x00602694    a12c83d300
.Lbl_addr_0x00602699:    cmp.s              eax, ebx                                      // 0x00602699    3bc3
                         {disp8} je         .Lbl_addr_0x006026bb                          // 0x0060269b    741e
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x0060269d    8b4c2440
                         push               ecx                                           // 0x006026a1    51
                         push               eax                                           // 0x006026a2    50
                         mov.s              ecx, ebp                                      // 0x006026a3    8bcd
                         call               .Lbl_addr_0x006026d0                          // 0x006026a5    e826000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x37232c]        // 0x006026aa    8b0d2c83d300
                         mov                edx, dword ptr [ecx]                          // 0x006026b0    8b11
                         call               dword ptr [edx + 4]                           // 0x006026b2    ff5204
                         {disp32} mov       dword ptr [data_bytes + 0x37232c], ebx        // 0x006026b5    891d2c83d300
.Lbl_addr_0x006026bb:    pop                esi                                           // 0x006026bb    5e
                         pop                ebp                                           // 0x006026bc    5d
                         pop                ebx                                           // 0x006026bd    5b
                         add                esp, 0x1c                                     // 0x006026be    83c41c
                         ret                0x0018                                        // 0x006026c1    c21800
                         nop                                                              // 0x006026c4    90
                         nop                                                              // 0x006026c5    90
                         nop                                                              // 0x006026c6    90
                         nop                                                              // 0x006026c7    90
                         nop                                                              // 0x006026c8    90
                         nop                                                              // 0x006026c9    90
                         nop                                                              // 0x006026ca    90
                         nop                                                              // 0x006026cb    90
                         nop                                                              // 0x006026cc    90
                         nop                                                              // 0x006026cd    90
                         nop                                                              // 0x006026ce    90
                         nop                                                              // 0x006026cf    90
.Lbl_addr_0x006026d0:    sub                esp, 0x24                                     // 0x006026d0    83ec24
                         push               esi                                           // 0x006026d3    56
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x006026d4    8b74242c
                         push               esi                                           // 0x006026d8    56
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006026d9    8d4c2408
                         call               _jmp_addr_0x0046aad0                          // 0x006026dd    e8ee83e6ff
                         test               esi, esi                                      // 0x006026e2    85f6
                         {disp8} je         .Lbl_addr_0x0060270c                          // 0x006026e4    7426
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006026e6    8d4c2404
                         call               ?GetNext@NewCollideDescriptor@@QAEPAUMapCell@@XZ          // 0x006026ea    e89186e6ff
                         test               eax, eax                                      // 0x006026ef    85c0
                         {disp8} je         .Lbl_addr_0x0060270c                          // 0x006026f1    7419
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x006026f3    8b742430
.Lbl_addr_0x006026f7:    push               esi                                           // 0x006026f7    56
                         mov.s              ecx, eax                                      // 0x006026f8    8bc8
                         call               _jmp_addr_0x00601880                          // 0x006026fa    e881f1ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006026ff    8d4c2404
                         call               ?GetNext@NewCollideDescriptor@@QAEPAUMapCell@@XZ          // 0x00602703    e87886e6ff
                         test               eax, eax                                      // 0x00602708    85c0
                         {disp8} jne        .Lbl_addr_0x006026f7                          // 0x0060270a    75eb
.Lbl_addr_0x0060270c:    {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0060270c    8d4c2404
                         call               ??_DNewCollideDescriptor@@QAEXXZ              // 0x00602710    e8db83e6ff
                         pop                esi                                           // 0x00602715    5e
                         add                esp, 0x24                                     // 0x00602716    83c424
                         ret                0x0008                                        // 0x00602719    c20800
                         nop                                                              // 0x0060271c    90
                         nop                                                              // 0x0060271d    90
                         nop                                                              // 0x0060271e    90
                         nop                                                              // 0x0060271f    90
                         sub                esp, 0x14                                     // 0x00602720    83ec14
                         mov                eax, dword ptr [ecx]                          // 0x00602723    8b01
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00602725    8b5104
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00602728    89442408
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0060272c    8b4108
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0060272f    89442410
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00602733    8b442418
                         test               eax, eax                                      // 0x00602737    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00602739    8954240c
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000001            // 0x0060273d    c744240401000000
                         {disp8} mov        dword ptr [esp + 0x00], 0x00000001            // 0x00602745    c744240001000000
                         {disp8} je         .Lbl_addr_0x00602790                          // 0x0060274d    7441
                         push               esi                                           // 0x0060274f    56
                         push               edi                                           // 0x00602750    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x00602751    8b7c2424
                         mov.s              esi, eax                                      // 0x00602755    8bf0
.Lbl_addr_0x00602757:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00602757    8d4c2410
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x0060275b    e8601b0000
                         cmp                eax, 0x01                                     // 0x00602760    83f801
                         {disp8} jne        .Lbl_addr_0x0060276f                          // 0x00602763    750a
                         push               edi                                           // 0x00602765    57
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00602766    8d4c2414
                         call               _jmp_addr_0x006024d0                          // 0x0060276a    e861fdffff
.Lbl_addr_0x0060276f:    {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0060276f    8d4c2408
                         push               ecx                                           // 0x00602773    51
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00602774    8d542410
                         push               edx                                           // 0x00602778    52
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x00602779    e862b01400
                         add                esp, 0x08                                     // 0x0060277e    83c408
                         push               eax                                           // 0x00602781    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00602782    8d4c2414
                         call               ??YMapCoords@@QAEXABUJustMapXZ@@@Z            // 0x00602786    e8e52c0000
                         dec                esi                                           // 0x0060278b    4e
                         {disp8} jne        .Lbl_addr_0x00602757                          // 0x0060278c    75c9
                         pop                edi                                           // 0x0060278e    5f
                         pop                esi                                           // 0x0060278f    5e
.Lbl_addr_0x00602790:    add                esp, 0x14                                     // 0x00602790    83c414
                         ret                0x0008                                        // 0x00602793    c20800
                         nop                                                              // 0x00602796    90
                         nop                                                              // 0x00602797    90
                         nop                                                              // 0x00602798    90
                         nop                                                              // 0x00602799    90
                         nop                                                              // 0x0060279a    90
                         nop                                                              // 0x0060279b    90
                         nop                                                              // 0x0060279c    90
                         nop                                                              // 0x0060279d    90
                         nop                                                              // 0x0060279e    90
                         nop                                                              // 0x0060279f    90
                         sub                esp, 0x24                                     // 0x006027a0    83ec24
                         push               esi                                           // 0x006027a3    56
                         mov.s              esi, ecx                                      // 0x006027a4    8bf1
                         mov.s              eax, esi                                      // 0x006027a6    8bc6
                         mov                ecx, dword ptr [eax]                          // 0x006027a8    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x006027aa    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006027ad    8b4008
                         push               edi                                           // 0x006027b0    57
                         {disp8} mov        edi, dword ptr [esp + 0x34]                   // 0x006027b1    8b7c2434
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x006027b5    894c2420
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x006027b9    89542424
                         {disp8} lea        edx, dword ptr [edi + 0x0a]                   // 0x006027bd    8d570a
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x006027c0    8d4f14
                         imul               ecx, edx                                      // 0x006027c3    0fafca
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x006027c6    89442428
                         shl                ecx, 2                                        // 0x006027ca    c1e102
                         mov                eax, 0x51eb851f                               // 0x006027cd    b81f85eb51
                         mul                ecx                                           // 0x006027d2    f7e1
                         shr                edx, 5                                        // 0x006027d4    c1ea05
                         mov                eax, 0x00000001                               // 0x006027d7    b801000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006027dc    8944240c
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006027e0    89442408
                         {disp32} je        .Lbl_addr_0x00602874                          // 0x006027e4    0f848a000000
                         push               ebx                                           // 0x006027ea    53
                         push               ebp                                           // 0x006027eb    55
                         {disp8} mov        ebp, dword ptr [esp + 0x38]                   // 0x006027ec    8b6c2438
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x006027f0    8954243c
                         xor.s              ebx, ebx                                      // 0x006027f4    33db
.Lbl_addr_0x006027f6:    {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x006027f6    8d4c2428
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x006027fa    e8c11a0000
                         cmp                eax, 0x01                                     // 0x006027ff    83f801
                         {disp8} jne        .Lbl_addr_0x00602850                          // 0x00602802    754c
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00602804    8d442428
                         push               eax                                           // 0x00602808    50
                         mov.s              ecx, esi                                      // 0x00602809    8bce
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x0060280b    e8c0340000
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x00602810    896c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x00602814    895c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x00602818    df6c2418
                         fld                st(1)                                         // 0x0060281c    d9c1
                         fcompp                                                           // 0x0060281e    ded9
                         fnstsw             ax                                            // 0x00602820    dfe0
                         test               ah, 0x41                                      // 0x00602822    f6c441
                         {disp8} jne        .Lbl_addr_0x0060284e                          // 0x00602825    7527
                         {disp8} mov        dword ptr [esp + 0x20], edi                   // 0x00602827    897c2420
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x0060282b    895c2424
                         {disp8} fild       qword ptr [esp + 0x20]                        // 0x0060282f    df6c2420
                         fxch               st(1)                                         // 0x00602833    d9c9
                         fcompp                                                           // 0x00602835    ded9
                         fnstsw             ax                                            // 0x00602837    dfe0
                         test               ah, 0x01                                      // 0x00602839    f6c401
                         {disp8} je         .Lbl_addr_0x00602850                          // 0x0060283c    7412
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x0060283e    8b4c2440
                         push               ecx                                           // 0x00602842    51
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00602843    8d4c242c
                         call               _jmp_addr_0x006024d0                          // 0x00602847    e884fcffff
                         {disp8} jmp        .Lbl_addr_0x00602850                          // 0x0060284c    eb02
.Lbl_addr_0x0060284e:    fstp               st(0)                                         // 0x0060284e    ddd8
.Lbl_addr_0x00602850:    {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00602850    8d542410
                         push               edx                                           // 0x00602854    52
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00602855    8d442418
                         push               eax                                           // 0x00602859    50
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x0060285a    e881af1400
                         add                esp, 0x08                                     // 0x0060285f    83c408
                         push               eax                                           // 0x00602862    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00602863    8d4c242c
                         call               ??YMapCoords@@QAEXABUJustMapXZ@@@Z            // 0x00602867    e8042c0000
                         dec                dword ptr [esp + 0x3c]                        // 0x0060286c    ff4c243c
                         {disp8} jne        .Lbl_addr_0x006027f6                          // 0x00602870    7584
                         pop                ebp                                           // 0x00602872    5d
                         pop                ebx                                           // 0x00602873    5b
.Lbl_addr_0x00602874:    pop                edi                                           // 0x00602874    5f
                         pop                esi                                           // 0x00602875    5e
                         add                esp, 0x24                                     // 0x00602876    83c424
                         ret                0x000c                                        // 0x00602879    c20c00
                         nop                                                              // 0x0060287c    90
                         nop                                                              // 0x0060287d    90
                         nop                                                              // 0x0060287e    90
                         nop                                                              // 0x0060287f    90

?ConvertToText@MapCoords@@QAEPADPAD@Z:
                         {disp8} fild       dword ptr [ecx + 0x04]                        // 0x00602880    db4104
                         push               esi                                           // 0x00602883    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00602884    8b742408
                         sub                esp, 0x08                                     // 0x00602888    83ec08
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]             // 0x0060288b    d80d50009300
                         sub                esp, 0x08                                     // 0x00602891    83ec08
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x00602894    d80d1cc48a00
                         {disp8} fstp       qword ptr [esp + 0x08]                        // 0x0060289a    dd5c2408
                         fild               dword ptr [ecx]                               // 0x0060289e    db01
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006028a0    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006028a6    d80d1cc48a00
                         fstp               qword ptr [esp]                               // 0x006028ac    dd1c24
                         push               0x00bf4198                                    // 0x006028af    689841bf00
                         push               esi                                           // 0x006028b4    56
                         call               _sprintf                                      // 0x006028b5    e8182f1c00
                         add                esp, 0x18                                     // 0x006028ba    83c418
                         mov.s              eax, esi                                      // 0x006028bd    8bc6
                         pop                esi                                           // 0x006028bf    5e
                         ret                0x0004                                        // 0x006028c0    c20400
                         nop                                                              // 0x006028c3    90
                         nop                                                              // 0x006028c4    90
                         nop                                                              // 0x006028c5    90
                         nop                                                              // 0x006028c6    90
                         nop                                                              // 0x006028c7    90
                         nop                                                              // 0x006028c8    90
                         nop                                                              // 0x006028c9    90
                         nop                                                              // 0x006028ca    90
                         nop                                                              // 0x006028cb    90
                         nop                                                              // 0x006028cc    90
                         nop                                                              // 0x006028cd    90
                         nop                                                              // 0x006028ce    90
                         nop                                                              // 0x006028cf    90
_jmp_addr_0x006028d0:    sub                esp, 0x44                                     // 0x006028d0    83ec44
                         push               esi                                           // 0x006028d3    56
                         push               edi                                           // 0x006028d4    57
                         {disp8} mov        edi, dword ptr [esp + 0x58]                   // 0x006028d5    8b7c2458
                         test               edi, edi                                      // 0x006028d9    85ff
                         {disp32} jbe       .Lbl_addr_0x00602a78                          // 0x006028db    0f8697010000
                         {disp8} mov        esi, dword ptr [esp + 0x50]                   // 0x006028e1    8b742450
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006028e5    8b4608
                         mov.s              ecx, esi                                      // 0x006028e8    8bce
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x006028ea    89442458
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x006028ee    e89d072000
                         {disp8} fadd       dword ptr [esp + 0x58]                        // 0x006028f3    d8442458
                         {disp8} mov        dword ptr [esp + 0x08], edi                   // 0x006028f7    897c2408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x006028fb    c744240c00000000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00602903    d95c242c
                         fild               dword ptr [esi]                               // 0x00602907    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00602909    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0060290f    d95c2428
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00602913    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00602916    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0060291c    d95c2430
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x00602920    df6c2408
                         {disp32} fadd      dword ptr [__real@4@3fff8000000000000000]                   // 0x00602924    d80590a38a00
                         {disp32} fdivr     dword ptr [__real@4@3fff8000000000000000]                   // 0x0060292a    d83d90a38a00
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x00602930    d95c2450
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00602934    d9442428
                         {disp8} fadd       dword ptr [esp + 0x54]                        // 0x00602938    d8442454
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0060293c    d95c241c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00602940    d944242c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00602944    d95c2420
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00602948    d9442430
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0060294c    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00602950    d944241c
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00602954    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0060295a    d80d04c48a00
                         call               __ftol                                        // 0x00602960    e89bea1900
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00602965    d9442424
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00602969    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0060296f    89442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00602973    d80d04c48a00
                         call               __ftol                                        // 0x00602979    e882ea1900
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0060297e    8d4c2410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00602982    89442414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00602986    c744241800000000
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x0060298e    e8fd062000
                         {disp8} fadd       dword ptr [esp + 0x60]                        // 0x00602993    d8442460
                         xor.s              eax, eax                                      // 0x00602997    33c0
                         test               edi, edi                                      // 0x00602999    85ff
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0060299b    d95c2420
                         {disp32} jle       .Lbl_addr_0x00602a78                          // 0x0060299f    0f8ed3000000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x006029a5    8b4c242c
                         push               ebx                                           // 0x006029a9    53
                         {disp8} mov        ebx, dword ptr [esp + 0x60]                   // 0x006029aa    8b5c2460
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x006029ae    894c240c
.Lbl_addr_0x006029b2:    {disp8} lea        esi, dword ptr [eax + 0x01]                   // 0x006029b2    8d7001
                         {disp8} mov        dword ptr [esp + 0x5c], esi                   // 0x006029b5    8974245c
                         {disp8} fild       dword ptr [esp + 0x5c]                        // 0x006029b9    db44245c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006029bd    8b54240c
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x006029c1    89542418
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x006029c5    d84c2454
                         {disp32} fmul      dword ptr [__real@4@4001c90fdb0000000000]                   // 0x006029c9    d80d10b28a00
                         fld                st(0)                                         // 0x006029cf    d9c0
                         fcos                                                             // 0x006029d1    d9ff
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x006029d3    d84c2458
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x006029d7    d95c2444
                         fsin                                                             // 0x006029db    d9fe
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x006029dd    d84c2458
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x006029e1    d9442444
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x006029e5    d844242c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006029e9    d95c2414
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x006029ed    d8442434
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x006029f1    d95c241c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x006029f5    d9442414
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006029f9    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x006029ff    d80d04c48a00
                         call               __ftol                                        // 0x00602a05    e8f6e91900
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00602a0a    d944241c
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00602a0e    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00602a14    89442438
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00602a18    d80d04c48a00
                         call               __ftol                                        // 0x00602a1e    e8dde91900
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00602a23    8d4c2438
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x00602a27    8944243c
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000            // 0x00602a2b    c744244000000000
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00602a33    e858062000
                         push               0x0                                           // 0x00602a38    6a00
                         push               ebx                                           // 0x00602a3a    53
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00602a3b    8d44241c
                         {disp8} fadd       dword ptr [esp + 0x6c]                        // 0x00602a3f    d844246c
                         push               eax                                           // 0x00602a43    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00602a44    8d4c242c
                         push               ecx                                           // 0x00602a48    51
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00602a49    d95c2428
                         call               _jmp_addr_0x008398a0                          // 0x00602a4d    e84e6e2300
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00602a52    8b442428
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00602a56    8b542424
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00602a5a    8b4c242c
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00602a5e    89442434
                         mov.s              eax, esi                                      // 0x00602a62    8bc6
                         add                esp, 0x10                                     // 0x00602a64    83c410
                         cmp.s              eax, edi                                      // 0x00602a67    3bc7
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00602a69    89542420
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00602a6d    894c2428
                         {disp32} jl        .Lbl_addr_0x006029b2                          // 0x00602a71    0f8c3bffffff
                         pop                ebx                                           // 0x00602a77    5b
.Lbl_addr_0x00602a78:    pop                edi                                           // 0x00602a78    5f
                         pop                esi                                           // 0x00602a79    5e
                         add                esp, 0x44                                     // 0x00602a7a    83c444
                         ret                                                              // 0x00602a7d    c3
                         nop                                                              // 0x00602a7e    90
                         nop                                                              // 0x00602a7f    90
_jmp_addr_0x00602a80:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00602a80    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00602a84    8b54240c
                         push               eax                                           // 0x00602a88    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00602a89    8b44240c
                         push               edx                                           // 0x00602a8d    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00602a8e    8b54240c
                         push               eax                                           // 0x00602a92    50
                         push               edx                                           // 0x00602a93    52
                         push               ecx                                           // 0x00602a94    51
                         call               _jmp_addr_0x006028d0                          // 0x00602a95    e836feffff
                         add                esp, 0x14                                     // 0x00602a9a    83c414
                         ret                0x0010                                        // 0x00602a9d    c21000
.Lbl_addr_0x00602aa0:    sub                esp, 0x14                                     // 0x00602aa0    83ec14
                         xor.s              eax, eax                                      // 0x00602aa3    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00602aa5    668b4102
                         {disp8} mov        cx, word ptr [ecx + 0x06]                     // 0x00602aa9    668b4906
                         xor.s              edx, edx                                      // 0x00602aad    33d2
                         mov.s              dl, al                                        // 0x00602aaf    8ad0
                         push               ebx                                           // 0x00602ab1    53
                         push               ebp                                           // 0x00602ab2    55
                         push               esi                                           // 0x00602ab3    56
                         push               edi                                           // 0x00602ab4    57
                         and                edx, 0x07                                     // 0x00602ab5    83e207
                         sub.s              eax, edx                                      // 0x00602ab8    2bc2
                         xor.s              edx, edx                                      // 0x00602aba    33d2
                         mov.s              dl, cl                                        // 0x00602abc    8ad1
                         movsx              ebp, ax                                       // 0x00602abe    0fbfe8
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00602ac1    89442414
                         {disp8} lea        eax, dword ptr [ebp + 0x08]                   // 0x00602ac5    8d4508
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00602ac8    8944241c
                         and                edx, 0x07                                     // 0x00602acc    83e207
                         sub.s              ecx, edx                                      // 0x00602acf    2bca
                         cmp.s              ebp, eax                                      // 0x00602ad1    3be8
                         mov.s              esi, ecx                                      // 0x00602ad3    8bf1
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x00602ad5    89742420
                         {disp32} jge       .Lbl_addr_0x00602ba9                          // 0x00602ad9    0f8dca000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00602adf    8b155c19d000
.Lbl_addr_0x00602ae5:    movsx              ecx, si                                       // 0x00602ae5    0fbfce
                         {disp8} lea        edi, dword ptr [ecx + 0x08]                   // 0x00602ae8    8d7908
                         cmp.s              ecx, edi                                      // 0x00602aeb    3bcf
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x00602aed    89742410
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x00602af1    897c2418
                         {disp32} jge       .Lbl_addr_0x00602b95                          // 0x00602af5    0f8d9a000000
.Lbl_addr_0x00602afb:    cmp                ebp, dword ptr [edx + 0x000059c8]             // 0x00602afb    3baac8590000
                         {disp8} jae        .Lbl_addr_0x00602b77                          // 0x00602b01    7374
                         cmp                ecx, dword ptr [edx + 0x000059c4]             // 0x00602b03    3b8ac4590000
                         {disp8} jae        .Lbl_addr_0x00602b77                          // 0x00602b09    736c
                         cmp                ebp, dword ptr [edx + 0x000059c8]             // 0x00602b0b    3baac8590000
                         {disp8} jae        .Lbl_addr_0x00602b1d                          // 0x00602b11    730a
                         {disp32} mov       eax, dword ptr [edx + 0x000059c4]             // 0x00602b13    8b82c4590000
                         cmp.s              ecx, eax                                      // 0x00602b19    3bc8
                         .byte              0x72, 0x4// {disp8} jb .Lbl_addr_0x00602b21   // 0x00602b1b    7204
.Lbl_addr_0x00602b1d:    xor.s              eax, eax                                      // 0x00602b1d    33c0
                         {disp8} jmp        .Lbl_addr_0x00602b2d                          // 0x00602b1f    eb0c
.Lbl_addr_0x00602b21:    imul               eax, ebp                                      // 0x00602b21    0fafc5
                         add.s              eax, ecx                                      // 0x00602b24    03c1
                         {disp32} lea       eax, dword ptr [edx + eax * 0x8 + 0x000059fc] // 0x00602b26    8d84c2fc590000
.Lbl_addr_0x00602b2d:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00602b2d    8b7004
                         test               esi, esi                                      // 0x00602b30    85f6
                         mov                ecx, 0x00000001                               // 0x00602b32    b901000000
                         {disp8} jne        .Lbl_addr_0x00602b3d                          // 0x00602b37    7504
                         mov                esi, dword ptr [eax]                          // 0x00602b39    8b30
                         xor.s              ecx, ecx                                      // 0x00602b3b    33c9
.Lbl_addr_0x00602b3d:    test               esi, esi                                      // 0x00602b3d    85f6
                         mov.s              ebx, ecx                                      // 0x00602b3f    8bd9
                         mov.s              edi, eax                                      // 0x00602b41    8bf8
                         {disp8} je         .Lbl_addr_0x00602b77                          // 0x00602b43    7432
.Lbl_addr_0x00602b45:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00602b45    8b44242c
                         lea                ecx, dword ptr [eax + esi * 0x1]              // 0x00602b49    8d0c30
                         call               dword ptr [esp + 0x28]                        // 0x00602b4c    ff542428
                         test               eax, eax                                      // 0x00602b50    85c0
                         {disp8} jne        .Lbl_addr_0x00602bb5                          // 0x00602b52    7561
                         mov                edx, dword ptr [esi]                          // 0x00602b54    8b16
                         push               edi                                           // 0x00602b56    57
                         mov.s              ecx, esi                                      // 0x00602b57    8bce
                         call               dword ptr [edx + 0x53c]                       // 0x00602b59    ff923c050000
                         mov.s              esi, eax                                      // 0x00602b5f    8bf0
                         test               esi, esi                                      // 0x00602b61    85f6
                         {disp8} jne        .Lbl_addr_0x00602b45                          // 0x00602b63    75e0
                         test               ebx, ebx                                      // 0x00602b65    85db
                         {disp8} je         .Lbl_addr_0x00602b71                          // 0x00602b67    7408
                         mov                esi, dword ptr [edi]                          // 0x00602b69    8b37
                         xor.s              ebx, ebx                                      // 0x00602b6b    33db
                         test               esi, esi                                      // 0x00602b6d    85f6
                         {disp8} jne        .Lbl_addr_0x00602b45                          // 0x00602b6f    75d4
.Lbl_addr_0x00602b71:    {disp32} mov       edx, dword ptr [_game]                        // 0x00602b71    8b155c19d000
.Lbl_addr_0x00602b77:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00602b77    8b442410
                         inc                eax                                           // 0x00602b7b    40
                         movsx              ecx, ax                                       // 0x00602b7c    0fbfc8
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00602b7f    89442410
                         cmp                ecx, dword ptr [esp + 0x18]                   // 0x00602b83    3b4c2418
                         {disp32} jl        .Lbl_addr_0x00602afb                          // 0x00602b87    0f8c6effffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00602b8d    8b44241c
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x00602b91    8b742420
.Lbl_addr_0x00602b95:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00602b95    8b4c2414
                         inc                ecx                                           // 0x00602b99    41
                         movsx              ebp, cx                                       // 0x00602b9a    0fbfe9
                         cmp.s              ebp, eax                                      // 0x00602b9d    3be8
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00602b9f    894c2414
                         {disp32} jl        .Lbl_addr_0x00602ae5                          // 0x00602ba3    0f8c3cffffff
.Lbl_addr_0x00602ba9:    pop                edi                                           // 0x00602ba9    5f
                         pop                esi                                           // 0x00602baa    5e
                         pop                ebp                                           // 0x00602bab    5d
                         xor.s              eax, eax                                      // 0x00602bac    33c0
                         pop                ebx                                           // 0x00602bae    5b
                         add                esp, 0x14                                     // 0x00602baf    83c414
                         ret                0x0010                                        // 0x00602bb2    c21000
.Lbl_addr_0x00602bb5:    pop                edi                                           // 0x00602bb5    5f
                         pop                esi                                           // 0x00602bb6    5e
                         pop                ebp                                           // 0x00602bb7    5d
                         mov                eax, 0x00000001                               // 0x00602bb8    b801000000
                         pop                ebx                                           // 0x00602bbd    5b
                         add                esp, 0x14                                     // 0x00602bbe    83c414
                         ret                0x0010                                        // 0x00602bc1    c21000
                         nop                                                              // 0x00602bc4    90
                         nop                                                              // 0x00602bc5    90
                         nop                                                              // 0x00602bc6    90
                         nop                                                              // 0x00602bc7    90
                         nop                                                              // 0x00602bc8    90
                         nop                                                              // 0x00602bc9    90
                         nop                                                              // 0x00602bca    90
                         nop                                                              // 0x00602bcb    90
                         nop                                                              // 0x00602bcc    90
                         nop                                                              // 0x00602bcd    90
                         nop                                                              // 0x00602bce    90
                         nop                                                              // 0x00602bcf    90
.Lbl_addr_0x00602bd0:    sub                esp, 0x10                                     // 0x00602bd0    83ec10
                         xor.s              eax, eax                                      // 0x00602bd3    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00602bd5    668b4102
                         {disp8} mov        cx, word ptr [ecx + 0x06]                     // 0x00602bd9    668b4906
                         xor.s              edx, edx                                      // 0x00602bdd    33d2
                         mov.s              dl, al                                        // 0x00602bdf    8ad0
                         push               ebx                                           // 0x00602be1    53
                         push               ebp                                           // 0x00602be2    55
                         push               esi                                           // 0x00602be3    56
                         push               edi                                           // 0x00602be4    57
                         and                edx, 0x07                                     // 0x00602be5    83e207
                         sub.s              eax, edx                                      // 0x00602be8    2bc2
                         xor.s              edx, edx                                      // 0x00602bea    33d2
                         mov.s              dl, cl                                        // 0x00602bec    8ad1
                         mov.s              edi, eax                                      // 0x00602bee    8bf8
                         movsx              eax, ax                                       // 0x00602bf0    0fbfc0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00602bf3    89442410
                         and                edx, 0x07                                     // 0x00602bf7    83e207
                         sub.s              ecx, edx                                      // 0x00602bfa    2bca
                         mov.s              ebp, ecx                                      // 0x00602bfc    8be9
                         xor.s              ecx, ecx                                      // 0x00602bfe    33c9
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00602c00    894c2414
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00602c04    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00602c08    894c241c
                         {disp8} lea        ecx, dword ptr [eax + 0x08]                   // 0x00602c0c    8d4808
                         cmp.s              eax, ecx                                      // 0x00602c0f    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00602c11    894c2410
                         {disp8} jge        .Lbl_addr_0x00602c50                          // 0x00602c15    7d39
                         movsx              ebx, bp                                       // 0x00602c17    0fbfdd
                         add                ebx, 0x08                                     // 0x00602c1a    83c308
.Lbl_addr_0x00602c1d:    movsx              eax, bp                                       // 0x00602c1d    0fbfc5
                         cmp.s              eax, ebx                                      // 0x00602c20    3bc3
                         mov.s              esi, ebp                                      // 0x00602c22    8bf5
                         {disp8} jge        .Lbl_addr_0x00602c48                          // 0x00602c24    7d22
.Lbl_addr_0x00602c26:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00602c26    8d4c2414
                         {disp8} mov        word ptr [esp + 0x16], di                     // 0x00602c2a    66897c2416
                         {disp8} mov        word ptr [esp + 0x1a], si                     // 0x00602c2f    668974241a
                         call               dword ptr [esp + 0x24]                        // 0x00602c34    ff542424
                         test               eax, eax                                      // 0x00602c38    85c0
                         {disp8} jne        .Lbl_addr_0x00602c5c                          // 0x00602c3a    7520
                         inc                esi                                           // 0x00602c3c    46
                         movsx              eax, si                                       // 0x00602c3d    0fbfc6
                         cmp.s              eax, ebx                                      // 0x00602c40    3bc3
                         {disp8} jl         .Lbl_addr_0x00602c26                          // 0x00602c42    7ce2
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00602c44    8b4c2410
.Lbl_addr_0x00602c48:    inc                edi                                           // 0x00602c48    47
                         movsx              edx, di                                       // 0x00602c49    0fbfd7
                         cmp.s              edx, ecx                                      // 0x00602c4c    3bd1
                         {disp8} jl         .Lbl_addr_0x00602c1d                          // 0x00602c4e    7ccd
.Lbl_addr_0x00602c50:    pop                edi                                           // 0x00602c50    5f
                         pop                esi                                           // 0x00602c51    5e
                         pop                ebp                                           // 0x00602c52    5d
                         xor.s              eax, eax                                      // 0x00602c53    33c0
                         pop                ebx                                           // 0x00602c55    5b
                         add                esp, 0x10                                     // 0x00602c56    83c410
                         ret                0x0004                                        // 0x00602c59    c20400
.Lbl_addr_0x00602c5c:    pop                edi                                           // 0x00602c5c    5f
                         pop                esi                                           // 0x00602c5d    5e
                         pop                ebp                                           // 0x00602c5e    5d
                         mov                eax, 0x00000001                               // 0x00602c5f    b801000000
                         pop                ebx                                           // 0x00602c64    5b
                         add                esp, 0x10                                     // 0x00602c65    83c410
                         ret                0x0004                                        // 0x00602c68    c20400
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00602c6b    e889ebdfff
                         push               ecx                                           // 0x00602c70    51
                         push               ebx                                           // 0x00602c71    53
                         push               ebp                                           // 0x00602c72    55
                         xor.s              eax, eax                                      // 0x00602c73    33c0
                         push               esi                                           // 0x00602c75    56
                         {disp8} mov        si, word ptr [ecx + 0x02]                     // 0x00602c76    668b7102
                         push               edi                                           // 0x00602c7a    57
                         {disp8} mov        di, word ptr [ecx + 0x06]                     // 0x00602c7b    668b7906
                         {disp8} mov        word ptr [esp + 0x10], ax                     // 0x00602c7f    6689442410
                         {disp8} mov        word ptr [esp + 0x12], ax                     // 0x00602c84    6689442412
                         shr                si, 3                                         // 0x00602c89    66c1ee03
                         shr                di, 3                                         // 0x00602c8d    66c1ef03
                         movsx              eax, si                                       // 0x00602c91    0fbfc6
                         shl                eax, 6                                        // 0x00602c94    c1e006
                         movsx              ecx, di                                       // 0x00602c97    0fbfcf
                         add.s              eax, ecx                                      // 0x00602c9a    03c1
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]       // 0x00602c9c    8d14c500000000
                         sub.s              edx, eax                                      // 0x00602ca3    2bd0
                         {disp32} lea       ebp, dword ptr [edx * 0x4 + 0x00c8dc50]       // 0x00602ca5    8d2c9550dcc800
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x00602cac    d94500
                         {disp32} fld       dword ptr [data_bytes + 0x2e3c48]             // 0x00602caf    d905489cca00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00602cb5    d80db4a38a00
                         fcompp                                                           // 0x00602cbb    ded9
                         fnstsw             ax                                            // 0x00602cbd    dfe0
                         test               ah, 0x01                                      // 0x00602cbf    f6c401
                         {disp8} je         .Lbl_addr_0x00602d2e                          // 0x00602cc2    746a
                         mov                ebx, 0x00da59fe                               // 0x00602cc4    bbfe59da00
.Lbl_addr_0x00602cc9:    mov                cx, word ptr [ebx]                            // 0x00602cc9    668b0b
                         {disp8} mov        ax, word ptr [ebx + -0x02]                    // 0x00602ccc    668b43fe
                         add.s              cx, di                                        // 0x00602cd0    6603cf
                         add.s              ax, si                                        // 0x00602cd3    6603c6
                         {disp8} mov        word ptr [esp + 0x12], cx                     // 0x00602cd6    66894c2412
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00602cdb    8d4c2410
                         {disp8} mov        word ptr [esp + 0x10], ax                     // 0x00602cdf    6689442410
                         call               _jmp_addr_0x005e1890                          // 0x00602ce4    e8a7ebfdff
                         test               eax, eax                                      // 0x00602ce9    85c0
                         {disp8} je         .Lbl_addr_0x00602d18                          // 0x00602ceb    742b
                         movsx              eax, word ptr [esp + 0x10]                    // 0x00602ced    0fbf442410
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x00602cf2    d94500
                         movsx              edx, word ptr [esp + 0x12]                    // 0x00602cf5    0fbf542412
                         shl                eax, 6                                        // 0x00602cfa    c1e006
                         add.s              eax, edx                                      // 0x00602cfd    03c2
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]       // 0x00602cff    8d0cc500000000
                         sub.s              ecx, eax                                      // 0x00602d06    2bc8
                         {disp32} fld       dword ptr [ecx * 0x4 + 0x00c8dc50]            // 0x00602d08    d9048d50dcc800
                         fcompp                                                           // 0x00602d0f    ded9
                         fnstsw             ax                                            // 0x00602d11    dfe0
                         test               ah, 0x41                                      // 0x00602d13    f6c441
                         {disp8} je         .Lbl_addr_0x00602d2e                          // 0x00602d16    7416
.Lbl_addr_0x00602d18:    add                ebx, 0x04                                     // 0x00602d18    83c304
                         cmp                ebx, 0x00da5a0e                               // 0x00602d1b    81fb0e5ada00
                         .byte              0x72, 0xa6// {disp8} jb .Lbl_addr_0x00602cc9  // 0x00602d21    72a6
                         pop                edi                                           // 0x00602d23    5f
                         pop                esi                                           // 0x00602d24    5e
                         pop                ebp                                           // 0x00602d25    5d
                         mov                eax, 0x00000001                               // 0x00602d26    b801000000
                         pop                ebx                                           // 0x00602d2b    5b
                         pop                ecx                                           // 0x00602d2c    59
                         ret                                                              // 0x00602d2d    c3
.Lbl_addr_0x00602d2e:    pop                edi                                           // 0x00602d2e    5f
                         pop                esi                                           // 0x00602d2f    5e
                         pop                ebp                                           // 0x00602d30    5d
                         xor.s              eax, eax                                      // 0x00602d31    33c0
                         pop                ebx                                           // 0x00602d33    5b
                         pop                ecx                                           // 0x00602d34    59
                         ret                                                              // 0x00602d35    c3
                         nop                                                              // 0x00602d36    90
                         nop                                                              // 0x00602d37    90
                         nop                                                              // 0x00602d38    90
                         nop                                                              // 0x00602d39    90
                         nop                                                              // 0x00602d3a    90
                         nop                                                              // 0x00602d3b    90
                         nop                                                              // 0x00602d3c    90
                         nop                                                              // 0x00602d3d    90
                         nop                                                              // 0x00602d3e    90
                         nop                                                              // 0x00602d3f    90
.Lbl_addr_0x00602d40:    sub                esp, 0x18                                     // 0x00602d40    83ec18
                         xor.s              eax, eax                                      // 0x00602d43    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00602d45    668b4102
                         xor.s              edx, edx                                      // 0x00602d49    33d2
                         mov.s              dl, al                                        // 0x00602d4b    8ad0
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00602d4d    894c2414
                         {disp8} mov        cx, word ptr [ecx + 0x06]                     // 0x00602d51    668b4906
                         push               ebx                                           // 0x00602d55    53
                         push               ebp                                           // 0x00602d56    55
                         push               esi                                           // 0x00602d57    56
                         push               edi                                           // 0x00602d58    57
                         and                edx, 0x07                                     // 0x00602d59    83e207
                         sub.s              eax, edx                                      // 0x00602d5c    2bc2
                         xor.s              edx, edx                                      // 0x00602d5e    33d2
                         mov.s              dl, cl                                        // 0x00602d60    8ad1
                         movsx              ebp, ax                                       // 0x00602d62    0fbfe8
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00602d65    89442410
                         {disp8} lea        eax, dword ptr [ebp + 0x08]                   // 0x00602d69    8d4508
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00602d6c    89442420
                         and                edx, 0x07                                     // 0x00602d70    83e207
                         sub.s              ecx, edx                                      // 0x00602d73    2bca
                         cmp.s              ebp, eax                                      // 0x00602d75    3be8
                         mov.s              esi, ecx                                      // 0x00602d77    8bf1
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x00602d79    8974241c
                         {disp32} jge       .Lbl_addr_0x00602e6d                          // 0x00602d7d    0f8dea000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00602d83    8b155c19d000
.Lbl_addr_0x00602d89:    movsx              ecx, si                                       // 0x00602d89    0fbfce
                         {disp8} lea        edi, dword ptr [ecx + 0x08]                   // 0x00602d8c    8d7908
                         cmp.s              ecx, edi                                      // 0x00602d8f    3bcf
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x00602d91    89742414
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x00602d95    897c2418
                         {disp32} jge       .Lbl_addr_0x00602e39                          // 0x00602d99    0f8d9a000000
.Lbl_addr_0x00602d9f:    cmp                ebp, dword ptr [edx + 0x000059c8]             // 0x00602d9f    3baac8590000
                         {disp8} jae        .Lbl_addr_0x00602e1b                          // 0x00602da5    7374
                         cmp                ecx, dword ptr [edx + 0x000059c4]             // 0x00602da7    3b8ac4590000
                         {disp8} jae        .Lbl_addr_0x00602e1b                          // 0x00602dad    736c
                         cmp                ebp, dword ptr [edx + 0x000059c8]             // 0x00602daf    3baac8590000
                         {disp8} jae        .Lbl_addr_0x00602dc1                          // 0x00602db5    730a
                         {disp32} mov       eax, dword ptr [edx + 0x000059c4]             // 0x00602db7    8b82c4590000
                         cmp.s              ecx, eax                                      // 0x00602dbd    3bc8
                         .byte              0x72, 0x4// {disp8} jb .Lbl_addr_0x00602dc5   // 0x00602dbf    7204
.Lbl_addr_0x00602dc1:    xor.s              eax, eax                                      // 0x00602dc1    33c0
                         {disp8} jmp        .Lbl_addr_0x00602dd1                          // 0x00602dc3    eb0c
.Lbl_addr_0x00602dc5:    imul               eax, ebp                                      // 0x00602dc5    0fafc5
                         add.s              eax, ecx                                      // 0x00602dc8    03c1
                         {disp32} lea       eax, dword ptr [edx + eax * 0x8 + 0x000059fc] // 0x00602dca    8d84c2fc590000
.Lbl_addr_0x00602dd1:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00602dd1    8b7004
                         test               esi, esi                                      // 0x00602dd4    85f6
                         mov                ecx, 0x00000001                               // 0x00602dd6    b901000000
                         {disp8} jne        .Lbl_addr_0x00602de1                          // 0x00602ddb    7504
                         mov                esi, dword ptr [eax]                          // 0x00602ddd    8b30
                         xor.s              ecx, ecx                                      // 0x00602ddf    33c9
.Lbl_addr_0x00602de1:    test               esi, esi                                      // 0x00602de1    85f6
                         mov.s              ebx, ecx                                      // 0x00602de3    8bd9
                         mov.s              edi, eax                                      // 0x00602de5    8bf8
                         {disp8} je         .Lbl_addr_0x00602e1b                          // 0x00602de7    7432
.Lbl_addr_0x00602de9:    {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00602de9    8b442430
                         lea                ecx, dword ptr [eax + esi * 0x1]              // 0x00602ded    8d0c30
                         call               dword ptr [esp + 0x2c]                        // 0x00602df0    ff54242c
                         test               eax, eax                                      // 0x00602df4    85c0
                         {disp8} jne        .Lbl_addr_0x00602e57                          // 0x00602df6    755f
                         mov                edx, dword ptr [esi]                          // 0x00602df8    8b16
                         push               edi                                           // 0x00602dfa    57
                         mov.s              ecx, esi                                      // 0x00602dfb    8bce
                         call               dword ptr [edx + 0x53c]                       // 0x00602dfd    ff923c050000
                         mov.s              esi, eax                                      // 0x00602e03    8bf0
                         test               esi, esi                                      // 0x00602e05    85f6
                         {disp8} jne        .Lbl_addr_0x00602de9                          // 0x00602e07    75e0
                         test               ebx, ebx                                      // 0x00602e09    85db
                         {disp8} je         .Lbl_addr_0x00602e15                          // 0x00602e0b    7408
                         mov                esi, dword ptr [edi]                          // 0x00602e0d    8b37
                         xor.s              ebx, ebx                                      // 0x00602e0f    33db
                         test               esi, esi                                      // 0x00602e11    85f6
                         {disp8} jne        .Lbl_addr_0x00602de9                          // 0x00602e13    75d4
.Lbl_addr_0x00602e15:    {disp32} mov       edx, dword ptr [_game]                        // 0x00602e15    8b155c19d000
.Lbl_addr_0x00602e1b:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00602e1b    8b442414
                         inc                eax                                           // 0x00602e1f    40
                         movsx              ecx, ax                                       // 0x00602e20    0fbfc8
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00602e23    89442414
                         cmp                ecx, dword ptr [esp + 0x18]                   // 0x00602e27    3b4c2418
                         {disp32} jl        .Lbl_addr_0x00602d9f                          // 0x00602e2b    0f8c6effffff
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x00602e31    8b74241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00602e35    8b442420
.Lbl_addr_0x00602e39:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00602e39    8b4c2410
                         inc                ecx                                           // 0x00602e3d    41
                         movsx              ebp, cx                                       // 0x00602e3e    0fbfe9
                         cmp.s              ebp, eax                                      // 0x00602e41    3be8
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00602e43    894c2410
                         {disp32} jl        .Lbl_addr_0x00602d89                          // 0x00602e47    0f8c3cffffff
                         pop                edi                                           // 0x00602e4d    5f
                         pop                esi                                           // 0x00602e4e    5e
                         pop                ebp                                           // 0x00602e4f    5d
                         pop                ebx                                           // 0x00602e50    5b
                         add                esp, 0x18                                     // 0x00602e51    83c418
                         ret                0x0010                                        // 0x00602e54    c21000
.Lbl_addr_0x00602e57:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00602e57    8b442424
                         {disp8} mov        cx, word ptr [esp + 0x10]                     // 0x00602e5b    668b4c2410
                         {disp8} mov        dx, word ptr [esp + 0x14]                     // 0x00602e60    668b542414
                         {disp8} mov        word ptr [eax + 0x02], cx                     // 0x00602e65    66894802
                         {disp8} mov        word ptr [eax + 0x06], dx                     // 0x00602e69    66895006
.Lbl_addr_0x00602e6d:    pop                edi                                           // 0x00602e6d    5f
                         pop                esi                                           // 0x00602e6e    5e
                         pop                ebp                                           // 0x00602e6f    5d
                         pop                ebx                                           // 0x00602e70    5b
                         add                esp, 0x18                                     // 0x00602e71    83c418
                         ret                0x0010                                        // 0x00602e74    c21000
                         nop                                                              // 0x00602e77    90
                         nop                                                              // 0x00602e78    90
                         nop                                                              // 0x00602e79    90
                         nop                                                              // 0x00602e7a    90
                         nop                                                              // 0x00602e7b    90
                         nop                                                              // 0x00602e7c    90
                         nop                                                              // 0x00602e7d    90
                         nop                                                              // 0x00602e7e    90
                         nop                                                              // 0x00602e7f    90
.Lbl_addr_0x00602e80:    sub                esp, 0x18                                     // 0x00602e80    83ec18
                         xor.s              eax, eax                                      // 0x00602e83    33c0
                         push               ebx                                           // 0x00602e85    53
                         push               ebp                                           // 0x00602e86    55
                         mov.s              ebp, ecx                                      // 0x00602e87    8be9
                         xor.s              ecx, ecx                                      // 0x00602e89    33c9
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00602e8b    89442414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00602e8f    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00602e93    8944241c
                         {disp8} mov        ax, word ptr [ebp + 0x02]                     // 0x00602e97    668b4502
                         mov.s              cl, al                                        // 0x00602e9b    8ac8
                         xor.s              edx, edx                                      // 0x00602e9d    33d2
                         push               esi                                           // 0x00602e9f    56
                         push               edi                                           // 0x00602ea0    57
                         and                ecx, 0x07                                     // 0x00602ea1    83e107
                         sub.s              eax, ecx                                      // 0x00602ea4    2bc1
                         xor.s              ecx, ecx                                      // 0x00602ea6    33c9
                         {disp8} mov        cx, word ptr [ebp + 0x06]                     // 0x00602ea8    668b4d06
                         mov.s              dl, cl                                        // 0x00602eac    8ad1
                         movsx              edi, ax                                       // 0x00602eae    0fbff8
                         mov.s              ebx, eax                                      // 0x00602eb1    8bd8
                         {disp8} lea        eax, dword ptr [edi + 0x08]                   // 0x00602eb3    8d4708
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00602eb6    89442418
                         and                edx, 0x07                                     // 0x00602eba    83e207
                         sub.s              ecx, edx                                      // 0x00602ebd    2bca
                         cmp.s              edi, eax                                      // 0x00602ebf    3bf8
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00602ec1    894c2410
                         {disp8} jge        .Lbl_addr_0x00602f36                          // 0x00602ec5    7d6f
                         movsx              eax, cx                                       // 0x00602ec7    0fbfc1
                         {disp8} lea        edx, dword ptr [eax + 0x08]                   // 0x00602eca    8d5008
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00602ecd    89542414
.Lbl_addr_0x00602ed1:    movsx              eax, cx                                       // 0x00602ed1    0fbfc1
                         cmp.s              eax, edx                                      // 0x00602ed4    3bc2
                         mov.s              esi, ecx                                      // 0x00602ed6    8bf1
                         {disp8} jge        .Lbl_addr_0x00602f18                          // 0x00602ed8    7d3e
.Lbl_addr_0x00602eda:    {disp32} mov       eax, dword ptr [_game]                        // 0x00602eda    a15c19d000
                         cmp                edi, dword ptr [eax + 0x000059c8]             // 0x00602edf    3bb8c8590000
                         {disp8} jae        .Lbl_addr_0x00602f0c                          // 0x00602ee5    7325
                         movsx              edx, si                                       // 0x00602ee7    0fbfd6
                         cmp                edx, dword ptr [eax + 0x000059c4]             // 0x00602eea    3b90c4590000
                         {disp8} jae        .Lbl_addr_0x00602f0c                          // 0x00602ef0    731a
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00602ef2    8d4c241c
                         {disp8} mov        word ptr [esp + 0x1e], bx                     // 0x00602ef6    66895c241e
                         {disp8} mov        word ptr [esp + 0x22], si                     // 0x00602efb    6689742422
                         call               dword ptr [esp + 0x2c]                        // 0x00602f00    ff54242c
                         test               eax, eax                                      // 0x00602f04    85c0
                         {disp8} jne        .Lbl_addr_0x00602f2e                          // 0x00602f06    7526
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00602f08    8b4c2410
.Lbl_addr_0x00602f0c:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00602f0c    8b542414
                         inc                esi                                           // 0x00602f10    46
                         movsx              eax, si                                       // 0x00602f11    0fbfc6
                         cmp.s              eax, edx                                      // 0x00602f14    3bc2
                         {disp8} jl         .Lbl_addr_0x00602eda                          // 0x00602f16    7cc2
.Lbl_addr_0x00602f18:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00602f18    8b442418
                         inc                ebx                                           // 0x00602f1c    43
                         movsx              edi, bx                                       // 0x00602f1d    0fbffb
                         cmp.s              edi, eax                                      // 0x00602f20    3bf8
                         {disp8} jl         .Lbl_addr_0x00602ed1                          // 0x00602f22    7cad
                         pop                edi                                           // 0x00602f24    5f
                         pop                esi                                           // 0x00602f25    5e
                         pop                ebp                                           // 0x00602f26    5d
                         pop                ebx                                           // 0x00602f27    5b
                         add                esp, 0x18                                     // 0x00602f28    83c418
                         ret                0x0004                                        // 0x00602f2b    c20400
.Lbl_addr_0x00602f2e:    {disp8} mov        word ptr [ebp + 0x02], bx                     // 0x00602f2e    66895d02
                         {disp8} mov        word ptr [ebp + 0x06], si                     // 0x00602f32    66897506
.Lbl_addr_0x00602f36:    pop                edi                                           // 0x00602f36    5f
                         pop                esi                                           // 0x00602f37    5e
                         pop                ebp                                           // 0x00602f38    5d
                         pop                ebx                                           // 0x00602f39    5b
                         add                esp, 0x18                                     // 0x00602f3a    83c418
                         ret                0x0004                                        // 0x00602f3d    c20400
                         sub                esp, 0x08                                     // 0x00602f40    83ec08
                         push               ebx                                           // 0x00602f43    53
                         push               esi                                           // 0x00602f44    56
                         mov.s              esi, ecx                                      // 0x00602f45    8bf1
                         mov                ecx, dword ptr [esi]                          // 0x00602f47    8b0e
                         push               edi                                           // 0x00602f49    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00602f4a    8b7c2418
                         mov                eax, dword ptr [edi]                          // 0x00602f4e    8b07
                         sub.s              ecx, eax                                      // 0x00602f50    2bc8
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x00602f52    894c240c
                         xor.s              ebx, ebx                                      // 0x00602f56    33db
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00602f58    895c2410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x00602f5c    df6c240c
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00602f60    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00602f64    895c2410
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00602f68    d84c241c
                         {disp8} fiadd      dword ptr [esp + 0x0c]                        // 0x00602f6c    da44240c
                         call               __ftol                                        // 0x00602f70    e88be41900
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x00602f75    8b5604
                         mov                dword ptr [esi], eax                          // 0x00602f78    8906
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00602f7a    8b4704
                         sub.s              edx, eax                                      // 0x00602f7d    2bd0
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00602f7f    8954240c
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00602f83    895c2410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x00602f87    df6c240c
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00602f8b    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00602f8f    895c2410
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00602f93    d84c241c
                         {disp8} fiadd      dword ptr [esp + 0x0c]                        // 0x00602f97    da44240c
                         call               __ftol                                        // 0x00602f9b    e860e41900
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00602fa0    d94608
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00602fa3    894604
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00602fa6    d86708
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00602fa9    d84c241c
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x00602fad    d84708
                         pop                edi                                           // 0x00602fb0    5f
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x00602fb1    d95e08
                         pop                esi                                           // 0x00602fb4    5e
                         pop                ebx                                           // 0x00602fb5    5b
                         add                esp, 0x08                                     // 0x00602fb6    83c408
                         ret                0x0008                                        // 0x00602fb9    c20800
                         nop                                                              // 0x00602fbc    90
                         nop                                                              // 0x00602fbd    90
                         nop                                                              // 0x00602fbe    90
                         nop                                                              // 0x00602fbf    90
_jmp_addr_0x00602fc0:    {disp8} mov        dx, word ptr [esp + 0x04]                     // 0x00602fc0    668b542404
                         mov.s              eax, ecx                                      // 0x00602fc5    8bc1
                         xor.s              ecx, ecx                                      // 0x00602fc7    33c9
                         mov                dword ptr [eax], ecx                          // 0x00602fc9    8908
                         {disp8} mov        word ptr [eax + 0x02], dx                     // 0x00602fcb    66895002
                         {disp8} mov        dx, word ptr [esp + 0x08]                     // 0x00602fcf    668b542408
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00602fd4    894804
                         {disp8} mov        word ptr [eax + 0x06], dx                     // 0x00602fd7    66895006
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00602fdb    894808
                         mov                word ptr [eax], -0x8000                       // 0x00602fde    66c7000080
                         {disp8} mov        word ptr [eax + 0x04], -0x8000                // 0x00602fe3    66c740040080
                         ret                0x0008                                        // 0x00602fe9    c20800
                         nop                                                              // 0x00602fec    90
                         nop                                                              // 0x00602fed    90
                         nop                                                              // 0x00602fee    90
                         nop                                                              // 0x00602fef    90
_jmp_addr_0x00602ff0:    mov.s              eax, ecx                                      // 0x00602ff0    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00602ff2    8b4c2404
                         xor.s              edx, edx                                      // 0x00602ff6    33d2
                         mov                dword ptr [eax], edx                          // 0x00602ff8    8910
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00602ffa    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00602ffd    895008
                         push               esi                                           // 0x00603000    56
                         mov                si, word ptr [ecx]                            // 0x00603001    668b31
                         {disp8} mov        word ptr [eax + 0x02], si                     // 0x00603004    66897002
                         {disp8} mov        cx, word ptr [ecx + 0x02]                     // 0x00603008    668b4902
                         {disp8} mov        word ptr [eax + 0x06], cx                     // 0x0060300c    66894806
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00603010    895008
                         mov                word ptr [eax], -0x8000                       // 0x00603013    66c7000080
                         {disp8} mov        word ptr [eax + 0x04], -0x8000                // 0x00603018    66c740040080
                         pop                esi                                           // 0x0060301e    5e
                         ret                0x0004                                        // 0x0060301f    c20400
                         nop                                                              // 0x00603022    90
                         nop                                                              // 0x00603023    90
                         nop                                                              // 0x00603024    90
                         nop                                                              // 0x00603025    90
                         nop                                                              // 0x00603026    90
                         nop                                                              // 0x00603027    90
                         nop                                                              // 0x00603028    90
                         nop                                                              // 0x00603029    90
                         nop                                                              // 0x0060302a    90
                         nop                                                              // 0x0060302b    90
                         nop                                                              // 0x0060302c    90
                         nop                                                              // 0x0060302d    90
                         nop                                                              // 0x0060302e    90
                         nop                                                              // 0x0060302f    90
_jmp_addr_0x00603030:    mov.s              eax, ecx                                      // 0x00603030    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00603032    8b4c2404
                         xor.s              edx, edx                                      // 0x00603036    33d2
                         mov                dword ptr [eax], edx                          // 0x00603038    8910
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0060303a    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0060303d    895008
                         push               esi                                           // 0x00603040    56
                         {disp8} mov        si, word ptr [ecx + 0x02]                     // 0x00603041    668b7102
                         {disp8} mov        word ptr [eax + 0x02], si                     // 0x00603045    66897002
                         {disp8} mov        si, word ptr [ecx + 0x06]                     // 0x00603049    668b7106
                         {disp8} mov        word ptr [eax + 0x06], si                     // 0x0060304d    66897006
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00603051    895008
                         mov                dx, word ptr [ecx]                            // 0x00603054    668b11
                         mov                word ptr [eax], dx                            // 0x00603057    668910
                         {disp8} mov        cx, word ptr [ecx + 0x04]                     // 0x0060305a    668b4904
                         {disp8} mov        word ptr [eax + 0x04], cx                     // 0x0060305e    66894804
                         pop                esi                                           // 0x00603062    5e
                         ret                0x0004                                        // 0x00603063    c20400
                         nop                                                              // 0x00603066    90
                         nop                                                              // 0x00603067    90
                         nop                                                              // 0x00603068    90
                         nop                                                              // 0x00603069    90
                         nop                                                              // 0x0060306a    90
                         nop                                                              // 0x0060306b    90
                         nop                                                              // 0x0060306c    90
                         nop                                                              // 0x0060306d    90
                         nop                                                              // 0x0060306e    90
                         nop                                                              // 0x0060306f    90
_jmp_addr_0x00603070:    mov.s              eax, ecx                                      // 0x00603070    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00603072    8b4c2404
                         xor.s              edx, edx                                      // 0x00603076    33d2
                         mov                dword ptr [eax], edx                          // 0x00603078    8910
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0060307a    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0060307d    895008
                         push               esi                                           // 0x00603080    56
                         {disp8} mov        si, word ptr [ecx + 0x02]                     // 0x00603081    668b7102
                         {disp8} mov        word ptr [eax + 0x02], si                     // 0x00603085    66897002
                         {disp8} mov        si, word ptr [ecx + 0x06]                     // 0x00603089    668b7106
                         {disp8} mov        word ptr [eax + 0x06], si                     // 0x0060308d    66897006
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00603091    895008
                         mov                dx, word ptr [ecx]                            // 0x00603094    668b11
                         mov                word ptr [eax], dx                            // 0x00603097    668910
                         {disp8} mov        cx, word ptr [ecx + 0x04]                     // 0x0060309a    668b4904
                         {disp8} mov        word ptr [eax + 0x04], cx                     // 0x0060309e    66894804
                         pop                esi                                           // 0x006030a2    5e
                         ret                0x0004                                        // 0x006030a3    c20400
                         nop                                                              // 0x006030a6    90
                         nop                                                              // 0x006030a7    90
                         nop                                                              // 0x006030a8    90
                         nop                                                              // 0x006030a9    90
                         nop                                                              // 0x006030aa    90
                         nop                                                              // 0x006030ab    90
                         nop                                                              // 0x006030ac    90
                         nop                                                              // 0x006030ad    90
                         nop                                                              // 0x006030ae    90
                         nop                                                              // 0x006030af    90
                         push               ebx                                           // 0x006030b0    53
                         push               esi                                           // 0x006030b1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x006030b2    8b74240c
                         mov                dword ptr [ecx], 0x00000000                   // 0x006030b6    c70100000000
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000000            // 0x006030bc    c7410400000000
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000000            // 0x006030c3    c7410800000000
                         {disp32} mov       ebx, dword ptr [_game]                        // 0x006030ca    8b1d5c19d000
                         mov.s              eax, esi                                      // 0x006030d0    8bc6
                         xor.s              edx, edx                                      // 0x006030d2    33d2
                         div                dword ptr [ebx + 0x000059c4]                  // 0x006030d4    f7b3c4590000
                         xor.s              edx, edx                                      // 0x006030da    33d2
                         {disp8} mov        word ptr [ecx + 0x02], ax                     // 0x006030dc    66894102
                         mov.s              eax, esi                                      // 0x006030e0    8bc6
                         {disp32} mov       esi, dword ptr [_game]                        // 0x006030e2    8b355c19d000
                         div                dword ptr [esi + 0x000059c4]                  // 0x006030e8    f7b6c4590000
                         pop                esi                                           // 0x006030ee    5e
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000000            // 0x006030ef    c7410800000000
                         mov                word ptr [ecx], -0x8000                       // 0x006030f6    66c7010080
                         {disp8} mov        word ptr [ecx + 0x04], -0x8000                // 0x006030fb    66c741040080
                         mov.s              eax, ecx                                      // 0x00603101    8bc1
                         pop                ebx                                           // 0x00603103    5b
                         {disp8} mov        word ptr [ecx + 0x06], dx                     // 0x00603104    66895106
                         ret                0x0004                                        // 0x00603108    c20400
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x0060310b    e8e9e6dfff
                         push               esi                                           // 0x00603110    56
                         mov.s              esi, ecx                                      // 0x00603111    8bf1
                         push               edi                                           // 0x00603113    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00603114    8b7c240c
                         mov.s              ecx, edi                                      // 0x00603118    8bcf
                         mov                dword ptr [esi], 0x00000000                   // 0x0060311a    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x00603120    c7460400000000
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x00603127    c7460800000000
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x0060312e    e84deaffff
                         mov.s              ecx, edi                                      // 0x00603133    8bcf
                         {disp8} mov        word ptr [esi + 0x02], ax                     // 0x00603135    66894602
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x00603139    e862eaffff
                         {disp8} mov        word ptr [esi + 0x06], ax                     // 0x0060313e    66894606
                         pop                edi                                           // 0x00603142    5f
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x00603143    c7460800000000
                         mov                word ptr [esi], -0x8000                       // 0x0060314a    66c7060080
                         {disp8} mov        word ptr [esi + 0x04], -0x8000                // 0x0060314f    66c746040080
                         mov.s              eax, esi                                      // 0x00603155    8bc6
                         pop                esi                                           // 0x00603157    5e
                         ret                0x0004                                        // 0x00603158    c20400
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x0060315b    e899e6dfff

??0MapCoords@@QAE@ABULHPoint@@@Z:
                         xor.s              eax, eax                                      // 0x00603160    33c0
                         push               esi                                           // 0x00603162    56
                         mov.s              esi, ecx                                      // 0x00603163    8bf1
                         mov                dword ptr [esi], eax                          // 0x00603165    8906
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00603167    894604
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x0060316a    894608
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0060316d    8b442408
                         push               eax                                           // 0x00603171    50
                         call               ?Set@MapCoords@@QAEPAU1@ABULHPoint@@@Z                // 0x00603172    e8c9010000
                         mov.s              eax, esi                                      // 0x00603177    8bc6
                         pop                esi                                           // 0x00603179    5e
                         ret                0x0004                                        // 0x0060317a    c20400
                         nop                                                              // 0x0060317d    90
                         nop                                                              // 0x0060317e    90
                         nop                                                              // 0x0060317f    90

_jmp_addr_0x00603180:
                         mov.s              eax, ecx                                      // 0x00603180    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00603182    8b4c2404
                         xor.s              edx, edx                                      // 0x00603186    33d2
                         mov                dword ptr [eax], edx                          // 0x00603188    8910
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0060318a    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0060318d    895008
                         push               esi                                           // 0x00603190    56
                         mov                esi, dword ptr [ecx]                          // 0x00603191    8b31
                         mov                dword ptr [eax], esi                          // 0x00603193    8930
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x00603195    8b4904
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00603198    894804
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0060319b    895008
                         pop                esi                                           // 0x0060319e    5e
                         ret                0x0004                                        // 0x0060319f    c20400
                         nop                                                              // 0x006031a2    90
                         nop                                                              // 0x006031a3    90
                         nop                                                              // 0x006031a4    90
                         nop                                                              // 0x006031a5    90
                         nop                                                              // 0x006031a6    90
                         nop                                                              // 0x006031a7    90
                         nop                                                              // 0x006031a8    90
                         nop                                                              // 0x006031a9    90
                         nop                                                              // 0x006031aa    90
                         nop                                                              // 0x006031ab    90
                         nop                                                              // 0x006031ac    90
                         nop                                                              // 0x006031ad    90
                         nop                                                              // 0x006031ae    90
                         nop                                                              // 0x006031af    90
??0MapCoords@@QAE@JJM@Z:{disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006031b0    8b542408
                         mov.s              eax, ecx                                      // 0x006031b4    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006031b6    8b4c2404
                         mov                dword ptr [eax], ecx                          // 0x006031ba    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006031bc    8b4c240c
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x006031c0    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x006031c3    894808
                         ret                0x000c                                        // 0x006031c6    c20c00
                         nop                                                              // 0x006031c9    90
                         nop                                                              // 0x006031ca    90
                         nop                                                              // 0x006031cb    90
                         nop                                                              // 0x006031cc    90
                         nop                                                              // 0x006031cd    90
                         nop                                                              // 0x006031ce    90
                         nop                                                              // 0x006031cf    90
??0MapCoords@@QAE@PBD@Z: xor.s              eax, eax                                      // 0x006031d0    33c0
                         push               esi                                           // 0x006031d2    56
                         mov.s              esi, ecx                                      // 0x006031d3    8bf1
                         mov                dword ptr [esi], eax                          // 0x006031d5    8906
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x006031d7    894604
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x006031da    894608
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006031dd    8b442408
                         push               eax                                           // 0x006031e1    50
                         call               ?Set@MapCoords@@QAEXPBD@Z                        // 0x006031e2    e899000000
                         mov.s              eax, esi                                      // 0x006031e7    8bc6
                         pop                esi                                           // 0x006031e9    5e
                         ret                0x0004                                        // 0x006031ea    c20400
                         nop                                                              // 0x006031ed    90
                         nop                                                              // 0x006031ee    90
                         nop                                                              // 0x006031ef    90
_jmp_addr_0x006031f0:    push               esi                                           // 0x006031f0    56
                         push               edi                                           // 0x006031f1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x006031f2    8b7c240c
                         mov.s              esi, ecx                                      // 0x006031f6    8bf1
                         mov.s              ecx, edi                                      // 0x006031f8    8bcf
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x006031fa    e881e9ffff
                         mov.s              ecx, edi                                      // 0x006031ff    8bcf
                         {disp8} mov        word ptr [esi + 0x02], ax                     // 0x00603201    66894602
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x00603205    e896e9ffff
                         pop                edi                                           // 0x0060320a    5f
                         {disp8} mov        word ptr [esi + 0x06], ax                     // 0x0060320b    66894606
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x0060320f    c7460800000000
                         mov                word ptr [esi], -0x8000                       // 0x00603216    66c7060080
                         {disp8} mov        word ptr [esi + 0x04], -0x8000                // 0x0060321b    66c746040080
                         pop                esi                                           // 0x00603221    5e
                         ret                0x0004                                        // 0x00603222    c20400
                         nop                                                              // 0x00603225    90
                         nop                                                              // 0x00603226    90
                         nop                                                              // 0x00603227    90
                         nop                                                              // 0x00603228    90
                         nop                                                              // 0x00603229    90
                         nop                                                              // 0x0060322a    90
                         nop                                                              // 0x0060322b    90
                         nop                                                              // 0x0060322c    90
                         nop                                                              // 0x0060322d    90
                         nop                                                              // 0x0060322e    90
                         nop                                                              // 0x0060322f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00603230    8b442404
                         mov                dx, word ptr [eax]                            // 0x00603234    668b10
                         {disp8} mov        word ptr [ecx + 0x02], dx                     // 0x00603237    66895102
                         {disp8} mov        ax, word ptr [eax + 0x02]                     // 0x0060323b    668b4002
                         {disp8} mov        word ptr [ecx + 0x06], ax                     // 0x0060323f    66894106
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000000            // 0x00603243    c7410800000000
                         mov                word ptr [ecx], -0x8000                       // 0x0060324a    66c7010080
                         {disp8} mov        word ptr [ecx + 0x04], -0x8000                // 0x0060324f    66c741040080
                         ret                0x0004                                        // 0x00603255    c20400
                         nop                                                              // 0x00603258    90
                         nop                                                              // 0x00603259    90
                         nop                                                              // 0x0060325a    90
                         nop                                                              // 0x0060325b    90
                         nop                                                              // 0x0060325c    90
                         nop                                                              // 0x0060325d    90
                         nop                                                              // 0x0060325e    90
                         nop                                                              // 0x0060325f    90
_jmp_addr_0x00603260:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00603260    8b442404
                         mov                edx, dword ptr [eax]                          // 0x00603264    8b10
                         mov                dword ptr [ecx], edx                          // 0x00603266    8911
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00603268    8b4004
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0060326b    894104
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000000            // 0x0060326e    c7410800000000
                         ret                0x0004                                        // 0x00603275    c20400
                         nop                                                              // 0x00603278    90
                         nop                                                              // 0x00603279    90
                         nop                                                              // 0x0060327a    90
                         nop                                                              // 0x0060327b    90
                         nop                                                              // 0x0060327c    90
                         nop                                                              // 0x0060327d    90
                         nop                                                              // 0x0060327e    90
                         nop                                                              // 0x0060327f    90
?Set@MapCoords@@QAEXPBD@Z:  push               ebx                                           // 0x00603280    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00603281    8b5c2408
                         push               esi                                           // 0x00603285    56
                         push               edi                                           // 0x00603286    57
                         push               0x2c                                          // 0x00603287    6a2c
                         push               ebx                                           // 0x00603289    53
                         mov.s              esi, ecx                                      // 0x0060328a    8bf1
                         call               _strchr                                       // 0x0060328c    e85f5f1c00
                         push               ebx                                           // 0x00603291    53
                         mov.s              edi, eax                                      // 0x00603292    8bf8
                         call               _atof                                         // 0x00603294    e835621c00
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00603299    d80d08c48a00
                         add                esp, 0x0c                                     // 0x0060329f    83c40c
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x006032a2    d83550009300
                         call               __ftol                                        // 0x006032a8    e853e11900
                         test               edi, edi                                      // 0x006032ad    85ff
                         mov                dword ptr [esi], eax                          // 0x006032af    8906
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x006032b1    c7460800000000
                         {disp8} je         .Lbl_addr_0x006032f7                          // 0x006032b8    743d
                         inc                edi                                           // 0x006032ba    47
                         push               edi                                           // 0x006032bb    57
                         call               _atof                                         // 0x006032bc    e80d621c00
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006032c1    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x006032c7    d83550009300
                         call               __ftol                                        // 0x006032cd    e82ee11900
                         push               0x2c                                          // 0x006032d2    6a2c
                         push               edi                                           // 0x006032d4    57
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x006032d5    894604
                         call               _strchr                                       // 0x006032d8    e8135f1c00
                         add                esp, 0x0c                                     // 0x006032dd    83c40c
                         test               eax, eax                                      // 0x006032e0    85c0
                         {disp8} je         .Lbl_addr_0x0060330b                          // 0x006032e2    7427
                         inc                eax                                           // 0x006032e4    40
                         push               eax                                           // 0x006032e5    50
                         call               _atof                                         // 0x006032e6    e8e3611c00
                         add                esp, 0x04                                     // 0x006032eb    83c404
                         pop                edi                                           // 0x006032ee    5f
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x006032ef    d95e08
                         pop                esi                                           // 0x006032f2    5e
                         pop                ebx                                           // 0x006032f3    5b
                         ret                0x0004                                        // 0x006032f4    c20400
.Lbl_addr_0x006032f7:    {disp32} fld       dword ptr [__real@4@00000000000000000000]                   // 0x006032f7    d90598a38a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x006032fd    d83550009300
                         call               __ftol                                        // 0x00603303    e8f8e01900
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00603308    894604
.Lbl_addr_0x0060330b:    pop                edi                                           // 0x0060330b    5f
                         pop                esi                                           // 0x0060330c    5e
                         pop                ebx                                           // 0x0060330d    5b
                         ret                0x0004                                        // 0x0060330e    c20400
                         nop                                                              // 0x00603311    90
                         nop                                                              // 0x00603312    90
                         nop                                                              // 0x00603313    90
                         nop                                                              // 0x00603314    90
                         nop                                                              // 0x00603315    90
                         nop                                                              // 0x00603316    90
                         nop                                                              // 0x00603317    90
                         nop                                                              // 0x00603318    90
                         nop                                                              // 0x00603319    90
                         nop                                                              // 0x0060331a    90
                         nop                                                              // 0x0060331b    90
                         nop                                                              // 0x0060331c    90
                         nop                                                              // 0x0060331d    90
                         nop                                                              // 0x0060331e    90
                         nop                                                              // 0x0060331f    90
_jmp_addr_0x00603320:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00603320    8b442404
                         mov                edx, dword ptr [eax]                          // 0x00603324    8b10
                         mov                dword ptr [ecx], edx                          // 0x00603326    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00603328    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0060332b    895104
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0060332e    d94008
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x00603331    d95908
                         ret                0x0004                                        // 0x00603334    c20400
                         nop                                                              // 0x00603337    90
                         nop                                                              // 0x00603338    90
                         nop                                                              // 0x00603339    90
                         nop                                                              // 0x0060333a    90
                         nop                                                              // 0x0060333b    90
                         nop                                                              // 0x0060333c    90
                         nop                                                              // 0x0060333d    90
                         nop                                                              // 0x0060333e    90
                         nop                                                              // 0x0060333f    90
?Set@MapCoords@@QAEPAU1@ABULHPoint@@@Z:    push               esi                                           // 0x00603340    56
                         push               edi                                           // 0x00603341    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00603342    8b7c240c
                         fld                dword ptr [edi]                               // 0x00603346    d907
                         mov.s              esi, ecx                                      // 0x00603348    8bf1
                         {disp32} fmul      dword ptr [__real@4@400bcccccd0000000000]     // 0x0060334a    d80d00c48a00
                         call               __ftol                                        // 0x00603350    e8abe01900
                         mov                dword ptr [esi], eax                          // 0x00603355    8906
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x00603357    d94708
                         {disp32} fmul      dword ptr [__real@4@400bcccccd0000000000]     // 0x0060335a    d80d00c48a00
                         call               __ftol                                        // 0x00603360    e89be01900
                         mov.s              ecx, esi                                      // 0x00603365    8bce
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00603367    894604
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x0060336a    c7460800000000
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00603371    e81afd1f00
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x00603376    d94704
                         fsub               st, st(1)                                     // 0x00603379    d8e1
                         pop                edi                                           // 0x0060337b    5f
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0060337c    d95e08
                         pop                esi                                           // 0x0060337f    5e
                         fstp               st(0)                                         // 0x00603380    ddd8
                         ret                0x0004                                        // 0x00603382    c20400
                         nop                                                              // 0x00603385    90
                         nop                                                              // 0x00603386    90
                         nop                                                              // 0x00603387    90
                         nop                                                              // 0x00603388    90
                         nop                                                              // 0x00603389    90
                         nop                                                              // 0x0060338a    90
                         nop                                                              // 0x0060338b    90
                         nop                                                              // 0x0060338c    90
                         nop                                                              // 0x0060338d    90
                         nop                                                              // 0x0060338e    90
                         nop                                                              // 0x0060338f    90
_jmp_addr_0x00603390:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00603390    8b442404
                         push               eax                                           // 0x00603394    50
                         push               ecx                                           // 0x00603395    51
                         call               ?GetDistance@GUtils@@SAXABUMapCoords@@0@Z     // 0x00603396    e815991400
                         add                esp, 0x08                                     // 0x0060339b    83c408
                         ret                0x0004                                        // 0x0060339e    c20400
                         nop                                                              // 0x006033a1    90
                         nop                                                              // 0x006033a2    90
                         nop                                                              // 0x006033a3    90
                         nop                                                              // 0x006033a4    90
                         nop                                                              // 0x006033a5    90
                         nop                                                              // 0x006033a6    90
                         nop                                                              // 0x006033a7    90
                         nop                                                              // 0x006033a8    90
                         nop                                                              // 0x006033a9    90
                         nop                                                              // 0x006033aa    90
                         nop                                                              // 0x006033ab    90
                         nop                                                              // 0x006033ac    90
                         nop                                                              // 0x006033ad    90
                         nop                                                              // 0x006033ae    90
                         nop                                                              // 0x006033af    90
_jmp_addr_0x006033b0:    call               .Lbl_addr_0x006033c0                          // 0x006033b0    e80b000000
                         and                eax, dword ptr [esp + 0x04]                   // 0x006033b5    23442404
                         ret                0x0004                                        // 0x006033b9    c20400
                         nop                                                              // 0x006033bc    90
                         nop                                                              // 0x006033bd    90
                         nop                                                              // 0x006033be    90
                         nop                                                              // 0x006033bf    90
.Lbl_addr_0x006033c0:    push               esi                                           // 0x006033c0    56
                         mov.s              esi, ecx                                      // 0x006033c1    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006033c3    e868000000
                         test               eax, eax                                      // 0x006033c8    85c0
                         {disp8} jne        .Lbl_addr_0x006033d1                          // 0x006033ca    7505
                         or                 eax, -0x1                                     // 0x006033cc    83c8ff
                         pop                esi                                           // 0x006033cf    5e
                         ret                                                              // 0x006033d0    c3
.Lbl_addr_0x006033d1:    push               esi                                           // 0x006033d1    56
                         mov.s              ecx, esi                                      // 0x006033d2    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006033d4    e857000000
                         mov.s              ecx, eax                                      // 0x006033d9    8bc8
                         call               _jmp_addr_0x00601ce0                          // 0x006033db    e800e9ffff
                         pop                esi                                           // 0x006033e0    5e
                         ret                                                              // 0x006033e1    c3
                         nop                                                              // 0x006033e2    90
                         nop                                                              // 0x006033e3    90
                         nop                                                              // 0x006033e4    90
                         nop                                                              // 0x006033e5    90
                         nop                                                              // 0x006033e6    90
                         nop                                                              // 0x006033e7    90
                         nop                                                              // 0x006033e8    90
                         nop                                                              // 0x006033e9    90
                         nop                                                              // 0x006033ea    90
                         nop                                                              // 0x006033eb    90
                         nop                                                              // 0x006033ec    90
                         nop                                                              // 0x006033ed    90
                         nop                                                              // 0x006033ee    90
                         nop                                                              // 0x006033ef    90
_jmp_addr_0x006033f0:    push               esi                                           // 0x006033f0    56
                         mov.s              esi, ecx                                      // 0x006033f1    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006033f3    e838000000
                         test               eax, eax                                      // 0x006033f8    85c0
                         {disp8} jne        .Lbl_addr_0x006033fe                          // 0x006033fa    7502
                         pop                esi                                           // 0x006033fc    5e
                         ret                                                              // 0x006033fd    c3
.Lbl_addr_0x006033fe:    mov.s              ecx, esi                                      // 0x006033fe    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603400    e82b000000
                         mov.s              ecx, eax                                      // 0x00603405    8bc8
                         call               _jmp_addr_0x00601ea0                          // 0x00603407    e894eaffff
                         neg                eax                                           // 0x0060340c    f7d8
                         sbb.s              eax, eax                                      // 0x0060340e    1bc0
                         and                eax, 0xffff2000                               // 0x00603410    250020ffff
                         add                eax, 0x00010000                               // 0x00603415    0500000100
                         pop                esi                                           // 0x0060341a    5e
                         ret                                                              // 0x0060341b    c3
                         nop                                                              // 0x0060341c    90
                         nop                                                              // 0x0060341d    90
                         nop                                                              // 0x0060341e    90
                         nop                                                              // 0x0060341f    90
_jmp_addr_0x00603420:    {disp32} jmp       _jmp_addr_0x00601e80                          // 0x00603420    e95beaffff
                         nop                                                              // 0x00603425    90
                         nop                                                              // 0x00603426    90
                         nop                                                              // 0x00603427    90
                         nop                                                              // 0x00603428    90
                         nop                                                              // 0x00603429    90
                         nop                                                              // 0x0060342a    90
                         nop                                                              // 0x0060342b    90
                         nop                                                              // 0x0060342c    90
                         nop                                                              // 0x0060342d    90
                         nop                                                              // 0x0060342e    90
                         nop                                                              // 0x0060342f    90
?ToMap@MapCoords@@QBEPAUMapCell@@XZ:
                         push               esi                                           // 0x00603430    56
                         xor.s              esi, esi                                      // 0x00603431    33f6
                         {disp8} mov        si, word ptr [ecx + 0x02]                     // 0x00603433    668b7102
                         xor.s              edx, edx                                      // 0x00603437    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x06]                     // 0x00603439    668b5106
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0060343d    8b0d5c19d000
                         cmp                esi, dword ptr [ecx + 0x000059c8]             // 0x00603443    3bb1c8590000
                         {disp8} jae        .Lbl_addr_0x00603455                          // 0x00603449    730a
                         {disp32} mov       eax, dword ptr [ecx + 0x000059c4]             // 0x0060344b    8b81c4590000
                         cmp.s              edx, eax                                      // 0x00603451    3bd0
                         .byte              0x72, 0x4// {disp8} jb .Lbl_addr_0x00603459   // 0x00603453    7204
.Lbl_addr_0x00603455:    xor.s              eax, eax                                      // 0x00603455    33c0
                         pop                esi                                           // 0x00603457    5e
                         ret                                                              // 0x00603458    c3
.Lbl_addr_0x00603459:    imul               eax, esi                                      // 0x00603459    0fafc6
                         add.s              eax, edx                                      // 0x0060345c    03c2
                         {disp32} lea       eax, dword ptr [ecx + eax * 0x8 + 0x000059fc] // 0x0060345e    8d84c1fc590000
                         pop                esi                                           // 0x00603465    5e
                         ret                                                              // 0x00603466    c3
                         nop                                                              // 0x00603467    90
                         nop                                                              // 0x00603468    90
                         nop                                                              // 0x00603469    90
                         nop                                                              // 0x0060346a    90
                         nop                                                              // 0x0060346b    90
                         nop                                                              // 0x0060346c    90
                         nop                                                              // 0x0060346d    90
                         nop                                                              // 0x0060346e    90
                         nop                                                              // 0x0060346f    90
_jmp_addr_0x00603470:    {disp32} mov       edx, dword ptr [_game]                        // 0x00603470    8b155c19d000
                         xor.s              eax, eax                                      // 0x00603476    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00603478    668b4102
                         imul               eax, dword ptr [edx + 0x000059c4]             // 0x0060347c    0faf82c4590000
                         xor.s              edx, edx                                      // 0x00603483    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x06]                     // 0x00603485    668b5106
                         add.s              eax, edx                                      // 0x00603489    03c2
                         ret                                                              // 0x0060348b    c3
                         nop                                                              // 0x0060348c    90
                         nop                                                              // 0x0060348d    90
                         nop                                                              // 0x0060348e    90
                         nop                                                              // 0x0060348f    90
?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ:
                         push               esi                                           // 0x00603490    56
                         mov.s              esi, ecx                                      // 0x00603491    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603493    e898ffffff
                         test               eax, eax                                      // 0x00603498    85c0
                         {disp8} jne        .Lbl_addr_0x0060349e                          // 0x0060349a    7502
                         pop                esi                                           // 0x0060349c    5e
                         ret                                                              // 0x0060349d    c3
.Lbl_addr_0x0060349e:    mov.s              ecx, esi                                      // 0x0060349e    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006034a0    e88bffffff
                         mov                eax, dword ptr [eax]                          // 0x006034a5    8b00
                         pop                esi                                           // 0x006034a7    5e
                         ret                                                              // 0x006034a8    c3
                         nop                                                              // 0x006034a9    90
                         nop                                                              // 0x006034aa    90
                         nop                                                              // 0x006034ab    90
                         nop                                                              // 0x006034ac    90
                         nop                                                              // 0x006034ad    90
                         nop                                                              // 0x006034ae    90
                         nop                                                              // 0x006034af    90
?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ:
                                          push               esi                                           // 0x006034b0    56
                         mov.s              esi, ecx                                      // 0x006034b1    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006034b3    e878ffffff
                         test               eax, eax                                      // 0x006034b8    85c0
                         {disp8} jne        .Lbl_addr_0x006034be                          // 0x006034ba    7502
                         pop                esi                                           // 0x006034bc    5e
                         ret                                                              // 0x006034bd    c3
.Lbl_addr_0x006034be:    mov.s              ecx, esi                                      // 0x006034be    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006034c0    e86bffffff
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x006034c5    8b4004
                         pop                esi                                           // 0x006034c8    5e
                         ret                                                              // 0x006034c9    c3
                         call               dword ptr [__imp__DirectDrawCreateEx@4]       // 0x006034ca    ff1524908a00
?GetFirstIterator@MapCoords@@QBE?AUMapCellIterator@@XZ:    call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006034d0    e85bffffff
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x006034d5    8b4804
                         test               ecx, ecx                                      // 0x006034d8    85c9
                         mov                edx, 0x00000001                               // 0x006034da    ba01000000
                         {disp8} jne        .Lbl_addr_0x006034e5                          // 0x006034df    7504
                         mov                ecx, dword ptr [eax]                          // 0x006034e1    8b08
                         xor.s              edx, edx                                      // 0x006034e3    33d2
.Lbl_addr_0x006034e5:    push               esi                                           // 0x006034e5    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006034e6    8b742408
                         push               edi                                           // 0x006034ea    57
                         mov.s              edi, esi                                      // 0x006034eb    8bfe
                         mov                dword ptr [edi], ecx                          // 0x006034ed    890f
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x006034ef    895704
                         {disp8} mov        dword ptr [edi + 0x08], eax                   // 0x006034f2    894708
                         pop                edi                                           // 0x006034f5    5f
                         mov.s              eax, esi                                      // 0x006034f6    8bc6
                         pop                esi                                           // 0x006034f8    5e
                         ret                0x0004                                        // 0x006034f9    c20400
                         nop                                                              // 0x006034fc    90
                         nop                                                              // 0x006034fd    90
                         nop                                                              // 0x006034fe    90
                         nop                                                              // 0x006034ff    90
_jmp_addr_0x00603500:    push               ebx                                           // 0x00603500    53
                         push               esi                                           // 0x00603501    56
                         push               edi                                           // 0x00603502    57
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603503    e828ffffff
                         mov.s              edi, eax                                      // 0x00603508    8bf8
                         {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x0060350a    8b7704
                         test               esi, esi                                      // 0x0060350d    85f6
                         {disp8} jne        .Lbl_addr_0x00603517                          // 0x0060350f    7506
                         mov                esi, dword ptr [edi]                          // 0x00603511    8b37
                         test               esi, esi                                      // 0x00603513    85f6
                         {disp8} je         .Lbl_addr_0x00603526                          // 0x00603515    740f
.Lbl_addr_0x00603517:    mov                eax, dword ptr [esi]                          // 0x00603517    8b06
                         push               edi                                           // 0x00603519    57
                         mov.s              ecx, esi                                      // 0x0060351a    8bce
                         call               dword ptr [eax + 0x53c]                       // 0x0060351c    ff903c050000
                         mov.s              edx, eax                                      // 0x00603522    8bd0
                         {disp8} jmp        .Lbl_addr_0x00603528                          // 0x00603524    eb02
.Lbl_addr_0x00603526:    xor.s              edx, edx                                      // 0x00603526    33d2
.Lbl_addr_0x00603528:    test               esi, esi                                      // 0x00603528    85f6
                         mov                ecx, 0x00000001                               // 0x0060352a    b901000000
                         {disp8} jne        .Lbl_addr_0x00603535                          // 0x0060352f    7504
                         mov                esi, dword ptr [edi]                          // 0x00603531    8b37
                         xor.s              ecx, ecx                                      // 0x00603533    33c9
.Lbl_addr_0x00603535:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00603535    8b442410
                         mov.s              ebx, eax                                      // 0x00603539    8bd8
                         mov                dword ptr [ebx], esi                          // 0x0060353b    8933
                         {disp8} mov        dword ptr [ebx + 0x04], ecx                   // 0x0060353d    894b04
                         {disp8} mov        dword ptr [ebx + 0x08], edi                   // 0x00603540    897b08
                         pop                edi                                           // 0x00603543    5f
                         pop                esi                                           // 0x00603544    5e
                         {disp8} mov        dword ptr [ebx + 0x0c], edx                   // 0x00603545    89530c
                         pop                ebx                                           // 0x00603548    5b
                         ret                0x0004                                        // 0x00603549    c20400
                         nop                                                              // 0x0060354c    90
                         nop                                                              // 0x0060354d    90
                         nop                                                              // 0x0060354e    90
                         nop                                                              // 0x0060354f    90
                         push               esi                                           // 0x00603550    56
                         mov.s              esi, ecx                                      // 0x00603551    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603553    e8d8feffff
                         test               eax, eax                                      // 0x00603558    85c0
                         {disp8} je         .Lbl_addr_0x0060356f                          // 0x0060355a    7413
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0060355c    8b442408
                         push               eax                                           // 0x00603560    50
                         mov.s              ecx, esi                                      // 0x00603561    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603563    e8c8feffff
                         mov.s              ecx, eax                                      // 0x00603568    8bc8
                         call               @SetFirstObjectMobile__7MapCellFP6Object@12   // 0x0060356a    e8f1e5ffff
.Lbl_addr_0x0060356f:    pop                esi                                           // 0x0060356f    5e
                         ret                0x0004                                        // 0x00603570    c20400
                         nop                                                              // 0x00603573    90
                         nop                                                              // 0x00603574    90
                         nop                                                              // 0x00603575    90
                         nop                                                              // 0x00603576    90
                         nop                                                              // 0x00603577    90
                         nop                                                              // 0x00603578    90
                         nop                                                              // 0x00603579    90
                         nop                                                              // 0x0060357a    90
                         nop                                                              // 0x0060357b    90
                         nop                                                              // 0x0060357c    90
                         nop                                                              // 0x0060357d    90
                         nop                                                              // 0x0060357e    90
                         nop                                                              // 0x0060357f    90
                         push               esi                                           // 0x00603580    56
                         mov.s              esi, ecx                                      // 0x00603581    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603583    e8a8feffff
                         test               eax, eax                                      // 0x00603588    85c0
                         {disp8} je         .Lbl_addr_0x0060359f                          // 0x0060358a    7413
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0060358c    8b442408
                         push               eax                                           // 0x00603590    50
                         mov.s              ecx, esi                                      // 0x00603591    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603593    e898feffff
                         mov.s              ecx, eax                                      // 0x00603598    8bc8
                         call               @SetFirstObjectFixed__7MapCellFP6Object@12    // 0x0060359a    e8d1e5ffff
.Lbl_addr_0x0060359f:    pop                esi                                           // 0x0060359f    5e
                         ret                0x0004                                        // 0x006035a0    c20400
                         nop                                                              // 0x006035a3    90
                         nop                                                              // 0x006035a4    90
                         nop                                                              // 0x006035a5    90
                         nop                                                              // 0x006035a6    90
                         nop                                                              // 0x006035a7    90
                         nop                                                              // 0x006035a8    90
                         nop                                                              // 0x006035a9    90
                         nop                                                              // 0x006035aa    90
                         nop                                                              // 0x006035ab    90
                         nop                                                              // 0x006035ac    90
                         nop                                                              // 0x006035ad    90
                         nop                                                              // 0x006035ae    90
                         nop                                                              // 0x006035af    90
?IsWater@MapCoords@@QBEIXZ:
                              xor.s              eax, eax                                      // 0x006035b0    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x006035b2    668b4102
                         xor.s              edx, edx                                      // 0x006035b6    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x06]                     // 0x006035b8    668b5106
                         push               esi                                           // 0x006035bc    56
                         test               eax, eax                                      // 0x006035bd    85c0
                         {disp8} jl         .Lbl_addr_0x00603617                          // 0x006035bf    7c56
                         cmp                eax, 0x000001ff                               // 0x006035c1    3dff010000
                         {disp8} jg         .Lbl_addr_0x00603617                          // 0x006035c6    7f4f
                         test               edx, edx                                      // 0x006035c8    85d2
                         {disp8} jl         .Lbl_addr_0x00603617                          // 0x006035ca    7c4b
                         cmp                edx, 0x000001ff                               // 0x006035cc    81faff010000
                         {disp8} jg         .Lbl_addr_0x00603617                          // 0x006035d2    7f43
                         mov.s              ecx, eax                                      // 0x006035d4    8bc8
                         sar                ecx, 4                                        // 0x006035d6    c1f904
                         push               ebx                                           // 0x006035d9    53
                         xor.s              ebx, ebx                                      // 0x006035da    33db
                         shl                ecx, 5                                        // 0x006035dc    c1e105
                         mov.s              esi, edx                                      // 0x006035df    8bf2
                         sar                esi, 4                                        // 0x006035e1    c1fe04
                         {disp32} mov       bl, byte ptr [ecx + esi + ?g_index_block@LH3DIsland@@2PAY0CA@EA]   // 0x006035e4    8a9c3164c9e900
                         mov.s              ecx, ebx                                      // 0x006035eb    8bcb
                         test               ecx, ecx                                      // 0x006035ed    85c9
                         pop                ebx                                           // 0x006035ef    5b
                         {disp8} je         .Lbl_addr_0x00603617                          // 0x006035f0    7425
                         and                eax, 0x0f                                     // 0x006035f2    83e00f
                         mov.s              esi, eax                                      // 0x006035f5    8bf0
                         shl                esi, 4                                        // 0x006035f7    c1e604
                         add.s              esi, eax                                      // 0x006035fa    03f0
                         and                edx, 0x0f                                     // 0x006035fc    83e20f
                         add.s              esi, edx                                      // 0x006035ff    03f2
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + ?g_ptr_blocks@LH3DIsland@@2PAPAULandBlock@@A]       // 0x00603601    8b148d64c5e900
                         lea                eax, dword ptr [edx + esi * 0x8]              // 0x00603608    8d04f2
                         test               eax, eax                                      // 0x0060360b    85c0
                         {disp8} je         .Lbl_addr_0x00603617                          // 0x0060360d    7408
                         {disp8} mov        al, byte ptr [eax + 0x06]                     // 0x0060360f    8a4006
                         pop                esi                                           // 0x00603612    5e
                         and                eax, 0x10                                     // 0x00603613    83e010
                         ret                                                              // 0x00603616    c3
.Lbl_addr_0x00603617:    mov                eax, 0x00000001                               // 0x00603617    b801000000
                         pop                esi                                           // 0x0060361c    5e
                         ret                                                              // 0x0060361d    c3
                         nop                                                              // 0x0060361e    90
                         nop                                                              // 0x0060361f    90
_jmp_addr_0x00603620:    xor.s              eax, eax                                      // 0x00603620    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00603622    668b4102
                         xor.s              edx, edx                                      // 0x00603626    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x06]                     // 0x00603628    668b5106
                         push               esi                                           // 0x0060362c    56
                         test               eax, eax                                      // 0x0060362d    85c0
                         {disp8} jl         .Lbl_addr_0x00603689                          // 0x0060362f    7c58
                         cmp                eax, 0x000001ff                               // 0x00603631    3dff010000
                         {disp8} jg         .Lbl_addr_0x00603689                          // 0x00603636    7f51
                         test               edx, edx                                      // 0x00603638    85d2
                         {disp8} jl         .Lbl_addr_0x00603689                          // 0x0060363a    7c4d
                         cmp                edx, 0x000001ff                               // 0x0060363c    81faff010000
                         {disp8} jg         .Lbl_addr_0x00603689                          // 0x00603642    7f45
                         mov.s              ecx, eax                                      // 0x00603644    8bc8
                         sar                ecx, 4                                        // 0x00603646    c1f904
                         push               ebx                                           // 0x00603649    53
                         xor.s              ebx, ebx                                      // 0x0060364a    33db
                         shl                ecx, 5                                        // 0x0060364c    c1e105
                         mov.s              esi, edx                                      // 0x0060364f    8bf2
                         sar                esi, 4                                        // 0x00603651    c1fe04
                         {disp32} mov       bl, byte ptr [ecx + esi + ?g_index_block@LH3DIsland@@2PAY0CA@EA]   // 0x00603654    8a9c3164c9e900
                         mov.s              ecx, ebx                                      // 0x0060365b    8bcb
                         test               ecx, ecx                                      // 0x0060365d    85c9
                         pop                ebx                                           // 0x0060365f    5b
                         {disp8} je         .Lbl_addr_0x00603689                          // 0x00603660    7427
                         and                eax, 0x0f                                     // 0x00603662    83e00f
                         mov.s              esi, eax                                      // 0x00603665    8bf0
                         shl                esi, 4                                        // 0x00603667    c1e604
                         add.s              esi, eax                                      // 0x0060366a    03f0
                         and                edx, 0x0f                                     // 0x0060366c    83e20f
                         add.s              esi, edx                                      // 0x0060366f    03f2
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + ?g_ptr_blocks@LH3DIsland@@2PAPAULandBlock@@A]       // 0x00603671    8b148d64c5e900
                         lea                eax, dword ptr [edx + esi * 0x8]              // 0x00603678    8d04f2
                         test               eax, eax                                      // 0x0060367b    85c0
                         {disp8} je         .Lbl_addr_0x00603689                          // 0x0060367d    740a
                         {disp8} mov        al, byte ptr [eax + 0x04]                     // 0x0060367f    8a4004
                         cmp                al, 0x04                                      // 0x00603682    3c04
                         pop                esi                                           // 0x00603684    5e
                         sbb.s              eax, eax                                      // 0x00603685    1bc0
                         inc                eax                                           // 0x00603687    40
                         ret                                                              // 0x00603688    c3
.Lbl_addr_0x00603689:    xor.s              al, al                                        // 0x00603689    32c0
                         cmp                al, 0x04                                      // 0x0060368b    3c04
                         pop                esi                                           // 0x0060368d    5e
                         sbb.s              eax, eax                                      // 0x0060368e    1bc0
                         inc                eax                                           // 0x00603690    40
                         ret                                                              // 0x00603691    c3
                         nop                                                              // 0x00603692    90
                         nop                                                              // 0x00603693    90
                         nop                                                              // 0x00603694    90
                         nop                                                              // 0x00603695    90
                         nop                                                              // 0x00603696    90
                         nop                                                              // 0x00603697    90
                         nop                                                              // 0x00603698    90
                         nop                                                              // 0x00603699    90
                         nop                                                              // 0x0060369a    90
                         nop                                                              // 0x0060369b    90
                         nop                                                              // 0x0060369c    90
                         nop                                                              // 0x0060369d    90
                         nop                                                              // 0x0060369e    90
                         nop                                                              // 0x0060369f    90
_jmp_addr_0x006036a0:    xor.s              eax, eax                                      // 0x006036a0    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x006036a2    668b4102
                         xor.s              edx, edx                                      // 0x006036a6    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x06]                     // 0x006036a8    668b5106
                         push               esi                                           // 0x006036ac    56
                         test               eax, eax                                      // 0x006036ad    85c0
                         {disp8} jl         .Lbl_addr_0x00603717                          // 0x006036af    7c66
                         cmp                eax, 0x000001ff                               // 0x006036b1    3dff010000
                         {disp8} jg         .Lbl_addr_0x00603717                          // 0x006036b6    7f5f
                         test               edx, edx                                      // 0x006036b8    85d2
                         {disp8} jl         .Lbl_addr_0x00603717                          // 0x006036ba    7c5b
                         cmp                edx, 0x000001ff                               // 0x006036bc    81faff010000
                         {disp8} jg         .Lbl_addr_0x00603717                          // 0x006036c2    7f53
                         mov.s              ecx, eax                                      // 0x006036c4    8bc8
                         sar                ecx, 4                                        // 0x006036c6    c1f904
                         push               ebx                                           // 0x006036c9    53
                         xor.s              ebx, ebx                                      // 0x006036ca    33db
                         shl                ecx, 5                                        // 0x006036cc    c1e105
                         mov.s              esi, edx                                      // 0x006036cf    8bf2
                         sar                esi, 4                                        // 0x006036d1    c1fe04
                         {disp32} mov       bl, byte ptr [ecx + esi + ?g_index_block@LH3DIsland@@2PAY0CA@EA]   // 0x006036d4    8a9c3164c9e900
                         mov.s              ecx, ebx                                      // 0x006036db    8bcb
                         test               ecx, ecx                                      // 0x006036dd    85c9
                         pop                ebx                                           // 0x006036df    5b
                         {disp8} je         .Lbl_addr_0x00603717                          // 0x006036e0    7435
                         and                eax, 0x0f                                     // 0x006036e2    83e00f
                         mov.s              esi, eax                                      // 0x006036e5    8bf0
                         shl                esi, 4                                        // 0x006036e7    c1e604
                         add.s              esi, eax                                      // 0x006036ea    03f0
                         and                edx, 0x0f                                     // 0x006036ec    83e20f
                         add.s              esi, edx                                      // 0x006036ef    03f2
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + ?g_ptr_blocks@LH3DIsland@@2PAPAULandBlock@@A]       // 0x006036f1    8b148d64c5e900
                         lea                eax, dword ptr [edx + esi * 0x8]              // 0x006036f8    8d04f2
                         test               eax, eax                                      // 0x006036fb    85c0
                         {disp8} je         .Lbl_addr_0x00603717                          // 0x006036fd    7418
                         {disp8} mov        ax, word ptr [eax + 0x06]                     // 0x006036ff    668b4006
                         mov.s              cl, al                                        // 0x00603703    8ac8
                         not                cl                                            // 0x00603705    f6d1
                         test               cl, 0x10                                      // 0x00603707    f6c110
                         {disp8} je         .Lbl_addr_0x00603717                          // 0x0060370a    740b
                         test               al, 0x20                                      // 0x0060370c    a820
                         {disp8} je         .Lbl_addr_0x00603717                          // 0x0060370e    7407
                         mov                eax, 0x00000001                               // 0x00603710    b801000000
                         pop                esi                                           // 0x00603715    5e
                         ret                                                              // 0x00603716    c3
.Lbl_addr_0x00603717:    xor.s              eax, eax                                      // 0x00603717    33c0
                         pop                esi                                           // 0x00603719    5e
                         ret                                                              // 0x0060371a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x0060371b    e8d9e0dfff
_jmp_addr_0x00603720:    xor.s              eax, eax                                      // 0x00603720    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00603722    668b4102
                         xor.s              edx, edx                                      // 0x00603726    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x06]                     // 0x00603728    668b5106
                         push               esi                                           // 0x0060372c    56
                         test               eax, eax                                      // 0x0060372d    85c0
                         {disp8} jl         .Lbl_addr_0x0060378c                          // 0x0060372f    7c5b
                         cmp                eax, 0x000001ff                               // 0x00603731    3dff010000
                         {disp8} jg         .Lbl_addr_0x0060378c                          // 0x00603736    7f54
                         test               edx, edx                                      // 0x00603738    85d2
                         {disp8} jl         .Lbl_addr_0x0060378c                          // 0x0060373a    7c50
                         cmp                edx, 0x000001ff                               // 0x0060373c    81faff010000
                         {disp8} jg         .Lbl_addr_0x0060378c                          // 0x00603742    7f48
                         mov.s              ecx, eax                                      // 0x00603744    8bc8
                         sar                ecx, 4                                        // 0x00603746    c1f904
                         push               ebx                                           // 0x00603749    53
                         xor.s              ebx, ebx                                      // 0x0060374a    33db
                         shl                ecx, 5                                        // 0x0060374c    c1e105
                         mov.s              esi, edx                                      // 0x0060374f    8bf2
                         sar                esi, 4                                        // 0x00603751    c1fe04
                         {disp32} mov       bl, byte ptr [ecx + esi + ?g_index_block@LH3DIsland@@2PAY0CA@EA]   // 0x00603754    8a9c3164c9e900
                         mov.s              ecx, ebx                                      // 0x0060375b    8bcb
                         test               ecx, ecx                                      // 0x0060375d    85c9
                         pop                ebx                                           // 0x0060375f    5b
                         {disp8} je         .Lbl_addr_0x0060378c                          // 0x00603760    742a
                         and                eax, 0x0f                                     // 0x00603762    83e00f
                         mov.s              esi, eax                                      // 0x00603765    8bf0
                         shl                esi, 4                                        // 0x00603767    c1e604
                         add.s              esi, eax                                      // 0x0060376a    03f0
                         and                edx, 0x0f                                     // 0x0060376c    83e20f
                         add.s              esi, edx                                      // 0x0060376f    03f2
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + ?g_ptr_blocks@LH3DIsland@@2PAPAULandBlock@@A]       // 0x00603771    8b148d64c5e900
                         lea                eax, dword ptr [edx + esi * 0x8]              // 0x00603778    8d04f2
                         test               eax, eax                                      // 0x0060377b    85c0
                         {disp8} je         .Lbl_addr_0x0060378c                          // 0x0060377d    740d
                         {disp8} mov        al, byte ptr [eax + 0x06]                     // 0x0060377f    8a4006
                         not                al                                            // 0x00603782    f6d0
                         pop                esi                                           // 0x00603784    5e
                         shr                eax, 4                                        // 0x00603785    c1e804
                         and                eax, 0x01                                     // 0x00603788    83e001
                         ret                                                              // 0x0060378b    c3
.Lbl_addr_0x0060378c:    xor.s              eax, eax                                      // 0x0060378c    33c0
                         pop                esi                                           // 0x0060378e    5e
                         ret                                                              // 0x0060378f    c3
_jmp_addr_0x00603790:    push               esi                                           // 0x00603790    56
                         mov.s              esi, ecx                                      // 0x00603791    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603793    e898fcffff
                         test               eax, eax                                      // 0x00603798    85c0
                         {disp8} jne        .Lbl_addr_0x0060379e                          // 0x0060379a    7502
                         pop                esi                                           // 0x0060379c    5e
                         ret                                                              // 0x0060379d    c3
.Lbl_addr_0x0060379e:    mov.s              ecx, esi                                      // 0x0060379e    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006037a0    e88bfcffff
                         mov.s              ecx, eax                                      // 0x006037a5    8bc8
                         call               _jmp_addr_0x00601ea0                          // 0x006037a7    e8f4e6ffff
                         pop                esi                                           // 0x006037ac    5e
                         ret                                                              // 0x006037ad    c3
                         nop                                                              // 0x006037ae    90
                         nop                                                              // 0x006037af    90
                         push               ebx                                           // 0x006037b0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x006037b1    8b5c2408
                         push               esi                                           // 0x006037b5    56
                         push               edi                                           // 0x006037b6    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x006037b7    8b7c2414
                         push               edi                                           // 0x006037bb    57
                         push               ebx                                           // 0x006037bc    53
                         mov.s              esi, ecx                                      // 0x006037bd    8bf1
                         call               _jmp_addr_0x0074d3a0                          // 0x006037bf    e8dc9b1400
                         mov                ecx, dword ptr [esi]                          // 0x006037c4    8b0e
                         add.s              ecx, eax                                      // 0x006037c6    03c8
                         push               edi                                           // 0x006037c8    57
                         push               ebx                                           // 0x006037c9    53
                         mov                dword ptr [esi], ecx                          // 0x006037ca    890e
                         call               _jmp_addr_0x0074d3c0                          // 0x006037cc    e8ef9b1400
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x006037d1    8b4e04
                         add                esp, 0x10                                     // 0x006037d4    83c410
                         add.s              ecx, eax                                      // 0x006037d7    03c8
                         pop                edi                                           // 0x006037d9    5f
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x006037da    894e04
                         pop                esi                                           // 0x006037dd    5e
                         pop                ebx                                           // 0x006037de    5b
                         ret                0x0008                                        // 0x006037df    c20800
                         nop                                                              // 0x006037e2    90
                         nop                                                              // 0x006037e3    90
                         nop                                                              // 0x006037e4    90
                         nop                                                              // 0x006037e5    90
                         nop                                                              // 0x006037e6    90
                         nop                                                              // 0x006037e7    90
                         nop                                                              // 0x006037e8    90
                         nop                                                              // 0x006037e9    90
                         nop                                                              // 0x006037ea    90
                         nop                                                              // 0x006037eb    90
                         nop                                                              // 0x006037ec    90
                         nop                                                              // 0x006037ed    90
                         nop                                                              // 0x006037ee    90
                         nop                                                              // 0x006037ef    90
                         push               ebx                                           // 0x006037f0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x006037f1    8b5c2408
                         push               esi                                           // 0x006037f5    56
                         push               edi                                           // 0x006037f6    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x006037f7    8b7c2414
                         push               edi                                           // 0x006037fb    57
                         push               ebx                                           // 0x006037fc    53
                         mov.s              esi, ecx                                      // 0x006037fd    8bf1
                         call               _jmp_addr_0x0074d360                          // 0x006037ff    e85c9b1400
                         call               __ftol                                        // 0x00603804    e8f7db1900
                         mov                ecx, dword ptr [esi]                          // 0x00603809    8b0e
                         add.s              ecx, eax                                      // 0x0060380b    03c8
                         push               edi                                           // 0x0060380d    57
                         push               ebx                                           // 0x0060380e    53
                         mov                dword ptr [esi], ecx                          // 0x0060380f    890e
                         call               _jmp_addr_0x0074d380                          // 0x00603811    e86a9b1400
                         add                esp, 0x10                                     // 0x00603816    83c410
                         call               __ftol                                        // 0x00603819    e8e2db1900
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0060381e    8b4e04
                         add.s              ecx, eax                                      // 0x00603821    03c8
                         pop                edi                                           // 0x00603823    5f
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x00603824    894e04
                         pop                esi                                           // 0x00603827    5e
                         pop                ebx                                           // 0x00603828    5b
                         ret                0x0008                                        // 0x00603829    c20800
                         nop                                                              // 0x0060382c    90
                         nop                                                              // 0x0060382d    90
                         nop                                                              // 0x0060382e    90
                         nop                                                              // 0x0060382f    90
_jmp_addr_0x00603830:    push               0x0                                           // 0x00603830    6a00
                         push               ecx                                           // 0x00603832    51
                         call               _jmp_addr_0x005cd630                          // 0x00603833    e8f89dfcff
                         add                esp, 0x08                                     // 0x00603838    83c408
                         ret                                                              // 0x0060383b    c3
                         nop                                                              // 0x0060383c    90
                         nop                                                              // 0x0060383d    90
                         nop                                                              // 0x0060383e    90
                         nop                                                              // 0x0060383f    90
_jmp_addr_0x00603840:    call               .Lbl_addr_0x006033c0                          // 0x00603840    e87bfbffff
                         test               al, 0x02                                      // 0x00603845    a802
                         {disp8} je         .Lbl_addr_0x00603853                          // 0x00603847    740a
                         test               al, 0x08                                      // 0x00603849    a808
                         {disp8} jne        .Lbl_addr_0x00603853                          // 0x0060384b    7506
                         mov                eax, 0x00000001                               // 0x0060384d    b801000000
                         ret                                                              // 0x00603852    c3
.Lbl_addr_0x00603853:    xor.s              eax, eax                                      // 0x00603853    33c0
                         ret                                                              // 0x00603855    c3
                         nop                                                              // 0x00603856    90
                         nop                                                              // 0x00603857    90
                         nop                                                              // 0x00603858    90
                         nop                                                              // 0x00603859    90
                         nop                                                              // 0x0060385a    90
                         nop                                                              // 0x0060385b    90
                         nop                                                              // 0x0060385c    90
                         nop                                                              // 0x0060385d    90
                         nop                                                              // 0x0060385e    90
                         nop                                                              // 0x0060385f    90
_jmp_addr_0x00603860:    push               ecx                                           // 0x00603860    51
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00603861    8b44240c
                         test               eax, eax                                      // 0x00603865    85c0
                         push               esi                                           // 0x00603867    56
                         mov.s              esi, ecx                                      // 0x00603868    8bf1
                         {disp8} je         .Lbl_addr_0x0060388f                          // 0x0060386a    7423
                         push               -0x1                                          // 0x0060386c    6aff
                         push               eax                                           // 0x0060386e    50
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0060386f    8d442418
                         push               eax                                           // 0x00603873    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00603874    8d4c2410
                         push               ecx                                           // 0x00603878    51
                         mov.s              ecx, esi                                      // 0x00603879    8bce
                         call               _jmp_addr_0x00601f90                          // 0x0060387b    e810e7ffff
                         cmp                eax, 0x01                                     // 0x00603880    83f801
                         {disp8} jne        .Lbl_addr_0x0060388f                          // 0x00603883    750a
                         mov                eax, 0x0000000e                               // 0x00603885    b80e000000
                         pop                esi                                           // 0x0060388a    5e
                         pop                ecx                                           // 0x0060388b    59
                         ret                0x0010                                        // 0x0060388c    c21000
.Lbl_addr_0x0060388f:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0060388f    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00603893    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00603897    8b4c240c
                         push               edx                                           // 0x0060389b    52
                         push               eax                                           // 0x0060389c    50
                         push               ecx                                           // 0x0060389d    51
                         mov.s              ecx, esi                                      // 0x0060389e    8bce
                         call               _jmp_addr_0x006038b0                          // 0x006038a0    e80b000000
                         pop                esi                                           // 0x006038a5    5e
                         pop                ecx                                           // 0x006038a6    59
                         ret                0x0010                                        // 0x006038a7    c21000
                         call               dword ptr [__imp__DirectInputCreateA@4]       // 0x006038aa    ff1534908a00
_jmp_addr_0x006038b0:    sub                esp, 0x18                                     // 0x006038b0    83ec18
                         push               ebx                                           // 0x006038b3    53
                         push               ebp                                           // 0x006038b4    55
                         mov.s              ebp, ecx                                      // 0x006038b5    8be9
                         mov.s              eax, ebp                                      // 0x006038b7    8bc5
                         mov                ecx, dword ptr [eax]                          // 0x006038b9    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x006038bb    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006038be    8b4008
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x006038c1    894c2414
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x372330]        // 0x006038c5    8b0d3083d300
                         xor.s              ebx, ebx                                      // 0x006038cb    33db
                         cmp.s              ecx, ebx                                      // 0x006038cd    3bcb
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x006038cf    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006038d3    8944241c
                         {disp8} jne        .Lbl_addr_0x00603900                          // 0x006038d7    7527
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x006038d9    8b4c242c
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x006038dd    8b542428
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x006038e1    8b442424
                         push               ecx                                           // 0x006038e5    51
                         push               edx                                           // 0x006038e6    52
                         push               eax                                           // 0x006038e7    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006038e8    8d4c2420
                         push               ebx                                           // 0x006038ec    53
                         push               ecx                                           // 0x006038ed    51
                         call               ?Create@Game3DObject@@SAPAV1@ABUMapCoords@@W4ObjectType@LH3DObject@@W4MESH_LIST@@MM@Z                          // 0x006038ee    e88d740300
                         add                esp, 0x14                                     // 0x006038f3    83c414
                         {disp32} mov       dword ptr [data_bytes + 0x372330], eax        // 0x006038f6    a33083d300
                         {disp32} jmp       .Lbl_addr_0x00603b10                          // 0x006038fb    e910020000
.Lbl_addr_0x00603900:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00603900    8b442424
                         cmp.s              eax, ebx                                      // 0x00603904    3bc3
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAUPack@1@A]        // 0x00603906    8b1534fee900
                         push               esi                                           // 0x0060390c    56
                         push               edi                                           // 0x0060390d    57
                         {disp8} jl         .Lbl_addr_0x00603914                          // 0x0060390e    7c04
                         cmp                eax, dword ptr [edx]                          // 0x00603910    3b02
                         {disp8} jl         .Lbl_addr_0x00603916                          // 0x00603912    7c02
.Lbl_addr_0x00603914:    xor.s              eax, eax                                      // 0x00603914    33c0
.Lbl_addr_0x00603916:    mov                esi, dword ptr [ecx]                          // 0x00603916    8b31
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x00603918    8b548204
                         push               ebx                                           // 0x0060391c    53
                         push               ebx                                           // 0x0060391d    53
                         call               dword ptr [esi + 0xf4]                        // 0x0060391e    ff96f4000000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00603924    8b542424
                         {disp32} mov       esi, dword ptr [data_bytes + 0x372330]        // 0x00603928    8b353083d300
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0060392e    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00603932    8954242c
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00603936    e855f71f00
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x0060393b    d844242c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0060393f    d95c2414
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00603943    db44241c
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00603947    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0060394d    d95c2410
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x00603951    db442420
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00603955    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0060395b    d95c2418
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0060395f    d9442430
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x00603963    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00603969    d9442434
                         fnstsw             ax                                            // 0x0060396d    dfe0
                         {disp32} fcomp     dword ptr [__real@4@3fff8000000000000000]                   // 0x0060396f    d81d90a38a00
                         test               ah, 0x40                                      // 0x00603975    f6c440
                         fnstsw             ax                                            // 0x00603978    dfe0
                         {disp32} jne       .Lbl_addr_0x00603ace                          // 0x0060397a    0f854e010000
                         test               ah, 0x40                                      // 0x00603980    f6c440
                         {disp32} jne       .Lbl_addr_0x00603a44                          // 0x00603983    0f85bb000000
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00603989    8b442434
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0060398d    d9442410
                         {disp8} mov        dword ptr [esi + 0x40], ebx                   // 0x00603991    895e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebx                   // 0x00603994    895e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebx                   // 0x00603997    895e38
                         {disp8} mov        dword ptr [esi + 0x30], ebx                   // 0x0060399a    895e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x0060399d    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x006039a0    895e28
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x006039a3    895e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                   // 0x006039a6    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x006039a9    895e18
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x006039ac    894634
                         mov.s              ecx, eax                                      // 0x006039af    8bc8
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x006039b1    894e24
                         mov.s              edx, eax                                      // 0x006039b4    8bd0
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x006039b6    895614
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x006039b9    d84638
                         {disp8} fstp       dword ptr [esi + 0x38]                        // 0x006039bc    d95e38
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x006039bf    d9442414
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x006039c3    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x006039c6    d95e3c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x006039c9    d9442418
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x006039cd    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x006039d0    d95e40
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x006039d3    d9442430
                         fcos                                                             // 0x006039d7    d9ff
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x006039d9    d9442430
                         fsin                                                             // 0x006039dd    d9fe
                         fld                st(0)                                         // 0x006039df    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x006039e1    d84e14
                         fld                st(1)                                         // 0x006039e4    d9c1
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x006039e6    d84e2c
                         fld                st(3)                                         // 0x006039e9    d9c3
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x006039eb    d84e14
                         faddp              st(1), st                                     // 0x006039ee    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x006039f0    d95e14
                         fld                st(2)                                         // 0x006039f3    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x006039f5    d84e2c
                         fsub               st, st(1)                                     // 0x006039f8    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x006039fa    d95e2c
                         fstp               st(0)                                         // 0x006039fd    ddd8
                         fld                st(0)                                         // 0x006039ff    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00603a01    d84e18
                         fld                st(1)                                         // 0x00603a04    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00603a06    d84e30
                         fld                st(3)                                         // 0x00603a09    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00603a0b    d84e18
                         faddp              st(1), st                                     // 0x00603a0e    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x00603a10    d95e18
                         fld                st(2)                                         // 0x00603a13    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00603a15    d84e30
                         fsub               st, st(1)                                     // 0x00603a18    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]                        // 0x00603a1a    d95e30
                         fstp               st(0)                                         // 0x00603a1d    ddd8
                         fld                st(0)                                         // 0x00603a1f    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00603a21    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00603a24    d95c242c
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00603a28    d84e34
                         fld                st(1)                                         // 0x00603a2b    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00603a2d    d84e1c
                         faddp              st(1), st                                     // 0x00603a30    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00603a32    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00603a35    d84e34
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00603a38    d864242c
                         {disp8} fstp       dword ptr [esi + 0x34]                        // 0x00603a3c    d95e34
                         {disp32} jmp       .Lbl_addr_0x00603afb                          // 0x00603a3f    e9b7000000
.Lbl_addr_0x00603a44:    {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00603a44    8d7e14
                         mov.s              ecx, edi                                      // 0x00603a47    8bcf
                         call               ?SetIdentityMatrix@LHMatrix@@QAEXXZ                 // 0x00603a49    e8b2fadfff
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00603a4e    d9442430
                         fcos                                                             // 0x00603a52    d9ff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00603a54    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00603a58    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00603a5c    8b542418
                         {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x00603a60    894724
                         {disp8} mov        dword ptr [edi + 0x28], ecx                   // 0x00603a63    894f28
                         {disp8} mov        dword ptr [edi + 0x2c], edx                   // 0x00603a66    89572c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00603a69    d9442430
                         fsin                                                             // 0x00603a6d    d9fe
                         fld                st(0)                                         // 0x00603a6f    d9c0
                         fmul               dword ptr [edi]                               // 0x00603a71    d80f
                         fld                st(1)                                         // 0x00603a73    d9c1
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x00603a75    d84f18
                         fld                st(3)                                         // 0x00603a78    d9c3
                         fmul               dword ptr [edi]                               // 0x00603a7a    d80f
                         faddp              st(1), st                                     // 0x00603a7c    dec1
                         fstp               dword ptr [edi]                               // 0x00603a7e    d91f
                         fld                st(2)                                         // 0x00603a80    d9c2
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x00603a82    d84f18
                         fsub               st, st(1)                                     // 0x00603a85    d8e1
                         {disp8} fstp       dword ptr [edi + 0x18]                        // 0x00603a87    d95f18
                         fstp               st(0)                                         // 0x00603a8a    ddd8
                         fld                st(0)                                         // 0x00603a8c    d9c0
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x00603a8e    d84f04
                         fld                st(1)                                         // 0x00603a91    d9c1
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x00603a93    d84f1c
                         fld                st(3)                                         // 0x00603a96    d9c3
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x00603a98    d84f04
                         faddp              st(1), st                                     // 0x00603a9b    dec1
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x00603a9d    d95f04
                         fld                st(2)                                         // 0x00603aa0    d9c2
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x00603aa2    d84f1c
                         fsub               st, st(1)                                     // 0x00603aa5    d8e1
                         {disp8} fstp       dword ptr [edi + 0x1c]                        // 0x00603aa7    d95f1c
                         fstp               st(0)                                         // 0x00603aaa    ddd8
                         fld                st(0)                                         // 0x00603aac    d9c0
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x00603aae    d84f08
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00603ab1    d95c242c
                         {disp8} fmul       dword ptr [edi + 0x20]                        // 0x00603ab5    d84f20
                         fld                st(1)                                         // 0x00603ab8    d9c1
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x00603aba    d84f08
                         faddp              st(1), st                                     // 0x00603abd    dec1
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x00603abf    d95f08
                         {disp8} fmul       dword ptr [edi + 0x20]                        // 0x00603ac2    d84f20
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00603ac5    d864242c
                         {disp8} fstp       dword ptr [edi + 0x20]                        // 0x00603ac9    d95f20
                         {disp8} jmp        .Lbl_addr_0x00603afb                          // 0x00603acc    eb2d
.Lbl_addr_0x00603ace:    test               ah, 0x40                                      // 0x00603ace    f6c440
                         {disp8} jne        .Lbl_addr_0x00603aef                          // 0x00603ad1    751c
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00603ad3    8b442434
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00603ad7    8d7e14
                         push               eax                                           // 0x00603ada    50
                         mov.s              ecx, edi                                      // 0x00603adb    8bcf
                         call               _jmp_addr_0x00519320                          // 0x00603add    e83e58f1ff
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00603ae2    8d542410
                         mov.s              ecx, edi                                      // 0x00603ae6    8bcf
                         call               ?PostTranslation@LHMatrix@@QAEXABULHPoint@@@Z      // 0x00603ae8    e883fadfff
                         {disp8} jmp        .Lbl_addr_0x00603afb                          // 0x00603aed    eb0c
.Lbl_addr_0x00603aef:    {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00603aef    8d542410
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00603af3    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABULHPoint@@@Z     // 0x00603af6    e835fadfff
.Lbl_addr_0x00603afb:    {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00603afb    8b4c2434
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00603aff    8b542430
                         {disp8} mov        dword ptr [esi + 0x44], ecx                   // 0x00603b03    894e44
                         {disp8} mov        dword ptr [esi + 0x48], edx                   // 0x00603b06    895648
                         {disp32} mov       eax, dword ptr [data_bytes + 0x372330]        // 0x00603b09    a13083d300
                         pop                edi                                           // 0x00603b0e    5f
                         pop                esi                                           // 0x00603b0f    5e
.Lbl_addr_0x00603b10:    cmp.s              eax, ebx                                      // 0x00603b10    3bc3
                         {disp8} je         .Lbl_addr_0x00603b24                          // 0x00603b12    7410
                         push               eax                                           // 0x00603b14    50
                         mov.s              ecx, ebp                                      // 0x00603b15    8bcd
                         call               .Lbl_addr_0x00604020                          // 0x00603b17    e804050000
                         pop                ebp                                           // 0x00603b1c    5d
                         pop                ebx                                           // 0x00603b1d    5b
                         add                esp, 0x18                                     // 0x00603b1e    83c418
                         ret                0x000c                                        // 0x00603b21    c20c00
.Lbl_addr_0x00603b24:    pop                ebp                                           // 0x00603b24    5d
                         xor.s              eax, eax                                      // 0x00603b25    33c0
                         pop                ebx                                           // 0x00603b27    5b
                         add                esp, 0x18                                     // 0x00603b28    83c418
                         ret                0x000c                                        // 0x00603b2b    c20c00
                         nop                                                              // 0x00603b2e    90
                         nop                                                              // 0x00603b2f    90

?IsSuitableForFixed@MapCoords@@QAEXW4MESH_LIST@@MM@Z:
                         sub                esp, 0x1c                                     // 0x00603b30    83ec1c
                         push               ebx                                           // 0x00603b33    53
                         push               ebp                                           // 0x00603b34    55
                         push               esi                                           // 0x00603b35    56
                         mov.s              esi, ecx                                      // 0x00603b36    8bf1
                         mov.s              eax, esi                                      // 0x00603b38    8bc6
                         mov                ecx, dword ptr [eax]                          // 0x00603b3a    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00603b3c    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00603b3f    8b4008
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00603b42    894c241c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x372334]        // 0x00603b46    8b0d3483d300
                         xor.s              ebp, ebp                                      // 0x00603b4c    33ed
                         cmp.s              ecx, ebp                                      // 0x00603b4e    3bcd
                         {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x00603b50    8974240c
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00603b54    89542420
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00603b58    89442424
                         {disp8} jne        .Lbl_addr_0x00603b85                          // 0x00603b5c    7527
                         {disp8} mov        ebx, dword ptr [esp + 0x34]                   // 0x00603b5e    8b5c2434
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00603b62    8b4c2430
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00603b66    8b54242c
                         push               ebx                                           // 0x00603b6a    53
                         push               ecx                                           // 0x00603b6b    51
                         push               edx                                           // 0x00603b6c    52
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00603b6d    8d442428
                         push               ebp                                           // 0x00603b71    55
                         push               eax                                           // 0x00603b72    50
                         call               ?Create@Game3DObject@@SAPAV1@ABUMapCoords@@W4ObjectType@LH3DObject@@W4MESH_LIST@@MM@Z                          // 0x00603b73    e808720300
                         add                esp, 0x14                                     // 0x00603b78    83c414
                         {disp32} mov       dword ptr [data_bytes + 0x372334], eax        // 0x00603b7b    a33483d300
                         {disp32} jmp       .Lbl_addr_0x00603d95                          // 0x00603b80    e910020000
.Lbl_addr_0x00603b85:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00603b85    8b44242c
                         cmp.s              eax, ebp                                      // 0x00603b89    3bc5
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAUPack@1@A]        // 0x00603b8b    8b1534fee900
                         {disp8} jl         .Lbl_addr_0x00603b97                          // 0x00603b91    7c04
                         cmp                eax, dword ptr [edx]                          // 0x00603b93    3b02
                         {disp8} jl         .Lbl_addr_0x00603b99                          // 0x00603b95    7c02
.Lbl_addr_0x00603b97:    xor.s              eax, eax                                      // 0x00603b97    33c0
.Lbl_addr_0x00603b99:    mov                esi, dword ptr [ecx]                          // 0x00603b99    8b31
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x00603b9b    8b548204
                         push               edi                                           // 0x00603b9f    57
                         push               ebp                                           // 0x00603ba0    55
                         push               ebp                                           // 0x00603ba1    55
                         call               dword ptr [esi + 0xf4]                        // 0x00603ba2    ff96f4000000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00603ba8    8b4c2428
                         {disp32} mov       esi, dword ptr [data_bytes + 0x372334]        // 0x00603bac    8b353483d300
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00603bb2    894c2430
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00603bb6    8d4c2420
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00603bba    e8d1f41f00
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x00603bbf    d8442430
                         {disp8} mov        ebx, dword ptr [esp + 0x38]                   // 0x00603bc3    8b5c2438
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00603bc7    d95c2418
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x00603bcb    db442420
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00603bcf    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00603bd5    d95c2414
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x00603bd9    db442424
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00603bdd    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00603be3    d95c241c
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00603be7    d9442434
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x00603beb    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00603bf1    d9442438
                         fnstsw             ax                                            // 0x00603bf5    dfe0
                         {disp32} fcomp     dword ptr [__real@4@3fff8000000000000000]                   // 0x00603bf7    d81d90a38a00
                         test               ah, 0x40                                      // 0x00603bfd    f6c440
                         fnstsw             ax                                            // 0x00603c00    dfe0
                         {disp32} jne       .Lbl_addr_0x00603d54                          // 0x00603c02    0f854c010000
                         test               ah, 0x40                                      // 0x00603c08    f6c440
                         {disp32} jne       .Lbl_addr_0x00603cca                          // 0x00603c0b    0f85b9000000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00603c11    d9442414
                         {disp8} mov        dword ptr [esi + 0x40], ebp                   // 0x00603c15    896e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebp                   // 0x00603c18    896e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebp                   // 0x00603c1b    896e38
                         {disp8} mov        dword ptr [esi + 0x30], ebp                   // 0x00603c1e    896e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebp                   // 0x00603c21    896e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebp                   // 0x00603c24    896e28
                         {disp8} mov        dword ptr [esi + 0x20], ebp                   // 0x00603c27    896e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebp                   // 0x00603c2a    896e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebp                   // 0x00603c2d    896e18
                         mov.s              edx, ebx                                      // 0x00603c30    8bd3
                         {disp8} mov        dword ptr [esi + 0x34], edx                   // 0x00603c32    895634
                         mov.s              eax, ebx                                      // 0x00603c35    8bc3
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x00603c37    894624
                         mov.s              ecx, ebx                                      // 0x00603c3a    8bcb
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x00603c3c    894e14
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x00603c3f    d84638
                         {disp8} fstp       dword ptr [esi + 0x38]                        // 0x00603c42    d95e38
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00603c45    d9442418
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x00603c49    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x00603c4c    d95e3c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00603c4f    d944241c
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x00603c53    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x00603c56    d95e40
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00603c59    d9442434
                         fcos                                                             // 0x00603c5d    d9ff
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00603c5f    d9442434
                         fsin                                                             // 0x00603c63    d9fe
                         fld                st(0)                                         // 0x00603c65    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00603c67    d84e14
                         fld                st(1)                                         // 0x00603c6a    d9c1
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00603c6c    d84e2c
                         fld                st(3)                                         // 0x00603c6f    d9c3
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00603c71    d84e14
                         faddp              st(1), st                                     // 0x00603c74    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x00603c76    d95e14
                         fld                st(2)                                         // 0x00603c79    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00603c7b    d84e2c
                         fsub               st, st(1)                                     // 0x00603c7e    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x00603c80    d95e2c
                         fstp               st(0)                                         // 0x00603c83    ddd8
                         fld                st(0)                                         // 0x00603c85    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00603c87    d84e18
                         fld                st(1)                                         // 0x00603c8a    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00603c8c    d84e30
                         fld                st(3)                                         // 0x00603c8f    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00603c91    d84e18
                         faddp              st(1), st                                     // 0x00603c94    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x00603c96    d95e18
                         fld                st(2)                                         // 0x00603c99    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00603c9b    d84e30
                         fsub               st, st(1)                                     // 0x00603c9e    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]                        // 0x00603ca0    d95e30
                         fstp               st(0)                                         // 0x00603ca3    ddd8
                         fld                st(0)                                         // 0x00603ca5    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00603ca7    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00603caa    d95c2430
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00603cae    d84e34
                         fld                st(1)                                         // 0x00603cb1    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00603cb3    d84e1c
                         faddp              st(1), st                                     // 0x00603cb6    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00603cb8    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00603cbb    d84e34
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x00603cbe    d8642430
                         {disp8} fstp       dword ptr [esi + 0x34]                        // 0x00603cc2    d95e34
                         {disp32} jmp       .Lbl_addr_0x00603d7d                          // 0x00603cc5    e9b3000000
.Lbl_addr_0x00603cca:    {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00603cca    8d7e14
                         mov.s              ecx, edi                                      // 0x00603ccd    8bcf
                         call               ?SetIdentityMatrix@LHMatrix@@QAEXXZ                 // 0x00603ccf    e82cf8dfff
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00603cd4    d9442434
                         fcos                                                             // 0x00603cd8    d9ff
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00603cda    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00603cde    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00603ce2    8b4c241c
                         {disp8} mov        dword ptr [edi + 0x24], edx                   // 0x00603ce6    895724
                         {disp8} mov        dword ptr [edi + 0x28], eax                   // 0x00603ce9    894728
                         {disp8} mov        dword ptr [edi + 0x2c], ecx                   // 0x00603cec    894f2c
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00603cef    d9442434
                         fsin                                                             // 0x00603cf3    d9fe
                         fld                st(0)                                         // 0x00603cf5    d9c0
                         fmul               dword ptr [edi]                               // 0x00603cf7    d80f
                         fld                st(1)                                         // 0x00603cf9    d9c1
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x00603cfb    d84f18
                         fld                st(3)                                         // 0x00603cfe    d9c3
                         fmul               dword ptr [edi]                               // 0x00603d00    d80f
                         faddp              st(1), st                                     // 0x00603d02    dec1
                         fstp               dword ptr [edi]                               // 0x00603d04    d91f
                         fld                st(2)                                         // 0x00603d06    d9c2
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x00603d08    d84f18
                         fsub               st, st(1)                                     // 0x00603d0b    d8e1
                         {disp8} fstp       dword ptr [edi + 0x18]                        // 0x00603d0d    d95f18
                         fstp               st(0)                                         // 0x00603d10    ddd8
                         fld                st(0)                                         // 0x00603d12    d9c0
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x00603d14    d84f04
                         fld                st(1)                                         // 0x00603d17    d9c1
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x00603d19    d84f1c
                         fld                st(3)                                         // 0x00603d1c    d9c3
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x00603d1e    d84f04
                         faddp              st(1), st                                     // 0x00603d21    dec1
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x00603d23    d95f04
                         fld                st(2)                                         // 0x00603d26    d9c2
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x00603d28    d84f1c
                         fsub               st, st(1)                                     // 0x00603d2b    d8e1
                         {disp8} fstp       dword ptr [edi + 0x1c]                        // 0x00603d2d    d95f1c
                         fstp               st(0)                                         // 0x00603d30    ddd8
                         fld                st(0)                                         // 0x00603d32    d9c0
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x00603d34    d84f08
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00603d37    d95c2430
                         {disp8} fmul       dword ptr [edi + 0x20]                        // 0x00603d3b    d84f20
                         fld                st(1)                                         // 0x00603d3e    d9c1
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x00603d40    d84f08
                         faddp              st(1), st                                     // 0x00603d43    dec1
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x00603d45    d95f08
                         {disp8} fmul       dword ptr [edi + 0x20]                        // 0x00603d48    d84f20
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x00603d4b    d8642430
                         {disp8} fstp       dword ptr [edi + 0x20]                        // 0x00603d4f    d95f20
                         {disp8} jmp        .Lbl_addr_0x00603d7d                          // 0x00603d52    eb29
.Lbl_addr_0x00603d54:    test               ah, 0x40                                      // 0x00603d54    f6c440
                         {disp8} jne        .Lbl_addr_0x00603d71                          // 0x00603d57    7518
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00603d59    8d7e14
                         push               ebx                                           // 0x00603d5c    53
                         mov.s              ecx, edi                                      // 0x00603d5d    8bcf
                         call               _jmp_addr_0x00519320                          // 0x00603d5f    e8bc55f1ff
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00603d64    8d542414
                         mov.s              ecx, edi                                      // 0x00603d68    8bcf
                         call               ?PostTranslation@LHMatrix@@QAEXABULHPoint@@@Z      // 0x00603d6a    e801f8dfff
                         {disp8} jmp        .Lbl_addr_0x00603d7d                          // 0x00603d6f    eb0c
.Lbl_addr_0x00603d71:    {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00603d71    8d542414
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00603d75    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABULHPoint@@@Z     // 0x00603d78    e8b3f7dfff
.Lbl_addr_0x00603d7d:    {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00603d7d    8b442434
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00603d81    8b542438
                         {disp8} mov        dword ptr [esi + 0x44], edx                   // 0x00603d85    895644
                         {disp8} mov        dword ptr [esi + 0x48], eax                   // 0x00603d88    894648
                         {disp32} mov       eax, dword ptr [data_bytes + 0x372334]        // 0x00603d8b    a13483d300
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00603d90    8b742410
                         pop                edi                                           // 0x00603d94    5f
.Lbl_addr_0x00603d95:    cmp.s              eax, ebp                                      // 0x00603d95    3bc5
                         {disp8} je         .Lbl_addr_0x00603db1                          // 0x00603d97    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00603d99    8b4c2430
                         push               ebp                                           // 0x00603d9d    55
                         push               ebx                                           // 0x00603d9e    53
                         push               ecx                                           // 0x00603d9f    51
                         push               eax                                           // 0x00603da0    50
                         mov.s              ecx, esi                                      // 0x00603da1    8bce
                         call               ?IsSuitableForFixed@MapCoords@@QBEXPAVGame3DObject@@@Z                          // 0x00603da3    e818000000
                         pop                esi                                           // 0x00603da8    5e
                         pop                ebp                                           // 0x00603da9    5d
                         pop                ebx                                           // 0x00603daa    5b
                         add                esp, 0x1c                                     // 0x00603dab    83c41c
                         ret                0x000c                                        // 0x00603dae    c20c00
.Lbl_addr_0x00603db1:    pop                esi                                           // 0x00603db1    5e
                         pop                ebp                                           // 0x00603db2    5d
                         xor.s              eax, eax                                      // 0x00603db3    33c0
                         pop                ebx                                           // 0x00603db5    5b
                         add                esp, 0x1c                                     // 0x00603db6    83c41c
                         ret                0x000c                                        // 0x00603db9    c20c00
                         nop                                                              // 0x00603dbc    90
                         nop                                                              // 0x00603dbd    90
                         nop                                                              // 0x00603dbe    90
                         nop                                                              // 0x00603dbf    90

?IsSuitableForFixed@MapCoords@@QBEXPAVGame3DObject@@@Z:
                         sub                esp, 0x34                                     // 0x00603dc0    83ec34
                         push               ebx                                           // 0x00603dc3    53
                         push               ebp                                           // 0x00603dc4    55
                         mov.s              ebp, ecx                                      // 0x00603dc5    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x00603dc7    8b4508
                         push               esi                                           // 0x00603dca    56
                         push               edi                                           // 0x00603dcb    57
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00603dcc    89442410
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00603dd0    e8bbf21f00
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x00603dd5    d8442410
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                   // 0x00603dd9    8b4c2450
                         {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x00603ddd    8b54244c
                         {disp8} mov        esi, dword ptr [esp + 0x48]                   // 0x00603de1    8b742448
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00603de5    d95c2418
                         {disp8} fild       dword ptr [ebp + 0x00]                        // 0x00603de9    db4500
                         push               ecx                                           // 0x00603dec    51
                         push               edx                                           // 0x00603ded    52
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00603dee    8d54241c
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00603df2    d80da4a38a00
                         mov.s              ecx, esi                                      // 0x00603df8    8bce
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00603dfa    d95c241c
                         {disp8} fild       dword ptr [ebp + 0x04]                        // 0x00603dfe    db4504
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00603e01    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00603e07    d95c2424
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x00603e0b    e830f3e1ff
                         push               esi                                           // 0x00603e10    56
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00603e11    8d4c2424
                         call               _jmp_addr_0x0046aad0                          // 0x00603e15    e8b66ce6ff
                         mov                eax, dword ptr [esi]                          // 0x00603e1a    8b06
                         mov.s              ecx, esi                                      // 0x00603e1c    8bce
                         call               dword ptr [eax + 0xf8]                        // 0x00603e1e    ff90f8000000
                         mov                edx, dword ptr [esi]                          // 0x00603e24    8b16
                         mov.s              ecx, esi                                      // 0x00603e26    8bce
                         mov.s              edi, eax                                      // 0x00603e28    8bf8
                         call               dword ptr [edx + 0xf8]                        // 0x00603e2a    ff92f8000000
                         {disp8} fld        dword ptr [edi + 0x24]                        // 0x00603e30    d94724
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x00603e33    d9402c
                         fcompp                                                           // 0x00603e36    ded9
                         fnstsw             ax                                            // 0x00603e38    dfe0
                         test               ah, 0x01                                      // 0x00603e3a    f6c401
                         {disp8} je         .Lbl_addr_0x00603e4e                          // 0x00603e3d    740f
                         mov                eax, dword ptr [esi]                          // 0x00603e3f    8b06
                         mov.s              ecx, esi                                      // 0x00603e41    8bce
                         call               dword ptr [eax + 0xf8]                        // 0x00603e43    ff90f8000000
                         {disp8} fld        dword ptr [eax + 0x24]                        // 0x00603e49    d94024
                         {disp8} jmp        .Lbl_addr_0x00603e5b                          // 0x00603e4c    eb0d
.Lbl_addr_0x00603e4e:    mov                edx, dword ptr [esi]                          // 0x00603e4e    8b16
                         mov.s              ecx, esi                                      // 0x00603e50    8bce
                         call               dword ptr [edx + 0xf8]                        // 0x00603e52    ff92f8000000
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x00603e58    d9402c
.Lbl_addr_0x00603e5b:    {disp8} fmul       dword ptr [esp + 0x50]                        // 0x00603e5b    d84c2450
                         mov.s              ecx, ebp                                      // 0x00603e5f    8bcd
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x00603e61    d95c2450
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00603e65    e8c6f5ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00603e6a    8d4c2420
                         call               ?GetNext@NewCollideDescriptor@@QAEPAUMapCell@@XZ          // 0x00603e6e    e80d6fe6ff
                         mov.s              edi, eax                                      // 0x00603e73    8bf8
                         test               edi, edi                                      // 0x00603e75    85ff
                         {disp32} je        .Lbl_addr_0x00603ff9                          // 0x00603e77    0f847c010000
.Lbl_addr_0x00603e7d:    mov.s              ecx, edi                                      // 0x00603e7d    8bcf
                         call               _jmp_addr_0x00601e00                          // 0x00603e7f    e87cdfffff
                         test               eax, eax                                      // 0x00603e84    85c0
                         {disp32} je        .Lbl_addr_0x00603fe4                          // 0x00603e86    0f8458010000
                         xor.s              eax, eax                                      // 0x00603e8c    33c0
                         {disp8} mov        ax, word ptr [ebp + 0x02]                     // 0x00603e8e    668b4502
                         xor.s              ecx, ecx                                      // 0x00603e92    33c9
                         {disp8} mov        cx, word ptr [ebp + 0x06]                     // 0x00603e94    668b4d06
                         test               eax, eax                                      // 0x00603e98    85c0
                         {disp32} jl        .Lbl_addr_0x00603fe4                          // 0x00603e9a    0f8c44010000
                         cmp                eax, 0x000001ff                               // 0x00603ea0    3dff010000
                         {disp32} jg        .Lbl_addr_0x00603fe4                          // 0x00603ea5    0f8f39010000
                         test               ecx, ecx                                      // 0x00603eab    85c9
                         {disp32} jl        .Lbl_addr_0x00603fe4                          // 0x00603ead    0f8c31010000
                         cmp                ecx, 0x000001ff                               // 0x00603eb3    81f9ff010000
                         {disp32} jg        .Lbl_addr_0x00603fe4                          // 0x00603eb9    0f8f25010000
                         mov.s              edx, eax                                      // 0x00603ebf    8bd0
                         sar                edx, 4                                        // 0x00603ec1    c1fa04
                         mov.s              esi, ecx                                      // 0x00603ec4    8bf1
                         sar                esi, 4                                        // 0x00603ec6    c1fe04
                         xor.s              ebx, ebx                                      // 0x00603ec9    33db
                         shl                edx, 5                                        // 0x00603ecb    c1e205
                         {disp32} mov       bl, byte ptr [edx + esi + ?g_index_block@LH3DIsland@@2PAY0CA@EA]   // 0x00603ece    8a9c3264c9e900
                         mov.s              esi, ebx                                      // 0x00603ed5    8bf3
                         test               esi, esi                                      // 0x00603ed7    85f6
                         {disp32} je        .Lbl_addr_0x00603fe4                          // 0x00603ed9    0f8405010000
                         mov.s              edx, eax                                      // 0x00603edf    8bd0
                         and                edx, 0x0f                                     // 0x00603ee1    83e20f
                         mov.s              ebx, edx                                      // 0x00603ee4    8bda
                         shl                ebx, 4                                        // 0x00603ee6    c1e304
                         add.s              ebx, edx                                      // 0x00603ee9    03da
                         mov.s              edx, ecx                                      // 0x00603eeb    8bd1
                         and                edx, 0x0f                                     // 0x00603eed    83e20f
                         add.s              ebx, edx                                      // 0x00603ef0    03da
                         {disp32} mov       edx, dword ptr [esi * 0x4 + ?g_ptr_blocks@LH3DIsland@@2PAPAULandBlock@@A]       // 0x00603ef2    8b14b564c5e900
                         lea                esi, dword ptr [edx + ebx * 0x8]              // 0x00603ef9    8d34da
                         test               esi, esi                                      // 0x00603efc    85f6
                         {disp32} je        .Lbl_addr_0x00603fe4                          // 0x00603efe    0f84e0000000
                         xor.s              edx, edx                                      // 0x00603f04    33d2
                         {disp8} mov        dl, byte ptr [esi + 0x06]                     // 0x00603f06    8a5606
                         and                edx, 0x10                                     // 0x00603f09    83e210
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x00603f0c    8954244c
                         {disp32} jne       .Lbl_addr_0x00603fe4                          // 0x00603f10    0f85ce000000
                         test               eax, eax                                      // 0x00603f16    85c0
                         {disp8} jl         .Lbl_addr_0x00603f77                          // 0x00603f18    7c5d
                         cmp                eax, 0x000001ff                               // 0x00603f1a    3dff010000
                         {disp8} jg         .Lbl_addr_0x00603f77                          // 0x00603f1f    7f56
                         test               ecx, ecx                                      // 0x00603f21    85c9
                         {disp8} jl         .Lbl_addr_0x00603f77                          // 0x00603f23    7c52
                         cmp                ecx, 0x000001ff                               // 0x00603f25    81f9ff010000
                         {disp8} jg         .Lbl_addr_0x00603f77                          // 0x00603f2b    7f4a
                         mov.s              edx, eax                                      // 0x00603f2d    8bd0
                         sar                edx, 4                                        // 0x00603f2f    c1fa04
                         shl                edx, 5                                        // 0x00603f32    c1e205
                         mov.s              esi, ecx                                      // 0x00603f35    8bf1
                         xor.s              ebx, ebx                                      // 0x00603f37    33db
                         sar                esi, 4                                        // 0x00603f39    c1fe04
                         {disp32} mov       bl, byte ptr [edx + esi + ?g_index_block@LH3DIsland@@2PAY0CA@EA]   // 0x00603f3c    8a9c3264c9e900
                         mov.s              edx, ebx                                      // 0x00603f43    8bd3
                         test               edx, edx                                      // 0x00603f45    85d2
                         {disp8} je         .Lbl_addr_0x00603f77                          // 0x00603f47    742e
                         and                eax, 0x0f                                     // 0x00603f49    83e00f
                         mov.s              esi, eax                                      // 0x00603f4c    8bf0
                         shl                esi, 4                                        // 0x00603f4e    c1e604
                         add.s              esi, eax                                      // 0x00603f51    03f0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + ?g_ptr_blocks@LH3DIsland@@2PAPAULandBlock@@A]       // 0x00603f53    8b049564c5e900
                         and                ecx, 0x0f                                     // 0x00603f5a    83e10f
                         add.s              esi, ecx                                      // 0x00603f5d    03f1
                         lea                eax, dword ptr [eax + esi * 0x8]              // 0x00603f5f    8d04f0
                         test               eax, eax                                      // 0x00603f62    85c0
                         {disp8} je         .Lbl_addr_0x00603f77                          // 0x00603f64    7411
                         {disp8} mov        ax, word ptr [eax + 0x06]                     // 0x00603f66    668b4006
                         mov.s              cl, al                                        // 0x00603f6a    8ac8
                         not                cl                                            // 0x00603f6c    f6d1
                         test               cl, 0x10                                      // 0x00603f6e    f6c110
                         {disp8} je         .Lbl_addr_0x00603f77                          // 0x00603f71    7404
                         test               al, 0x20                                      // 0x00603f73    a820
                         {disp8} jne        .Lbl_addr_0x00603fe4                          // 0x00603f75    756d
.Lbl_addr_0x00603f77:    {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x00603f77    8b7704
                         test               esi, esi                                      // 0x00603f7a    85f6
                         {disp8} je         .Lbl_addr_0x00603fd0                          // 0x00603f7c    7452
                         {disp8} mov        ebx, dword ptr [esp + 0x54]                   // 0x00603f7e    8b5c2454
.Lbl_addr_0x00603f82:    test               byte ptr [esi + 0x24], 0x02                   // 0x00603f82    f6462402
                         {disp8} je         .Lbl_addr_0x00603fbf                          // 0x00603f86    7437
                         mov                edx, dword ptr [esi]                          // 0x00603f88    8b16
                         mov.s              ecx, esi                                      // 0x00603f8a    8bce
                         call               dword ptr [edx + 0x7d8]                       // 0x00603f8c    ff92d8070000
                         test               eax, eax                                      // 0x00603f92    85c0
                         {disp8} je         .Lbl_addr_0x00603fbf                          // 0x00603f94    7429
                         cmp.s              esi, ebx                                      // 0x00603f96    3bf3
                         {disp8} je         .Lbl_addr_0x00603fbf                          // 0x00603f98    7425
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00603f9a    8d4614
                         push               eax                                           // 0x00603f9d    50
                         mov.s              ecx, ebp                                      // 0x00603f9e    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00603fa0    e82b1d0000
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00603fa5    d95c244c
                         mov                edx, dword ptr [esi]                          // 0x00603fa9    8b16
                         mov.s              ecx, esi                                      // 0x00603fab    8bce
                         call               dword ptr [edx + 0x64]                        // 0x00603fad    ff5264
                         {disp8} fadd       dword ptr [esp + 0x50]                        // 0x00603fb0    d8442450
                         {disp8} fcomp      dword ptr [esp + 0x4c]                        // 0x00603fb4    d85c244c
                         fnstsw             ax                                            // 0x00603fb8    dfe0
                         test               ah, 0x41                                      // 0x00603fba    f6c441
                         {disp8} je         .Lbl_addr_0x00603fe4                          // 0x00603fbd    7425
.Lbl_addr_0x00603fbf:    mov                eax, dword ptr [esi]                          // 0x00603fbf    8b06
                         push               edi                                           // 0x00603fc1    57
                         mov.s              ecx, esi                                      // 0x00603fc2    8bce
                         call               dword ptr [eax + 0x53c]                       // 0x00603fc4    ff903c050000
                         mov.s              esi, eax                                      // 0x00603fca    8bf0
                         test               esi, esi                                      // 0x00603fcc    85f6
                         {disp8} jne        .Lbl_addr_0x00603f82                          // 0x00603fce    75b2
.Lbl_addr_0x00603fd0:    {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00603fd0    8d4c2420
                         call               ?GetNext@NewCollideDescriptor@@QAEPAUMapCell@@XZ          // 0x00603fd4    e8a76de6ff
                         mov.s              edi, eax                                      // 0x00603fd9    8bf8
                         test               edi, edi                                      // 0x00603fdb    85ff
                         {disp8} je         .Lbl_addr_0x00603ff9                          // 0x00603fdd    741a
                         {disp32} jmp       .Lbl_addr_0x00603e7d                          // 0x00603fdf    e999feffff
.Lbl_addr_0x00603fe4:    {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00603fe4    8d4c2420
                         call               ??_DNewCollideDescriptor@@QAEXXZ              // 0x00603fe8    e8036be6ff
                         pop                edi                                           // 0x00603fed    5f
                         pop                esi                                           // 0x00603fee    5e
                         pop                ebp                                           // 0x00603fef    5d
                         xor.s              eax, eax                                      // 0x00603ff0    33c0
                         pop                ebx                                           // 0x00603ff2    5b
                         add                esp, 0x34                                     // 0x00603ff3    83c434
                         ret                0x0010                                        // 0x00603ff6    c21000
.Lbl_addr_0x00603ff9:    {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00603ff9    8d4c2420
                         call               ??_DNewCollideDescriptor@@QAEXXZ              // 0x00603ffd    e8ee6ae6ff
                         pop                edi                                           // 0x00604002    5f
                         pop                esi                                           // 0x00604003    5e
                         pop                ebp                                           // 0x00604004    5d
                         mov                eax, 0x00000001                               // 0x00604005    b801000000
                         pop                ebx                                           // 0x0060400a    5b
                         add                esp, 0x34                                     // 0x0060400b    83c434
                         ret                0x0010                                        // 0x0060400e    c21000
                         nop                                                              // 0x00604011    90
                         nop                                                              // 0x00604012    90
                         nop                                                              // 0x00604013    90
                         nop                                                              // 0x00604014    90
                         nop                                                              // 0x00604015    90
                         nop                                                              // 0x00604016    90
                         nop                                                              // 0x00604017    90
                         nop                                                              // 0x00604018    90
                         nop                                                              // 0x00604019    90
                         nop                                                              // 0x0060401a    90
                         nop                                                              // 0x0060401b    90
                         nop                                                              // 0x0060401c    90
                         nop                                                              // 0x0060401d    90
                         nop                                                              // 0x0060401e    90
                         nop                                                              // 0x0060401f    90
.Lbl_addr_0x00604020:    sub                esp, 0x28                                     // 0x00604020    83ec28
                         push               ebx                                           // 0x00604023    53
                         push               ebp                                           // 0x00604024    55
                         push               esi                                           // 0x00604025    56
                         {disp8} mov        esi, dword ptr [esp + 0x38]                   // 0x00604026    8b742438
                         push               edi                                           // 0x0060402a    57
                         mov.s              ebp, ecx                                      // 0x0060402b    8be9
                         push               esi                                           // 0x0060402d    56
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0060402e    8d4c2418
                         call               _jmp_addr_0x0046aad0                          // 0x00604032    e8996ae6ff
                         {disp8} mov        eax, dword ptr [esi + 0x44]                   // 0x00604037    8b4644
                         mov                edx, dword ptr [esi]                          // 0x0060403a    8b16
                         mov.s              ecx, esi                                      // 0x0060403c    8bce
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0060403e    8944243c
                         call               dword ptr [edx + 0xf8]                        // 0x00604042    ff92f8000000
                         mov.s              edi, eax                                      // 0x00604048    8bf8
                         mov                eax, dword ptr [esi]                          // 0x0060404a    8b06
                         mov.s              ecx, esi                                      // 0x0060404c    8bce
                         call               dword ptr [eax + 0xf8]                        // 0x0060404e    ff90f8000000
                         {disp8} fld        dword ptr [edi + 0x24]                        // 0x00604054    d94724
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x00604057    d9402c
                         fcompp                                                           // 0x0060405a    ded9
                         fnstsw             ax                                            // 0x0060405c    dfe0
                         test               ah, 0x01                                      // 0x0060405e    f6c401
                         {disp8} je         .Lbl_addr_0x00604072                          // 0x00604061    740f
                         mov                edx, dword ptr [esi]                          // 0x00604063    8b16
                         mov.s              ecx, esi                                      // 0x00604065    8bce
                         call               dword ptr [edx + 0xf8]                        // 0x00604067    ff92f8000000
                         {disp8} fld        dword ptr [eax + 0x24]                        // 0x0060406d    d94024
                         {disp8} jmp        .Lbl_addr_0x0060407f                          // 0x00604070    eb0d
.Lbl_addr_0x00604072:    mov                eax, dword ptr [esi]                          // 0x00604072    8b06
                         mov.s              ecx, esi                                      // 0x00604074    8bce
                         call               dword ptr [eax + 0xf8]                        // 0x00604076    ff90f8000000
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x0060407c    d9402c
.Lbl_addr_0x0060407f:    {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x0060407f    d84c243c
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00604083    8d4c2414
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00604087    d95c243c
                         call               ?GetNext@NewCollideDescriptor@@QAEPAUMapCell@@XZ          // 0x0060408b    e8f06ce6ff
                         mov.s              edi, eax                                      // 0x00604090    8bf8
                         test               edi, edi                                      // 0x00604092    85ff
                         {disp32} je        .Lbl_addr_0x006041a2                          // 0x00604094    0f8408010000
.Lbl_addr_0x0060409a:    mov.s              ecx, edi                                      // 0x0060409a    8bcf
                         call               _jmp_addr_0x00601e00                          // 0x0060409c    e85fddffff
                         test               eax, eax                                      // 0x006040a1    85c0
                         {disp32} je        .Lbl_addr_0x0060418d                          // 0x006040a3    0f84e4000000
                         xor.s              eax, eax                                      // 0x006040a9    33c0
                         {disp8} mov        ax, word ptr [ebp + 0x02]                     // 0x006040ab    668b4502
                         xor.s              ecx, ecx                                      // 0x006040af    33c9
                         {disp8} mov        cx, word ptr [ebp + 0x06]                     // 0x006040b1    668b4d06
                         test               eax, eax                                      // 0x006040b5    85c0
                         {disp32} jl        .Lbl_addr_0x0060418d                          // 0x006040b7    0f8cd0000000
                         cmp                eax, 0x000001ff                               // 0x006040bd    3dff010000
                         {disp32} jg        .Lbl_addr_0x0060418d                          // 0x006040c2    0f8fc5000000
                         test               ecx, ecx                                      // 0x006040c8    85c9
                         {disp32} jl        .Lbl_addr_0x0060418d                          // 0x006040ca    0f8cbd000000
                         cmp                ecx, 0x000001ff                               // 0x006040d0    81f9ff010000
                         {disp32} jg        .Lbl_addr_0x0060418d                          // 0x006040d6    0f8fb1000000
                         mov.s              edx, eax                                      // 0x006040dc    8bd0
                         sar                edx, 4                                        // 0x006040de    c1fa04
                         shl                edx, 5                                        // 0x006040e1    c1e205
                         mov.s              esi, ecx                                      // 0x006040e4    8bf1
                         xor.s              ebx, ebx                                      // 0x006040e6    33db
                         sar                esi, 4                                        // 0x006040e8    c1fe04
                         {disp32} mov       bl, byte ptr [edx + esi + ?g_index_block@LH3DIsland@@2PAY0CA@EA]   // 0x006040eb    8a9c3264c9e900
                         mov.s              edx, ebx                                      // 0x006040f2    8bd3
                         test               edx, edx                                      // 0x006040f4    85d2
                         {disp32} je        .Lbl_addr_0x0060418d                          // 0x006040f6    0f8491000000
                         and                eax, 0x0f                                     // 0x006040fc    83e00f
                         mov.s              esi, eax                                      // 0x006040ff    8bf0
                         shl                esi, 4                                        // 0x00604101    c1e604
                         add.s              esi, eax                                      // 0x00604104    03f0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + ?g_ptr_blocks@LH3DIsland@@2PAPAULandBlock@@A]       // 0x00604106    8b049564c5e900
                         and                ecx, 0x0f                                     // 0x0060410d    83e10f
                         add.s              esi, ecx                                      // 0x00604110    03f1
                         lea                eax, dword ptr [eax + esi * 0x8]              // 0x00604112    8d04f0
                         test               eax, eax                                      // 0x00604115    85c0
                         {disp8} je         .Lbl_addr_0x0060418d                          // 0x00604117    7474
                         xor.s              ecx, ecx                                      // 0x00604119    33c9
                         {disp8} mov        cl, byte ptr [eax + 0x06]                     // 0x0060411b    8a4806
                         and                ecx, 0x10                                     // 0x0060411e    83e110
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00604121    894c2410
                         {disp8} jne        .Lbl_addr_0x0060418d                          // 0x00604125    7566
                         {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x00604127    8b7704
                         test               esi, esi                                      // 0x0060412a    85f6
                         {disp8} je         .Lbl_addr_0x00604179                          // 0x0060412c    744b
                         mov                bl, 0x02                                      // 0x0060412e    b302
.Lbl_addr_0x00604130:    test               byte ptr [esi + 0x24], bl                     // 0x00604130    845e24
                         {disp8} je         .Lbl_addr_0x00604168                          // 0x00604133    7433
                         mov                edx, dword ptr [esi]                          // 0x00604135    8b16
                         mov.s              ecx, esi                                      // 0x00604137    8bce
                         call               dword ptr [edx + 0x7d8]                       // 0x00604139    ff92d8070000
                         test               eax, eax                                      // 0x0060413f    85c0
                         {disp8} je         .Lbl_addr_0x00604168                          // 0x00604141    7425
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00604143    8d4614
                         push               eax                                           // 0x00604146    50
                         mov.s              ecx, ebp                                      // 0x00604147    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00604149    e8821b0000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0060414e    d95c2410
                         mov                edx, dword ptr [esi]                          // 0x00604152    8b16
                         mov.s              ecx, esi                                      // 0x00604154    8bce
                         call               dword ptr [edx + 0x64]                        // 0x00604156    ff5264
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x00604159    d844243c
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0060415d    d85c2410
                         fnstsw             ax                                            // 0x00604161    dfe0
                         test               ah, 0x41                                      // 0x00604163    f6c441
                         {disp8} je         .Lbl_addr_0x0060418d                          // 0x00604166    7425
.Lbl_addr_0x00604168:    mov                eax, dword ptr [esi]                          // 0x00604168    8b06
                         push               edi                                           // 0x0060416a    57
                         mov.s              ecx, esi                                      // 0x0060416b    8bce
                         call               dword ptr [eax + 0x53c]                       // 0x0060416d    ff903c050000
                         mov.s              esi, eax                                      // 0x00604173    8bf0
                         test               esi, esi                                      // 0x00604175    85f6
                         {disp8} jne        .Lbl_addr_0x00604130                          // 0x00604177    75b7
.Lbl_addr_0x00604179:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00604179    8d4c2414
                         call               ?GetNext@NewCollideDescriptor@@QAEPAUMapCell@@XZ          // 0x0060417d    e8fe6be6ff
                         mov.s              edi, eax                                      // 0x00604182    8bf8
                         test               edi, edi                                      // 0x00604184    85ff
                         {disp8} je         .Lbl_addr_0x006041a2                          // 0x00604186    741a
                         {disp32} jmp       .Lbl_addr_0x0060409a                          // 0x00604188    e90dffffff
.Lbl_addr_0x0060418d:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0060418d    8d4c2414
                         call               ??_DNewCollideDescriptor@@QAEXXZ              // 0x00604191    e85a69e6ff
                         pop                edi                                           // 0x00604196    5f
                         pop                esi                                           // 0x00604197    5e
                         pop                ebp                                           // 0x00604198    5d
                         xor.s              eax, eax                                      // 0x00604199    33c0
                         pop                ebx                                           // 0x0060419b    5b
                         add                esp, 0x28                                     // 0x0060419c    83c428
                         ret                0x0004                                        // 0x0060419f    c20400
.Lbl_addr_0x006041a2:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x006041a2    8d4c2414
                         call               ??_DNewCollideDescriptor@@QAEXXZ              // 0x006041a6    e84569e6ff
                         pop                edi                                           // 0x006041ab    5f
                         pop                esi                                           // 0x006041ac    5e
                         pop                ebp                                           // 0x006041ad    5d
                         mov                eax, 0x00000001                               // 0x006041ae    b801000000
                         pop                ebx                                           // 0x006041b3    5b
                         add                esp, 0x28                                     // 0x006041b4    83c428
                         ret                0x0004                                        // 0x006041b7    c20400
                         call               dword ptr [__imp___ChangeParameters_CImmPeriodic__QAEHKKKJJJKPAUFEELIT_ENVELOPE___Z@4]                // 0x006041ba    ff15d8908a00
_jmp_addr_0x006041c0:    sub                esp, 0x10                                     // 0x006041c0    83ec10
                         push               esi                                           // 0x006041c3    56
                         mov.s              esi, ecx                                      // 0x006041c4    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006041c6    8b4608
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006041c9    89442404
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x006041cd    e8beee1f00
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x006041d2    d8442404
                         fild               dword ptr [esi]                               // 0x006041d6    db06
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006041d8    8b442418
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006041dc    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x006041e2    db4604
                         pop                esi                                           // 0x006041e5    5e
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006041e6    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x006041ec    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006041f0    8b4c240c
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x006041f4    894808
                         fstp               dword ptr [eax]                               // 0x006041f7    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x006041f9    d95804
                         add                esp, 0x10                                     // 0x006041fc    83c410
                         ret                0x0004                                        // 0x006041ff    c20400
                         nop                                                              // 0x00604202    90
                         nop                                                              // 0x00604203    90
                         nop                                                              // 0x00604204    90
                         nop                                                              // 0x00604205    90
                         nop                                                              // 0x00604206    90
                         nop                                                              // 0x00604207    90
                         nop                                                              // 0x00604208    90
                         nop                                                              // 0x00604209    90
                         nop                                                              // 0x0060420a    90
                         nop                                                              // 0x0060420b    90
                         nop                                                              // 0x0060420c    90
                         nop                                                              // 0x0060420d    90
                         nop                                                              // 0x0060420e    90
                         nop                                                              // 0x0060420f    90
                         push               ecx                                           // 0x00604210    51
                         push               esi                                           // 0x00604211    56
                         mov.s              esi, ecx                                      // 0x00604212    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00604214    8b4608
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00604217    89442404
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x0060421b    e870ee1f00
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x00604220    d8442404
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00604224    8b44240c
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00604228    d95804
                         fild               dword ptr [esi]                               // 0x0060422b    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060422d    d80da4a38a00
                         fstp               dword ptr [eax]                               // 0x00604233    d918
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00604235    db4604
                         pop                esi                                           // 0x00604238    5e
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00604239    d80da4a38a00
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0060423f    d95808
                         pop                ecx                                           // 0x00604242    59
                         ret                0x0004                                        // 0x00604243    c20400
                         nop                                                              // 0x00604246    90
                         nop                                                              // 0x00604247    90
                         nop                                                              // 0x00604248    90
                         nop                                                              // 0x00604249    90
                         nop                                                              // 0x0060424a    90
                         nop                                                              // 0x0060424b    90
                         nop                                                              // 0x0060424c    90
                         nop                                                              // 0x0060424d    90
                         nop                                                              // 0x0060424e    90
                         nop                                                              // 0x0060424f    90
_jmp_addr_0x00604250:    {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00604250    668b4102
                         push               esi                                           // 0x00604254    56
                         xor.s              esi, esi                                      // 0x00604255    33f6
                         cmp.s              ax, si                                        // 0x00604257    663bc6
                         {disp8} jge        .Lbl_addr_0x00604262                          // 0x0060425a    7d06
                         {disp8} mov        word ptr [ecx + 0x02], si                     // 0x0060425c    66897102
                         {disp8} jmp        .Lbl_addr_0x00604285                          // 0x00604260    eb23
.Lbl_addr_0x00604262:    {disp32} mov       edx, dword ptr [_game]                        // 0x00604262    8b155c19d000
                         push               edi                                           // 0x00604268    57
                         {disp32} mov       edi, dword ptr [edx + 0x000059c8]             // 0x00604269    8bbac8590000
                         movsx              eax, ax                                       // 0x0060426f    0fbfc0
                         dec                edi                                           // 0x00604272    4f
                         cmp.s              eax, edi                                      // 0x00604273    3bc7
                         pop                edi                                           // 0x00604275    5f
                         {disp8} jle        .Lbl_addr_0x0060428b                          // 0x00604276    7e13
                         {disp32} mov       dx, word ptr [edx + 0x000059c8]               // 0x00604278    668b92c8590000
                         dec                dx                                            // 0x0060427f    664a
                         {disp8} mov        word ptr [ecx + 0x02], dx                     // 0x00604281    66895102
.Lbl_addr_0x00604285:    {disp32} mov       edx, dword ptr [_game]                        // 0x00604285    8b155c19d000
.Lbl_addr_0x0060428b:    {disp8} mov        ax, word ptr [ecx + 0x06]                     // 0x0060428b    668b4106
                         cmp.s              ax, si                                        // 0x0060428f    663bc6
                         {disp8} jge        .Lbl_addr_0x0060429a                          // 0x00604292    7d06
                         {disp8} mov        word ptr [ecx + 0x06], si                     // 0x00604294    66897106
                         pop                esi                                           // 0x00604298    5e
                         ret                                                              // 0x00604299    c3
.Lbl_addr_0x0060429a:    {disp32} mov       esi, dword ptr [edx + 0x000059c4]             // 0x0060429a    8bb2c4590000
                         movsx              eax, ax                                       // 0x006042a0    0fbfc0
                         dec                esi                                           // 0x006042a3    4e
                         cmp.s              eax, esi                                      // 0x006042a4    3bc6
                         {disp8} jle        .Lbl_addr_0x006042b5                          // 0x006042a6    7e0d
                         {disp32} mov       dx, word ptr [edx + 0x000059c4]               // 0x006042a8    668b92c4590000
                         dec                dx                                            // 0x006042af    664a
                         {disp8} mov        word ptr [ecx + 0x06], dx                     // 0x006042b1    66895106
.Lbl_addr_0x006042b5:    pop                esi                                           // 0x006042b5    5e
                         ret                                                              // 0x006042b6    c3
                         nop                                                              // 0x006042b7    90
                         nop                                                              // 0x006042b8    90
                         nop                                                              // 0x006042b9    90
                         nop                                                              // 0x006042ba    90
                         nop                                                              // 0x006042bb    90
                         nop                                                              // 0x006042bc    90
                         nop                                                              // 0x006042bd    90
                         nop                                                              // 0x006042be    90
                         nop                                                              // 0x006042bf    90
?InBounds@MapCoords@@QBEIXZ:
                               {disp32} mov       eax, dword ptr [_game]                        // 0x006042c0    a15c19d000
                         xor.s              edx, edx                                      // 0x006042c5    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x02]                     // 0x006042c7    668b5102
                         cmp                edx, dword ptr [eax + 0x000059c8]             // 0x006042cb    3b90c8590000
                         {disp8} jae        .Lbl_addr_0x006042e7                          // 0x006042d1    7314
                         xor.s              edx, edx                                      // 0x006042d3    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x06]                     // 0x006042d5    668b5106
                         cmp                edx, dword ptr [eax + 0x000059c4]             // 0x006042d9    3b90c4590000
                         {disp8} jae        .Lbl_addr_0x006042e7                          // 0x006042df    7306
                         mov                eax, 0x00000001                               // 0x006042e1    b801000000
                         ret                                                              // 0x006042e6    c3
.Lbl_addr_0x006042e7:    xor.s              eax, eax                                      // 0x006042e7    33c0
                         ret                                                              // 0x006042e9    c3
_jmp_addr_0x006042ea:    call               dword ptr [__imp__DirectXSetupGetVersion]     // 0x006042ea    ff153c908a00
_jmp_addr_0x006042f0:    sub                esp, 0x0c                                     // 0x006042f0    83ec0c
                         push               ebx                                           // 0x006042f3    53
                         push               esi                                           // 0x006042f4    56
                         push               edi                                           // 0x006042f5    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006042f6    8d44240c
                         push               eax                                           // 0x006042fa    50
                         call               ?GetFirstIterator@MapCoords@@QBE?AUMapCellIterator@@XZ           // 0x006042fb    e8d0f1ffff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00604300    8b44240c
                         test               eax, eax                                      // 0x00604304    85c0
                         {disp8} je         .Lbl_addr_0x00604357                          // 0x00604306    744f
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00604308    8b742424
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x0060430c    8b7c2420
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00604310    8b5c241c
.Lbl_addr_0x00604314:    push               esi                                           // 0x00604314    56
                         push               edi                                           // 0x00604315    57
                         push               eax                                           // 0x00604316    50
                         call               ebx                                           // 0x00604317    ffd3
                         add                esp, 0x0c                                     // 0x00604319    83c40c
                         test               eax, eax                                      // 0x0060431c    85c0
                         {disp8} jne        .Lbl_addr_0x00604362                          // 0x0060431e    7542
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00604320    8b4c240c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00604324    8b442414
                         mov                edx, dword ptr [ecx]                          // 0x00604328    8b11
                         push               eax                                           // 0x0060432a    50
                         call               dword ptr [edx + 0x53c]                       // 0x0060432b    ff923c050000
                         test               eax, eax                                      // 0x00604331    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00604333    8944240c
                         {disp8} jne        .Lbl_addr_0x00604314                          // 0x00604337    75db
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00604339    8b442410
                         test               eax, eax                                      // 0x0060433d    85c0
                         {disp8} je         .Lbl_addr_0x00604357                          // 0x0060433f    7416
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00604341    8b4c2414
                         mov                eax, dword ptr [ecx]                          // 0x00604345    8b01
                         test               eax, eax                                      // 0x00604347    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00604349    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0060434d    c744241000000000
                         {disp8} jne        .Lbl_addr_0x00604314                          // 0x00604355    75bd
.Lbl_addr_0x00604357:    pop                edi                                           // 0x00604357    5f
                         pop                esi                                           // 0x00604358    5e
                         xor.s              eax, eax                                      // 0x00604359    33c0
                         pop                ebx                                           // 0x0060435b    5b
                         add                esp, 0x0c                                     // 0x0060435c    83c40c
                         ret                0x000c                                        // 0x0060435f    c20c00
.Lbl_addr_0x00604362:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00604362    8b44240c
                         pop                edi                                           // 0x00604366    5f
                         pop                esi                                           // 0x00604367    5e
                         pop                ebx                                           // 0x00604368    5b
                         add                esp, 0x0c                                     // 0x00604369    83c40c
                         ret                0x000c                                        // 0x0060436c    c20c00
                         nop                                                              // 0x0060436f    90
_jmp_addr_0x00604370:    sub                esp, 0x4c                                     // 0x00604370    83ec4c
                         mov.s              eax, ecx                                      // 0x00604373    8bc1
                         mov                edx, dword ptr [eax]                          // 0x00604375    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00604377    8954241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x0060437b    db44241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0060437f    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00604382    8b4008
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x00604385    d80d50009300
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x0060438b    894c2400
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0060438f    89542420
                         mov                edx, dword ptr [ecx]                          // 0x00604393    8b11
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x00604395    d80d1cc48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0060439b    89442424
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0060439f    8b4104
                         {disp8} fsub       dword ptr [esp + 0x5c]                        // 0x006043a2    d864245c
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x006043a6    8b4908
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x006043a9    89542428
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006043ad    d80d08c48a00
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x8704c]        // 0x006043b3    8b154c009300
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x006043b9    8944242c
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x006043bd    d83550009300
                         xor.s              eax, eax                                      // 0x006043c3    33c0
                         push               edi                                           // 0x006043c5    57
                         xor.s              edi, edi                                      // 0x006043c6    33ff
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x006043c8    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x006043cc    89442438
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x006043d0    8944243c
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x006043d4    89442440
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x006043d8    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x006043dc    897c240c
                         call               __ftol                                        // 0x006043e0    e81bd01900
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x006043e5    db442424
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x006043e9    89442420
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006043ed    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006043f3    d80d1cc48a00
                         {disp8} fsub       dword ptr [esp + 0x60]                        // 0x006043f9    d8642460
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006043fd    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x00604403    d83550009300
                         call               __ftol                                        // 0x00604409    e8f2cf1900
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x0060440e    db44242c
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00604412    89442424
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x00604416    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x0060441c    d80d1cc48a00
                         {disp8} fadd       dword ptr [esp + 0x60]                        // 0x00604422    d8442460
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00604426    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x0060442c    d83550009300
                         call               __ftol                                        // 0x00604432    e8c9cf1900
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00604437    db442430
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0060443b    8944242c
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x0060443f    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x00604445    d80d1cc48a00
                         {disp8} fadd       dword ptr [esp + 0x60]                        // 0x0060444b    d8442460
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x0060444f    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x00604455    d83550009300
                         call               __ftol                                        // 0x0060445b    e8a0cf1900
                         {disp8} mov        cx, word ptr [esp + 0x2e]                     // 0x00604460    668b4c242e
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00604465    89442430
                         {disp8} mov        ax, word ptr [esp + 0x22]                     // 0x00604469    668b442422
                         cmp.s              ax, cx                                        // 0x0060446e    663bc1
                         {disp32} jg        .Lbl_addr_0x006045b0                          // 0x00604471    0f8f39010000
                         movsx              edx, ax                                       // 0x00604477    0fbfd0
                         movsx              eax, cx                                       // 0x0060447a    0fbfc1
                         push               ebx                                           // 0x0060447d    53
                         {disp8} mov        ebx, dword ptr [esp + 0x60]                   // 0x0060447e    8b5c2460
                         sub.s              eax, edx                                      // 0x00604482    2bc2
                         push               ebp                                           // 0x00604484    55
                         {disp8} mov        ebp, dword ptr [esp + 0x60]                   // 0x00604485    8b6c2460
                         inc                eax                                           // 0x00604489    40
                         push               esi                                           // 0x0060448a    56
                         {disp8} mov        dword ptr [esp + 0x6c], edx                   // 0x0060448b    8954246c
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0060448f    8944241c
.Lbl_addr_0x00604493:    {disp8} mov        ecx, dword ptr [esp + 0x32]                   // 0x00604493    8b4c2432
                         {disp8} mov        esi, dword ptr [esp + 0x3e]                   // 0x00604497    8b74243e
                         cmp.s              cx, si                                        // 0x0060449b    663bce
                         {disp32} jg        .Lbl_addr_0x00604590                          // 0x0060449e    0f8fec000000
                         movsx              edi, cx                                       // 0x006044a4    0fbff9
                         and                esi, 0x0000ffff                               // 0x006044a7    81e6ffff0000
                         sub.s              esi, edi                                      // 0x006044ad    2bf7
                         inc                esi                                           // 0x006044af    46
.Lbl_addr_0x006044b0:    {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x006044b0    8b44246c
                         push               edi                                           // 0x006044b4    57
                         push               eax                                           // 0x006044b5    50
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x006044b6    8d4c244c
                         call               _jmp_addr_0x00601f40                          // 0x006044ba    e881daffff
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x006044bf    8d4c2444
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x006044c3    e8f8fdffff
                         test               eax, eax                                      // 0x006044c8    85c0
                         {disp32} je        .Lbl_addr_0x00604580                          // 0x006044ca    0f84b0000000
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006044d0    8d4c2420
                         push               ecx                                           // 0x006044d4    51
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x006044d5    8d4c2448
                         call               ?GetFirstIterator@MapCoords@@QBE?AUMapCellIterator@@XZ           // 0x006044d9    e8f2efffff
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x006044de    8b442420
                         test               eax, eax                                      // 0x006044e2    85c0
                         {disp32} je        .Lbl_addr_0x00604580                          // 0x006044e4    0f8496000000
.Lbl_addr_0x006044ea:    push               ebx                                           // 0x006044ea    53
                         push               ebp                                           // 0x006044eb    55
                         push               eax                                           // 0x006044ec    50
                         call               dword ptr [esp + 0x6c]                        // 0x006044ed    ff54246c
                         add                esp, 0x0c                                     // 0x006044f1    83c40c
                         test               eax, eax                                      // 0x006044f4    85c0
                         {disp8} je         .Lbl_addr_0x00604545                          // 0x006044f6    744d
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x006044f8    8b4c2420
                         mov                edx, dword ptr [ecx]                          // 0x006044fc    8b11
                         call               dword ptr [edx + 0x304]                       // 0x006044fe    ff9204030000
                         test               eax, eax                                      // 0x00604504    85c0
                         {disp8} je         .Lbl_addr_0x00604519                          // 0x00604506    7411
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00604508    8b4c2420
                         {disp8} lea        eax, dword ptr [esp + 0x50]                   // 0x0060450c    8d442450
                         push               eax                                           // 0x00604510    50
                         call               @GetTotemPos__11WorshipSiteFv@12              // 0x00604511    e81a8a1700
                         push               eax                                           // 0x00604516    50
                         {disp8} jmp        .Lbl_addr_0x00604521                          // 0x00604517    eb08
.Lbl_addr_0x00604519:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00604519    8b4c2420
                         add                ecx, 0x14                                     // 0x0060451d    83c114
                         push               ecx                                           // 0x00604520    51
.Lbl_addr_0x00604521:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00604521    8b4c2414
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00604525    e8a6170000
                         {disp8} fcom       dword ptr [esp + 0x14]                        // 0x0060452a    d8542414
                         fnstsw             ax                                            // 0x0060452e    dfe0
                         test               ah, 0x01                                      // 0x00604530    f6c401
                         {disp8} je         .Lbl_addr_0x00604543                          // 0x00604533    740e
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00604535    8b4c2420
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00604539    d95c2414
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0060453d    894c2418
                         {disp8} jmp        .Lbl_addr_0x00604549                          // 0x00604541    eb06
.Lbl_addr_0x00604543:    fstp               st(0)                                         // 0x00604543    ddd8
.Lbl_addr_0x00604545:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00604545    8b4c2420
.Lbl_addr_0x00604549:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00604549    8b442428
                         mov                edx, dword ptr [ecx]                          // 0x0060454d    8b11
                         push               eax                                           // 0x0060454f    50
                         call               dword ptr [edx + 0x53c]                       // 0x00604550    ff923c050000
                         test               eax, eax                                      // 0x00604556    85c0
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00604558    89442420
                         {disp8} jne        .Lbl_addr_0x006044ea                          // 0x0060455c    758c
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0060455e    8b442424
                         test               eax, eax                                      // 0x00604562    85c0
                         {disp8} je         .Lbl_addr_0x00604580                          // 0x00604564    741a
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00604566    8b4c2428
                         mov                eax, dword ptr [ecx]                          // 0x0060456a    8b01
                         test               eax, eax                                      // 0x0060456c    85c0
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0060456e    89442420
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x00604572    c744242400000000
                         {disp32} jne       .Lbl_addr_0x006044ea                          // 0x0060457a    0f856affffff
.Lbl_addr_0x00604580:    inc                edi                                           // 0x00604580    47
                         dec                esi                                           // 0x00604581    4e
                         {disp32} jne       .Lbl_addr_0x006044b0                          // 0x00604582    0f8528ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00604588    8b44241c
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0060458c    8b7c2418
.Lbl_addr_0x00604590:    {disp8} mov        edx, dword ptr [esp + 0x6c]                   // 0x00604590    8b54246c
                         inc                edx                                           // 0x00604594    42
                         dec                eax                                           // 0x00604595    48
                         {disp8} mov        dword ptr [esp + 0x6c], edx                   // 0x00604596    8954246c
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0060459a    8944241c
                         {disp32} jne       .Lbl_addr_0x00604493                          // 0x0060459e    0f85effeffff
                         pop                esi                                           // 0x006045a4    5e
                         pop                ebp                                           // 0x006045a5    5d
                         pop                ebx                                           // 0x006045a6    5b
                         mov.s              eax, edi                                      // 0x006045a7    8bc7
                         pop                edi                                           // 0x006045a9    5f
                         add                esp, 0x4c                                     // 0x006045aa    83c44c
                         ret                0x0010                                        // 0x006045ad    c21000
.Lbl_addr_0x006045b0:    mov.s              eax, edi                                      // 0x006045b0    8bc7
                         pop                edi                                           // 0x006045b2    5f
                         add                esp, 0x4c                                     // 0x006045b3    83c44c
                         ret                0x0010                                        // 0x006045b6    c21000
                         nop                                                              // 0x006045b9    90
                         nop                                                              // 0x006045ba    90
                         nop                                                              // 0x006045bb    90
                         nop                                                              // 0x006045bc    90
                         nop                                                              // 0x006045bd    90
                         nop                                                              // 0x006045be    90
                         nop                                                              // 0x006045bf    90
?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z:    push               esi                                           // 0x006045c0    56
                         mov.s              esi, ecx                                      // 0x006045c1    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006045c3    e868eeffff
                         test               eax, eax                                      // 0x006045c8    85c0
                         {disp8} jne        .Lbl_addr_0x006045d0                          // 0x006045ca    7504
                         pop                esi                                           // 0x006045cc    5e
                         ret                0x0008                                        // 0x006045cd    c20800
.Lbl_addr_0x006045d0:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006045d0    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006045d4    8b4c2408
                         push               eax                                           // 0x006045d8    50
                         push               ecx                                           // 0x006045d9    51
                         mov.s              ecx, esi                                      // 0x006045da    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006045dc    e84feeffff
                         mov.s              ecx, eax                                      // 0x006045e1    8bc8
                         call               ?FindTypeOnMap@MapCell@@QAEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x006045e3    e8f8cfffff
                         pop                esi                                           // 0x006045e8    5e
                         ret                0x0008                                        // 0x006045e9    c20800
                         nop                                                              // 0x006045ec    90
                         nop                                                              // 0x006045ed    90
                         nop                                                              // 0x006045ee    90
                         nop                                                              // 0x006045ef    90
_jmp_addr_0x006045f0:    sub                esp, 0x34                                     // 0x006045f0    83ec34
                         push               ebx                                           // 0x006045f3    53
                         mov.s              ebx, ecx                                      // 0x006045f4    8bd9
                         mov.s              eax, ebx                                      // 0x006045f6    8bc3
                         mov                ecx, dword ptr [eax]                          // 0x006045f8    8b08
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x006045fa    894c2420
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x006045fe    db442420
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00604602    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00604605    8b4008
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x00604608    d80d50009300
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0060460e    89542424
                         mov.s              ecx, ebx                                      // 0x00604612    8bcb
                         mov                edx, dword ptr [ecx]                          // 0x00604614    8b11
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x00604616    d80d1cc48a00
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0060461c    89442428
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00604620    8b4104
                         {disp8} fsub       dword ptr [esp + 0x40]                        // 0x00604623    d8642440
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00604627    8b4908
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0060462a    89542414
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x0060462e    d80d08c48a00
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x8704c]        // 0x00604634    8b154c009300
                         push               esi                                           // 0x0060463a    56
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x0060463b    d83550009300
                         xor.s              esi, esi                                      // 0x00604641    33f6
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00604643    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00604647    894c2420
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0060464b    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x00604653    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x0060465b    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x00604663    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x00604667    8974240c
                         call               __ftol                                        // 0x0060466b    e890cd1900
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00604670    db442428
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00604674    89442424
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x00604678    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x0060467e    d80d1cc48a00
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x00604684    d8642444
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00604688    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x0060468e    d83550009300
                         call               __ftol                                        // 0x00604694    e867cd1900
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00604699    db442418
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0060469d    89442428
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006046a1    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006046a7    d80d1cc48a00
                         {disp8} fadd       dword ptr [esp + 0x44]                        // 0x006046ad    d8442444
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006046b1    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x006046b7    d83550009300
                         call               __ftol                                        // 0x006046bd    e83ecd1900
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x006046c2    db44241c
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006046c6    89442418
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006046ca    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006046d0    d80d1cc48a00
                         {disp8} fadd       dword ptr [esp + 0x44]                        // 0x006046d6    d8442444
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006046da    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x006046e0    d83550009300
                         call               __ftol                                        // 0x006046e6    e815cd1900
                         {disp8} mov        cx, word ptr [esp + 0x1a]                     // 0x006046eb    668b4c241a
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006046f0    8944241c
                         {disp8} mov        ax, word ptr [esp + 0x26]                     // 0x006046f4    668b442426
                         cmp.s              ax, cx                                        // 0x006046f9    663bc1
                         {disp32} jg        .Lbl_addr_0x0060485a                          // 0x006046fc    0f8f58010000
                         movsx              eax, ax                                       // 0x00604702    0fbfc0
                         movsx              edx, cx                                       // 0x00604705    0fbfd1
                         sub.s              edx, eax                                      // 0x00604708    2bd0
                         push               ebp                                           // 0x0060470a    55
                         inc                edx                                           // 0x0060470b    42
                         push               edi                                           // 0x0060470c    57
                         {disp8} mov        edi, dword ptr [esp + 0x48]                   // 0x0060470d    8b7c2448
                         {disp8} mov        dword ptr [esp + 0x4c], eax                   // 0x00604711    8944244c
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00604715    8954241c
.Lbl_addr_0x00604719:    {disp8} mov        ecx, dword ptr [esp + 0x26]                   // 0x00604719    8b4c2426
                         {disp8} mov        eax, dword ptr [esp + 0x32]                   // 0x0060471d    8b442432
                         cmp.s              ax, cx                                        // 0x00604721    663bc1
                         {disp32} jg        .Lbl_addr_0x0060483a                          // 0x00604724    0f8f10010000
                         movsx              edx, ax                                       // 0x0060472a    0fbfd0
                         movsx              eax, cx                                       // 0x0060472d    0fbfc1
                         sub.s              eax, edx                                      // 0x00604730    2bc2
                         inc                eax                                           // 0x00604732    40
                         {disp8} mov        dword ptr [esp + 0x48], edx                   // 0x00604733    89542448
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00604737    89442418
.Lbl_addr_0x0060473b:    {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x0060473b    8b44244c
                         push               edx                                           // 0x0060473f    52
                         push               eax                                           // 0x00604740    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00604741    8d4c2440
                         call               _jmp_addr_0x00601f40                          // 0x00604745    e8f6d7ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0060474a    8d4c2438
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x0060474e    e86dfbffff
                         test               eax, eax                                      // 0x00604753    85c0
                         {disp32} je        .Lbl_addr_0x0060481a                          // 0x00604755    0f84bf000000
                         push               edi                                           // 0x0060475b    57
                         call               ?DoesObjectTypeCountAsFixed@MapCell@@SA_NW4OBJECT_TYPE@@@Z                   // 0x0060475c    e8afcdffff
                         add                esp, 0x04                                     // 0x00604761    83c404
                         test               eax, eax                                      // 0x00604764    85c0
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00604766    8d4c2438
                         {disp8} je         .Lbl_addr_0x006047c6                          // 0x0060476a    745a
                         call               ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ         // 0x0060476c    e83fedffff
                         mov.s              esi, eax                                      // 0x00604771    8bf0
                         test               esi, esi                                      // 0x00604773    85f6
                         {disp32} je        .Lbl_addr_0x0060481a                          // 0x00604775    0f849f000000
.Lbl_addr_0x0060477b:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x0060477b    8b4e28
                         cmp                dword ptr [ecx + 0x10], edi                   // 0x0060477e    397910
                         {disp8} je         .Lbl_addr_0x00604788                          // 0x00604781    7405
                         cmp                edi, -0x01                                    // 0x00604783    83ffff
                         {disp8} jne        .Lbl_addr_0x006047aa                          // 0x00604786    7522
.Lbl_addr_0x00604788:    {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x00604788    8d5614
                         push               edx                                           // 0x0060478b    52
                         mov.s              ecx, ebx                                      // 0x0060478c    8bcb
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x0060478e    e83d150000
                         {disp8} fcom       dword ptr [esp + 0x10]                        // 0x00604793    d8542410
                         fnstsw             ax                                            // 0x00604797    dfe0
                         test               ah, 0x01                                      // 0x00604799    f6c401
                         {disp8} je         .Lbl_addr_0x006047a8                          // 0x0060479c    740a
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0060479e    d95c2410
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x006047a2    89742414
                         {disp8} jmp        .Lbl_addr_0x006047aa                          // 0x006047a6    eb02
.Lbl_addr_0x006047a8:    fstp               st(0)                                         // 0x006047a8    ddd8
.Lbl_addr_0x006047aa:    mov                ebp, dword ptr [esi]                          // 0x006047aa    8b2e
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x006047ac    8d4c2438
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x006047b0    e87becffff
                         push               eax                                           // 0x006047b5    50
                         mov.s              ecx, esi                                      // 0x006047b6    8bce
                         call               dword ptr [ebp + 0x53c]                       // 0x006047b8    ff953c050000
                         mov.s              esi, eax                                      // 0x006047be    8bf0
                         test               esi, esi                                      // 0x006047c0    85f6
                         {disp8} jne        .Lbl_addr_0x0060477b                          // 0x006047c2    75b7
                         {disp8} jmp        .Lbl_addr_0x0060481a                          // 0x006047c4    eb54
.Lbl_addr_0x006047c6:    call               ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ                          // 0x006047c6    e8c5ecffff
                         mov.s              esi, eax                                      // 0x006047cb    8bf0
                         test               esi, esi                                      // 0x006047cd    85f6
                         {disp8} je         .Lbl_addr_0x0060481a                          // 0x006047cf    7449
.Lbl_addr_0x006047d1:    {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x006047d1    8b4628
                         cmp                dword ptr [eax + 0x10], edi                   // 0x006047d4    397810
                         {disp8} je         .Lbl_addr_0x006047de                          // 0x006047d7    7405
                         cmp                edi, -0x01                                    // 0x006047d9    83ffff
                         {disp8} jne        .Lbl_addr_0x00604800                          // 0x006047dc    7522
.Lbl_addr_0x006047de:    {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x006047de    8d4e14
                         push               ecx                                           // 0x006047e1    51
                         mov.s              ecx, ebx                                      // 0x006047e2    8bcb
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x006047e4    e8e7140000
                         {disp8} fcom       dword ptr [esp + 0x10]                        // 0x006047e9    d8542410
                         fnstsw             ax                                            // 0x006047ed    dfe0
                         test               ah, 0x01                                      // 0x006047ef    f6c401
                         {disp8} je         .Lbl_addr_0x006047fe                          // 0x006047f2    740a
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x006047f4    d95c2410
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x006047f8    89742414
                         {disp8} jmp        .Lbl_addr_0x00604800                          // 0x006047fc    eb02
.Lbl_addr_0x006047fe:    fstp               st(0)                                         // 0x006047fe    ddd8
.Lbl_addr_0x00604800:    mov                ebp, dword ptr [esi]                          // 0x00604800    8b2e
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00604802    8d4c2438
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00604806    e825ecffff
                         push               eax                                           // 0x0060480b    50
                         mov.s              ecx, esi                                      // 0x0060480c    8bce
                         call               dword ptr [ebp + 0x53c]                       // 0x0060480e    ff953c050000
                         mov.s              esi, eax                                      // 0x00604814    8bf0
                         test               esi, esi                                      // 0x00604816    85f6
                         {disp8} jne        .Lbl_addr_0x006047d1                          // 0x00604818    75b7
.Lbl_addr_0x0060481a:    {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x0060481a    8b542448
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0060481e    8b442418
                         inc                edx                                           // 0x00604822    42
                         dec                eax                                           // 0x00604823    48
                         {disp8} mov        dword ptr [esp + 0x48], edx                   // 0x00604824    89542448
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00604828    89442418
                         {disp32} jne       .Lbl_addr_0x0060473b                          // 0x0060482c    0f8509ffffff
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00604832    8b54241c
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00604836    8b742414
.Lbl_addr_0x0060483a:    {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x0060483a    8b4c244c
                         inc                ecx                                           // 0x0060483e    41
                         dec                edx                                           // 0x0060483f    4a
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x00604840    894c244c
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00604844    8954241c
                         {disp32} jne       .Lbl_addr_0x00604719                          // 0x00604848    0f85cbfeffff
                         pop                edi                                           // 0x0060484e    5f
                         pop                ebp                                           // 0x0060484f    5d
                         mov.s              eax, esi                                      // 0x00604850    8bc6
                         pop                esi                                           // 0x00604852    5e
                         pop                ebx                                           // 0x00604853    5b
                         add                esp, 0x34                                     // 0x00604854    83c434
                         ret                0x0008                                        // 0x00604857    c20800
.Lbl_addr_0x0060485a:    mov.s              eax, esi                                      // 0x0060485a    8bc6
                         pop                esi                                           // 0x0060485c    5e
                         pop                ebx                                           // 0x0060485d    5b
                         add                esp, 0x34                                     // 0x0060485e    83c434
                         ret                0x0008                                        // 0x00604861    c20800
                         nop                                                              // 0x00604864    90
                         nop                                                              // 0x00604865    90
                         nop                                                              // 0x00604866    90
                         nop                                                              // 0x00604867    90
                         nop                                                              // 0x00604868    90
                         nop                                                              // 0x00604869    90
                         nop                                                              // 0x0060486a    90
                         nop                                                              // 0x0060486b    90
                         nop                                                              // 0x0060486c    90
                         nop                                                              // 0x0060486d    90
                         nop                                                              // 0x0060486e    90
                         nop                                                              // 0x0060486f    90
_jmp_addr_0x00604870:    sub                esp, 0x44                                     // 0x00604870    83ec44
                         push               ebx                                           // 0x00604873    53
                         push               ebp                                           // 0x00604874    55
                         {disp8} mov        ebp, dword ptr [esp + 0x50]                   // 0x00604875    8b6c2450
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00604879    8b4500
                         mov.s              ebx, ecx                                      // 0x0060487c    8bd9
                         push               edi                                           // 0x0060487e    57
                         mov.s              ecx, ebp                                      // 0x0060487f    8bcd
                         call               dword ptr [eax + 0x1c]                        // 0x00604881    ff501c
                         mov.s              ecx, ebx                                      // 0x00604884    8bcb
                         mov                edx, dword ptr [ecx]                          // 0x00604886    8b11
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00604888    8954242c
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x0060488c    db44242c
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00604890    8b5104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00604893    8b4908
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x00604896    d80d50009300
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x0060489c    89542430
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x006048a0    894c2434
                         mov.s              edx, ebx                                      // 0x006048a4    8bd3
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006048a6    d80d1cc48a00
                         mov                ecx, dword ptr [edx]                          // 0x006048ac    8b0a
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x006048ae    894c2438
                         {disp8} fsub       dword ptr [esp + 0x68]                        // 0x006048b2    d8642468
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x006048b6    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006048b9    8b5208
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x006048bc    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006048c2    8944241c
                         xor.s              eax, eax                                      // 0x006048c6    33c0
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x006048c8    d83550009300
                         xor.s              edi, edi                                      // 0x006048ce    33ff
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000            // 0x006048d0    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x006048d8    897c2414
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x006048dc    894c243c
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x006048e0    89542440
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x006048e4    89442444
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x006048e8    89442448
                         {disp8} mov        dword ptr [esp + 0x4c], edi                   // 0x006048ec    897c244c
                         call               __ftol                                        // 0x006048f0    e80bcb1900
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x006048f5    db442430
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x006048f9    8944242c
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006048fd    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x00604903    d80d1cc48a00
                         {disp8} fsub       dword ptr [esp + 0x68]                        // 0x00604909    d8642468
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x0060490d    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x00604913    d83550009300
                         call               __ftol                                        // 0x00604919    e8e2ca1900
                         {disp8} fild       dword ptr [esp + 0x38]                        // 0x0060491e    db442438
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00604922    89442430
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x00604926    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x0060492c    d80d1cc48a00
                         {disp8} fadd       dword ptr [esp + 0x68]                        // 0x00604932    d8442468
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x00604936    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x0060493c    d83550009300
                         call               __ftol                                        // 0x00604942    e8b9ca1900
                         {disp8} fild       dword ptr [esp + 0x3c]                        // 0x00604947    db44243c
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x0060494b    89442438
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x0060494f    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x00604955    d80d1cc48a00
                         {disp8} fadd       dword ptr [esp + 0x68]                        // 0x0060495b    d8442468
                         {disp32} fmul      dword ptr [__real@4@400f8000000000000000]     // 0x0060495f    d80d08c48a00
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x00604965    d83550009300
                         call               __ftol                                        // 0x0060496b    e890ca1900
                         {disp8} mov        cx, word ptr [esp + 0x3a]                     // 0x00604970    668b4c243a
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x00604975    8944243c
                         {disp8} mov        ax, word ptr [esp + 0x2e]                     // 0x00604979    668b44242e
                         cmp.s              ax, cx                                        // 0x0060497e    663bc1
                         {disp32} jg        .Lbl_addr_0x00604add                          // 0x00604981    0f8f56010000
                         movsx              edx, ax                                       // 0x00604987    0fbfd0
                         movsx              eax, cx                                       // 0x0060498a    0fbfc1
                         sub.s              eax, edx                                      // 0x0060498d    2bc2
                         inc                eax                                           // 0x0060498f    40
                         push               esi                                           // 0x00604990    56
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00604991    89542410
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00604995    8944241c
.Lbl_addr_0x00604999:    {disp8} mov        ecx, dword ptr [esp + 0x36]                   // 0x00604999    8b4c2436
                         {disp8} mov        esi, dword ptr [esp + 0x42]                   // 0x0060499d    8b742442
                         cmp.s              cx, si                                        // 0x006049a1    663bce
                         {disp32} jg        .Lbl_addr_0x00604abd                          // 0x006049a4    0f8f13010000
                         movsx              edi, cx                                       // 0x006049aa    0fbff9
                         and                esi, 0x0000ffff                               // 0x006049ad    81e6ffff0000
                         sub.s              esi, edi                                      // 0x006049b3    2bf7
                         inc                esi                                           // 0x006049b5    46
.Lbl_addr_0x006049b6:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006049b6    8b442410
                         push               edi                                           // 0x006049ba    57
                         push               eax                                           // 0x006049bb    50
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x006049bc    8d4c2450
                         call               _jmp_addr_0x00601f40                          // 0x006049c0    e87bd5ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x006049c5    8d4c2448
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x006049c9    e8f2f8ffff
                         test               eax, eax                                      // 0x006049ce    85c0
                         {disp32} je        .Lbl_addr_0x00604aad                          // 0x006049d0    0f84d7000000
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x006049d6    8b4c2420
                         push               0x1                                           // 0x006049da    6a01
                         push               0x0                                           // 0x006049dc    6a00
                         push               0x0                                           // 0x006049de    6a00
                         push               ecx                                           // 0x006049e0    51
                         {disp8} lea        edx, dword ptr [esp + 0x58]                   // 0x006049e1    8d542458
                         push               edx                                           // 0x006049e5    52
                         call               _jmp_addr_0x005cd170                          // 0x006049e6    e88587fcff
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x006049eb    d81d98a38a00
                         add                esp, 0x14                                     // 0x006049f1    83c414
                         fnstsw             ax                                            // 0x006049f4    dfe0
                         test               ah, 0x41                                      // 0x006049f6    f6c441
                         {disp32} jne       .Lbl_addr_0x00604aad                          // 0x006049f9    0f85ae000000
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x006049ff    8d442424
                         push               eax                                           // 0x00604a03    50
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00604a04    8d4c244c
                         call               ?GetFirstIterator@MapCoords@@QBE?AUMapCellIterator@@XZ           // 0x00604a08    e8c3eaffff
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00604a0d    8b442424
                         test               eax, eax                                      // 0x00604a11    85c0
                         {disp32} je        .Lbl_addr_0x00604aad                          // 0x00604a13    0f8494000000
.Lbl_addr_0x00604a19:    {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x00604a19    8b4c2460
                         push               eax                                           // 0x00604a1d    50
                         add.s              ecx, ebp                                      // 0x00604a1e    03cd
                         call               dword ptr [esp + 0x60]                        // 0x00604a20    ff542460
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x00604a24    d9542414
                         {disp8} fcomp      dword ptr [esp + 0x58]                        // 0x00604a28    d85c2458
                         fnstsw             ax                                            // 0x00604a2c    dfe0
                         test               ah, 0x01                                      // 0x00604a2e    f6c401
                         {disp8} jne        .Lbl_addr_0x00604a72                          // 0x00604a31    753f
                         {disp8} mov        edx, dword ptr [esp + 0x6c]                   // 0x00604a33    8b54246c
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00604a37    8b442424
                         push               edx                                           // 0x00604a3b    52
                         add                eax, 0x14                                     // 0x00604a3c    83c014
                         push               eax                                           // 0x00604a3f    50
                         mov.s              ecx, ebx                                      // 0x00604a40    8bcb
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00604a42    e889120000
                         push               ecx                                           // 0x00604a47    51
                         fstp               dword ptr [esp]                               // 0x00604a48    d91c24
                         call               _GetDistanceModifier__6GUtilsFff@8            // 0x00604a4b    e840a81400
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00604a50    d84c241c
                         add                esp, 0x08                                     // 0x00604a54    83c408
                         {disp8} fcom       dword ptr [esp + 0x58]                        // 0x00604a57    d8542458
                         fnstsw             ax                                            // 0x00604a5b    dfe0
                         test               ah, 0x41                                      // 0x00604a5d    f6c441
                         {disp8} jne        .Lbl_addr_0x00604a70                          // 0x00604a60    750e
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00604a62    8b4c2424
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x00604a66    d95c2458
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00604a6a    894c2418
                         {disp8} jmp        .Lbl_addr_0x00604a76                          // 0x00604a6e    eb06
.Lbl_addr_0x00604a70:    fstp               st(0)                                         // 0x00604a70    ddd8
.Lbl_addr_0x00604a72:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00604a72    8b4c2424
.Lbl_addr_0x00604a76:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00604a76    8b44242c
                         mov                edx, dword ptr [ecx]                          // 0x00604a7a    8b11
                         push               eax                                           // 0x00604a7c    50
                         call               dword ptr [edx + 0x53c]                       // 0x00604a7d    ff923c050000
                         test               eax, eax                                      // 0x00604a83    85c0
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00604a85    89442424
                         {disp8} jne        .Lbl_addr_0x00604a19                          // 0x00604a89    758e
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00604a8b    8b442428
                         test               eax, eax                                      // 0x00604a8f    85c0
                         {disp8} je         .Lbl_addr_0x00604aad                          // 0x00604a91    741a
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00604a93    8b4c242c
                         mov                eax, dword ptr [ecx]                          // 0x00604a97    8b01
                         test               eax, eax                                      // 0x00604a99    85c0
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00604a9b    89442424
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x00604a9f    c744242800000000
                         {disp32} jne       .Lbl_addr_0x00604a19                          // 0x00604aa7    0f856cffffff
.Lbl_addr_0x00604aad:    inc                edi                                           // 0x00604aad    47
                         dec                esi                                           // 0x00604aae    4e
                         {disp32} jne       .Lbl_addr_0x006049b6                          // 0x00604aaf    0f8501ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00604ab5    8b44241c
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00604ab9    8b7c2418
.Lbl_addr_0x00604abd:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00604abd    8b542410
                         inc                edx                                           // 0x00604ac1    42
                         dec                eax                                           // 0x00604ac2    48
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00604ac3    89542410
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00604ac7    8944241c
                         {disp32} jne       .Lbl_addr_0x00604999                          // 0x00604acb    0f85c8feffff
                         pop                esi                                           // 0x00604ad1    5e
                         mov.s              eax, edi                                      // 0x00604ad2    8bc7
                         pop                edi                                           // 0x00604ad4    5f
                         pop                ebp                                           // 0x00604ad5    5d
                         pop                ebx                                           // 0x00604ad6    5b
                         add                esp, 0x44                                     // 0x00604ad7    83c444
                         ret                0x0018                                        // 0x00604ada    c21800
.Lbl_addr_0x00604add:    mov.s              eax, edi                                      // 0x00604add    8bc7
                         pop                edi                                           // 0x00604adf    5f
                         pop                ebp                                           // 0x00604ae0    5d
                         pop                ebx                                           // 0x00604ae1    5b
                         add                esp, 0x44                                     // 0x00604ae2    83c444
                         ret                0x0018                                        // 0x00604ae5    c21800
                         nop                                                              // 0x00604ae8    90
                         nop                                                              // 0x00604ae9    90
                         nop                                                              // 0x00604aea    90
                         nop                                                              // 0x00604aeb    90
                         nop                                                              // 0x00604aec    90
                         nop                                                              // 0x00604aed    90
                         nop                                                              // 0x00604aee    90
                         nop                                                              // 0x00604aef    90
_jmp_addr_0x00604af0:    sub                esp, 0x18                                     // 0x00604af0    83ec18
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00604af3    d944242c
                         push               ebx                                           // 0x00604af7    53
                         fadd.s             st(0), st(0)                                  // 0x00604af8    dcc0
                         push               ebp                                           // 0x00604afa    55
                         mov.s              ebp, ecx                                      // 0x00604afb    8be9
                         mov.s              eax, ebp                                      // 0x00604afd    8bc5
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x00604aff    d83550009300
                         mov                ecx, dword ptr [eax]                          // 0x00604b05    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00604b07    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00604b0a    8b4008
                         push               esi                                           // 0x00604b0d    56
                         push               edi                                           // 0x00604b0e    57
                         sub                esp, 0x08                                     // 0x00604b0f    83ec08
                         xor.s              edi, edi                                      // 0x00604b12    33ff
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x00604b14    897c2418
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00604b18    894c2424
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00604b1c    89542428
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00604b20    8944242c
                         fstp               qword ptr [esp]                               // 0x00604b24    dd1c24
                         call               _ceil                                         // 0x00604b27    e846351c00
                         add                esp, 0x08                                     // 0x00604b2c    83c408
                         call               __ftol                                        // 0x00604b2f    e8ccc81900
                         cmp                eax, 0x03                                     // 0x00604b34    83f803
                         {disp8} jg         .Lbl_addr_0x00604b3e                          // 0x00604b37    7f05
                         mov                eax, 0x00000003                               // 0x00604b39    b803000000
.Lbl_addr_0x00604b3e:    mov.s              ebx, eax                                      // 0x00604b3e    8bd8
                         imul               ebx, eax                                      // 0x00604b40    0fafd8
                         test               ebx, ebx                                      // 0x00604b43    85db
                         mov                eax, 0x00000001                               // 0x00604b45    b801000000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00604b4a    89442418
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00604b4e    89442414
                         {disp32} je        .Lbl_addr_0x00604c20                          // 0x00604b52    0f84c8000000
.Lbl_addr_0x00604b58:    test               edi, edi                                      // 0x00604b58    85ff
                         {disp8} je         .Lbl_addr_0x00604b85                          // 0x00604b5a    7429
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00604b5c    8d4c241c
                         push               ecx                                           // 0x00604b60    51
                         mov.s              ecx, ebp                                      // 0x00604b61    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00604b63    e868110000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00604b68    d9442410
                         {disp32} fmul      dword ptr [__real@4@3fffc000000000000000]                   // 0x00604b6c    d80d4cb28a00
                         {disp32} fadd      dword ptr [__real@4@4002a000000000000000]     // 0x00604b72    d80550009300
                         fcompp                                                           // 0x00604b78    ded9
                         fnstsw             ax                                            // 0x00604b7a    dfe0
                         test               ah, 0x01                                      // 0x00604b7c    f6c401
                         {disp32} jne       .Lbl_addr_0x00604c20                          // 0x00604b7f    0f859b000000
.Lbl_addr_0x00604b85:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00604b85    8d4c241c
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x00604b89    e832f7ffff
                         test               eax, eax                                      // 0x00604b8e    85c0
                         {disp8} je         .Lbl_addr_0x00604bfb                          // 0x00604b90    7469
                         push               0x0                                           // 0x00604b92    6a00
                         push               -0x1                                          // 0x00604b94    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00604b96    8d4c2424
                         call               ?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x00604b9a    e821faffff
                         mov.s              esi, eax                                      // 0x00604b9f    8bf0
                         test               esi, esi                                      // 0x00604ba1    85f6
                         {disp8} je         .Lbl_addr_0x00604bfb                          // 0x00604ba3    7456
.Lbl_addr_0x00604ba5:    {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00604ba5    8b542430
                         lea                ecx, dword ptr [edx + esi * 0x1]              // 0x00604ba9    8d0c32
                         call               dword ptr [esp + 0x2c]                        // 0x00604bac    ff54242c
                         test               eax, eax                                      // 0x00604bb0    85c0
                         {disp8} je         .Lbl_addr_0x00604be9                          // 0x00604bb2    7435
                         cmp                dword ptr [esp + 0x40], esi                   // 0x00604bb4    39742440
                         {disp8} je         .Lbl_addr_0x00604be9                          // 0x00604bb8    742f
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00604bba    8d4614
                         push               eax                                           // 0x00604bbd    50
                         mov.s              ecx, ebp                                      // 0x00604bbe    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00604bc0    e80b110000
                         {disp8} fcom       dword ptr [esp + 0x3c]                        // 0x00604bc5    d854243c
                         fnstsw             ax                                            // 0x00604bc9    dfe0
                         test               ah, 0x01                                      // 0x00604bcb    f6c401
                         {disp8} je         .Lbl_addr_0x00604be7                          // 0x00604bce    7417
                         {disp8} fcom       dword ptr [esp + 0x10]                        // 0x00604bd0    d8542410
                         fnstsw             ax                                            // 0x00604bd4    dfe0
                         test               ah, 0x01                                      // 0x00604bd6    f6c401
                         {disp8} jne        .Lbl_addr_0x00604bdf                          // 0x00604bd9    7504
                         test               edi, edi                                      // 0x00604bdb    85ff
                         {disp8} jne        .Lbl_addr_0x00604be7                          // 0x00604bdd    7508
.Lbl_addr_0x00604bdf:    {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00604bdf    d95c2410
                         mov.s              edi, esi                                      // 0x00604be3    8bfe
                         {disp8} jmp        .Lbl_addr_0x00604be9                          // 0x00604be5    eb02
.Lbl_addr_0x00604be7:    fstp               st(0)                                         // 0x00604be7    ddd8
.Lbl_addr_0x00604be9:    push               esi                                           // 0x00604be9    56
                         push               -0x1                                          // 0x00604bea    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00604bec    8d4c2424
                         call               ?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x00604bf0    e8cbf9ffff
                         mov.s              esi, eax                                      // 0x00604bf5    8bf0
                         test               esi, esi                                      // 0x00604bf7    85f6
                         {disp8} jne        .Lbl_addr_0x00604ba5                          // 0x00604bf9    75aa
.Lbl_addr_0x00604bfb:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00604bfb    8d4c2414
                         push               ecx                                           // 0x00604bff    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00604c00    8d54241c
                         push               edx                                           // 0x00604c04    52
                         dec                ebx                                           // 0x00604c05    4b
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x00604c06    e8d58b1400
                         add                esp, 0x08                                     // 0x00604c0b    83c408
                         push               eax                                           // 0x00604c0e    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00604c0f    8d4c2420
                         call               ??YMapCoords@@QAEXABUJustMapXZ@@@Z            // 0x00604c13    e858080000
                         test               ebx, ebx                                      // 0x00604c18    85db
                         {disp32} jne       .Lbl_addr_0x00604b58                          // 0x00604c1a    0f8538ffffff
.Lbl_addr_0x00604c20:    mov.s              eax, edi                                      // 0x00604c20    8bc7
                         pop                edi                                           // 0x00604c22    5f
                         pop                esi                                           // 0x00604c23    5e
                         pop                ebp                                           // 0x00604c24    5d
                         pop                ebx                                           // 0x00604c25    5b
                         add                esp, 0x18                                     // 0x00604c26    83c418
                         ret                0x0018                                        // 0x00604c29    c21800
                         nop                                                              // 0x00604c2c    90
                         nop                                                              // 0x00604c2d    90
                         nop                                                              // 0x00604c2e    90
                         nop                                                              // 0x00604c2f    90
_jmp_addr_0x00604c30:    sub                esp, 0x18                                     // 0x00604c30    83ec18
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00604c33    d9442420
                         push               ebx                                           // 0x00604c37    53
                         fadd.s             st(0), st(0)                                  // 0x00604c38    dcc0
                         push               ebp                                           // 0x00604c3a    55
                         mov.s              ebp, ecx                                      // 0x00604c3b    8be9
                         mov.s              eax, ebp                                      // 0x00604c3d    8bc5
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x00604c3f    d83550009300
                         mov                ecx, dword ptr [eax]                          // 0x00604c45    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00604c47    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00604c4a    8b4008
                         push               esi                                           // 0x00604c4d    56
                         push               edi                                           // 0x00604c4e    57
                         sub                esp, 0x08                                     // 0x00604c4f    83ec08
                         xor.s              edi, edi                                      // 0x00604c52    33ff
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x00604c54    897c2418
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00604c58    894c2424
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00604c5c    89542428
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00604c60    8944242c
                         fstp               qword ptr [esp]                               // 0x00604c64    dd1c24
                         call               _ceil                                         // 0x00604c67    e806341c00
                         add                esp, 0x08                                     // 0x00604c6c    83c408
                         call               __ftol                                        // 0x00604c6f    e88cc71900
                         cmp                eax, 0x03                                     // 0x00604c74    83f803
                         {disp8} jg         .Lbl_addr_0x00604c7e                          // 0x00604c77    7f05
                         mov                eax, 0x00000003                               // 0x00604c79    b803000000
.Lbl_addr_0x00604c7e:    mov.s              ebx, eax                                      // 0x00604c7e    8bd8
                         imul               ebx, eax                                      // 0x00604c80    0fafd8
                         test               ebx, ebx                                      // 0x00604c83    85db
                         mov                eax, 0x00000001                               // 0x00604c85    b801000000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00604c8a    89442418
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00604c8e    89442414
                         {disp32} je        .Lbl_addr_0x00604d5d                          // 0x00604c92    0f84c5000000
.Lbl_addr_0x00604c98:    test               edi, edi                                      // 0x00604c98    85ff
                         {disp8} je         .Lbl_addr_0x00604cc5                          // 0x00604c9a    7429
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00604c9c    8d4c241c
                         push               ecx                                           // 0x00604ca0    51
                         mov.s              ecx, ebp                                      // 0x00604ca1    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00604ca3    e828100000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00604ca8    d9442410
                         {disp32} fmul      dword ptr [__real@4@3fffc000000000000000]                   // 0x00604cac    d80d4cb28a00
                         {disp32} fadd      dword ptr [__real@4@4002a000000000000000]     // 0x00604cb2    d80550009300
                         fcompp                                                           // 0x00604cb8    ded9
                         fnstsw             ax                                            // 0x00604cba    dfe0
                         test               ah, 0x01                                      // 0x00604cbc    f6c401
                         {disp32} jne       .Lbl_addr_0x00604d5d                          // 0x00604cbf    0f8598000000
.Lbl_addr_0x00604cc5:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00604cc5    8d4c241c
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x00604cc9    e8f2f5ffff
                         test               eax, eax                                      // 0x00604cce    85c0
                         {disp8} je         .Lbl_addr_0x00604d38                          // 0x00604cd0    7466
                         push               0x0                                           // 0x00604cd2    6a00
                         push               -0x1                                          // 0x00604cd4    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00604cd6    8d4c2424
                         call               ?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x00604cda    e8e1f8ffff
                         mov.s              esi, eax                                      // 0x00604cdf    8bf0
                         test               esi, esi                                      // 0x00604ce1    85f6
                         {disp8} je         .Lbl_addr_0x00604d38                          // 0x00604ce3    7453
.Lbl_addr_0x00604ce5:    push               esi                                           // 0x00604ce5    56
                         call               dword ptr [esp + 0x30]                        // 0x00604ce6    ff542430
                         add                esp, 0x04                                     // 0x00604cea    83c404
                         test               eax, eax                                      // 0x00604ced    85c0
                         {disp8} je         .Lbl_addr_0x00604d26                          // 0x00604cef    7435
                         cmp                dword ptr [esp + 0x34], esi                   // 0x00604cf1    39742434
                         {disp8} je         .Lbl_addr_0x00604d26                          // 0x00604cf5    742f
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x00604cf7    8d5614
                         push               edx                                           // 0x00604cfa    52
                         mov.s              ecx, ebp                                      // 0x00604cfb    8bcd
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00604cfd    e8ce0f0000
                         {disp8} fcom       dword ptr [esp + 0x30]                        // 0x00604d02    d8542430
                         fnstsw             ax                                            // 0x00604d06    dfe0
                         test               ah, 0x01                                      // 0x00604d08    f6c401
                         {disp8} je         .Lbl_addr_0x00604d24                          // 0x00604d0b    7417
                         {disp8} fcom       dword ptr [esp + 0x10]                        // 0x00604d0d    d8542410
                         fnstsw             ax                                            // 0x00604d11    dfe0
                         test               ah, 0x01                                      // 0x00604d13    f6c401
                         {disp8} jne        .Lbl_addr_0x00604d1c                          // 0x00604d16    7504
                         test               edi, edi                                      // 0x00604d18    85ff
                         {disp8} jne        .Lbl_addr_0x00604d24                          // 0x00604d1a    7508
.Lbl_addr_0x00604d1c:    {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00604d1c    d95c2410
                         mov.s              edi, esi                                      // 0x00604d20    8bfe
                         {disp8} jmp        .Lbl_addr_0x00604d26                          // 0x00604d22    eb02
.Lbl_addr_0x00604d24:    fstp               st(0)                                         // 0x00604d24    ddd8
.Lbl_addr_0x00604d26:    push               esi                                           // 0x00604d26    56
                         push               -0x1                                          // 0x00604d27    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00604d29    8d4c2424
                         call               ?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x00604d2d    e88ef8ffff
                         mov.s              esi, eax                                      // 0x00604d32    8bf0
                         test               esi, esi                                      // 0x00604d34    85f6
                         {disp8} jne        .Lbl_addr_0x00604ce5                          // 0x00604d36    75ad
.Lbl_addr_0x00604d38:    {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00604d38    8d442414
                         push               eax                                           // 0x00604d3c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00604d3d    8d4c241c
                         push               ecx                                           // 0x00604d41    51
                         dec                ebx                                           // 0x00604d42    4b
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x00604d43    e8988a1400
                         add                esp, 0x08                                     // 0x00604d48    83c408
                         push               eax                                           // 0x00604d4b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00604d4c    8d4c2420
                         call               ??YMapCoords@@QAEXABUJustMapXZ@@@Z            // 0x00604d50    e81b070000
                         test               ebx, ebx                                      // 0x00604d55    85db
                         {disp32} jne       .Lbl_addr_0x00604c98                          // 0x00604d57    0f853bffffff
.Lbl_addr_0x00604d5d:    mov.s              eax, edi                                      // 0x00604d5d    8bc7
                         pop                edi                                           // 0x00604d5f    5f
                         pop                esi                                           // 0x00604d60    5e
                         pop                ebp                                           // 0x00604d61    5d
                         pop                ebx                                           // 0x00604d62    5b
                         add                esp, 0x18                                     // 0x00604d63    83c418
                         ret                0x000c                                        // 0x00604d66    c20c00
                         nop                                                              // 0x00604d69    90
                         nop                                                              // 0x00604d6a    90
                         nop                                                              // 0x00604d6b    90
                         nop                                                              // 0x00604d6c    90
                         nop                                                              // 0x00604d6d    90
                         nop                                                              // 0x00604d6e    90
                         nop                                                              // 0x00604d6f    90
                         push               ebx                                           // 0x00604d70    53
                         push               esi                                           // 0x00604d71    56
                         push               edi                                           // 0x00604d72    57
                         sub                esp, 0x10                                     // 0x00604d73    83ec10
                         mov                eax, 0x006380c0                               // 0x00604d76    b8c0806300
                         mov.s              ebx, esp                                      // 0x00604d7b    8bdc
                         mov                dword ptr [ebx], eax                          // 0x00604d7d    8903
                         xor.s              edx, edx                                      // 0x00604d7f    33d2
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00604d81    895304
                         xor.s              esi, esi                                      // 0x00604d84    33f6
                         xor.s              edi, edi                                      // 0x00604d86    33ff
                         {disp8} mov        dword ptr [ebx + 0x08], esi                   // 0x00604d88    897308
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x00604d8b    897b0c
                         call               .Lbl_addr_0x00602aa0                          // 0x00604d8e    e80dddffff
                         pop                edi                                           // 0x00604d93    5f
                         pop                esi                                           // 0x00604d94    5e
                         pop                ebx                                           // 0x00604d95    5b
                         ret                                                              // 0x00604d96    c3
                         nop                                                              // 0x00604d97    90
                         nop                                                              // 0x00604d98    90
                         nop                                                              // 0x00604d99    90
                         nop                                                              // 0x00604d9a    90
                         nop                                                              // 0x00604d9b    90
                         nop                                                              // 0x00604d9c    90
                         nop                                                              // 0x00604d9d    90
                         nop                                                              // 0x00604d9e    90
                         nop                                                              // 0x00604d9f    90
                         push               ebx                                           // 0x00604da0    53
                         push               esi                                           // 0x00604da1    56
                         push               edi                                           // 0x00604da2    57
                         sub                esp, 0x10                                     // 0x00604da3    83ec10
                         mov                eax, 0x006380e0                               // 0x00604da6    b8e0806300
                         mov.s              ebx, esp                                      // 0x00604dab    8bdc
                         mov                dword ptr [ebx], eax                          // 0x00604dad    8903
                         xor.s              edx, edx                                      // 0x00604daf    33d2
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00604db1    895304
                         xor.s              esi, esi                                      // 0x00604db4    33f6
                         xor.s              edi, edi                                      // 0x00604db6    33ff
                         {disp8} mov        dword ptr [ebx + 0x08], esi                   // 0x00604db8    897308
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x00604dbb    897b0c
                         call               .Lbl_addr_0x00602aa0                          // 0x00604dbe    e8dddcffff
                         pop                edi                                           // 0x00604dc3    5f
                         pop                esi                                           // 0x00604dc4    5e
                         pop                ebx                                           // 0x00604dc5    5b
                         ret                                                              // 0x00604dc6    c3
                         nop                                                              // 0x00604dc7    90
                         nop                                                              // 0x00604dc8    90
                         nop                                                              // 0x00604dc9    90
                         nop                                                              // 0x00604dca    90
                         nop                                                              // 0x00604dcb    90
                         nop                                                              // 0x00604dcc    90
                         nop                                                              // 0x00604dcd    90
                         nop                                                              // 0x00604dce    90
                         nop                                                              // 0x00604dcf    90
                         push               0x006053f0                                    // 0x00604dd0    68f0536000
                         call               .Lbl_addr_0x00602bd0                          // 0x00604dd5    e8f6ddffff
                         ret                                                              // 0x00604dda    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00604ddb    e819cadfff
                         push               ebx                                           // 0x00604de0    53
                         push               esi                                           // 0x00604de1    56
                         push               edi                                           // 0x00604de2    57
                         sub                esp, 0x10                                     // 0x00604de3    83ec10
                         mov                eax, 0x006380f0                               // 0x00604de6    b8f0806300
                         mov.s              ebx, esp                                      // 0x00604deb    8bdc
                         mov                dword ptr [ebx], eax                          // 0x00604ded    8903
                         xor.s              edx, edx                                      // 0x00604def    33d2
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00604df1    895304
                         xor.s              esi, esi                                      // 0x00604df4    33f6
                         xor.s              edi, edi                                      // 0x00604df6    33ff
                         {disp8} mov        dword ptr [ebx + 0x08], esi                   // 0x00604df8    897308
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x00604dfb    897b0c
                         call               .Lbl_addr_0x00602aa0                          // 0x00604dfe    e89ddcffff
                         pop                edi                                           // 0x00604e03    5f
                         pop                esi                                           // 0x00604e04    5e
                         pop                ebx                                           // 0x00604e05    5b
                         ret                                                              // 0x00604e06    c3
                         nop                                                              // 0x00604e07    90
                         nop                                                              // 0x00604e08    90
                         nop                                                              // 0x00604e09    90
                         nop                                                              // 0x00604e0a    90
                         nop                                                              // 0x00604e0b    90
                         nop                                                              // 0x00604e0c    90
                         nop                                                              // 0x00604e0d    90
                         nop                                                              // 0x00604e0e    90
                         nop                                                              // 0x00604e0f    90
                         push               0x006036a0                                    // 0x00604e10    68a0366000
                         call               .Lbl_addr_0x00602bd0                          // 0x00604e15    e8b6ddffff
                         ret                                                              // 0x00604e1a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00604e1b    e8d9c9dfff
                         push               0x006035b0                                    // 0x00604e20    68b0356000
                         call               .Lbl_addr_0x00602bd0                          // 0x00604e25    e8a6ddffff
                         ret                                                              // 0x00604e2a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00604e2b    e8c9c9dfff
                         push               0x00603720                                    // 0x00604e30    6820376000
                         call               .Lbl_addr_0x00602bd0                          // 0x00604e35    e896ddffff
                         ret                                                              // 0x00604e3a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00604e3b    e8b9c9dfff
                         push               ebx                                           // 0x00604e40    53
                         push               esi                                           // 0x00604e41    56
                         push               edi                                           // 0x00604e42    57
                         sub                esp, 0x10                                     // 0x00604e43    83ec10
                         mov                eax, 0x006380c0                               // 0x00604e46    b8c0806300
                         mov.s              ebx, esp                                      // 0x00604e4b    8bdc
                         mov                dword ptr [ebx], eax                          // 0x00604e4d    8903
                         xor.s              edx, edx                                      // 0x00604e4f    33d2
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00604e51    895304
                         xor.s              esi, esi                                      // 0x00604e54    33f6
                         xor.s              edi, edi                                      // 0x00604e56    33ff
                         {disp8} mov        dword ptr [ebx + 0x08], esi                   // 0x00604e58    897308
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x00604e5b    897b0c
                         call               .Lbl_addr_0x00602d40                          // 0x00604e5e    e8dddeffff
                         pop                edi                                           // 0x00604e63    5f
                         pop                esi                                           // 0x00604e64    5e
                         pop                ebx                                           // 0x00604e65    5b
                         ret                                                              // 0x00604e66    c3
                         nop                                                              // 0x00604e67    90
                         nop                                                              // 0x00604e68    90
                         nop                                                              // 0x00604e69    90
                         nop                                                              // 0x00604e6a    90
                         nop                                                              // 0x00604e6b    90
                         nop                                                              // 0x00604e6c    90
                         nop                                                              // 0x00604e6d    90
                         nop                                                              // 0x00604e6e    90
                         nop                                                              // 0x00604e6f    90
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00604e70    668b4102
                         {disp8} mov        dx, word ptr [ecx + 0x06]                     // 0x00604e74    668b5106
                         shr                ax, 3                                         // 0x00604e78    66c1e803
                         movsx              eax, ax                                       // 0x00604e7c    0fbfc0
                         shr                dx, 3                                         // 0x00604e7f    66c1ea03
                         movsx              edx, dx                                       // 0x00604e83    0fbfd2
                         shl                eax, 6                                        // 0x00604e86    c1e006
                         add.s              eax, edx                                      // 0x00604e89    03c2
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]       // 0x00604e8b    8d14c500000000
                         sub.s              edx, eax                                      // 0x00604e92    2bd0
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00c8dc54]       // 0x00604e94    8d049554dcc800
                         mov                edx, dword ptr [eax]                          // 0x00604e9b    8b10
                         mov                dword ptr [ecx], edx                          // 0x00604e9d    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00604e9f    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00604ea2    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00604ea5    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00604ea8    894108
                         ret                                                              // 0x00604eab    c3
                         nop                                                              // 0x00604eac    90
                         nop                                                              // 0x00604ead    90
                         nop                                                              // 0x00604eae    90
                         nop                                                              // 0x00604eaf    90
                         push               ebx                                           // 0x00604eb0    53
                         push               esi                                           // 0x00604eb1    56
                         push               edi                                           // 0x00604eb2    57
                         sub                esp, 0x10                                     // 0x00604eb3    83ec10
                         mov                eax, 0x006380e0                               // 0x00604eb6    b8e0806300
                         mov.s              ebx, esp                                      // 0x00604ebb    8bdc
                         mov                dword ptr [ebx], eax                          // 0x00604ebd    8903
                         xor.s              edx, edx                                      // 0x00604ebf    33d2
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00604ec1    895304
                         xor.s              esi, esi                                      // 0x00604ec4    33f6
                         xor.s              edi, edi                                      // 0x00604ec6    33ff
                         {disp8} mov        dword ptr [ebx + 0x08], esi                   // 0x00604ec8    897308
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x00604ecb    897b0c
                         call               .Lbl_addr_0x00602d40                          // 0x00604ece    e86ddeffff
                         pop                edi                                           // 0x00604ed3    5f
                         pop                esi                                           // 0x00604ed4    5e
                         pop                ebx                                           // 0x00604ed5    5b
                         ret                                                              // 0x00604ed6    c3
                         nop                                                              // 0x00604ed7    90
                         nop                                                              // 0x00604ed8    90
                         nop                                                              // 0x00604ed9    90
                         nop                                                              // 0x00604eda    90
                         nop                                                              // 0x00604edb    90
                         nop                                                              // 0x00604edc    90
                         nop                                                              // 0x00604edd    90
                         nop                                                              // 0x00604ede    90
                         nop                                                              // 0x00604edf    90
                         push               0x006036a0                                    // 0x00604ee0    68a0366000
                         call               .Lbl_addr_0x00602e80                          // 0x00604ee5    e896dfffff
                         ret                                                              // 0x00604eea    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00604eeb    e809c9dfff
                         push               ebx                                           // 0x00604ef0    53
                         push               esi                                           // 0x00604ef1    56
                         push               edi                                           // 0x00604ef2    57
                         sub                esp, 0x10                                     // 0x00604ef3    83ec10
                         mov                eax, 0x006380f0                               // 0x00604ef6    b8f0806300
                         mov.s              ebx, esp                                      // 0x00604efb    8bdc
                         mov                dword ptr [ebx], eax                          // 0x00604efd    8903
                         xor.s              edx, edx                                      // 0x00604eff    33d2
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00604f01    895304
                         xor.s              esi, esi                                      // 0x00604f04    33f6
                         xor.s              edi, edi                                      // 0x00604f06    33ff
                         {disp8} mov        dword ptr [ebx + 0x08], esi                   // 0x00604f08    897308
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x00604f0b    897b0c
                         call               .Lbl_addr_0x00602d40                          // 0x00604f0e    e82ddeffff
                         pop                edi                                           // 0x00604f13    5f
                         pop                esi                                           // 0x00604f14    5e
                         pop                ebx                                           // 0x00604f15    5b
                         ret                                                              // 0x00604f16    c3
                         nop                                                              // 0x00604f17    90
                         nop                                                              // 0x00604f18    90
                         nop                                                              // 0x00604f19    90
                         nop                                                              // 0x00604f1a    90
                         nop                                                              // 0x00604f1b    90
                         nop                                                              // 0x00604f1c    90
                         nop                                                              // 0x00604f1d    90
                         nop                                                              // 0x00604f1e    90
                         nop                                                              // 0x00604f1f    90
                         push               0x006036a0                                    // 0x00604f20    68a0366000
                         call               .Lbl_addr_0x00602e80                          // 0x00604f25    e856dfffff
                         ret                                                              // 0x00604f2a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00604f2b    e8c9c8dfff
                         push               0x006035b0                                    // 0x00604f30    68b0356000
                         call               .Lbl_addr_0x00602e80                          // 0x00604f35    e846dfffff
                         ret                                                              // 0x00604f3a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00604f3b    e8b9c8dfff
_jmp_addr_0x00604f40:    push               ebx                                           // 0x00604f40    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00604f41    8b5c2408
                         push               esi                                           // 0x00604f45    56
                         push               edi                                           // 0x00604f46    57
                         mov.s              edi, ecx                                      // 0x00604f47    8bf9
                         {disp8} mov        si, word ptr [edi + 0x02]                     // 0x00604f49    668b7702
                         mov.s              ecx, ebx                                      // 0x00604f4d    8bcb
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x00604f4f    e82cccffff
                         and                esi, 0x0000ffff                               // 0x00604f54    81e6ffff0000
                         cmp.s              esi, eax                                      // 0x00604f5a    3bf0
                         {disp8} jne        .Lbl_addr_0x00604f7e                          // 0x00604f5c    7520
                         {disp8} mov        si, word ptr [edi + 0x06]                     // 0x00604f5e    668b7706
                         mov.s              ecx, ebx                                      // 0x00604f62    8bcb
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x00604f64    e837ccffff
                         and                esi, 0x0000ffff                               // 0x00604f69    81e6ffff0000
                         cmp.s              esi, eax                                      // 0x00604f6f    3bf0
                         {disp8} jne        .Lbl_addr_0x00604f7e                          // 0x00604f71    750b
                         pop                edi                                           // 0x00604f73    5f
                         pop                esi                                           // 0x00604f74    5e
                         mov                eax, 0x00000001                               // 0x00604f75    b801000000
                         pop                ebx                                           // 0x00604f7a    5b
                         ret                0x0004                                        // 0x00604f7b    c20400
.Lbl_addr_0x00604f7e:    pop                edi                                           // 0x00604f7e    5f
                         pop                esi                                           // 0x00604f7f    5e
                         xor.s              eax, eax                                      // 0x00604f80    33c0
                         pop                ebx                                           // 0x00604f82    5b
                         ret                0x0004                                        // 0x00604f83    c20400
                         nop                                                              // 0x00604f86    90
                         nop                                                              // 0x00604f87    90
                         nop                                                              // 0x00604f88    90
                         nop                                                              // 0x00604f89    90
                         nop                                                              // 0x00604f8a    90
                         nop                                                              // 0x00604f8b    90
                         nop                                                              // 0x00604f8c    90
                         nop                                                              // 0x00604f8d    90
                         nop                                                              // 0x00604f8e    90
                         nop                                                              // 0x00604f8f    90
_jmp_addr_0x00604f90:    push               ebx                                           // 0x00604f90    53
                         push               esi                                           // 0x00604f91    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00604f92    8b742410
                         push               edi                                           // 0x00604f96    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00604f97    8b7c2410
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00604f9b    8b4704
                         xor.s              edx, edx                                      // 0x00604f9e    33d2
                         div                esi                                           // 0x00604fa0    f7f6
                         xor.s              edx, edx                                      // 0x00604fa2    33d2
                         mov.s              ebx, eax                                      // 0x00604fa4    8bd8
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00604fa6    8b4104
                         div                esi                                           // 0x00604fa9    f7f6
                         cmp.s              eax, ebx                                      // 0x00604fab    3bc3
                         {disp8} jne        .Lbl_addr_0x00604fcc                          // 0x00604fad    751d
                         mov                eax, dword ptr [edi]                          // 0x00604faf    8b07
                         xor.s              edx, edx                                      // 0x00604fb1    33d2
                         div                esi                                           // 0x00604fb3    f7f6
                         xor.s              edx, edx                                      // 0x00604fb5    33d2
                         mov.s              edi, eax                                      // 0x00604fb7    8bf8
                         mov                eax, dword ptr [ecx]                          // 0x00604fb9    8b01
                         div                esi                                           // 0x00604fbb    f7f6
                         cmp.s              eax, edi                                      // 0x00604fbd    3bc7
                         {disp8} jne        .Lbl_addr_0x00604fcc                          // 0x00604fbf    750b
                         pop                edi                                           // 0x00604fc1    5f
                         pop                esi                                           // 0x00604fc2    5e
                         mov                eax, 0x00000001                               // 0x00604fc3    b801000000
                         pop                ebx                                           // 0x00604fc8    5b
                         ret                0x0008                                        // 0x00604fc9    c20800
.Lbl_addr_0x00604fcc:    pop                edi                                           // 0x00604fcc    5f
                         pop                esi                                           // 0x00604fcd    5e
                         xor.s              eax, eax                                      // 0x00604fce    33c0
                         pop                ebx                                           // 0x00604fd0    5b
                         ret                0x0008                                        // 0x00604fd1    c20800
                         nop                                                              // 0x00604fd4    90
                         nop                                                              // 0x00604fd5    90
                         nop                                                              // 0x00604fd6    90
                         nop                                                              // 0x00604fd7    90
                         nop                                                              // 0x00604fd8    90
                         nop                                                              // 0x00604fd9    90
                         nop                                                              // 0x00604fda    90
                         nop                                                              // 0x00604fdb    90
                         nop                                                              // 0x00604fdc    90
                         nop                                                              // 0x00604fdd    90
                         nop                                                              // 0x00604fde    90
                         nop                                                              // 0x00604fdf    90
?CollideCollideWithFixe@MapCoords@@QBEHXZ:
                         push               esi                                           // 0x00604fe0    56
                         mov.s              esi, ecx                                      // 0x00604fe1    8bf1
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00604fe3    e848e4ffff
                         test               eax, eax                                      // 0x00604fe8    85c0
                         {disp8} jne        .Lbl_addr_0x00604ff1                          // 0x00604fea    7505
                         or                 eax, -0x1                                     // 0x00604fec    83c8ff
                         pop                esi                                           // 0x00604fef    5e
                         ret                                                              // 0x00604ff0    c3
.Lbl_addr_0x00604ff1:    push               esi                                           // 0x00604ff1    56
                         mov.s              ecx, esi                                      // 0x00604ff2    8bce
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00604ff4    e837e4ffff
                         mov.s              ecx, eax                                      // 0x00604ff9    8bc8
                         call               ?CollideWithFixe@MapCell@@QAEHABUMapCoords@@@Z                          // 0x00604ffb    e810cdffff
                         pop                esi                                           // 0x00605000    5e
                         ret                                                              // 0x00605001    c3
                         nop                                                              // 0x00605002    90
                         nop                                                              // 0x00605003    90
                         nop                                                              // 0x00605004    90
                         nop                                                              // 0x00605005    90
                         nop                                                              // 0x00605006    90
                         nop                                                              // 0x00605007    90
                         nop                                                              // 0x00605008    90
                         nop                                                              // 0x00605009    90
                         nop                                                              // 0x0060500a    90
                         nop                                                              // 0x0060500b    90
                         nop                                                              // 0x0060500c    90
                         nop                                                              // 0x0060500d    90
                         nop                                                              // 0x0060500e    90
                         nop                                                              // 0x0060500f    90
_jmp_addr_0x00605010:    push               esi                                           // 0x00605010    56
                         push               0x000005b3                                    // 0x00605011    68b3050000
                         push               0x00bf41a8                                    // 0x00605016    68a841bf00
                         push               0x00010000                                    // 0x0060501b    6800000100
                         mov.s              esi, ecx                                      // 0x00605020    8bf1
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00605022    e8e9940d00
                         push               0x000005b4                                    // 0x00605027    68b4050000
                         push               0x00bf41a8                                    // 0x0060502c    68a841bf00
                         push               0x00010000                                    // 0x00605031    6800000100
                         mov                word ptr [esi], ax                            // 0x00605036    668906
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00605039    e8d2940d00
                         add                esp, 0x18                                     // 0x0060503e    83c418
                         {disp8} mov        word ptr [esi + 0x04], ax                     // 0x00605041    66894604
                         pop                esi                                           // 0x00605045    5e
                         ret                                                              // 0x00605046    c3
                         nop                                                              // 0x00605047    90
                         nop                                                              // 0x00605048    90
                         nop                                                              // 0x00605049    90
                         nop                                                              // 0x0060504a    90
                         nop                                                              // 0x0060504b    90
                         nop                                                              // 0x0060504c    90
                         nop                                                              // 0x0060504d    90
                         nop                                                              // 0x0060504e    90
                         nop                                                              // 0x0060504f    90
_jmp_addr_0x00605050:    push               ecx                                           // 0x00605050    51
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x00605051    8b4108
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00605054    89442400
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00605058    e833e01f00
                         {disp8} fadd       dword ptr [esp + 0x00]                        // 0x0060505d    d8442400
                         pop                ecx                                           // 0x00605061    59
                         ret                                                              // 0x00605062    c3
                         nop                                                              // 0x00605063    90
                         nop                                                              // 0x00605064    90
                         nop                                                              // 0x00605065    90
                         nop                                                              // 0x00605066    90
                         nop                                                              // 0x00605067    90
                         nop                                                              // 0x00605068    90
                         nop                                                              // 0x00605069    90
                         nop                                                              // 0x0060506a    90
                         nop                                                              // 0x0060506b    90
                         nop                                                              // 0x0060506c    90
                         nop                                                              // 0x0060506d    90
                         nop                                                              // 0x0060506e    90
                         nop                                                              // 0x0060506f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605070    8b442404
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00605074    8b5004
                         mov                eax, dword ptr [eax]                          // 0x00605077    8b00
                         push               edx                                           // 0x00605079    52
                         push               eax                                           // 0x0060507a    50
                         call               _jmp_addr_0x00601f40                          // 0x0060507b    e8c0ceffff
                         ret                0x0004                                        // 0x00605080    c20400
                         nop                                                              // 0x00605083    90
                         nop                                                              // 0x00605084    90
                         nop                                                              // 0x00605085    90
                         nop                                                              // 0x00605086    90
                         nop                                                              // 0x00605087    90
                         nop                                                              // 0x00605088    90
                         nop                                                              // 0x00605089    90
                         nop                                                              // 0x0060508a    90
                         nop                                                              // 0x0060508b    90
                         nop                                                              // 0x0060508c    90
                         nop                                                              // 0x0060508d    90
                         nop                                                              // 0x0060508e    90
                         nop                                                              // 0x0060508f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605090    8b442404
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00605094    8b5004
                         mov                eax, dword ptr [eax]                          // 0x00605097    8b00
                         push               edx                                           // 0x00605099    52
                         push               eax                                           // 0x0060509a    50
                         call               _jmp_addr_0x00601f40                          // 0x0060509b    e8a0ceffff
                         ret                0x0004                                        // 0x006050a0    c20400
                         nop                                                              // 0x006050a3    90
                         nop                                                              // 0x006050a4    90
                         nop                                                              // 0x006050a5    90
                         nop                                                              // 0x006050a6    90
                         nop                                                              // 0x006050a7    90
                         nop                                                              // 0x006050a8    90
                         nop                                                              // 0x006050a9    90
                         nop                                                              // 0x006050aa    90
                         nop                                                              // 0x006050ab    90
                         nop                                                              // 0x006050ac    90
                         nop                                                              // 0x006050ad    90
                         nop                                                              // 0x006050ae    90
                         nop                                                              // 0x006050af    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006050b0    8b442404
                         mov                edx, dword ptr [eax]                          // 0x006050b4    8b10
                         mov                dword ptr [ecx], edx                          // 0x006050b6    8911
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x006050b8    8b4004
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006050bb    894104
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000000            // 0x006050be    c7410800000000
                         ret                0x0004                                        // 0x006050c5    c20400
                         nop                                                              // 0x006050c8    90
                         nop                                                              // 0x006050c9    90
                         nop                                                              // 0x006050ca    90
                         nop                                                              // 0x006050cb    90
                         nop                                                              // 0x006050cc    90
                         nop                                                              // 0x006050cd    90
                         nop                                                              // 0x006050ce    90
                         nop                                                              // 0x006050cf    90
_jmp_addr_0x006050d0:    push               ecx                                           // 0x006050d0    51
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x006050d1    d94108
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006050d4    8b442408
                         {disp8} fild       dword ptr [ecx + 0x04]                        // 0x006050d8    db4104
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006050db    d80d50009300
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006050e1    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x006050e7    d95c2400
                         fild               dword ptr [ecx]                               // 0x006050eb    db01
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x006050ed    8b4c2400
                         {disp32} fmul      dword ptr [__real@4@4002a000000000000000]     // 0x006050f1    d80d50009300
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x006050f7    894808
                         {disp32} fmul      dword ptr [__real@4@3fef8000000000000000]     // 0x006050fa    d80d1cc48a00
                         fstp               dword ptr [eax]                               // 0x00605100    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00605102    d95804
                         pop                ecx                                           // 0x00605105    59
                         ret                0x0004                                        // 0x00605106    c20400
                         nop                                                              // 0x00605109    90
                         nop                                                              // 0x0060510a    90
                         nop                                                              // 0x0060510b    90
                         nop                                                              // 0x0060510c    90
                         nop                                                              // 0x0060510d    90
                         nop                                                              // 0x0060510e    90
                         nop                                                              // 0x0060510f    90
                         {disp32} fld       dword ptr [__real@447a0000]                   // 0x00605110    d90528b28a00
                         ret                                                              // 0x00605116    c3
                         nop                                                              // 0x00605117    90
                         nop                                                              // 0x00605118    90
                         nop                                                              // 0x00605119    90
                         nop                                                              // 0x0060511a    90
                         nop                                                              // 0x0060511b    90
                         nop                                                              // 0x0060511c    90
                         nop                                                              // 0x0060511d    90
                         nop                                                              // 0x0060511e    90
                         nop                                                              // 0x0060511f    90
.Lbl_addr_0x00605120:    push               edi                                           // 0x00605120    57
                         mov.s              edi, ecx                                      // 0x00605121    8bf9
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x00605123    e808e3ffff
                         test               eax, eax                                      // 0x00605128    85c0
                         {disp8} jne        .Lbl_addr_0x00605130                          // 0x0060512a    7504
                         pop                edi                                           // 0x0060512c    5f
                         ret                0x0004                                        // 0x0060512d    c20400
.Lbl_addr_0x00605130:    push               ebx                                           // 0x00605130    53
                         push               esi                                           // 0x00605131    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00605132    8b742410
                         mov                ebx, dword ptr [esi]                          // 0x00605136    8b1e
                         mov.s              ecx, edi                                      // 0x00605138    8bcf
                         call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ           // 0x0060513a    e8f1e2ffff
                         push               eax                                           // 0x0060513f    50
                         mov.s              ecx, esi                                      // 0x00605140    8bce
                         call               dword ptr [ebx + 0x53c]                       // 0x00605142    ff933c050000
                         pop                esi                                           // 0x00605148    5e
                         pop                ebx                                           // 0x00605149    5b
                         pop                edi                                           // 0x0060514a    5f
                         ret                0x0004                                        // 0x0060514b    c20400
                         nop                                                              // 0x0060514e    90
                         nop                                                              // 0x0060514f    90
                         sub                esp, 0x24                                     // 0x00605150    83ec24
                         push               ebx                                           // 0x00605153    53
                         mov.s              ebx, ecx                                      // 0x00605154    8bd9
                         mov                eax, dword ptr [ebx]                          // 0x00605156    8b03
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x00605158    d94308
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                   // 0x0060515b    8b4b04
                         push               ebp                                           // 0x0060515e    55
                         {disp8} mov        ebp, dword ptr [esp + 0x30]                   // 0x0060515f    8b6c2430
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00605163    89442414
                         mov                eax, 0x00000001                               // 0x00605167    b801000000
                         push               esi                                           // 0x0060516c    56
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0060516d    d95c2420
                         push               edi                                           // 0x00605171    57
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00605172    894c2420
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00605176    c744241000000000
                         {disp8} mov        dword ptr [ebp + 0x00], 0x47c34f80            // 0x0060517e    c74500804fc347
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00605185    89442418
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00605189    89442414
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000009            // 0x0060518d    c744243809000000
.Lbl_addr_0x00605195:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00605195    8d4c241c
                         call               ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ         // 0x00605199    e812e3ffff
                         mov.s              edi, eax                                      // 0x0060519e    8bf8
                         test               edi, edi                                      // 0x006051a0    85ff
                         {disp8} je         .Lbl_addr_0x00605211                          // 0x006051a2    746d
.Lbl_addr_0x006051a4:    push               0x0                                           // 0x006051a4    6a00
                         push               0x009c7f80                                    // 0x006051a6    68807f9c00
                         push               0x009c7f50                                    // 0x006051ab    68507f9c00
                         push               0x0                                           // 0x006051b0    6a00
                         push               edi                                           // 0x006051b2    57
                         call               ___RTDynamicCast                              // 0x006051b3    e861081c00
                         mov.s              esi, eax                                      // 0x006051b8    8bf0
                         add                esp, 0x14                                     // 0x006051ba    83c414
                         test               esi, esi                                      // 0x006051bd    85f6
                         {disp8} je         .Lbl_addr_0x00605201                          // 0x006051bf    7440
                         mov                edx, dword ptr [esi]                          // 0x006051c1    8b16
                         mov.s              ecx, esi                                      // 0x006051c3    8bce
                         call               dword ptr [edx + 0x890]                       // 0x006051c5    ff9290080000
                         cmp                eax, 0x01                                     // 0x006051cb    83f801
                         {disp8} je         .Lbl_addr_0x00605201                          // 0x006051ce    7431
                         mov                eax, dword ptr [esi]                          // 0x006051d0    8b06
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x006051d2    8d4c241c
                         push               ecx                                           // 0x006051d6    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x006051d7    8d54242c
                         push               edx                                           // 0x006051db    52
                         mov.s              ecx, esi                                      // 0x006051dc    8bce
                         call               dword ptr [eax + 0x83c]                       // 0x006051de    ff903c080000
                         push               eax                                           // 0x006051e4    50
                         mov.s              ecx, ebx                                      // 0x006051e5    8bcb
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x006051e7    e8e40a0000
                         {disp8} fcom       dword ptr [ebp + 0x00]                        // 0x006051ec    d85500
                         fnstsw             ax                                            // 0x006051ef    dfe0
                         test               ah, 0x01                                      // 0x006051f1    f6c401
                         {disp8} je         .Lbl_addr_0x006051ff                          // 0x006051f4    7409
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x006051f6    d95d00
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x006051f9    89742410
                         {disp8} jmp        .Lbl_addr_0x00605201                          // 0x006051fd    eb02
.Lbl_addr_0x006051ff:    fstp               st(0)                                         // 0x006051ff    ddd8
.Lbl_addr_0x00605201:    push               edi                                           // 0x00605201    57
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00605202    8d4c2420
                         call               .Lbl_addr_0x00605120                          // 0x00605206    e815ffffff
                         mov.s              edi, eax                                      // 0x0060520b    8bf8
                         test               edi, edi                                      // 0x0060520d    85ff
                         {disp8} jne        .Lbl_addr_0x006051a4                          // 0x0060520f    7593
.Lbl_addr_0x00605211:    {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00605211    8d442414
                         push               eax                                           // 0x00605215    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00605216    8d4c241c
                         push               ecx                                           // 0x0060521a    51
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x0060521b    e8c0851400
                         add                esp, 0x08                                     // 0x00605220    83c408
                         push               eax                                           // 0x00605223    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00605224    8d4c2420
                         call               ??YMapCoords@@QAEXABUJustMapXZ@@@Z            // 0x00605228    e843020000
                         dec                dword ptr [esp + 0x38]                        // 0x0060522d    ff4c2438
                         {disp32} jne       .Lbl_addr_0x00605195                          // 0x00605231    0f855effffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00605237    8b442410
                         pop                edi                                           // 0x0060523b    5f
                         pop                esi                                           // 0x0060523c    5e
                         pop                ebp                                           // 0x0060523d    5d
                         pop                ebx                                           // 0x0060523e    5b
                         add                esp, 0x24                                     // 0x0060523f    83c424
                         ret                0x0004                                        // 0x00605242    c20400
                         nop                                                              // 0x00605245    90
                         nop                                                              // 0x00605246    90
                         nop                                                              // 0x00605247    90
                         nop                                                              // 0x00605248    90
                         nop                                                              // 0x00605249    90
                         nop                                                              // 0x0060524a    90
                         nop                                                              // 0x0060524b    90
                         nop                                                              // 0x0060524c    90
                         nop                                                              // 0x0060524d    90
                         nop                                                              // 0x0060524e    90
                         nop                                                              // 0x0060524f    90
_jmp_addr_0x00605250:    sub                esp, 0x14                                     // 0x00605250    83ec14
                         push               ebp                                           // 0x00605253    55
                         push               esi                                           // 0x00605254    56
                         xor.s              esi, esi                                      // 0x00605255    33f6
                         push               edi                                           // 0x00605257    57
                         mov.s              ebp, ecx                                      // 0x00605258    8be9
                         {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x0060525a    8974240c
                         call               ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ         // 0x0060525e    e84de2ffff
                         mov.s              edi, eax                                      // 0x00605263    8bf8
                         test               edi, edi                                      // 0x00605265    85ff
                         {disp32} je        .Lbl_addr_0x00605307                          // 0x00605267    0f849a000000
                         push               ebx                                           // 0x0060526d    53
.Lbl_addr_0x0060526e:    mov                eax, dword ptr [edi]                          // 0x0060526e    8b07
                         mov.s              ecx, edi                                      // 0x00605270    8bcf
                         call               dword ptr [eax + 0xb4]                        // 0x00605272    ff90b4000000
                         mov.s              esi, eax                                      // 0x00605278    8bf0
                         test               esi, esi                                      // 0x0060527a    85f6
                         {disp8} je         .Lbl_addr_0x006052e9                          // 0x0060527c    746b
                         mov                edx, dword ptr [esi]                          // 0x0060527e    8b16
                         mov.s              ecx, esi                                      // 0x00605280    8bce
                         call               dword ptr [edx + 0x890]                       // 0x00605282    ff9290080000
                         cmp                eax, 0x01                                     // 0x00605288    83f801
                         {disp8} jne        .Lbl_addr_0x0060529b                          // 0x0060528b    750e
                         mov                eax, dword ptr [esi]                          // 0x0060528d    8b06
                         mov.s              ecx, esi                                      // 0x0060528f    8bce
                         call               dword ptr [eax + 0x88c]                       // 0x00605291    ff908c080000
                         test               eax, eax                                      // 0x00605297    85c0
                         {disp8} jne        .Lbl_addr_0x006052e9                          // 0x00605299    754e
.Lbl_addr_0x0060529b:    mov                edx, dword ptr [esi]                          // 0x0060529b    8b16
                         mov.s              ecx, esi                                      // 0x0060529d    8bce
                         call               dword ptr [edx + 0x858]                       // 0x0060529f    ff9258080000
                         mov.s              ebx, eax                                      // 0x006052a5    8bd8
                         test               ebx, ebx                                      // 0x006052a7    85db
                         {disp8} je         .Lbl_addr_0x006052e5                          // 0x006052a9    743a
                         push               0x3e99999a                                    // 0x006052ab    689a99993e
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x006052b0    8d44241c
                         push               eax                                           // 0x006052b4    50
                         mov.s              ecx, ebp                                      // 0x006052b5    8bcd
                         call               ?GetLHPoint@MapCoords@@QBE?AULHPoint@@XZ      // 0x006052b7    e884090000
                         push               eax                                           // 0x006052bc    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x006052bd    8d4c241c
                         call               _jmp_addr_0x00829590                          // 0x006052c1    e8ca422200
                         mov                ecx, dword ptr [ebx]                          // 0x006052c6    8b0b
                         push               ecx                                           // 0x006052c8    51
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x006052c9    8b4c2418
                         call               @Collide__Q210NewCollide3ObjFPQ210NewCollide3Obj@12                          // 0x006052cd    e86e3e2200
                         test               eax, eax                                      // 0x006052d2    85c0
                         {disp8} je         .Lbl_addr_0x006052da                          // 0x006052d4    7404
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x006052d6    89742410
.Lbl_addr_0x006052da:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x006052da    8d4c2414
                         call               ??_DNewCollide@@QAEXXZ                        // 0x006052de    e8bd5b2200
                         {disp8} jmp        .Lbl_addr_0x006052e9                          // 0x006052e3    eb04
.Lbl_addr_0x006052e5:    {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x006052e5    89742410
.Lbl_addr_0x006052e9:    push               edi                                           // 0x006052e9    57
                         mov.s              ecx, ebp                                      // 0x006052ea    8bcd
                         call               .Lbl_addr_0x00605120                          // 0x006052ec    e82ffeffff
                         mov.s              edi, eax                                      // 0x006052f1    8bf8
                         test               edi, edi                                      // 0x006052f3    85ff
                         {disp32} jne       .Lbl_addr_0x0060526e                          // 0x006052f5    0f8573ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006052fb    8b442410
                         pop                ebx                                           // 0x006052ff    5b
                         pop                edi                                           // 0x00605300    5f
                         pop                esi                                           // 0x00605301    5e
                         pop                ebp                                           // 0x00605302    5d
                         add                esp, 0x14                                     // 0x00605303    83c414
                         ret                                                              // 0x00605306    c3
.Lbl_addr_0x00605307:    pop                edi                                           // 0x00605307    5f
                         mov.s              eax, esi                                      // 0x00605308    8bc6
                         pop                esi                                           // 0x0060530a    5e
                         pop                ebp                                           // 0x0060530b    5d
                         add                esp, 0x14                                     // 0x0060530c    83c414
                         ret                                                              // 0x0060530f    c3
                         sub                esp, 0x10                                     // 0x00605310    83ec10
                         push               ebx                                           // 0x00605313    53
                         push               ebp                                           // 0x00605314    55
                         push               esi                                           // 0x00605315    56
                         push               edi                                           // 0x00605316    57
                         mov.s              ebp, ecx                                      // 0x00605317    8be9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00605319    8b0d5c19d000
                         xor.s              ebx, ebx                                      // 0x0060531f    33db
                         push               ebx                                           // 0x00605321    53
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00605322    e859b6f4ff
                         cmp.s              eax, ebx                                      // 0x00605327    3bc3
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00605329    89442410
                         {disp8} je         .Lbl_addr_0x0060539d                          // 0x0060532d    746e
.Lbl_addr_0x0060532f:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0060532f    8b442410
                         {disp32} mov       eax, dword ptr [eax + 0x00000a48]             // 0x00605333    8b80480a0000
                         cmp.s              eax, ebx                                      // 0x00605339    3bc3
                         {disp8} je         .Lbl_addr_0x00605385                          // 0x0060533b    7448
                         xor.s              edi, edi                                      // 0x0060533d    33ff
                         {disp8} lea        esi, dword ptr [eax + 0x34]                   // 0x0060533f    8d7034
.Lbl_addr_0x00605342:    mov                ecx, dword ptr [esi]                          // 0x00605342    8b0e
                         cmp.s              ecx, ebx                                      // 0x00605344    3bcb
                         {disp8} je         .Lbl_addr_0x0060537c                          // 0x00605346    7434
                         mov                edx, dword ptr [ecx]                          // 0x00605348    8b11
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0060534a    8d442414
                         push               eax                                           // 0x0060534e    50
                         push               0x6                                           // 0x0060534f    6a06
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x00605351    895c241c
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x00605355    895c2420
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x00605359    c744242400000000
                         call               dword ptr [edx + 0x7f8]                       // 0x00605361    ff92f8070000
                         push               0x40a00000                                    // 0x00605367    680000a040
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0060536c    8d4c2418
                         push               ecx                                           // 0x00605370    51
                         mov.s              ecx, ebp                                      // 0x00605371    8bcd
                         call               ?IsCloseToEqual@MapCoords@@QBEIABU1@M@Z // 0x00605373    e848000000
                         test               eax, eax                                      // 0x00605378    85c0
                         {disp8} jne        .Lbl_addr_0x006053a7                          // 0x0060537a    752b
.Lbl_addr_0x0060537c:    inc                edi                                           // 0x0060537c    47
                         add                esi, 0x04                                     // 0x0060537d    83c604
                         cmp                edi, 0x06                                     // 0x00605380    83ff06
                         .byte              0x72, 0xbd// {disp8} jb .Lbl_addr_0x00605342  // 0x00605383    72bd
.Lbl_addr_0x00605385:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00605385    8b542410
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00605389    8b0d5c19d000
                         push               edx                                           // 0x0060538f    52
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00605390    e8ebb5f4ff
                         cmp.s              eax, ebx                                      // 0x00605395    3bc3
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00605397    89442410
                         {disp8} jne        .Lbl_addr_0x0060532f                          // 0x0060539b    7592
.Lbl_addr_0x0060539d:    pop                edi                                           // 0x0060539d    5f
                         pop                esi                                           // 0x0060539e    5e
                         pop                ebp                                           // 0x0060539f    5d
                         xor.s              eax, eax                                      // 0x006053a0    33c0
                         pop                ebx                                           // 0x006053a2    5b
                         add                esp, 0x10                                     // 0x006053a3    83c410
                         ret                                                              // 0x006053a6    c3
.Lbl_addr_0x006053a7:    pop                edi                                           // 0x006053a7    5f
                         pop                esi                                           // 0x006053a8    5e
                         pop                ebp                                           // 0x006053a9    5d
                         mov                eax, 0x00000001                               // 0x006053aa    b801000000
                         pop                ebx                                           // 0x006053af    5b
                         add                esp, 0x10                                     // 0x006053b0    83c410
                         ret                                                              // 0x006053b3    c3
                         nop                                                              // 0x006053b4    90
                         nop                                                              // 0x006053b5    90
                         nop                                                              // 0x006053b6    90
                         nop                                                              // 0x006053b7    90
                         nop                                                              // 0x006053b8    90
                         nop                                                              // 0x006053b9    90
                         nop                                                              // 0x006053ba    90
                         nop                                                              // 0x006053bb    90
                         nop                                                              // 0x006053bc    90
                         nop                                                              // 0x006053bd    90
                         nop                                                              // 0x006053be    90
                         nop                                                              // 0x006053bf    90
?IsCloseToEqual@MapCoords@@QBEIABU1@M@Z:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006053c0    8b442404
                         push               eax                                           // 0x006053c4    50
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x006053c5    e806090000
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x006053ca    d85c2408
                         fnstsw             ax                                            // 0x006053ce    dfe0
                         test               ah, 0x41                                      // 0x006053d0    f6c441
                         {disp8} je         .Lbl_addr_0x006053dd                          // 0x006053d3    7408
                         mov                eax, 0x00000001                               // 0x006053d5    b801000000
                         ret                0x0008                                        // 0x006053da    c20800
.Lbl_addr_0x006053dd:    xor.s              eax, eax                                      // 0x006053dd    33c0
                         ret                0x0008                                        // 0x006053df    c20800
                         nop                                                              // 0x006053e2    90
                         nop                                                              // 0x006053e3    90
                         nop                                                              // 0x006053e4    90
                         nop                                                              // 0x006053e5    90
                         nop                                                              // 0x006053e6    90
                         nop                                                              // 0x006053e7    90
                         nop                                                              // 0x006053e8    90
                         nop                                                              // 0x006053e9    90
                         nop                                                              // 0x006053ea    90
                         nop                                                              // 0x006053eb    90
                         nop                                                              // 0x006053ec    90
                         nop                                                              // 0x006053ed    90
                         nop                                                              // 0x006053ee    90
                         nop                                                              // 0x006053ef    90
_jmp_addr_0x006053f0:    push               0x0                                           // 0x006053f0    6a00
                         push               0x12                                          // 0x006053f2    6a12
                         call               ?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x006053f4    e8c7f1ffff
                         neg                eax                                           // 0x006053f9    f7d8
                         sbb.s              eax, eax                                      // 0x006053fb    1bc0
                         neg                eax                                           // 0x006053fd    f7d8
                         ret                                                              // 0x006053ff    c3
_jmp_addr_0x00605400:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605400    8b442404
                         add                dword ptr [ecx], eax                          // 0x00605404    0101
                         add                dword ptr [ecx + 0x04], eax                   // 0x00605406    014104
                         ret                0x0004                                        // 0x00605409    c20400
                         nop                                                              // 0x0060540c    90
                         nop                                                              // 0x0060540d    90
                         nop                                                              // 0x0060540e    90
                         nop                                                              // 0x0060540f    90
??YMapCoords@@QAEXABU0@@Z:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605410    8b442404
                         mov                edx, dword ptr [eax]                          // 0x00605414    8b10
                         push               esi                                           // 0x00605416    56
                         add                dword ptr [ecx], edx                          // 0x00605417    0111
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00605419    8b5004
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x0060541c    8b7104
                         add.s              esi, edx                                      // 0x0060541f    03f2
                         {disp8} mov        dword ptr [ecx + 0x04], esi                   // 0x00605421    897104
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00605424    d94008
                         {disp8} fadd       dword ptr [ecx + 0x08]                        // 0x00605427    d84108
                         pop                esi                                           // 0x0060542a    5e
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0060542b    d95908
                         ret                0x0004                                        // 0x0060542e    c20400
                         nop                                                              // 0x00605431    90
                         nop                                                              // 0x00605432    90
                         nop                                                              // 0x00605433    90
                         nop                                                              // 0x00605434    90
                         nop                                                              // 0x00605435    90
                         nop                                                              // 0x00605436    90
                         nop                                                              // 0x00605437    90
                         nop                                                              // 0x00605438    90
                         nop                                                              // 0x00605439    90
                         nop                                                              // 0x0060543a    90
                         nop                                                              // 0x0060543b    90
                         nop                                                              // 0x0060543c    90
                         nop                                                              // 0x0060543d    90
                         nop                                                              // 0x0060543e    90
                         nop                                                              // 0x0060543f    90
_jmp_addr_0x00605440:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605440    8b442404
                         sub                esp, 0x0c                                     // 0x00605444    83ec0c
                         push               esi                                           // 0x00605447    56
                         mov.s              esi, ecx                                      // 0x00605448    8bf1
                         push               eax                                           // 0x0060544a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0060544b    8d4c2408
                         call               ??0MapCoords@@QAE@ABULHPoint@@@Z               // 0x0060544f    e80cddffff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00605454    8d4c2404
                         push               ecx                                           // 0x00605458    51
                         mov.s              ecx, esi                                      // 0x00605459    8bce
                         call               ??YMapCoords@@QAEXABU0@@Z            // 0x0060545b    e8b0ffffff
                         pop                esi                                           // 0x00605460    5e
                         add                esp, 0x0c                                     // 0x00605461    83c40c
                         ret                0x0004                                        // 0x00605464    c20400
                         nop                                                              // 0x00605467    90
                         nop                                                              // 0x00605468    90
                         nop                                                              // 0x00605469    90
                         nop                                                              // 0x0060546a    90
                         nop                                                              // 0x0060546b    90
                         nop                                                              // 0x0060546c    90
                         nop                                                              // 0x0060546d    90
                         nop                                                              // 0x0060546e    90
                         nop                                                              // 0x0060546f    90
??YMapCoords@@QAEXABUJustMapXZ@@@Z:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605470    8b442404
                         mov                dx, word ptr [eax]                            // 0x00605474    668b10
                         add                word ptr [ecx + 0x02], dx                     // 0x00605477    66015102
                         {disp8} mov        ax, word ptr [eax + 0x02]                     // 0x0060547b    668b4002
                         add                word ptr [ecx + 0x06], ax                     // 0x0060547f    66014106
                         ret                0x0004                                        // 0x00605483    c20400
                         nop                                                              // 0x00605486    90
                         nop                                                              // 0x00605487    90
                         nop                                                              // 0x00605488    90
                         nop                                                              // 0x00605489    90
                         nop                                                              // 0x0060548a    90
                         nop                                                              // 0x0060548b    90
                         nop                                                              // 0x0060548c    90
                         nop                                                              // 0x0060548d    90
                         nop                                                              // 0x0060548e    90
                         nop                                                              // 0x0060548f    90
_jmp_addr_0x00605490:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605490    8b442404
                         sub                dword ptr [ecx], eax                          // 0x00605494    2901
                         sub                dword ptr [ecx + 0x04], eax                   // 0x00605496    294104
                         ret                0x0004                                        // 0x00605499    c20400
                         nop                                                              // 0x0060549c    90
                         nop                                                              // 0x0060549d    90
                         nop                                                              // 0x0060549e    90
                         nop                                                              // 0x0060549f    90
_jmp_addr_0x006054a0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006054a0    8b442404
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x006054a4    d94108
                         mov                edx, dword ptr [eax]                          // 0x006054a7    8b10
                         push               esi                                           // 0x006054a9    56
                         sub                dword ptr [ecx], edx                          // 0x006054aa    2911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x006054ac    8b5004
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x006054af    8b7104
                         sub.s              esi, edx                                      // 0x006054b2    2bf2
                         {disp8} mov        dword ptr [ecx + 0x04], esi                   // 0x006054b4    897104
                         {disp8} fsub       dword ptr [eax + 0x08]                        // 0x006054b7    d86008
                         pop                esi                                           // 0x006054ba    5e
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x006054bb    d95908
                         ret                0x0004                                        // 0x006054be    c20400
                         nop                                                              // 0x006054c1    90
                         nop                                                              // 0x006054c2    90
                         nop                                                              // 0x006054c3    90
                         nop                                                              // 0x006054c4    90
                         nop                                                              // 0x006054c5    90
                         nop                                                              // 0x006054c6    90
                         nop                                                              // 0x006054c7    90
                         nop                                                              // 0x006054c8    90
                         nop                                                              // 0x006054c9    90
                         nop                                                              // 0x006054ca    90
                         nop                                                              // 0x006054cb    90
                         nop                                                              // 0x006054cc    90
                         nop                                                              // 0x006054cd    90
                         nop                                                              // 0x006054ce    90
                         nop                                                              // 0x006054cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006054d0    8b442404
                         sub                esp, 0x0c                                     // 0x006054d4    83ec0c
                         push               esi                                           // 0x006054d7    56
                         mov.s              esi, ecx                                      // 0x006054d8    8bf1
                         push               eax                                           // 0x006054da    50
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006054db    8d4c2408
                         call               ??0MapCoords@@QAE@ABULHPoint@@@Z               // 0x006054df    e87cdcffff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006054e4    8d4c2404
                         push               ecx                                           // 0x006054e8    51
                         mov.s              ecx, esi                                      // 0x006054e9    8bce
                         call               _jmp_addr_0x006054a0                          // 0x006054eb    e8b0ffffff
                         pop                esi                                           // 0x006054f0    5e
                         add                esp, 0x0c                                     // 0x006054f1    83c40c
                         ret                0x0004                                        // 0x006054f4    c20400
                         nop                                                              // 0x006054f7    90
                         nop                                                              // 0x006054f8    90
                         nop                                                              // 0x006054f9    90
                         nop                                                              // 0x006054fa    90
                         nop                                                              // 0x006054fb    90
                         nop                                                              // 0x006054fc    90
                         nop                                                              // 0x006054fd    90
                         nop                                                              // 0x006054fe    90
                         nop                                                              // 0x006054ff    90
.Lbl_addr_0x00605500:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605500    8b442404
                         mov                dx, word ptr [eax]                            // 0x00605504    668b10
                         sub                word ptr [ecx + 0x02], dx                     // 0x00605507    66295102
                         {disp8} mov        ax, word ptr [eax + 0x02]                     // 0x0060550b    668b4002
                         sub                word ptr [ecx + 0x06], ax                     // 0x0060550f    66294106
                         ret                0x0004                                        // 0x00605513    c20400
                         nop                                                              // 0x00605516    90
                         nop                                                              // 0x00605517    90
                         nop                                                              // 0x00605518    90
                         nop                                                              // 0x00605519    90
                         nop                                                              // 0x0060551a    90
                         nop                                                              // 0x0060551b    90
                         nop                                                              // 0x0060551c    90
                         nop                                                              // 0x0060551d    90
                         nop                                                              // 0x0060551e    90
                         nop                                                              // 0x0060551f    90
??HMapCoords@@QBE?AU0@ABU0@@Z:    sub                esp, 0x0c                                     // 0x00605520    83ec0c
                         mov                eax, dword ptr [ecx]                          // 0x00605523    8b01
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00605525    8b5104
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00605528    89442400
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0060552c    8b4108
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0060552f    8b4c2414
                         push               ecx                                           // 0x00605533    51
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00605534    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x00605538    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0060553c    8944240c
                         call               ??YMapCoords@@QAEXABU0@@Z            // 0x00605540    e8cbfeffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00605545    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x00605549    8b4c2400
                         mov.s              edx, eax                                      // 0x0060554d    8bd0
                         mov                dword ptr [edx], ecx                          // 0x0060554f    890a
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00605551    8b4c2404
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00605555    894a04
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00605558    8b4c2408
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0060555c    894a08
                         add                esp, 0x0c                                     // 0x0060555f    83c40c
                         ret                0x0008                                        // 0x00605562    c20800
                         nop                                                              // 0x00605565    90
                         nop                                                              // 0x00605566    90
                         nop                                                              // 0x00605567    90
                         nop                                                              // 0x00605568    90
                         nop                                                              // 0x00605569    90
                         nop                                                              // 0x0060556a    90
                         nop                                                              // 0x0060556b    90
                         nop                                                              // 0x0060556c    90
                         nop                                                              // 0x0060556d    90
                         nop                                                              // 0x0060556e    90
                         nop                                                              // 0x0060556f    90
_jmp_addr_0x00605570:    sub                esp, 0x0c                                     // 0x00605570    83ec0c
                         mov                eax, dword ptr [ecx]                          // 0x00605573    8b01
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00605575    8b5104
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00605578    89442400
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0060557c    8b4108
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0060557f    8b4c2414
                         push               ecx                                           // 0x00605583    51
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00605584    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x00605588    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0060558c    8944240c
                         call               ??YMapCoords@@QAEXABUJustMapXZ@@@Z            // 0x00605590    e8dbfeffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00605595    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x00605599    8b4c2400
                         mov.s              edx, eax                                      // 0x0060559d    8bd0
                         mov                dword ptr [edx], ecx                          // 0x0060559f    890a
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006055a1    8b4c2404
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x006055a5    894a04
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006055a8    8b4c2408
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x006055ac    894a08
                         add                esp, 0x0c                                     // 0x006055af    83c40c
                         ret                0x0008                                        // 0x006055b2    c20800
                         nop                                                              // 0x006055b5    90
                         nop                                                              // 0x006055b6    90
                         nop                                                              // 0x006055b7    90
                         nop                                                              // 0x006055b8    90
                         nop                                                              // 0x006055b9    90
                         nop                                                              // 0x006055ba    90
                         nop                                                              // 0x006055bb    90
                         nop                                                              // 0x006055bc    90
                         nop                                                              // 0x006055bd    90
                         nop                                                              // 0x006055be    90
                         nop                                                              // 0x006055bf    90
_jmp_addr_0x006055c0:    sub                esp, 0x0c                                     // 0x006055c0    83ec0c
                         mov                eax, dword ptr [ecx]                          // 0x006055c3    8b01
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x006055c5    8b5104
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x006055c8    89442400
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x006055cc    8b4108
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006055cf    8b4c2414
                         push               ecx                                           // 0x006055d3    51
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006055d4    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x006055d8    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006055dc    8944240c
                         call               _jmp_addr_0x006054a0                          // 0x006055e0    e8bbfeffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006055e5    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x006055e9    8b4c2400
                         mov.s              edx, eax                                      // 0x006055ed    8bd0
                         mov                dword ptr [edx], ecx                          // 0x006055ef    890a
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006055f1    8b4c2404
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x006055f5    894a04
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006055f8    8b4c2408
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x006055fc    894a08
                         add                esp, 0x0c                                     // 0x006055ff    83c40c
                         ret                0x0008                                        // 0x00605602    c20800
                         nop                                                              // 0x00605605    90
                         nop                                                              // 0x00605606    90
                         nop                                                              // 0x00605607    90
                         nop                                                              // 0x00605608    90
                         nop                                                              // 0x00605609    90
                         nop                                                              // 0x0060560a    90
                         nop                                                              // 0x0060560b    90
                         nop                                                              // 0x0060560c    90
                         nop                                                              // 0x0060560d    90
                         nop                                                              // 0x0060560e    90
                         nop                                                              // 0x0060560f    90
                         sub                esp, 0x0c                                     // 0x00605610    83ec0c
                         mov                eax, dword ptr [ecx]                          // 0x00605613    8b01
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00605615    8b5104
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00605618    89442400
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0060561c    8b4108
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0060561f    8b4c2414
                         push               ecx                                           // 0x00605623    51
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00605624    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x00605628    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0060562c    8944240c
                         call               .Lbl_addr_0x00605500                          // 0x00605630    e8cbfeffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00605635    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x00605639    8b4c2400
                         mov.s              edx, eax                                      // 0x0060563d    8bd0
                         mov                dword ptr [edx], ecx                          // 0x0060563f    890a
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00605641    8b4c2404
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00605645    894a04
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00605648    8b4c2408
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0060564c    894a08
                         add                esp, 0x0c                                     // 0x0060564f    83c40c
                         ret                0x0008                                        // 0x00605652    c20800
                         nop                                                              // 0x00605655    90
                         nop                                                              // 0x00605656    90
                         nop                                                              // 0x00605657    90
                         nop                                                              // 0x00605658    90
                         nop                                                              // 0x00605659    90
                         nop                                                              // 0x0060565a    90
                         nop                                                              // 0x0060565b    90
                         nop                                                              // 0x0060565c    90
                         nop                                                              // 0x0060565d    90
                         nop                                                              // 0x0060565e    90
                         nop                                                              // 0x0060565f    90
??8MapCoords@@QBEIABU0@@Z:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605660    8b442404
                         mov                edx, dword ptr [ecx]                          // 0x00605664    8b11
                         cmp                edx, dword ptr [eax]                          // 0x00605666    3b10
                         {disp8} jne        .Lbl_addr_0x00605689                          // 0x00605668    751f
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0060566a    8b5104
                         cmp                edx, dword ptr [eax + 0x04]                   // 0x0060566d    3b5004
                         {disp8} jne        .Lbl_addr_0x00605689                          // 0x00605670    7517
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00605672    d94108
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00605675    d94008
                         fcompp                                                           // 0x00605678    ded9
                         fnstsw             ax                                            // 0x0060567a    dfe0
                         test               ah, 0x40                                      // 0x0060567c    f6c440
                         {disp8} je         .Lbl_addr_0x00605689                          // 0x0060567f    7408
                         mov                eax, 0x00000001                               // 0x00605681    b801000000
                         ret                0x0004                                        // 0x00605686    c20400
.Lbl_addr_0x00605689:    xor.s              eax, eax                                      // 0x00605689    33c0
                         ret                0x0004                                        // 0x0060568b    c20400
                         nop                                                              // 0x0060568e    90
                         nop                                                              // 0x0060568f    90
_jmp_addr_0x00605690:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605690    8b442404
                         mov                edx, dword ptr [ecx]                          // 0x00605694    8b11
                         cmp                edx, dword ptr [eax]                          // 0x00605696    3b10
                         {disp8} jne        .Lbl_addr_0x006056aa                          // 0x00605698    7510
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x0060569a    8b4904
                         cmp                ecx, dword ptr [eax + 0x04]                   // 0x0060569d    3b4804
                         {disp8} jne        .Lbl_addr_0x006056aa                          // 0x006056a0    7508
                         mov                eax, 0x00000001                               // 0x006056a2    b801000000
                         ret                0x0004                                        // 0x006056a7    c20400
.Lbl_addr_0x006056aa:    xor.s              eax, eax                                      // 0x006056aa    33c0
                         ret                0x0004                                        // 0x006056ac    c20400
                         nop                                                              // 0x006056af    90
??9MapCoords@@QBEIABU0@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006056b0    8b442404
                         push               eax                                           // 0x006056b4    50
                         call               ??8MapCoords@@QBEIABU0@@Z            // 0x006056b5    e8a6ffffff
                         neg                eax                                           // 0x006056ba    f7d8
                         sbb.s              eax, eax                                      // 0x006056bc    1bc0
                         inc                eax                                           // 0x006056be    40
                         ret                0x0004                                        // 0x006056bf    c20400
                         nop                                                              // 0x006056c2    90
                         nop                                                              // 0x006056c3    90
                         nop                                                              // 0x006056c4    90
                         nop                                                              // 0x006056c5    90
                         nop                                                              // 0x006056c6    90
                         nop                                                              // 0x006056c7    90
                         nop                                                              // 0x006056c8    90
                         nop                                                              // 0x006056c9    90
                         nop                                                              // 0x006056ca    90
                         nop                                                              // 0x006056cb    90
                         nop                                                              // 0x006056cc    90
                         nop                                                              // 0x006056cd    90
                         nop                                                              // 0x006056ce    90
                         nop                                                              // 0x006056cf    90
_jmp_addr_0x006056d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006056d0    8b442404
                         push               eax                                           // 0x006056d4    50
                         call               _jmp_addr_0x00605690                          // 0x006056d5    e8b6ffffff
                         neg                eax                                           // 0x006056da    f7d8
                         sbb.s              eax, eax                                      // 0x006056dc    1bc0
                         inc                eax                                           // 0x006056de    40
                         ret                0x0004                                        // 0x006056df    c20400
                         nop                                                              // 0x006056e2    90
                         nop                                                              // 0x006056e3    90
                         nop                                                              // 0x006056e4    90
                         nop                                                              // 0x006056e5    90
                         nop                                                              // 0x006056e6    90
                         nop                                                              // 0x006056e7    90
                         nop                                                              // 0x006056e8    90
                         nop                                                              // 0x006056e9    90
                         nop                                                              // 0x006056ea    90
                         nop                                                              // 0x006056eb    90
                         nop                                                              // 0x006056ec    90
                         nop                                                              // 0x006056ed    90
                         nop                                                              // 0x006056ee    90
                         nop                                                              // 0x006056ef    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006056f0    8b442404
                         mov                edx, dword ptr [ecx]                          // 0x006056f4    8b11
                         cmp                edx, dword ptr [eax]                          // 0x006056f6    3b10
                         .byte              0x72, 0x1f// {disp8} jb .Lbl_addr_0x00605719  // 0x006056f8    721f
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x006056fa    8b5104
                         cmp                edx, dword ptr [eax + 0x04]                   // 0x006056fd    3b5004
                         .byte              0x72, 0x17// {disp8} jb .Lbl_addr_0x00605719  // 0x00605700    7217
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00605702    d94108
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00605705    d94008
                         fcompp                                                           // 0x00605708    ded9
                         fnstsw             ax                                            // 0x0060570a    dfe0
                         test               ah, 0x41                                      // 0x0060570c    f6c441
                         {disp8} je         .Lbl_addr_0x00605719                          // 0x0060570f    7408
                         mov                eax, 0x00000001                               // 0x00605711    b801000000
                         ret                0x0004                                        // 0x00605716    c20400
.Lbl_addr_0x00605719:    xor.s              eax, eax                                      // 0x00605719    33c0
                         ret                0x0004                                        // 0x0060571b    c20400
                         nop                                                              // 0x0060571e    90
                         nop                                                              // 0x0060571f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605720    8b442404
                         mov                edx, dword ptr [ecx]                          // 0x00605724    8b11
                         cmp                edx, dword ptr [eax]                          // 0x00605726    3b10
                         {disp8} jbe        .Lbl_addr_0x00605749                          // 0x00605728    761f
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0060572a    8b5104
                         cmp                edx, dword ptr [eax + 0x04]                   // 0x0060572d    3b5004
                         {disp8} jbe        .Lbl_addr_0x00605749                          // 0x00605730    7617
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00605732    d94108
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00605735    d94008
                         fcompp                                                           // 0x00605738    ded9
                         fnstsw             ax                                            // 0x0060573a    dfe0
                         test               ah, 0x01                                      // 0x0060573c    f6c401
                         {disp8} je         .Lbl_addr_0x00605749                          // 0x0060573f    7408
                         mov                eax, 0x00000001                               // 0x00605741    b801000000
                         ret                0x0004                                        // 0x00605746    c20400
.Lbl_addr_0x00605749:    xor.s              eax, eax                                      // 0x00605749    33c0
                         ret                0x0004                                        // 0x0060574b    c20400
                         nop                                                              // 0x0060574e    90
                         nop                                                              // 0x0060574f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605750    8b442404
                         mov                edx, dword ptr [ecx]                          // 0x00605754    8b11
                         cmp                edx, dword ptr [eax]                          // 0x00605756    3b10
                         {disp8} ja         .Lbl_addr_0x00605779                          // 0x00605758    771f
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0060575a    8b5104
                         cmp                edx, dword ptr [eax + 0x04]                   // 0x0060575d    3b5004
                         {disp8} ja         .Lbl_addr_0x00605779                          // 0x00605760    7717
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00605762    d94108
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00605765    d94008
                         fcompp                                                           // 0x00605768    ded9
                         fnstsw             ax                                            // 0x0060576a    dfe0
                         test               ah, 0x01                                      // 0x0060576c    f6c401
                         {disp8} jne        .Lbl_addr_0x00605779                          // 0x0060576f    7508
                         mov                eax, 0x00000001                               // 0x00605771    b801000000
                         ret                0x0004                                        // 0x00605776    c20400
.Lbl_addr_0x00605779:    xor.s              eax, eax                                      // 0x00605779    33c0
                         ret                0x0004                                        // 0x0060577b    c20400
                         nop                                                              // 0x0060577e    90
                         nop                                                              // 0x0060577f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605780    8b442404
                         mov                edx, dword ptr [ecx]                          // 0x00605784    8b11
                         cmp                edx, dword ptr [eax]                          // 0x00605786    3b10
                         {disp8} jae        .Lbl_addr_0x006057a9                          // 0x00605788    731f
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0060578a    8b5104
                         cmp                edx, dword ptr [eax + 0x04]                   // 0x0060578d    3b5004
                         {disp8} jae        .Lbl_addr_0x006057a9                          // 0x00605790    7317
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00605792    d94108
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00605795    d94008
                         fcompp                                                           // 0x00605798    ded9
                         fnstsw             ax                                            // 0x0060579a    dfe0
                         test               ah, 0x41                                      // 0x0060579c    f6c441
                         {disp8} jne        .Lbl_addr_0x006057a9                          // 0x0060579f    7508
                         mov                eax, 0x00000001                               // 0x006057a1    b801000000
                         ret                0x0004                                        // 0x006057a6    c20400
.Lbl_addr_0x006057a9:    xor.s              eax, eax                                      // 0x006057a9    33c0
                         ret                0x0004                                        // 0x006057ab    c20400
                         nop                                                              // 0x006057ae    90
                         nop                                                              // 0x006057af    90
_jmp_addr_0x006057b0:    sub                esp, 0x08                                     // 0x006057b0    83ec08
                         push               esi                                           // 0x006057b3    56
                         push               edi                                           // 0x006057b4    57
                         mov.s              edi, ecx                                      // 0x006057b5    8bf9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006057b7    8b0d5c19d000
                         push               0x0                                           // 0x006057bd    6a00
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x006057bf    c744240c00000000
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x006057c7    e8d4b0f4ff
                         mov.s              esi, eax                                      // 0x006057cc    8bf0
                         test               esi, esi                                      // 0x006057ce    85f6
                         {disp8} je         .Lbl_addr_0x00605845                          // 0x006057d0    7473
.Lbl_addr_0x006057d2:    push               0x1                                           // 0x006057d2    6a01
                         push               0x0                                           // 0x006057d4    6a00
                         push               0x0                                           // 0x006057d6    6a00
                         push               esi                                           // 0x006057d8    56
                         push               edi                                           // 0x006057d9    57
                         call               _jmp_addr_0x005cd170                          // 0x006057da    e89179fcff
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x006057df    d95c2420
                         add                esp, 0x14                                     // 0x006057e3    83c414
                         mov.s              ecx, esi                                      // 0x006057e6    8bce
                         call               _jmp_addr_0x0064d6a0                          // 0x006057e8    e8b37e0400
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006057ed    8b0d5c19d000
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x006057f3    d84c240c
                         push               esi                                           // 0x006057f7    56
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x006057f8    d844240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x006057fc    d95c240c
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x00605800    e89bb0f4ff
                         mov.s              esi, eax                                      // 0x00605805    8bf0
                         test               esi, esi                                      // 0x00605807    85f6
                         {disp8} jne        .Lbl_addr_0x006057d2                          // 0x00605809    75c7
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0060580b    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x0060580f    d81d78b68a00
                         fnstsw             ax                                            // 0x00605815    dfe0
                         test               ah, 0x01                                      // 0x00605817    f6c401
                         {disp8} je         .Lbl_addr_0x00605828                          // 0x0060581a    740c
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x0060581c    d90578b68a00
                         pop                edi                                           // 0x00605822    5f
                         pop                esi                                           // 0x00605823    5e
                         add                esp, 0x08                                     // 0x00605824    83c408
                         ret                                                              // 0x00605827    c3
.Lbl_addr_0x00605828:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x00605828    d9442408
                         {disp32} fcomp     dword ptr [__real@4@3fff8000000000000000]                   // 0x0060582c    d81d90a38a00
                         fnstsw             ax                                            // 0x00605832    dfe0
                         test               ah, 0x41                                      // 0x00605834    f6c441
                         {disp8} jne        .Lbl_addr_0x00605845                          // 0x00605837    750c
                         {disp32} fld       dword ptr [__real@4@3fff8000000000000000]                   // 0x00605839    d90590a38a00
                         pop                edi                                           // 0x0060583f    5f
                         pop                esi                                           // 0x00605840    5e
                         add                esp, 0x08                                     // 0x00605841    83c408
                         ret                                                              // 0x00605844    c3
.Lbl_addr_0x00605845:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x00605845    d9442408
                         pop                edi                                           // 0x00605849    5f
                         pop                esi                                           // 0x0060584a    5e
                         add                esp, 0x08                                     // 0x0060584b    83c408
                         ret                                                              // 0x0060584e    c3
                         nop                                                              // 0x0060584f    90
                         push               ecx                                           // 0x00605850    51
                         call               _jmp_addr_0x006057b0                          // 0x00605851    e85affffff
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00605856    d95c2400
                         {disp8} mov        eax, dword ptr [esp + 0x00]                   // 0x0060585a    8b442400
                         push               eax                                           // 0x0060585e    50
                         call               _jmp_addr_0x00414730                          // 0x0060585f    e8cceee0ff
                         add                esp, 0x08                                     // 0x00605864    83c408
                         ret                                                              // 0x00605867    c3
                         nop                                                              // 0x00605868    90
                         nop                                                              // 0x00605869    90
                         nop                                                              // 0x0060586a    90
                         nop                                                              // 0x0060586b    90
                         nop                                                              // 0x0060586c    90
                         nop                                                              // 0x0060586d    90
                         nop                                                              // 0x0060586e    90
                         nop                                                              // 0x0060586f    90
_jmp_addr_0x00605870:    sub                esp, 0x14                                     // 0x00605870    83ec14
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00605873    d9442420
                         mov                eax, dword ptr [ecx]                          // 0x00605877    8b01
                         {disp32} fdiv      dword ptr [__real@4@4002a000000000000000]     // 0x00605879    d83550009300
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0060587f    8b5104
                         push               ebx                                           // 0x00605882    53
                         push               ebp                                           // 0x00605883    55
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00605884    89442410
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x00605888    8b4108
                         push               esi                                           // 0x0060588b    56
                         push               edi                                           // 0x0060588c    57
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0060588d    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00605891    89442420
                         {disp32} fld       dword ptr [__real@4@4002a000000000000000]     // 0x00605895    d90550009300
                         fadd.s             st(0), st(0)                                  // 0x0060589b    dcc0
                         {disp8} fdivr      dword ptr [esp + 0x34]                        // 0x0060589d    d87c2434
                         call               __ftol                                        // 0x006058a1    e85abb1900
                         fld                st(0)                                         // 0x006058a6    d9c0
                         fmul               st, st(1)                                     // 0x006058a8    d8c9
                         mov.s              ebx, eax                                      // 0x006058aa    8bd8
                         call               __ftol                                        // 0x006058ac    e84fbb1900
                         fstp               st(0)                                         // 0x006058b1    ddd8
                         mov.s              esi, eax                                      // 0x006058b3    8bf0
                         test               esi, esi                                      // 0x006058b5    85f6
                         mov                eax, 0x00000001                               // 0x006058b7    b801000000
                         {disp8} mov        dword ptr [esp + 0x30], esi                   // 0x006058bc    89742430
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006058c0    89442414
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006058c4    89442410
                         {disp32} je        .Lbl_addr_0x00605957                          // 0x006058c8    0f8489000000
                         {disp8} mov        ebp, dword ptr [esp + 0x38]                   // 0x006058ce    8b6c2438
.Lbl_addr_0x006058d2:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x006058d2    8d4c2418
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x006058d6    e8e5e9ffff
                         cmp                eax, 0x01                                     // 0x006058db    83f801
                         {disp8} jne        .Lbl_addr_0x0060592e                          // 0x006058de    754e
                         mov.s              esi, ebx                                      // 0x006058e0    8bf3
                         neg                esi                                           // 0x006058e2    f7de
                         {disp8} mov        dword ptr [esp + 0x34], esi                   // 0x006058e4    89742434
                         mov.s              edi, esi                                      // 0x006058e8    8bfe
.Lbl_addr_0x006058ea:    cmp.s              edi, ebx                                      // 0x006058ea    3bfb
                         {disp8} jg         .Lbl_addr_0x00605963                          // 0x006058ec    7f75
                         cmp.s              esi, ebx                                      // 0x006058ee    3bf3
                         {disp8} jg         .Lbl_addr_0x00605927                          // 0x006058f0    7f35
.Lbl_addr_0x006058f2:    {disp8} mov        ecx, dword ptr [esp + 0x1e]                   // 0x006058f2    8b4c241e
                         {disp8} mov        edx, dword ptr [esp + 0x1a]                   // 0x006058f6    8b54241a
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x006058fa    8b442428
                         and                ecx, 0x0000ffff                               // 0x006058fe    81e1ffff0000
                         push               ebp                                           // 0x00605904    55
                         add.s              ecx, esi                                      // 0x00605905    03ce
                         and                edx, 0x0000ffff                               // 0x00605907    81e2ffff0000
                         push               ecx                                           // 0x0060590d    51
                         add.s              edx, edi                                      // 0x0060590e    03d7
                         push               edx                                           // 0x00605910    52
                         push               eax                                           // 0x00605911    50
                         call               _jmp_addr_0x006059a0                          // 0x00605912    e889000000
                         add                esp, 0x10                                     // 0x00605917    83c410
                         test               eax, eax                                      // 0x0060591a    85c0
                         {disp8} je         .Lbl_addr_0x0060592a                          // 0x0060591c    740c
                         inc                esi                                           // 0x0060591e    46
                         cmp.s              esi, ebx                                      // 0x0060591f    3bf3
                         {disp8} jle        .Lbl_addr_0x006058f2                          // 0x00605921    7ecf
                         {disp8} mov        esi, dword ptr [esp + 0x34]                   // 0x00605923    8b742434
.Lbl_addr_0x00605927:    inc                edi                                           // 0x00605927    47
                         {disp8} jmp        .Lbl_addr_0x006058ea                          // 0x00605928    ebc0
.Lbl_addr_0x0060592a:    {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x0060592a    8b742430
.Lbl_addr_0x0060592e:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0060592e    8d4c2410
                         push               ecx                                           // 0x00605932    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00605933    8d542418
                         dec                esi                                           // 0x00605937    4e
                         push               edx                                           // 0x00605938    52
                         {disp8} mov        dword ptr [esp + 0x38], esi                   // 0x00605939    89742438
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x0060593d    e89e7e1400
                         add                esp, 0x08                                     // 0x00605942    83c408
                         push               eax                                           // 0x00605945    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00605946    8d4c241c
                         call               ??YMapCoords@@QAEXABUJustMapXZ@@@Z            // 0x0060594a    e821fbffff
                         test               esi, esi                                      // 0x0060594f    85f6
                         {disp32} jne       .Lbl_addr_0x006058d2                          // 0x00605951    0f857bffffff
.Lbl_addr_0x00605957:    pop                edi                                           // 0x00605957    5f
                         pop                esi                                           // 0x00605958    5e
                         pop                ebp                                           // 0x00605959    5d
                         xor.s              eax, eax                                      // 0x0060595a    33c0
                         pop                ebx                                           // 0x0060595c    5b
                         add                esp, 0x14                                     // 0x0060595d    83c414
                         ret                0x0014                                        // 0x00605960    c21400
.Lbl_addr_0x00605963:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00605963    8b44242c
                         {disp8} mov        dx, word ptr [esp + 0x1e]                     // 0x00605967    668b54241e
                         xor.s              ecx, ecx                                      // 0x0060596c    33c9
                         pop                edi                                           // 0x0060596e    5f
                         mov                dword ptr [eax], ecx                          // 0x0060596f    8908
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00605971    894804
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00605974    894808
                         {disp8} mov        cx, word ptr [esp + 0x16]                     // 0x00605977    668b4c2416
                         pop                esi                                           // 0x0060597c    5e
                         pop                ebp                                           // 0x0060597d    5d
                         {disp8} mov        word ptr [eax + 0x02], cx                     // 0x0060597e    66894802
                         {disp8} mov        word ptr [eax + 0x06], dx                     // 0x00605982    66895006
                         mov                eax, 0x00000001                               // 0x00605986    b801000000
                         pop                ebx                                           // 0x0060598b    5b
                         add                esp, 0x14                                     // 0x0060598c    83c414
                         ret                0x0014                                        // 0x0060598f    c21400
                         nop                                                              // 0x00605992    90
                         nop                                                              // 0x00605993    90
                         nop                                                              // 0x00605994    90
                         nop                                                              // 0x00605995    90
                         nop                                                              // 0x00605996    90
                         nop                                                              // 0x00605997    90
                         nop                                                              // 0x00605998    90
                         nop                                                              // 0x00605999    90
                         nop                                                              // 0x0060599a    90
                         nop                                                              // 0x0060599b    90
                         nop                                                              // 0x0060599c    90
                         nop                                                              // 0x0060599d    90
                         nop                                                              // 0x0060599e    90
                         nop                                                              // 0x0060599f    90
_jmp_addr_0x006059a0:    sub                esp, 0x4c                                     // 0x006059a0    83ec4c
                         push               ebx                                           // 0x006059a3    53
                         push               ebp                                           // 0x006059a4    55
                         push               esi                                           // 0x006059a5    56
                         {disp8} mov        esi, dword ptr [esp + 0x60]                   // 0x006059a6    8b742460
                         push               edi                                           // 0x006059aa    57
                         {disp32} mov       edi, dword ptr [_game]                        // 0x006059ab    8b3d5c19d000
                         cmp                esi, dword ptr [edi + 0x000059c8]             // 0x006059b1    3bb7c8590000
                         {disp32} jae       .Lbl_addr_0x00605c2b                          // 0x006059b7    0f836e020000
                         {disp8} mov        ebx, dword ptr [esp + 0x68]                   // 0x006059bd    8b5c2468
                         cmp                ebx, dword ptr [edi + 0x000059c4]             // 0x006059c1    3b9fc4590000
                         {disp32} jae       .Lbl_addr_0x00605c2b                          // 0x006059c7    0f835e020000
                         cmp                esi, dword ptr [edi + 0x000059c8]             // 0x006059cd    3bb7c8590000
                         {disp8} jae        .Lbl_addr_0x006059df                          // 0x006059d3    730a
                         {disp32} mov       eax, dword ptr [edi + 0x000059c4]             // 0x006059d5    8b87c4590000
                         cmp.s              ebx, eax                                      // 0x006059db    3bd8
                         .byte              0x72, 0x4// {disp8} jb .Lbl_addr_0x006059e3   // 0x006059dd    7204
.Lbl_addr_0x006059df:    xor.s              edi, edi                                      // 0x006059df    33ff
                         {disp8} jmp        .Lbl_addr_0x006059ef                          // 0x006059e1    eb0c
.Lbl_addr_0x006059e3:    imul               eax, esi                                      // 0x006059e3    0fafc6
                         add.s              eax, ebx                                      // 0x006059e6    03c3
                         {disp32} lea       edi, dword ptr [edi + eax * 0x8 + 0x000059fc] // 0x006059e8    8dbcc7fc590000
.Lbl_addr_0x006059ef:    push               ebx                                           // 0x006059ef    53
                         push               esi                                           // 0x006059f0    56
                         call               ?GetCell@LH3DIsland@@SAPAULandCell@@JJ@Z      // 0x006059f1    e8aa10f1ff
                         add                esp, 0x08                                     // 0x006059f6    83c408
                         test               eax, eax                                      // 0x006059f9    85c0
                         {disp32} je        .Lbl_addr_0x00605c2b                          // 0x006059fb    0f842a020000
                         {disp8} mov        al, byte ptr [eax + 0x06]                     // 0x00605a01    8a4006
                         and                eax, 0x10                                     // 0x00605a04    83e010
                         test               eax, eax                                      // 0x00605a07    85c0
                         {disp32} jne       .Lbl_addr_0x00605c2b                          // 0x00605a09    0f851c020000
                         lea                eax, dword ptr [esi + esi * 0x4]              // 0x00605a0f    8d04b6
                         {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x00605a12    8b7704
                         test               esi, esi                                      // 0x00605a15    85f6
                         {disp8} lea        ecx, dword ptr [eax + eax * 0x1 + 0x05]       // 0x00605a17    8d4c0005
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00605a1b    894c2410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x00605a1f    db442410
                         lea                edx, dword ptr [ebx + ebx * 0x4]              // 0x00605a23    8d149b
                         {disp8} lea        eax, dword ptr [edx + edx * 0x1 + 0x05]       // 0x00605a26    8d441205
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00605a2a    89442410
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00605a2e    d95c2414
                         mov                eax, 0x00000001                               // 0x00605a32    b801000000
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x00605a37    db442410
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00605a3b    d95c241c
                         {disp8} jne        .Lbl_addr_0x00605a45                          // 0x00605a3f    7504
                         mov                esi, dword ptr [edi]                          // 0x00605a41    8b37
                         xor.s              eax, eax                                      // 0x00605a43    33c0
.Lbl_addr_0x00605a45:    test               esi, esi                                      // 0x00605a45    85f6
                         {disp8} mov        dword ptr [esp + 0x54], eax                   // 0x00605a47    89442454
                         mov.s              ebp, edi                                      // 0x00605a4b    8bef
                         {disp32} je        .Lbl_addr_0x00605c0e                          // 0x00605a4d    0f84bb010000
.Lbl_addr_0x00605a53:    mov                edx, dword ptr [esi]                          // 0x00605a53    8b16
                         mov.s              ecx, esi                                      // 0x00605a55    8bce
                         call               dword ptr [edx + 0x220]                       // 0x00605a57    ff9220020000
                         test               eax, eax                                      // 0x00605a5d    85c0
                         {disp32} jne       .Lbl_addr_0x00605c2b                          // 0x00605a5f    0f85c6010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x372338]        // 0x00605a65    a13883d300
                         test               eax, eax                                      // 0x00605a6a    85c0
                         {disp32} je        .Lbl_addr_0x00605b27                          // 0x00605a6c    0f84b5000000
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x00605a72    8b4c2460
                         push               esi                                           // 0x00605a76    56
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00605a77    e8d41de7ff
                         mov.s              ecx, eax                                      // 0x00605a7c    8bc8
                         call               _jmp_addr_0x00481a40                          // 0x00605a7e    e8bdbfe7ff
                         neg                eax                                           // 0x00605a83    f7d8
                         sbb.s              eax, eax                                      // 0x00605a85    1bc0
                         inc                eax                                           // 0x00605a87    40
                         test               eax, eax                                      // 0x00605a88    85c0
                         {disp32} je        .Lbl_addr_0x00605bbc                          // 0x00605a8a    0f842c010000
.Lbl_addr_0x00605a90:    mov                edx, dword ptr [esi]                          // 0x00605a90    8b16
                         mov.s              ecx, esi                                      // 0x00605a92    8bce
                         call               dword ptr [edx + 0x858]                       // 0x00605a94    ff9258080000
                         test               eax, eax                                      // 0x00605a9a    85c0
                         {disp32} je        .Lbl_addr_0x00605bbc                          // 0x00605a9c    0f841a010000
                         mov                edi, dword ptr [eax]                          // 0x00605aa2    8b38
                         test               edi, edi                                      // 0x00605aa4    85ff
                         {disp32} je        .Lbl_addr_0x00605bbc                          // 0x00605aa6    0f8410010000
                         {disp8} mov        eax, dword ptr [edi + 0x24]                   // 0x00605aac    8b4724
                         test               eax, eax                                      // 0x00605aaf    85c0
                         {disp32} je        .Lbl_addr_0x00605b63                          // 0x00605ab1    0f84ac000000
                         {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x00605ab7    8b7808
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00605aba    8b4004
                         lea                ebx, dword ptr [edi + eax * 0x4]              // 0x00605abd    8d1c87
                         cmp.s              edi, ebx                                      // 0x00605ac0    3bfb
                         {disp32} jae       .Lbl_addr_0x00605bb8                          // 0x00605ac2    0f83f0000000
.Lbl_addr_0x00605ac8:    mov                eax, dword ptr [edi]                          // 0x00605ac8    8b07
                         fld                dword ptr [eax]                               // 0x00605aca    d900
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00605acc    8b4804
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00605acf    d9442414
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00605ad3    8b5008
                         fsub               st, st(1)                                     // 0x00605ad6    d8e1
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00605ad8    894c2430
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00605adc    89542434
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00605ae0    8d4c2438
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00605ae4    d95c2438
                         fstp               st(0)                                         // 0x00605ae8    ddd8
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00605aea    d9442430
                         fchs                                                             // 0x00605aee    d9e0
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00605af0    d95c243c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00605af4    d944241c
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x00605af8    d8642434
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00605afc    d95c2440
                         call               _jmp_addr_0x004a1ba0                          // 0x00605b00    e89bc0e9ff
                         mov                eax, dword ptr [edi]                          // 0x00605b05    8b07
                         {disp8} fsub       dword ptr [eax + 0x0c]                        // 0x00605b07    d8600c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]              // 0x00605b0a    d81de4b68a00
                         fnstsw             ax                                            // 0x00605b10    dfe0
                         test               ah, 0x01                                      // 0x00605b12    f6c401
                         {disp32} jne       .Lbl_addr_0x00605c2b                          // 0x00605b15    0f8510010000
                         add                edi, 0x04                                     // 0x00605b1b    83c704
                         cmp.s              edi, ebx                                      // 0x00605b1e    3bfb
                         .byte              0x72, 0xa6// {disp8} jb .Lbl_addr_0x00605ac8  // 0x00605b20    72a6
                         {disp32} jmp       .Lbl_addr_0x00605bb8                          // 0x00605b22    e991000000
.Lbl_addr_0x00605b27:    {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x00605b27    8b4c2460
                         mov                eax, dword ptr [esi]                          // 0x00605b2b    8b06
                         push               ecx                                           // 0x00605b2d    51
                         mov.s              ecx, esi                                      // 0x00605b2e    8bce
                         call               dword ptr [eax + 0x7bc]                       // 0x00605b30    ff90bc070000
                         test               eax, eax                                      // 0x00605b36    85c0
                         {disp32} jne       .Lbl_addr_0x00605a90                          // 0x00605b38    0f8552ffffff
                         mov                edx, dword ptr [esi]                          // 0x00605b3e    8b16
                         mov.s              ecx, esi                                      // 0x00605b40    8bce
                         call               dword ptr [edx + 0x338]                       // 0x00605b42    ff9238030000
                         test               eax, eax                                      // 0x00605b48    85c0
                         {disp32} jne       .Lbl_addr_0x00605a90                          // 0x00605b4a    0f8540ffffff
                         mov                eax, dword ptr [esi]                          // 0x00605b50    8b06
                         mov.s              ecx, esi                                      // 0x00605b52    8bce
                         call               dword ptr [eax + 0x210]                       // 0x00605b54    ff9010020000
                         test               eax, eax                                      // 0x00605b5a    85c0
                         {disp8} je         .Lbl_addr_0x00605bbc                          // 0x00605b5c    745e
                         {disp32} jmp       .Lbl_addr_0x00605a90                          // 0x00605b5e    e92dffffff
.Lbl_addr_0x00605b63:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00605b63    8b4c2414
                         mov                eax, dword ptr [edi]                          // 0x00605b67    8b07
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00605b69    8b54241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00605b6d    894c2420
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x00605b71    8b4f04
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00605b74    89442444
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00605b78    89542428
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x00605b7c    8b5708
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x00605b7f    8d442444
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x00605b83    894c2448
                         push               eax                                           // 0x00605b87    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00605b88    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x00605b8c    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x00605b94    89542450
                         call               _jmp_addr_0x004c2b90                          // 0x00605b98    e8f3cfebff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00605b9d    8d4c2420
                         call               _jmp_addr_0x004a1ba0                          // 0x00605ba1    e8fabfe9ff
                         {disp8} fsub       dword ptr [edi + 0x0c]                        // 0x00605ba6    d8670c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]              // 0x00605ba9    d81de4b68a00
                         fnstsw             ax                                            // 0x00605baf    dfe0
                         test               ah, 0x01                                      // 0x00605bb1    f6c401
                         {disp8} jne        .Lbl_addr_0x00605c2b                          // 0x00605bb4    7575
                         {disp8} jmp        .Lbl_addr_0x00605bbc                          // 0x00605bb6    eb04
.Lbl_addr_0x00605bb8:    {disp8} mov        ebx, dword ptr [esp + 0x68]                   // 0x00605bb8    8b5c2468
.Lbl_addr_0x00605bbc:    cmp                dword ptr [esp + 0x6c], 0x01                  // 0x00605bbc    837c246c01
                         {disp8} jne        .Lbl_addr_0x00605bde                          // 0x00605bc1    751b
                         push               0x0                                           // 0x00605bc3    6a00
                         push               0x009c8de8                                    // 0x00605bc5    68e88d9c00
                         push               0x009c7f50                                    // 0x00605bca    68507f9c00
                         push               0x0                                           // 0x00605bcf    6a00
                         push               esi                                           // 0x00605bd1    56
                         call               ___RTDynamicCast                              // 0x00605bd2    e842fe1b00
                         add                esp, 0x14                                     // 0x00605bd7    83c414
                         test               eax, eax                                      // 0x00605bda    85c0
                         {disp8} jne        .Lbl_addr_0x00605c2b                          // 0x00605bdc    754d
.Lbl_addr_0x00605bde:    mov                edx, dword ptr [esi]                          // 0x00605bde    8b16
                         push               ebp                                           // 0x00605be0    55
                         mov.s              ecx, esi                                      // 0x00605be1    8bce
                         call               dword ptr [edx + 0x53c]                       // 0x00605be3    ff923c050000
                         mov.s              esi, eax                                      // 0x00605be9    8bf0
                         test               esi, esi                                      // 0x00605beb    85f6
                         {disp32} jne       .Lbl_addr_0x00605a53                          // 0x00605bed    0f8560feffff
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x00605bf3    8b442454
                         test               eax, eax                                      // 0x00605bf7    85c0
                         {disp8} je         .Lbl_addr_0x00605c0e                          // 0x00605bf9    7413
                         {disp8} mov        esi, dword ptr [ebp + 0x00]                   // 0x00605bfb    8b7500
                         test               esi, esi                                      // 0x00605bfe    85f6
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000            // 0x00605c00    c744245400000000
                         {disp32} jne       .Lbl_addr_0x00605a53                          // 0x00605c08    0f8545feffff
.Lbl_addr_0x00605c0e:    {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x00605c0e    8b4c2464
                         shl                ebx, 9                                        // 0x00605c12    c1e309
                         {disp32} mov       dl, byte ptr [ebx + ecx * 0x1 + 0x00d559b0]   // 0x00605c15    8a940bb059d500
                         pop                edi                                           // 0x00605c1c    5f
                         pop                esi                                           // 0x00605c1d    5e
                         xor.s              eax, eax                                      // 0x00605c1e    33c0
                         test               dl, dl                                        // 0x00605c20    84d2
                         pop                ebp                                           // 0x00605c22    5d
                         sete               al                                            // 0x00605c23    0f94c0
                         pop                ebx                                           // 0x00605c26    5b
                         add                esp, 0x4c                                     // 0x00605c27    83c44c
                         ret                                                              // 0x00605c2a    c3
.Lbl_addr_0x00605c2b:    pop                edi                                           // 0x00605c2b    5f
                         pop                esi                                           // 0x00605c2c    5e
                         pop                ebp                                           // 0x00605c2d    5d
                         xor.s              eax, eax                                      // 0x00605c2e    33c0
                         pop                ebx                                           // 0x00605c30    5b
                         add                esp, 0x4c                                     // 0x00605c31    83c44c
                         ret                                                              // 0x00605c34    c3
                         nop                                                              // 0x00605c35    90
                         nop                                                              // 0x00605c36    90
                         nop                                                              // 0x00605c37    90
                         nop                                                              // 0x00605c38    90
                         nop                                                              // 0x00605c39    90
                         nop                                                              // 0x00605c3a    90
                         nop                                                              // 0x00605c3b    90
                         nop                                                              // 0x00605c3c    90
                         nop                                                              // 0x00605c3d    90
                         nop                                                              // 0x00605c3e    90
                         nop                                                              // 0x00605c3f    90
?GetLHPoint@MapCoords@@QBE?AULHPoint@@XZ:    sub                esp, 0x10                                     // 0x00605c40    83ec10
                         push               esi                                           // 0x00605c43    56
                         mov.s              esi, ecx                                      // 0x00605c44    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00605c46    8b4608
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00605c49    89442404
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00605c4d    e83ed41f00
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x00605c52    d8442404
                         fild               dword ptr [esi]                               // 0x00605c56    db06
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00605c58    8b442418
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605c5c    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00605c62    db4604
                         pop                esi                                           // 0x00605c65    5e
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605c66    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00605c6c    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00605c70    8b4c240c
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00605c74    894808
                         fstp               dword ptr [eax]                               // 0x00605c77    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00605c79    d95804
                         add                esp, 0x10                                     // 0x00605c7c    83c410
                         ret                0x0004                                        // 0x00605c7f    c20400
                         nop                                                              // 0x00605c82    90
                         nop                                                              // 0x00605c83    90
                         nop                                                              // 0x00605c84    90
                         nop                                                              // 0x00605c85    90
                         nop                                                              // 0x00605c86    90
                         nop                                                              // 0x00605c87    90
                         nop                                                              // 0x00605c88    90
                         nop                                                              // 0x00605c89    90
                         nop                                                              // 0x00605c8a    90
                         nop                                                              // 0x00605c8b    90
                         nop                                                              // 0x00605c8c    90
                         nop                                                              // 0x00605c8d    90
                         nop                                                              // 0x00605c8e    90
                         nop                                                              // 0x00605c8f    90
_jmp_addr_0x00605c90:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605c90    8b442404
                         push               eax                                           // 0x00605c94    50
                         call               ?GetMetresDistance@MapCoords@@QBEMABU1@@Z     // 0x00605c95    e836000000
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x00605c9a    d85c2408
                         fnstsw             ax                                            // 0x00605c9e    dfe0
                         test               ah, 0x41                                      // 0x00605ca0    f6c441
                         {disp8} je         .Lbl_addr_0x00605cad                          // 0x00605ca3    7408
                         mov                eax, 0x00000001                               // 0x00605ca5    b801000000
                         ret                0x0008                                        // 0x00605caa    c20800
.Lbl_addr_0x00605cad:    xor.s              eax, eax                                      // 0x00605cad    33c0
                         ret                0x0008                                        // 0x00605caf    c20800
                         nop                                                              // 0x00605cb2    90
                         nop                                                              // 0x00605cb3    90
                         nop                                                              // 0x00605cb4    90
                         nop                                                              // 0x00605cb5    90
                         nop                                                              // 0x00605cb6    90
                         nop                                                              // 0x00605cb7    90
                         nop                                                              // 0x00605cb8    90
                         nop                                                              // 0x00605cb9    90
                         nop                                                              // 0x00605cba    90
                         nop                                                              // 0x00605cbb    90
                         nop                                                              // 0x00605cbc    90
                         nop                                                              // 0x00605cbd    90
                         nop                                                              // 0x00605cbe    90
                         nop                                                              // 0x00605cbf    90
?GetTemperature@MapCoords@@QBEMXZ:    {disp32} fld       dword ptr [rdata_bytes + 0x87080]             // 0x00605cc0    d90580009300
                         ret                                                              // 0x00605cc6    c3
                         nop                                                              // 0x00605cc7    90
                         nop                                                              // 0x00605cc8    90
                         nop                                                              // 0x00605cc9    90
                         nop                                                              // 0x00605cca    90
                         nop                                                              // 0x00605ccb    90
                         nop                                                              // 0x00605ccc    90
                         nop                                                              // 0x00605ccd    90
                         nop                                                              // 0x00605cce    90
                         nop                                                              // 0x00605ccf    90
?GetMetresDistance@MapCoords@@QBEMABU1@@Z:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605cd0    8b442404
                         push               eax                                           // 0x00605cd4    50
                         push               ecx                                           // 0x00605cd5    51
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x00605cd6    e895701400
                         add                esp, 0x08                                     // 0x00605cdb    83c408
                         ret                0x0004                                        // 0x00605cde    c20400
                         nop                                                              // 0x00605ce1    90
                         nop                                                              // 0x00605ce2    90
                         nop                                                              // 0x00605ce3    90
                         nop                                                              // 0x00605ce4    90
                         nop                                                              // 0x00605ce5    90
                         nop                                                              // 0x00605ce6    90
                         nop                                                              // 0x00605ce7    90
                         nop                                                              // 0x00605ce8    90
                         nop                                                              // 0x00605ce9    90
                         nop                                                              // 0x00605cea    90
                         nop                                                              // 0x00605ceb    90
                         nop                                                              // 0x00605cec    90
                         nop                                                              // 0x00605ced    90
                         nop                                                              // 0x00605cee    90
                         nop                                                              // 0x00605cef    90
?GetAngle@MapCoords@@QBEMABU1@@Z:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00605cf0    8b442404
                         push               eax                                           // 0x00605cf4    50
                         push               ecx                                           // 0x00605cf5    51
                         call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z                               // 0x00605cf6    e875751400
                         add                esp, 0x08                                     // 0x00605cfb    83c408
                         ret                0x0004                                        // 0x00605cfe    c20400
                         nop                                                              // 0x00605d01    90
                         nop                                                              // 0x00605d02    90
                         nop                                                              // 0x00605d03    90
                         nop                                                              // 0x00605d04    90
                         nop                                                              // 0x00605d05    90
                         nop                                                              // 0x00605d06    90
                         nop                                                              // 0x00605d07    90
                         nop                                                              // 0x00605d08    90
                         nop                                                              // 0x00605d09    90
                         nop                                                              // 0x00605d0a    90
                         nop                                                              // 0x00605d0b    90
                         nop                                                              // 0x00605d0c    90
                         nop                                                              // 0x00605d0d    90
                         nop                                                              // 0x00605d0e    90
                         nop                                                              // 0x00605d0f    90
_jmp_addr_0x00605d10:    sub                esp, 0x28                                     // 0x00605d10    83ec28
                         push               ebx                                           // 0x00605d13    53
                         {disp8} mov        ebx, dword ptr [esp + 0x30]                   // 0x00605d14    8b5c2430
                         test               ebx, ebx                                      // 0x00605d18    85db
                         push               esi                                           // 0x00605d1a    56
                         mov.s              esi, ecx                                      // 0x00605d1b    8bf1
                         {disp8} jne        .Lbl_addr_0x00605d29                          // 0x00605d1d    750a
                         pop                esi                                           // 0x00605d1f    5e
                         xor.s              eax, eax                                      // 0x00605d20    33c0
                         pop                ebx                                           // 0x00605d22    5b
                         add                esp, 0x28                                     // 0x00605d23    83c428
                         ret                0x0004                                        // 0x00605d26    c20400
.Lbl_addr_0x00605d29:    push               ebp                                           // 0x00605d29    55
                         push               edi                                           // 0x00605d2a    57
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x00605d2b    8d44242c
                         push               eax                                           // 0x00605d2f    50
                         mov.s              ecx, esi                                      // 0x00605d30    8bce
                         call               ?GetLHPoint@MapCoords@@QBE?AULHPoint@@XZ      // 0x00605d32    e809ffffff
                         push               eax                                           // 0x00605d37    50
                         call               _jmp_addr_0x00771a80                          // 0x00605d38    e843bd1600
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00605d3d    d95c2414
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00605d41    8b4e08
                         {disp8} mov        dword ptr [esp + 0x40], ecx                   // 0x00605d44    894c2440
                         add                esp, 0x04                                     // 0x00605d48    83c404
                         mov.s              ecx, esi                                      // 0x00605d4b    8bce
                         xor.s              edi, edi                                      // 0x00605d4d    33ff
                         mov                ebp, 0x000f423f                               // 0x00605d4f    bd3f420f00
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00605d54    e837d31f00
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x00605d59    d844243c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00605d5d    d95c2424
                         fild               dword ptr [esi]                               // 0x00605d61    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605d63    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00605d69    d95c2420
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00605d6d    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605d70    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00605d76    d95c2428
.Lbl_addr_0x00605d7a:    test               edi, edi                                      // 0x00605d7a    85ff
                         {disp8} jne        .Lbl_addr_0x00605d94                          // 0x00605d7c    7516
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00605d7e    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205cf4]             // 0x00605d84    8b82f45c2000
                         test               eax, eax                                      // 0x00605d8a    85c0
                         {disp32} je        .Lbl_addr_0x00605e45                          // 0x00605d8c    0f84b3000000
                         {disp8} jmp        .Lbl_addr_0x00605dc0                          // 0x00605d92    eb2c
.Lbl_addr_0x00605d94:    {disp32} mov       eax, dword ptr [_game]                        // 0x00605d94    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205cf4]             // 0x00605d99    8b80f45c2000
                         test               eax, eax                                      // 0x00605d9f    85c0
                         {disp32} je        .Lbl_addr_0x00605e45                          // 0x00605da1    0f849e000000
.Lbl_addr_0x00605da7:    cmp                dword ptr [eax + 0x04], edi                   // 0x00605da7    397804
                         mov                eax, dword ptr [eax]                          // 0x00605daa    8b00
                         {disp8} je         .Lbl_addr_0x00605db8                          // 0x00605dac    740a
                         test               eax, eax                                      // 0x00605dae    85c0
                         {disp32} je        .Lbl_addr_0x00605e45                          // 0x00605db0    0f848f000000
                         {disp8} jmp        .Lbl_addr_0x00605da7                          // 0x00605db6    ebef
.Lbl_addr_0x00605db8:    test               eax, eax                                      // 0x00605db8    85c0
                         {disp32} je        .Lbl_addr_0x00605e45                          // 0x00605dba    0f8485000000
.Lbl_addr_0x00605dc0:    {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x00605dc0    8b7804
                         test               edi, edi                                      // 0x00605dc3    85ff
                         {disp8} je         .Lbl_addr_0x00605e45                          // 0x00605dc5    747e
                         {disp8} fld        dword ptr [edi + 0x44]                        // 0x00605dc7    d94744
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00605dca    d85c2410
                         fnstsw             ax                                            // 0x00605dce    dfe0
                         test               ah, 0x41                                      // 0x00605dd0    f6c441
                         {disp8} jne        .Lbl_addr_0x00605d7a                          // 0x00605dd3    75a5
                         test               byte ptr [edi + 0x64], 0x01                   // 0x00605dd5    f6476401
                         {disp8} jne        .Lbl_addr_0x00605d7a                          // 0x00605dd9    759f
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x00605ddb    8b4f1c
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x00605dde    8d7714
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00605de1    894c243c
                         mov.s              ecx, esi                                      // 0x00605de5    8bce
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00605de7    e8a4d21f00
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x00605dec    d844243c
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00605df0    8d542414
                         push               edx                                           // 0x00605df4    52
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00605df5    d95c241c
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00605df9    8d442424
                         fild               dword ptr [esi]                               // 0x00605dfd    db06
                         push               eax                                           // 0x00605dff    50
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605e00    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00605e06    d95c241c
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00605e0a    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605e0d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00605e13    d95c2424
                         call               _jmp_addr_0x0074cde0                          // 0x00605e17    e8c46f1400
                         add                esp, 0x08                                     // 0x00605e1c    83c408
                         call               __ftol                                        // 0x00605e1f    e8dcb51900
                         cmp.s              eax, ebp                                      // 0x00605e24    3bc5
                         {disp32} jae       .Lbl_addr_0x00605d7a                          // 0x00605e26    0f834effffff
                         mov                edx, dword ptr [esi]                          // 0x00605e2c    8b16
                         mov.s              ecx, ebx                                      // 0x00605e2e    8bcb
                         mov                dword ptr [ecx], edx                          // 0x00605e30    8911
                         mov.s              ebp, eax                                      // 0x00605e32    8be8
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00605e34    8b4604
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00605e37    894104
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x00605e3a    8b5608
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00605e3d    895108
                         {disp32} jmp       .Lbl_addr_0x00605d7a                          // 0x00605e40    e935ffffff
.Lbl_addr_0x00605e45:    pop                edi                                           // 0x00605e45    5f
                         xor.s              eax, eax                                      // 0x00605e46    33c0
                         cmp                ebp, 0x000f423f                               // 0x00605e48    81fd3f420f00
                         pop                ebp                                           // 0x00605e4e    5d
                         pop                esi                                           // 0x00605e4f    5e
                         setne              al                                            // 0x00605e50    0f95c0
                         pop                ebx                                           // 0x00605e53    5b
                         add                esp, 0x28                                     // 0x00605e54    83c428
                         ret                0x0004                                        // 0x00605e57    c20400
                         call               dword ptr [__imp__GetKeyNameTextW@4]          // 0x00605e5a    ff15d4978a00
                         sub                esp, 0x28                                     // 0x00605e60    83ec28
                         push               ebx                                           // 0x00605e63    53
                         {disp8} mov        ebx, dword ptr [esp + 0x30]                   // 0x00605e64    8b5c2430
                         test               ebx, ebx                                      // 0x00605e68    85db
                         push               esi                                           // 0x00605e6a    56
                         mov.s              esi, ecx                                      // 0x00605e6b    8bf1
                         {disp8} jne        .Lbl_addr_0x00605e79                          // 0x00605e6d    750a
                         pop                esi                                           // 0x00605e6f    5e
                         xor.s              eax, eax                                      // 0x00605e70    33c0
                         pop                ebx                                           // 0x00605e72    5b
                         add                esp, 0x28                                     // 0x00605e73    83c428
                         ret                0x0004                                        // 0x00605e76    c20400
.Lbl_addr_0x00605e79:    push               ebp                                           // 0x00605e79    55
                         push               edi                                           // 0x00605e7a    57
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x00605e7b    8d44242c
                         push               eax                                           // 0x00605e7f    50
                         mov.s              ecx, esi                                      // 0x00605e80    8bce
                         call               ?GetLHPoint@MapCoords@@QBE?AULHPoint@@XZ      // 0x00605e82    e8b9fdffff
                         push               eax                                           // 0x00605e87    50
                         call               _jmp_addr_0x00771a80                          // 0x00605e88    e8f3bb1600
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00605e8d    d95c2414
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00605e91    8b4e08
                         {disp8} mov        dword ptr [esp + 0x40], ecx                   // 0x00605e94    894c2440
                         add                esp, 0x04                                     // 0x00605e98    83c404
                         mov.s              ecx, esi                                      // 0x00605e9b    8bce
                         xor.s              edi, edi                                      // 0x00605e9d    33ff
                         mov                ebp, 0x000f423f                               // 0x00605e9f    bd3f420f00
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00605ea4    e8e7d11f00
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x00605ea9    d844243c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00605ead    d95c2424
                         fild               dword ptr [esi]                               // 0x00605eb1    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605eb3    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00605eb9    d95c2420
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00605ebd    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605ec0    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00605ec6    d95c2428
.Lbl_addr_0x00605eca:    test               edi, edi                                      // 0x00605eca    85ff
                         {disp8} jne        .Lbl_addr_0x00605ee4                          // 0x00605ecc    7516
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00605ece    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205cf4]             // 0x00605ed4    8b82f45c2000
                         test               eax, eax                                      // 0x00605eda    85c0
                         {disp32} je        .Lbl_addr_0x00605f95                          // 0x00605edc    0f84b3000000
                         {disp8} jmp        .Lbl_addr_0x00605f10                          // 0x00605ee2    eb2c
.Lbl_addr_0x00605ee4:    {disp32} mov       eax, dword ptr [_game]                        // 0x00605ee4    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205cf4]             // 0x00605ee9    8b80f45c2000
                         test               eax, eax                                      // 0x00605eef    85c0
                         {disp32} je        .Lbl_addr_0x00605f95                          // 0x00605ef1    0f849e000000
.Lbl_addr_0x00605ef7:    cmp                dword ptr [eax + 0x04], edi                   // 0x00605ef7    397804
                         mov                eax, dword ptr [eax]                          // 0x00605efa    8b00
                         {disp8} je         .Lbl_addr_0x00605f08                          // 0x00605efc    740a
                         test               eax, eax                                      // 0x00605efe    85c0
                         {disp32} je        .Lbl_addr_0x00605f95                          // 0x00605f00    0f848f000000
                         {disp8} jmp        .Lbl_addr_0x00605ef7                          // 0x00605f06    ebef
.Lbl_addr_0x00605f08:    test               eax, eax                                      // 0x00605f08    85c0
                         {disp32} je        .Lbl_addr_0x00605f95                          // 0x00605f0a    0f8485000000
.Lbl_addr_0x00605f10:    {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x00605f10    8b7804
                         test               edi, edi                                      // 0x00605f13    85ff
                         {disp8} je         .Lbl_addr_0x00605f95                          // 0x00605f15    747e
                         {disp8} fld        dword ptr [edi + 0x44]                        // 0x00605f17    d94744
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00605f1a    d85c2410
                         fnstsw             ax                                            // 0x00605f1e    dfe0
                         test               ah, 0x01                                      // 0x00605f20    f6c401
                         {disp8} je         .Lbl_addr_0x00605eca                          // 0x00605f23    74a5
                         test               byte ptr [edi + 0x64], 0x01                   // 0x00605f25    f6476401
                         {disp8} jne        .Lbl_addr_0x00605eca                          // 0x00605f29    759f
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x00605f2b    8b4f1c
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x00605f2e    8d7714
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00605f31    894c243c
                         mov.s              ecx, esi                                      // 0x00605f35    8bce
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00605f37    e854d11f00
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x00605f3c    d844243c
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00605f40    8d542414
                         push               edx                                           // 0x00605f44    52
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00605f45    d95c241c
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00605f49    8d442424
                         fild               dword ptr [esi]                               // 0x00605f4d    db06
                         push               eax                                           // 0x00605f4f    50
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605f50    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00605f56    d95c241c
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00605f5a    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00605f5d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00605f63    d95c2424
                         call               _jmp_addr_0x0074cde0                          // 0x00605f67    e8746e1400
                         add                esp, 0x08                                     // 0x00605f6c    83c408
                         call               __ftol                                        // 0x00605f6f    e88cb41900
                         cmp.s              eax, ebp                                      // 0x00605f74    3bc5
                         {disp32} jae       .Lbl_addr_0x00605eca                          // 0x00605f76    0f834effffff
                         mov                edx, dword ptr [esi]                          // 0x00605f7c    8b16
                         mov.s              ecx, ebx                                      // 0x00605f7e    8bcb
                         mov                dword ptr [ecx], edx                          // 0x00605f80    8911
                         mov.s              ebp, eax                                      // 0x00605f82    8be8
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00605f84    8b4604
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00605f87    894104
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x00605f8a    8b5608
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00605f8d    895108
                         {disp32} jmp       .Lbl_addr_0x00605eca                          // 0x00605f90    e935ffffff
.Lbl_addr_0x00605f95:    pop                edi                                           // 0x00605f95    5f
                         xor.s              eax, eax                                      // 0x00605f96    33c0
                         cmp                ebp, 0x000f423f                               // 0x00605f98    81fd3f420f00
                         pop                ebp                                           // 0x00605f9e    5d
                         pop                esi                                           // 0x00605f9f    5e
                         setne              al                                            // 0x00605fa0    0f95c0
                         pop                ebx                                           // 0x00605fa3    5b
                         add                esp, 0x28                                     // 0x00605fa4    83c428
                         ret                0x0004                                        // 0x00605fa7    c20400
                         call               dword ptr [rdata_bytes + 0x630]               // 0x00605faa    ff1530968a00
?GetMetresDistanceSq@MapCoords@@QBEMABU1@@Z:    push               esi                                           // 0x00605fb0    56
                         push               edi                                           // 0x00605fb1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00605fb2    8b7c240c
                         mov                eax, dword ptr [edi]                          // 0x00605fb6    8b07
                         mov.s              esi, ecx                                      // 0x00605fb8    8bf1
                         sub                eax, dword ptr [esi]                          // 0x00605fba    2b06
                         push               eax                                           // 0x00605fbc    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMH@Z  // 0x00605fbd    e8fe7c1400
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00605fc2    d95c2410
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00605fc6    8b4704
                         sub                eax, dword ptr [esi + 0x04]                   // 0x00605fc9    2b4604
                         push               eax                                           // 0x00605fcc    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMH@Z  // 0x00605fcd    e8ee7c1400
                         fld                st(0)                                         // 0x00605fd2    d9c0
                         fmulp              st(1), st                                     // 0x00605fd4    dec9
                         add                esp, 0x08                                     // 0x00605fd6    83c408
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00605fd9    d944240c
                         pop                edi                                           // 0x00605fdd    5f
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00605fde    d84c2408
                         pop                esi                                           // 0x00605fe2    5e
                         faddp              st(1), st                                     // 0x00605fe3    dec1
                         ret                0x0004                                        // 0x00605fe5    c20400
                         nop                                                              // 0x00605fe8    90
                         nop                                                              // 0x00605fe9    90
                         nop                                                              // 0x00605fea    90
                         nop                                                              // 0x00605feb    90
                         nop                                                              // 0x00605fec    90
                         nop                                                              // 0x00605fed    90
                         nop                                                              // 0x00605fee    90
                         nop                                                              // 0x00605fef    90