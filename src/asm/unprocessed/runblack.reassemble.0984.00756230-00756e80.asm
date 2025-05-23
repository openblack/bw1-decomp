.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @AddVillagerToAbode__5AbodeFP8Villager@12
.extern _jmp_addr_0x00436970
.extern _jmp_addr_0x00438770
.extern _jmp_addr_0x00561e10
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern @__ct__9GameThingFv@4
.extern _jmp_addr_0x0056fa80
.extern ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.extern _jmp_addr_0x0056fe70
.extern ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z
.extern @Load__16GameThingWithPosFR10GameOSFile@12
.extern @SetToZero__16GameThingWithPosFv@4
.extern @GetFinalDestPos__6LivingFP9MapCoords@12
.extern @IsReadyForNewAnimation__6LivingFUl@12
.extern @SetStateAnim__6LivingFv@4
.extern @GetFirstObjectFixed__9MapCoordsCFv@4
.extern @__apl__9MapCoordsFRC9JustMapXZ@12
.extern @InsertMapObject__6ObjectFv@4
.extern @GetMapChild__6ObjectFRC9MapCoords@12
.extern _jmp_addr_0x006385e0
.extern @SetLife__6ObjectFf@12
.extern _jmp_addr_0x0064d750
.extern _CreateReaction__8ReactionFP16GameThingWithPosUcP7GPlayeri
.extern @GetInfo__8ReactionCFv@4
.extern _jmp_addr_0x006e48a0
.extern @AddVillagerToTown__4TownFP8Villager@12
.extern @RemoveVillager__4TownFP8Villager@12
.extern _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords
.extern _Spiral__6GUtilsFRlRl
.extern _jmp_addr_0x00751490
.extern _jmp_addr_0x007514b0
.extern _jmp_addr_0x00751e50
.extern _jmp_addr_0x00752a90
.extern _jmp_addr_0x00756000
.extern _jmp_addr_0x00757180
.extern @MakeChildOrphaned__8VillagerFP8Villager@12
.extern _atexit@4
.extern _jmp_addr_0x007c5a19

.globl _jmp_addr_0x00756240
.globl @SetSkeleton__8VillagerFi@9
.globl _jmp_addr_0x00756530
.globl _jmp_addr_0x007566c0
.globl _jmp_addr_0x00756760
.globl _jmp_addr_0x007567e0
.globl @FindChildrenAndOrphanThem__8VillagerFv@4

.globl _globl_ct_0x00756c80
.globl _globl_ct_0x00756cb0
.globl _globl_ct_0x00756cd0
.globl _globl_ct_0x00756d00
.globl _SetSkeleton__8VillagerFi

start_0x00756230_0x00756e80:
// Snippet: asm, [0x00756230, 0x00756e56)
                         ret                                                              // 0x00756230    c3
                         nop                                                              // 0x00756231    90
                         nop                                                              // 0x00756232    90
                         nop                                                              // 0x00756233    90
                         nop                                                              // 0x00756234    90
                         nop                                                              // 0x00756235    90
                         nop                                                              // 0x00756236    90
                         nop                                                              // 0x00756237    90
                         nop                                                              // 0x00756238    90
                         nop                                                              // 0x00756239    90
                         nop                                                              // 0x0075623a    90
                         nop                                                              // 0x0075623b    90
                         nop                                                              // 0x0075623c    90
                         nop                                                              // 0x0075623d    90
                         nop                                                              // 0x0075623e    90
                         nop                                                              // 0x0075623f    90
_jmp_addr_0x00756240:    push               ebx                                           // 0x00756240    53
                         push               ebp                                           // 0x00756241    55
                         push               esi                                           // 0x00756242    56
                         mov.s              esi, ecx                                      // 0x00756243    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00756245    8b06
                         push               edi                                           // 0x00756247    57
                         call               dword ptr [eax + 0x48]                        // 0x00756248    ff5048
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0075624b    8b7c2414
                         mov                edx, dword ptr [edi]                          // 0x0075624f    8b17
                         mov.s              ecx, edi                                      // 0x00756251    8bcf
                         mov.s              ebx, eax                                      // 0x00756253    8bd8
                         call               dword ptr [edx + 0x48]                        // 0x00756255    ff5248
                         mov.s              ebp, eax                                      // 0x00756258    8be8
                         cmp.s              ebx, ebp                                      // 0x0075625a    3bdd
                         {disp8} je         _jmp_addr_0x007562aa                          // 0x0075625c    744c
                         test               ebx, ebx                                      // 0x0075625e    85db
                         {disp8} je         _jmp_addr_0x0075626a                          // 0x00756260    7408
                         push               esi                                           // 0x00756262    56
                         mov.s              ecx, ebx                                      // 0x00756263    8bcb
                         call               @RemoveVillager__4TownFP8Villager@12          // 0x00756265    e8a67ffeff
_jmp_addr_0x0075626a:    mov                eax, dword ptr [esi]                          // 0x0075626a    8b06
                         mov.s              ecx, esi                                      // 0x0075626c    8bce
                         call               dword ptr [eax + 0xaf8]                       // 0x0075626e    ff90f80a0000
                         test               eax, eax                                      // 0x00756274    85c0
                         {disp8} je         _jmp_addr_0x00756284                          // 0x00756276    740c
                         mov                edx, dword ptr [edi]                          // 0x00756278    8b17
                         mov.s              ecx, edi                                      // 0x0075627a    8bcf
                         call               dword ptr [edx + 0x8a0]                       // 0x0075627c    ff92a0080000
                         {disp8} jmp        _jmp_addr_0x0075628e                          // 0x00756282    eb0a
_jmp_addr_0x00756284:    mov                eax, dword ptr [edi]                          // 0x00756284    8b07
                         mov.s              ecx, edi                                      // 0x00756286    8bcf
                         call               dword ptr [eax + 0x89c]                       // 0x00756288    ff909c080000
_jmp_addr_0x0075628e:    {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]              // 0x0075628e    d81d90a38a00
                         fnstsw             ax                                            // 0x00756294    dfe0
                         test               ah, 0x01                                      // 0x00756296    f6c401
                         {disp8} jne        _jmp_addr_0x007562aa                          // 0x00756299    750f
                         push               esi                                           // 0x0075629b    56
                         mov.s              ecx, ebp                                      // 0x0075629c    8bcd
                         call               @AddVillagerToTown__4TownFP8Villager@12       // 0x0075629e    e8ed3dfeff
                         pop                edi                                           // 0x007562a3    5f
                         pop                esi                                           // 0x007562a4    5e
                         pop                ebp                                           // 0x007562a5    5d
                         pop                ebx                                           // 0x007562a6    5b
                         ret                0x0004                                        // 0x007562a7    c20400
_jmp_addr_0x007562aa:    push               esi                                           // 0x007562aa    56
                         mov.s              ecx, edi                                      // 0x007562ab    8bcf
                         call               @AddVillagerToAbode__5AbodeFP8Villager@12     // 0x007562ad    e8aeddcaff
                         pop                edi                                           // 0x007562b2    5f
                         pop                esi                                           // 0x007562b3    5e
                         pop                ebp                                           // 0x007562b4    5d
                         pop                ebx                                           // 0x007562b5    5b
                         ret                0x0004                                        // 0x007562b6    c20400
                         nop                                                              // 0x007562b9    90
                         nop                                                              // 0x007562ba    90
                         nop                                                              // 0x007562bb    90
                         nop                                                              // 0x007562bc    90
                         nop                                                              // 0x007562bd    90
                         nop                                                              // 0x007562be    90
                         nop                                                              // 0x007562bf    90
_SetSkeleton__8VillagerFi:
@SetSkeleton__8VillagerFi@9:    {disp32} mov       al, byte ptr [data_bytes + 0x3e0bc4]          // 0x007562c0    a0c46bda00
                         test               al, 0x01                                      // 0x007562c5    a801
                         push               ebx                                           // 0x007562c7    53
                         push               ebp                                           // 0x007562c8    55
                         push               esi                                           // 0x007562c9    56
                         push               edi                                           // 0x007562ca    57
                         mov.s              esi, ecx                                      // 0x007562cb    8bf1
                         {disp8} jne        _jmp_addr_0x007562f6                          // 0x007562cd    7527
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4d9e34]        // 0x007562cf    8b0d34fee900
                         mov.s              bl, al                                        // 0x007562d5    8ad8
                         or                 bl, 1                                         // 0x007562d7    80cb01
                         {disp32} mov       byte ptr [data_bytes + 0x3e0bc4], bl          // 0x007562da    881dc46bda00
                         mov                edx, dword ptr [ecx]                          // 0x007562e0    8b11
                         mov                eax, 0x000001ff                               // 0x007562e2    b8ff010000
                         cmp.s              edx, eax                                      // 0x007562e7    3bd0
                         {disp8} jg         _jmp_addr_0x007562ed                          // 0x007562e9    7f02
                         xor.s              eax, eax                                      // 0x007562eb    33c0
_jmp_addr_0x007562ed:    {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x007562ed    8b448104
                         {disp32} mov       dword ptr [data_bytes + 0x3e0bc0], eax        // 0x007562f1    a3c06bda00
_jmp_addr_0x007562f6:    mov                eax, dword ptr [esi]                          // 0x007562f6    8b06
                         xor.s              ecx, ecx                                      // 0x007562f8    33c9
                         {disp8} mov        cl, byte ptr [esp + 0x14]                     // 0x007562fa    8a4c2414
                         xor.s              edx, edx                                      // 0x007562fe    33d2
                         {disp32} mov       dx, word ptr [esi + 0x000000b4]               // 0x00756300    668b96b4000000
                         and                ecx, 0x01                                     // 0x00756307    83e101
                         shl                ecx, 6                                        // 0x0075630a    c1e106
                         and                edx, 0x0000ffbf                               // 0x0075630d    81e2bfff0000
                         or.s               ecx, edx                                      // 0x00756313    0bca
                         {disp32} mov       word ptr [esi + 0x000000b4], cx               // 0x00756315    66898eb4000000
                         mov.s              ecx, esi                                      // 0x0075631c    8bce
                         call               dword ptr [eax + 0x4a0]                       // 0x0075631e    ff90a0040000
                         test               eax, eax                                      // 0x00756324    85c0
                         {disp8} je         _jmp_addr_0x00756348                          // 0x00756326    7420
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00756328    8b4e40
                         test               ecx, ecx                                      // 0x0075632b    85c9
                         {disp32} je        _jmp_addr_0x00756429                          // 0x0075632d    0f84f6000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x3e0bc0]        // 0x00756333    8b15c06bda00
                         mov                eax, dword ptr [ecx]                          // 0x00756339    8b01
                         push               edx                                           // 0x0075633b    52
                         push               edx                                           // 0x0075633c    52
                         call               dword ptr [eax + 0xf4]                        // 0x0075633d    ff90f4000000
                         {disp32} jmp       _jmp_addr_0x00756429                          // 0x00756343    e9e1000000
_jmp_addr_0x00756348:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00756348    8b4e28
                         {disp32} mov       edi, dword ptr [ecx + 0x00000138]             // 0x0075634b    8bb938010000
                         mov                edx, dword ptr [esi]                          // 0x00756351    8b16
                         mov.s              ecx, esi                                      // 0x00756353    8bce
                         call               dword ptr [edx + 0x8d0]                       // 0x00756355    ff92d0080000
                         cmp.s              eax, edi                                      // 0x0075635b    3bc7
                         {disp8} jae        _jmp_addr_0x007563b5                          // 0x0075635d    7356
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0075635f    8b4e40
                         test               ecx, ecx                                      // 0x00756362    85c9
                         {disp32} je        _jmp_addr_0x00756429                          // 0x00756364    0f84bf000000
                         {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x0075636a    8b5628
                         {disp32} mov       eax, dword ptr [edx + 0x0000020c]             // 0x0075636d    8b820c020000
                         test               eax, eax                                      // 0x00756373    85c0
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4d9e34]        // 0x00756375    8b3d34fee900
                         {disp8} jl         _jmp_addr_0x00756381                          // 0x0075637b    7c04
                         cmp                eax, dword ptr [edi]                          // 0x0075637d    3b07
                         {disp8} jl         _jmp_addr_0x00756383                          // 0x0075637f    7c02
_jmp_addr_0x00756381:    xor.s              eax, eax                                      // 0x00756381    33c0
_jmp_addr_0x00756383:    {disp8} mov        ebx, dword ptr [edi + eax * 0x4 + 0x04]       // 0x00756383    8b5c8704
                         {disp32} mov       eax, dword ptr [edx + 0x00000208]             // 0x00756387    8b8208020000
                         test               eax, eax                                      // 0x0075638d    85c0
                         {disp8} jl         _jmp_addr_0x00756395                          // 0x0075638f    7c04
                         cmp                eax, dword ptr [edi]                          // 0x00756391    3b07
                         {disp8} jl         _jmp_addr_0x00756397                          // 0x00756393    7c02
_jmp_addr_0x00756395:    xor.s              eax, eax                                      // 0x00756395    33c0
_jmp_addr_0x00756397:    {disp32} mov       edx, dword ptr [edx + 0x00000204]             // 0x00756397    8b9204020000
                         test               edx, edx                                      // 0x0075639d    85d2
                         {disp8} mov        eax, dword ptr [edi + eax * 0x4 + 0x04]       // 0x0075639f    8b448704
                         {disp8} jl         _jmp_addr_0x007563a9                          // 0x007563a3    7c04
                         cmp                edx, dword ptr [edi]                          // 0x007563a5    3b17
                         {disp8} jl         _jmp_addr_0x007563ab                          // 0x007563a7    7c02
_jmp_addr_0x007563a9:    xor.s              edx, edx                                      // 0x007563a9    33d2
_jmp_addr_0x007563ab:    mov                ebp, dword ptr [ecx]                          // 0x007563ab    8b29
                         {disp8} mov        edx, dword ptr [edi + edx * 0x4 + 0x04]       // 0x007563ad    8b549704
                         push               ebx                                           // 0x007563b1    53
                         push               eax                                           // 0x007563b2    50
                         {disp8} jmp        _jmp_addr_0x00756423                          // 0x007563b3    eb6e
_jmp_addr_0x007563b5:    {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x007563b5    8b4640
                         test               eax, eax                                      // 0x007563b8    85c0
                         {disp8} je         _jmp_addr_0x00756429                          // 0x007563ba    746d
                         mov                eax, dword ptr [esi]                          // 0x007563bc    8b06
                         push               0x2                                           // 0x007563be    6a02
                         mov.s              ecx, esi                                      // 0x007563c0    8bce
                         call               dword ptr [eax + 0x60c]                       // 0x007563c2    ff900c060000
                         test               eax, eax                                      // 0x007563c8    85c0
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4d9e34]        // 0x007563ca    8b0d34fee900
                         {disp8} jl         _jmp_addr_0x007563d6                          // 0x007563d0    7c04
                         cmp                eax, dword ptr [ecx]                          // 0x007563d2    3b01
                         {disp8} jl         _jmp_addr_0x007563d8                          // 0x007563d4    7c02
_jmp_addr_0x007563d6:    xor.s              eax, eax                                      // 0x007563d6    33c0
_jmp_addr_0x007563d8:    {disp8} mov        ebx, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x007563d8    8b5c8104
                         mov                edx, dword ptr [esi]                          // 0x007563dc    8b16
                         push               0x1                                           // 0x007563de    6a01
                         mov.s              ecx, esi                                      // 0x007563e0    8bce
                         call               dword ptr [edx + 0x60c]                       // 0x007563e2    ff920c060000
                         test               eax, eax                                      // 0x007563e8    85c0
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4d9e34]        // 0x007563ea    8b0d34fee900
                         {disp8} jl         _jmp_addr_0x007563f6                          // 0x007563f0    7c04
                         cmp                eax, dword ptr [ecx]                          // 0x007563f2    3b01
                         {disp8} jl         _jmp_addr_0x007563f8                          // 0x007563f4    7c02
_jmp_addr_0x007563f6:    xor.s              eax, eax                                      // 0x007563f6    33c0
_jmp_addr_0x007563f8:    {disp8} mov        edi, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x007563f8    8b7c8104
                         mov                eax, dword ptr [esi]                          // 0x007563fc    8b06
                         push               0x0                                           // 0x007563fe    6a00
                         mov.s              ecx, esi                                      // 0x00756400    8bce
                         call               dword ptr [eax + 0x60c]                       // 0x00756402    ff900c060000
                         test               eax, eax                                      // 0x00756408    85c0
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4d9e34]        // 0x0075640a    8b1534fee900
                         {disp8} jl         _jmp_addr_0x00756416                          // 0x00756410    7c04
                         cmp                eax, dword ptr [edx]                          // 0x00756412    3b02
                         {disp8} jl         _jmp_addr_0x00756418                          // 0x00756414    7c02
_jmp_addr_0x00756416:    xor.s              eax, eax                                      // 0x00756416    33c0
_jmp_addr_0x00756418:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00756418    8b4e40
                         mov                ebp, dword ptr [ecx]                          // 0x0075641b    8b29
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x0075641d    8b548204
                         push               ebx                                           // 0x00756421    53
                         push               edi                                           // 0x00756422    57
_jmp_addr_0x00756423:    call               dword ptr [ebp + 0xf4]                        // 0x00756423    ff95f4000000
_jmp_addr_0x00756429:    mov                edx, dword ptr [esi]                          // 0x00756429    8b16
                         mov.s              ecx, esi                                      // 0x0075642b    8bce
                         call               dword ptr [edx + 0x8d0]                       // 0x0075642d    ff92d0080000
                         push               eax                                           // 0x00756433    50
                         mov.s              ecx, esi                                      // 0x00756434    8bce
                         call               _jmp_addr_0x00752a90                          // 0x00756436    e855c6ffff
                         pop                edi                                           // 0x0075643b    5f
                         pop                esi                                           // 0x0075643c    5e
                         pop                ebp                                           // 0x0075643d    5d
                         pop                ebx                                           // 0x0075643e    5b
                         ret                0x0004                                        // 0x0075643f    c20400
                         nop                                                              // 0x00756442    90
                         nop                                                              // 0x00756443    90
                         nop                                                              // 0x00756444    90
                         nop                                                              // 0x00756445    90
                         nop                                                              // 0x00756446    90
                         nop                                                              // 0x00756447    90
                         nop                                                              // 0x00756448    90
                         nop                                                              // 0x00756449    90
                         nop                                                              // 0x0075644a    90
                         nop                                                              // 0x0075644b    90
                         nop                                                              // 0x0075644c    90
                         nop                                                              // 0x0075644d    90
                         nop                                                              // 0x0075644e    90
                         nop                                                              // 0x0075644f    90
                         {disp32} jmp       @InsertMapObject__6ObjectFv@4                 // 0x00756450    e9eb02eeff
                         nop                                                              // 0x00756455    90
                         nop                                                              // 0x00756456    90
                         nop                                                              // 0x00756457    90
                         nop                                                              // 0x00756458    90
                         nop                                                              // 0x00756459    90
                         nop                                                              // 0x0075645a    90
                         nop                                                              // 0x0075645b    90
                         nop                                                              // 0x0075645c    90
                         nop                                                              // 0x0075645d    90
                         nop                                                              // 0x0075645e    90
                         nop                                                              // 0x0075645f    90
                         push               esi                                           // 0x00756460    56
                         mov.s              esi, ecx                                      // 0x00756461    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00756463    8b06
                         call               dword ptr [eax + 0x2c]                        // 0x00756465    ff502c
                         test               eax, eax                                      // 0x00756468    85c0
                         {disp8} jne        _jmp_addr_0x0075646e                          // 0x0075646a    7502
                         pop                esi                                           // 0x0075646c    5e
                         ret                                                              // 0x0075646d    c3
_jmp_addr_0x0075646e:    {disp32} mov       cl, byte ptr [esi + 0x000000e0]               // 0x0075646e    8a8ee0000000
                         and                cl, 0x04                                      // 0x00756474    80e104
                         cmp                cl, 0x04                                      // 0x00756477    80f904
                         {disp8} jne        _jmp_addr_0x00756480                          // 0x0075647a    7504
                         xor.s              eax, eax                                      // 0x0075647c    33c0
                         pop                esi                                           // 0x0075647e    5e
                         ret                                                              // 0x0075647f    c3
_jmp_addr_0x00756480:    {disp8} mov        dl, byte ptr [esi + 0x24]                     // 0x00756480    8a5624
                         and                dl, 0x04                                      // 0x00756483    80e204
                         cmp                dl, 0x04                                      // 0x00756486    80fa04
                         {disp8} jne        _jmp_addr_0x0075648f                          // 0x00756489    7504
                         xor.s              eax, eax                                      // 0x0075648b    33c0
                         pop                esi                                           // 0x0075648d    5e
                         ret                                                              // 0x0075648e    c3
_jmp_addr_0x0075648f:    {disp32} mov       cl, byte ptr [esi + 0x0000008c]               // 0x0075648f    8a8e8c000000
                         xor.s              eax, eax                                      // 0x00756495    33c0
                         cmp                cl, -0x14                                     // 0x00756497    80f9ec
                         setne              al                                            // 0x0075649a    0f95c0
                         pop                esi                                           // 0x0075649d    5e
                         ret                                                              // 0x0075649e    c3
                         nop                                                              // 0x0075649f    90
                         mov                eax, dword ptr [ecx]                          // 0x007564a0    8b01
                         call               dword ptr [eax + 0x530]                       // 0x007564a2    ff9030050000
                         neg                eax                                           // 0x007564a8    f7d8
                         sbb.s              eax, eax                                      // 0x007564aa    1bc0
                         neg                eax                                           // 0x007564ac    f7d8
                         ret                0x0004                                        // 0x007564ae    c20400
                         nop                                                              // 0x007564b1    90
                         nop                                                              // 0x007564b2    90
                         nop                                                              // 0x007564b3    90
                         nop                                                              // 0x007564b4    90
                         nop                                                              // 0x007564b5    90
                         nop                                                              // 0x007564b6    90
                         nop                                                              // 0x007564b7    90
                         nop                                                              // 0x007564b8    90
                         nop                                                              // 0x007564b9    90
                         nop                                                              // 0x007564ba    90
                         nop                                                              // 0x007564bb    90
                         nop                                                              // 0x007564bc    90
                         nop                                                              // 0x007564bd    90
                         nop                                                              // 0x007564be    90
                         nop                                                              // 0x007564bf    90
                         mov                eax, dword ptr [ecx]                          // 0x007564c0    8b01
                         jmp                dword ptr [eax + 0x530]                       // 0x007564c2    ffa030050000
                         nop                                                              // 0x007564c8    90
                         nop                                                              // 0x007564c9    90
                         nop                                                              // 0x007564ca    90
                         nop                                                              // 0x007564cb    90
                         nop                                                              // 0x007564cc    90
                         nop                                                              // 0x007564cd    90
                         nop                                                              // 0x007564ce    90
                         nop                                                              // 0x007564cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007564d0    8b442404
                         test               eax, eax                                      // 0x007564d4    85c0
                         push               esi                                           // 0x007564d6    56
                         mov.s              esi, ecx                                      // 0x007564d7    8bf1
                         {disp8} jne        _jmp_addr_0x007564ff                          // 0x007564d9    7524
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007564db    8b44240c
                         push               eax                                           // 0x007564df    50
                         call               _jmp_addr_0x00751490                          // 0x007564e0    e8abafffff
                         {disp8} mov        al, byte ptr [esp + 0x14]                     // 0x007564e5    8a442414
                         test               al, al                                        // 0x007564e9    84c0
                         {disp8} je         _jmp_addr_0x00756512                          // 0x007564eb    7425
                         mov                edx, dword ptr [esi]                          // 0x007564ed    8b16
                         push               0x1                                           // 0x007564ef    6a01
                         mov.s              ecx, esi                                      // 0x007564f1    8bce
                         call               dword ptr [edx + 0x69c]                       // 0x007564f3    ff929c060000
                         xor.s              eax, eax                                      // 0x007564f9    33c0
                         pop                esi                                           // 0x007564fb    5e
                         ret                0x0018                                        // 0x007564fc    c21800
_jmp_addr_0x007564ff:    cmp                eax, 0x01                                     // 0x007564ff    83f801
                         {disp8} jne        _jmp_addr_0x00756512                          // 0x00756502    750e
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00756504    8b44240c
                         push               0x0                                           // 0x00756508    6a00
                         push               eax                                           // 0x0075650a    50
                         mov.s              ecx, esi                                      // 0x0075650b    8bce
                         call               _jmp_addr_0x007514b0                          // 0x0075650d    e89eafffff
_jmp_addr_0x00756512:    xor.s              eax, eax                                      // 0x00756512    33c0
                         pop                esi                                           // 0x00756514    5e
                         ret                0x0018                                        // 0x00756515    c21800
                         nop                                                              // 0x00756518    90
                         nop                                                              // 0x00756519    90
                         nop                                                              // 0x0075651a    90
                         nop                                                              // 0x0075651b    90
                         nop                                                              // 0x0075651c    90
                         nop                                                              // 0x0075651d    90
                         nop                                                              // 0x0075651e    90
                         nop                                                              // 0x0075651f    90
                         xor.s              eax, eax                                      // 0x00756520    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x0000008e]               // 0x00756522    8a818e000000
                         ret                                                              // 0x00756528    c3
                         nop                                                              // 0x00756529    90
                         nop                                                              // 0x0075652a    90
                         nop                                                              // 0x0075652b    90
                         nop                                                              // 0x0075652c    90
                         nop                                                              // 0x0075652d    90
                         nop                                                              // 0x0075652e    90
                         nop                                                              // 0x0075652f    90
_jmp_addr_0x00756530:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00756530    8b442404
                         {disp32} mov       dword ptr [ecx + 0x0000012c], eax             // 0x00756534    89812c010000
                         ret                0x0004                                        // 0x0075653a    c20400
                         nop                                                              // 0x0075653d    90
                         nop                                                              // 0x0075653e    90
                         nop                                                              // 0x0075653f    90
                         push               esi                                           // 0x00756540    56
                         mov.s              esi, ecx                                      // 0x00756541    8bf1
                         push               0x1                                           // 0x00756543    6a01
                         call               @IsReadyForNewAnimation__6LivingFUl@12        // 0x00756545    e81664e9ff
                         test               eax, eax                                      // 0x0075654a    85c0
                         {disp8} je         _jmp_addr_0x0075655e                          // 0x0075654c    7410
                         mov.s              ecx, esi                                      // 0x0075654e    8bce
                         call               @SetStateAnim__6LivingFv@4                    // 0x00756550    e8bb65e9ff
                         {disp32} mov       word ptr [esi + 0x00000090], 0x0000           // 0x00756555    66c786900000000000
_jmp_addr_0x0075655e:    mov                eax, 0x00000001                               // 0x0075655e    b801000000
                         pop                esi                                           // 0x00756563    5e
                         ret                                                              // 0x00756564    c3
                         nop                                                              // 0x00756565    90
                         nop                                                              // 0x00756566    90
                         nop                                                              // 0x00756567    90
                         nop                                                              // 0x00756568    90
                         nop                                                              // 0x00756569    90
                         nop                                                              // 0x0075656a    90
                         nop                                                              // 0x0075656b    90
                         nop                                                              // 0x0075656c    90
                         nop                                                              // 0x0075656d    90
                         nop                                                              // 0x0075656e    90
                         nop                                                              // 0x0075656f    90
                         mov                eax, 0x00000001                               // 0x00756570    b801000000
                         ret                0x0004                                        // 0x00756575    c20400
                         nop                                                              // 0x00756578    90
                         nop                                                              // 0x00756579    90
                         nop                                                              // 0x0075657a    90
                         nop                                                              // 0x0075657b    90
                         nop                                                              // 0x0075657c    90
                         nop                                                              // 0x0075657d    90
                         nop                                                              // 0x0075657e    90
                         nop                                                              // 0x0075657f    90
                         mov                eax, 0x00000001                               // 0x00756580    b801000000
                         ret                0x0004                                        // 0x00756585    c20400
                         nop                                                              // 0x00756588    90
                         nop                                                              // 0x00756589    90
                         nop                                                              // 0x0075658a    90
                         nop                                                              // 0x0075658b    90
                         nop                                                              // 0x0075658c    90
                         nop                                                              // 0x0075658d    90
                         nop                                                              // 0x0075658e    90
                         nop                                                              // 0x0075658f    90
                         sub                esp, 0x10                                     // 0x00756590    83ec10
                         xor.s              eax, eax                                      // 0x00756593    33c0
                         push               esi                                           // 0x00756595    56
                         mov.s              esi, ecx                                      // 0x00756596    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x0000008c]               // 0x00756598    8a868c000000
                         push               edi                                           // 0x0075659e    57
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x0075659f    8d04c0
                         shl                eax, 4                                        // 0x007565a2    c1e004
                         {disp32} lea       eax, dword ptr [eax + 0x00d09208]             // 0x007565a5    8d800892d000
                         mov.s              edx, eax                                      // 0x007565ab    8bd0
                         mov                ecx, dword ptr [edx]                          // 0x007565ad    8b0a
                         test               ecx, ecx                                      // 0x007565af    85c9
                         {disp8} mov        edi, dword ptr [edx + 0x04]                   // 0x007565b1    8b7a04
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x007565b4    897c240c
                         {disp8} mov        edi, dword ptr [edx + 0x08]                   // 0x007565b8    8b7a08
                         {disp8} mov        edx, dword ptr [edx + 0x0c]                   // 0x007565bb    8b520c
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x007565be    897c2410
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x007565c2    89542414
                         {disp8} je         _jmp_addr_0x0075660f                          // 0x007565c6    7447
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x007565c8    8b4804
                         {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x007565cb    8b7808
                         mov                edx, dword ptr [eax]                          // 0x007565ce    8b10
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                   // 0x007565d0    8b400c
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x007565d3    89442414
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x007565d7    8b44241c
                         push               eax                                           // 0x007565db    50
                         push               0x1                                           // 0x007565dc    6a01
                         add.s              ecx, esi                                      // 0x007565de    03ce
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x007565e0    897c2418
                         call               edx                                           // 0x007565e4    ffd2
                         cmp                eax, -0x01                                    // 0x007565e6    83f8ff
                         {disp8} je         _jmp_addr_0x00756612                          // 0x007565e9    7427
                         xor.s              ecx, ecx                                      // 0x007565eb    33c9
                         {disp32} mov       cx, word ptr [esi + 0x000000e0]               // 0x007565ed    668b8ee0000000
                         pop                edi                                           // 0x007565f4    5f
                         and                ecx, 0x0000efff                               // 0x007565f5    81e1ffef0000
                         or                 ecx, 0x800                                    // 0x007565fb    81c900080000
                         {disp32} mov       word ptr [esi + 0x000000e0], cx               // 0x00756601    66898ee0000000
                         pop                esi                                           // 0x00756608    5e
                         add                esp, 0x10                                     // 0x00756609    83c410
                         ret                0x0004                                        // 0x0075660c    c20400
_jmp_addr_0x0075660f:    or                 eax, -0x1                                     // 0x0075660f    83c8ff
_jmp_addr_0x00756612:    pop                edi                                           // 0x00756612    5f
                         pop                esi                                           // 0x00756613    5e
                         add                esp, 0x10                                     // 0x00756614    83c410
                         ret                0x0004                                        // 0x00756617    c20400
                         nop                                                              // 0x0075661a    90
                         nop                                                              // 0x0075661b    90
                         nop                                                              // 0x0075661c    90
                         nop                                                              // 0x0075661d    90
                         nop                                                              // 0x0075661e    90
                         nop                                                              // 0x0075661f    90
                         sub                esp, 0x10                                     // 0x00756620    83ec10
                         push               ebx                                           // 0x00756623    53
                         push               esi                                           // 0x00756624    56
                         push               edi                                           // 0x00756625    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x00756626    8b7c2420
                         mov.s              esi, ecx                                      // 0x0075662a    8bf1
                         mov.s              eax, edi                                      // 0x0075662c    8bc7
                         and                eax, 0x000000ff                               // 0x0075662e    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00756633    8d0c40
                         shl                ecx, 3                                        // 0x00756636    c1e103
                         sub.s              ecx, eax                                      // 0x00756639    2bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x0075663b    8d0449
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f68]       // 0x0075663e    8b0c85689fdb00
                         test               ecx, ecx                                      // 0x00756645    85c9
                         {disp8} jne        _jmp_addr_0x007566a9                          // 0x00756647    7560
                         xor.s              eax, eax                                      // 0x00756649    33c0
                         {disp32} mov       al, byte ptr [esi + 0x0000008c]               // 0x0075664b    8a868c000000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00756651    8d0cc0
                         shl                ecx, 4                                        // 0x00756654    c1e104
                         {disp32} lea       eax, dword ptr [ecx + 0x00d09208]             // 0x00756657    8d810892d000
                         mov.s              edx, eax                                      // 0x0075665d    8bd0
                         mov                ecx, dword ptr [edx]                          // 0x0075665f    8b0a
                         test               ecx, ecx                                      // 0x00756661    85c9
                         {disp8} mov        ebx, dword ptr [edx + 0x04]                   // 0x00756663    8b5a04
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00756666    895c2410
                         {disp8} mov        ebx, dword ptr [edx + 0x08]                   // 0x0075666a    8b5a08
                         {disp8} mov        edx, dword ptr [edx + 0x0c]                   // 0x0075666d    8b520c
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00756670    895c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00756674    89542418
                         {disp8} je         _jmp_addr_0x007566a9                          // 0x00756678    742f
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0075667a    8b4804
                         {disp8} mov        ebx, dword ptr [eax + 0x08]                   // 0x0075667d    8b5808
                         mov                edx, dword ptr [eax]                          // 0x00756680    8b10
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                   // 0x00756682    8b400c
                         push               edi                                           // 0x00756685    57
                         push               0x0                                           // 0x00756686    6a00
                         add.s              ecx, esi                                      // 0x00756688    03ce
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x0075668a    895c241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0075668e    89442420
                         call               edx                                           // 0x00756692    ffd2
                         cmp                eax, -0x01                                    // 0x00756694    83f8ff
                         {disp8} je         _jmp_addr_0x007566ac                          // 0x00756697    7413
                         or                 byte ptr [esi + 0xe1], 0x18                   // 0x00756699    808ee100000018
                         pop                edi                                           // 0x007566a0    5f
                         pop                esi                                           // 0x007566a1    5e
                         pop                ebx                                           // 0x007566a2    5b
                         add                esp, 0x10                                     // 0x007566a3    83c410
                         ret                0x0004                                        // 0x007566a6    c20400
_jmp_addr_0x007566a9:    or                 eax, -0x1                                     // 0x007566a9    83c8ff
_jmp_addr_0x007566ac:    pop                edi                                           // 0x007566ac    5f
                         pop                esi                                           // 0x007566ad    5e
                         pop                ebx                                           // 0x007566ae    5b
                         add                esp, 0x10                                     // 0x007566af    83c410
                         ret                0x0004                                        // 0x007566b2    c20400
                         nop                                                              // 0x007566b5    90
                         nop                                                              // 0x007566b6    90
                         nop                                                              // 0x007566b7    90
                         nop                                                              // 0x007566b8    90
                         nop                                                              // 0x007566b9    90
                         nop                                                              // 0x007566ba    90
                         nop                                                              // 0x007566bb    90
                         nop                                                              // 0x007566bc    90
                         nop                                                              // 0x007566bd    90
                         nop                                                              // 0x007566be    90
                         nop                                                              // 0x007566bf    90
_jmp_addr_0x007566c0:    push               esi                                           // 0x007566c0    56
                         push               edi                                           // 0x007566c1    57
                         mov.s              esi, ecx                                      // 0x007566c2    8bf1
                         call               @__ct__9GameThingFv@4                         // 0x007566c4    e84793e1ff
                         xor.s              edi, edi                                      // 0x007566c9    33ff
                         {disp8} mov        dword ptr [esi + 0x14], edi                   // 0x007566cb    897e14
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x007566ce    897e18
                         {disp8} mov        dword ptr [esi + 0x1c], edi                   // 0x007566d1    897e1c
                         {disp8} mov        dword ptr [esi + 0x20], edi                   // 0x007566d4    897e20
                         mov.s              ecx, esi                                      // 0x007566d7    8bce
                         mov                dword ptr [esi], 0x008c31a0                   // 0x007566d9    c706a0318c00
                         call               @SetToZero__16GameThingWithPosFv@4            // 0x007566df    e8ec9ee1ff
                         {disp8} mov        dword ptr [esi + 0x30], edi                   // 0x007566e4    897e30
                         pop                edi                                           // 0x007566e7    5f
                         mov                dword ptr [esi], 0x0099a424                   // 0x007566e8    c70624a49900
                         mov.s              eax, esi                                      // 0x007566ee    8bc6
                         pop                esi                                           // 0x007566f0    5e
                         ret                                                              // 0x007566f1    c3
                         nop                                                              // 0x007566f2    90
                         nop                                                              // 0x007566f3    90
                         nop                                                              // 0x007566f4    90
                         nop                                                              // 0x007566f5    90
                         nop                                                              // 0x007566f6    90
                         nop                                                              // 0x007566f7    90
                         nop                                                              // 0x007566f8    90
                         nop                                                              // 0x007566f9    90
                         nop                                                              // 0x007566fa    90
                         nop                                                              // 0x007566fb    90
                         nop                                                              // 0x007566fc    90
                         nop                                                              // 0x007566fd    90
                         nop                                                              // 0x007566fe    90
                         nop                                                              // 0x007566ff    90
                         {disp8} mov        ecx, dword ptr [ecx + 0x2c]                   // 0x00756700    8b492c
                         test               ecx, ecx                                      // 0x00756703    85c9
                         {disp8} je         _jmp_addr_0x0075670c                          // 0x00756705    7405
                         mov                eax, dword ptr [ecx]                          // 0x00756707    8b01
                         {disp8} jmp        dword ptr [eax + 0x1c]                        // 0x00756709    ff601c
_jmp_addr_0x0075670c:    xor.s              eax, eax                                      // 0x0075670c    33c0
                         ret                                                              // 0x0075670e    c3
                         nop                                                              // 0x0075670f    90
                         mov                eax, 0x00c236b8                               // 0x00756710    b8b836c200
                         ret                                                              // 0x00756715    c3
                         nop                                                              // 0x00756716    90
                         nop                                                              // 0x00756717    90
                         nop                                                              // 0x00756718    90
                         nop                                                              // 0x00756719    90
                         nop                                                              // 0x0075671a    90
                         nop                                                              // 0x0075671b    90
                         nop                                                              // 0x0075671c    90
                         nop                                                              // 0x0075671d    90
                         nop                                                              // 0x0075671e    90
                         nop                                                              // 0x0075671f    90
                         mov                eax, 0x0000009e                               // 0x00756720    b89e000000
                         ret                                                              // 0x00756725    c3
                         nop                                                              // 0x00756726    90
                         nop                                                              // 0x00756727    90
                         nop                                                              // 0x00756728    90
                         nop                                                              // 0x00756729    90
                         nop                                                              // 0x0075672a    90
                         nop                                                              // 0x0075672b    90
                         nop                                                              // 0x0075672c    90
                         nop                                                              // 0x0075672d    90
                         nop                                                              // 0x0075672e    90
                         nop                                                              // 0x0075672f    90
                         mov                eax, 0x00c236cc                               // 0x00756730    b8cc36c200
                         ret                                                              // 0x00756735    c3
                         nop                                                              // 0x00756736    90
                         nop                                                              // 0x00756737    90
                         nop                                                              // 0x00756738    90
                         nop                                                              // 0x00756739    90
                         nop                                                              // 0x0075673a    90
                         nop                                                              // 0x0075673b    90
                         nop                                                              // 0x0075673c    90
                         nop                                                              // 0x0075673d    90
                         nop                                                              // 0x0075673e    90
                         nop                                                              // 0x0075673f    90
                         push               esi                                           // 0x00756740    56
                         mov.s              esi, ecx                                      // 0x00756741    8bf1
                         call               _jmp_addr_0x007567b0                          // 0x00756743    e868000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00756748    f644240801
                         {disp8} je         _jmp_addr_0x0075675a                          // 0x0075674d    740b
                         push               0x34                                          // 0x0075674f    6a34
                         push               esi                                           // 0x00756751    56
                         call               _jmp_addr_0x00436970                          // 0x00756752    e81902ceff
                         add                esp, 0x08                                     // 0x00756757    83c408
_jmp_addr_0x0075675a:    mov.s              eax, esi                                      // 0x0075675a    8bc6
                         pop                esi                                           // 0x0075675c    5e
                         ret                0x0004                                        // 0x0075675d    c20400
_jmp_addr_0x00756760:    push               esi                                           // 0x00756760    56
                         push               edi                                           // 0x00756761    57
                         mov.s              esi, ecx                                      // 0x00756762    8bf1
                         call               @__ct__9GameThingFv@4                         // 0x00756764    e8a792e1ff
                         xor.s              edi, edi                                      // 0x00756769    33ff
                         {disp8} mov        dword ptr [esi + 0x14], edi                   // 0x0075676b    897e14
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x0075676e    897e18
                         {disp8} mov        dword ptr [esi + 0x1c], edi                   // 0x00756771    897e1c
                         {disp8} mov        dword ptr [esi + 0x20], edi                   // 0x00756774    897e20
                         mov.s              ecx, esi                                      // 0x00756777    8bce
                         mov                dword ptr [esi], 0x008c31a0                   // 0x00756779    c706a0318c00
                         call               @SetToZero__16GameThingWithPosFv@4            // 0x0075677f    e84c9ee1ff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00756784    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00756788    8b44240c
                         push               edi                                           // 0x0075678c    57
                         push               ecx                                           // 0x0075678d    51
                         {disp8} mov        dword ptr [esi + 0x30], edi                   // 0x0075678e    897e30
                         push               0x27                                          // 0x00756791    6a27
                         push               esi                                           // 0x00756793    56
                         mov                dword ptr [esi], 0x0099a424                   // 0x00756794    c70624a49900
                         {disp8} mov        dword ptr [esi + 0x28], eax                   // 0x0075679a    894628
                         call               _CreateReaction__8ReactionFP16GameThingWithPosUcP7GPlayeri                          // 0x0075679d    e8ced5f8ff
                         add                esp, 0x10                                     // 0x007567a2    83c410
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x007567a5    89462c
                         pop                edi                                           // 0x007567a8    5f
                         mov.s              eax, esi                                      // 0x007567a9    8bc6
                         pop                esi                                           // 0x007567ab    5e
                         ret                0x0008                                        // 0x007567ac    c20800
                         nop                                                              // 0x007567af    90
_jmp_addr_0x007567b0:    mov                dword ptr [ecx], 0x0099a424                   // 0x007567b0    c70124a49900
                         {disp32} jmp       _jmp_addr_0x0056fa80                          // 0x007567b6    e9c592e1ff
                         nop                                                              // 0x007567bb    90
                         nop                                                              // 0x007567bc    90
                         nop                                                              // 0x007567bd    90
                         nop                                                              // 0x007567be    90
                         nop                                                              // 0x007567bf    90
_jmp_addr_0x007567c0:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x007567c0    8b4128
                         test               eax, eax                                      // 0x007567c3    85c0
                         {disp8} je         _jmp_addr_0x007567d7                          // 0x007567c5    7410
                         {disp32} fld       dword ptr [data_bytes + 0x35428c]             // 0x007567c7    d9058ca2d100
                         {disp8} mov        eax, dword ptr [eax + 0x28]                   // 0x007567cd    8b4028
                         {disp32} fmul      dword ptr [eax + 0x000003a0]                  // 0x007567d0    d888a0030000
                         ret                                                              // 0x007567d6    c3
_jmp_addr_0x007567d7:    {disp32} fld       dword ptr [rdata_bytes + 0x1398]              // 0x007567d7    d90598a38a00
                         ret                                                              // 0x007567dd    c3
                         nop                                                              // 0x007567de    90
                         nop                                                              // 0x007567df    90
_jmp_addr_0x007567e0:    push               esi                                           // 0x007567e0    56
                         mov.s              esi, ecx                                      // 0x007567e1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x007567e3    8b4e28
                         push               edi                                           // 0x007567e6    57
                         xor.s              edi, edi                                      // 0x007567e7    33ff
                         cmp.s              ecx, edi                                      // 0x007567e9    3bcf
                         {disp8} je         _jmp_addr_0x007567f2                          // 0x007567eb    7405
                         cmp                dword ptr [esi + 0x2c], edi                   // 0x007567ed    397e2c
                         {disp8} jne        _jmp_addr_0x007567fd                          // 0x007567f0    750b
_jmp_addr_0x007567f2:    mov                eax, dword ptr [esi]                          // 0x007567f2    8b06
                         push               edi                                           // 0x007567f4    57
                         mov.s              ecx, esi                                      // 0x007567f5    8bce
                         call               dword ptr [eax + 0xc]                         // 0x007567f7    ff500c
                         pop                edi                                           // 0x007567fa    5f
                         pop                esi                                           // 0x007567fb    5e
                         ret                                                              // 0x007567fc    c3
_jmp_addr_0x007567fd:    mov                edx, dword ptr [ecx]                          // 0x007567fd    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x007567ff    ff522c
                         cmp                eax, 0x01                                     // 0x00756802    83f801
                         {disp8} jne        _jmp_addr_0x00756845                          // 0x00756805    753e
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00756807    8b4628
                         cmp                byte ptr [eax + 0x000000f2], 0x07             // 0x0075680a    80b8f200000007
                         {disp8} jne        _jmp_addr_0x00756845                          // 0x00756811    7532
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x00756813    8b4e2c
                         mov                edx, dword ptr [ecx]                          // 0x00756816    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x00756818    ff522c
                         cmp                eax, 0x01                                     // 0x0075681b    83f801
                         {disp8} je         _jmp_addr_0x00756831                          // 0x0075681e    7411
                         mov                eax, dword ptr [esi]                          // 0x00756820    8b06
                         push               edi                                           // 0x00756822    57
                         mov.s              ecx, esi                                      // 0x00756823    8bce
                         call               dword ptr [eax + 0xc]                         // 0x00756825    ff500c
                         {disp8} mov        dword ptr [esi + 0x28], edi                   // 0x00756828    897e28
                         {disp8} mov        dword ptr [esi + 0x2c], edi                   // 0x0075682b    897e2c
                         pop                edi                                           // 0x0075682e    5f
                         pop                esi                                           // 0x0075682f    5e
                         ret                                                              // 0x00756830    c3
_jmp_addr_0x00756831:    {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00756831    8b4628
                         mov                edx, dword ptr [esi]                          // 0x00756834    8b16
                         add                eax, 0x14                                     // 0x00756836    83c014
                         push               eax                                           // 0x00756839    50
                         mov.s              ecx, esi                                      // 0x0075683a    8bce
                         call               dword ptr [edx + 0xfc]                        // 0x0075683c    ff92fc000000
                         pop                edi                                           // 0x00756842    5f
                         pop                esi                                           // 0x00756843    5e
                         ret                                                              // 0x00756844    c3
_jmp_addr_0x00756845:    mov                edx, dword ptr [esi]                          // 0x00756845    8b16
                         push               edi                                           // 0x00756847    57
                         mov.s              ecx, esi                                      // 0x00756848    8bce
                         call               dword ptr [edx + 0xc]                         // 0x0075684a    ff520c
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0075684d    8b4e2c
                         {disp8} mov        dword ptr [esi + 0x28], edi                   // 0x00756850    897e28
                         mov                eax, dword ptr [ecx]                          // 0x00756853    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00756855    ff502c
                         test               eax, eax                                      // 0x00756858    85c0
                         {disp8} je         _jmp_addr_0x00756865                          // 0x0075685a    7409
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0075685c    8b4e2c
                         mov                edx, dword ptr [ecx]                          // 0x0075685f    8b11
                         push               edi                                           // 0x00756861    57
                         call               dword ptr [edx + 0xc]                         // 0x00756862    ff520c
_jmp_addr_0x00756865:    {disp8} mov        dword ptr [esi + 0x2c], edi                   // 0x00756865    897e2c
                         pop                edi                                           // 0x00756868    5f
                         pop                esi                                           // 0x00756869    5e
                         ret                                                              // 0x0075686a    c3
                         nop                                                              // 0x0075686b    90
                         nop                                                              // 0x0075686c    90
                         nop                                                              // 0x0075686d    90
                         nop                                                              // 0x0075686e    90
                         nop                                                              // 0x0075686f    90
                         push               esi                                           // 0x00756870    56
                         mov.s              esi, ecx                                      // 0x00756871    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00756873    8b4e28
                         test               ecx, ecx                                      // 0x00756876    85c9
                         {disp8} je         _jmp_addr_0x0075688e                          // 0x00756878    7414
                         cmp                byte ptr [ecx + 0x000000f2], 0x07             // 0x0075687a    80b9f200000007
                         {disp8} jne        _jmp_addr_0x0075688e                          // 0x00756881    750b
                         push               0x0                                           // 0x00756883    6a00
                         push               0x0                                           // 0x00756885    6a00
                         push               0x0                                           // 0x00756887    6a00
                         call               _jmp_addr_0x00756000                          // 0x00756889    e872f7ffff
_jmp_addr_0x0075688e:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0075688e    8b442408
                         push               eax                                           // 0x00756892    50
                         mov.s              ecx, esi                                      // 0x00756893    8bce
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x00756895    e86695e1ff
                         pop                esi                                           // 0x0075689a    5e
                         ret                0x0004                                        // 0x0075689b    c20400
                         nop                                                              // 0x0075689e    90
                         nop                                                              // 0x0075689f    90
                         push               esi                                           // 0x007568a0    56
                         push               edi                                           // 0x007568a1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x007568a2    8b7c240c
                         mov.s              esi, ecx                                      // 0x007568a6    8bf1
                         push               edi                                           // 0x007568a8    57
                         call               @Load__16GameThingWithPosFR10GameOSFile@12    // 0x007568a9    e8f29be1ff
                         test               eax, eax                                      // 0x007568ae    85c0
                         {disp8} je         _jmp_addr_0x007568d2                          // 0x007568b0    7420
                         {disp8} lea        eax, dword ptr [esi + 0x28]                   // 0x007568b2    8d4628
                         push               eax                                           // 0x007568b5    50
                         mov.s              ecx, edi                                      // 0x007568b6    8bcf
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x007568b8    e8c3b8e0ff
                         add                esi, 0x2c                                     // 0x007568bd    83c62c
                         push               esi                                           // 0x007568c0    56
                         mov.s              ecx, edi                                      // 0x007568c1    8bcf
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x007568c3    e8b8b8e0ff
                         pop                edi                                           // 0x007568c8    5f
                         mov                eax, 0x00000001                               // 0x007568c9    b801000000
                         pop                esi                                           // 0x007568ce    5e
                         ret                0x0004                                        // 0x007568cf    c20400
_jmp_addr_0x007568d2:    pop                edi                                           // 0x007568d2    5f
                         xor.s              eax, eax                                      // 0x007568d3    33c0
                         pop                esi                                           // 0x007568d5    5e
                         ret                0x0004                                        // 0x007568d6    c20400
                         nop                                                              // 0x007568d9    90
                         nop                                                              // 0x007568da    90
                         nop                                                              // 0x007568db    90
                         nop                                                              // 0x007568dc    90
                         nop                                                              // 0x007568dd    90
                         nop                                                              // 0x007568de    90
                         nop                                                              // 0x007568df    90
                         push               esi                                           // 0x007568e0    56
                         push               edi                                           // 0x007568e1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x007568e2    8b7c240c
                         mov.s              esi, ecx                                      // 0x007568e6    8bf1
                         push               edi                                           // 0x007568e8    57
                         call               ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z // 0x007568e9    e8029be1ff
                         test               eax, eax                                      // 0x007568ee    85c0
                         {disp8} je         _jmp_addr_0x00756912                          // 0x007568f0    7420
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x007568f2    8b4628
                         push               eax                                           // 0x007568f5    50
                         mov.s              ecx, edi                                      // 0x007568f6    8bcf
                         call               _jmp_addr_0x00561e10                          // 0x007568f8    e813b5e0ff
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x007568fd    8b4e2c
                         push               ecx                                           // 0x00756900    51
                         mov.s              ecx, edi                                      // 0x00756901    8bcf
                         call               _jmp_addr_0x00561e10                          // 0x00756903    e808b5e0ff
                         pop                edi                                           // 0x00756908    5f
                         mov                eax, 0x00000001                               // 0x00756909    b801000000
                         pop                esi                                           // 0x0075690e    5e
                         ret                0x0004                                        // 0x0075690f    c20400
_jmp_addr_0x00756912:    pop                edi                                           // 0x00756912    5f
                         xor.s              eax, eax                                      // 0x00756913    33c0
                         pop                esi                                           // 0x00756915    5e
                         ret                0x0004                                        // 0x00756916    c20400
                         nop                                                              // 0x00756919    90
                         nop                                                              // 0x0075691a    90
                         nop                                                              // 0x0075691b    90
                         nop                                                              // 0x0075691c    90
                         nop                                                              // 0x0075691d    90
                         nop                                                              // 0x0075691e    90
                         nop                                                              // 0x0075691f    90
                         push               ebx                                           // 0x00756920    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x00756921    8b5c240c
                         push               esi                                           // 0x00756925    56
                         push               edi                                           // 0x00756926    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00756927    8b7c2410
                         mov.s              esi, ecx                                      // 0x0075692b    8bf1
                         push               edi                                           // 0x0075692d    57
                         mov.s              ecx, ebx                                      // 0x0075692e    8bcb
                         call               _jmp_addr_0x006e48a0                          // 0x00756930    e86bdff8ff
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00756935    d95c2410
                         mov.s              ecx, esi                                      // 0x00756939    8bce
                         call               _jmp_addr_0x007567c0                          // 0x0075693b    e880feffff
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00756940    d84c2410
                         add                esi, 0x14                                     // 0x00756944    83c614
                         {disp8} lea        eax, dword ptr [edi + 0x14]                   // 0x00756947    8d4714
                         push               esi                                           // 0x0075694a    56
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0075694b    d95c2418
                         push               eax                                           // 0x0075694f    50
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords                          // 0x00756950    e81b64ffff
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00756955    d95c2418
                         add                esp, 0x08                                     // 0x00756959    83c408
                         mov.s              ecx, ebx                                      // 0x0075695c    8bcb
                         call               @GetInfo__8ReactionCFv@4                      // 0x0075695e    e89dddf8ff
                         {disp8} mov        ecx, dword ptr [eax + 0x2c]                   // 0x00756963    8b482c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00756966    8b542410
                         push               ecx                                           // 0x0075696a    51
                         push               edx                                           // 0x0075696b    52
                         call               _jmp_addr_0x00438770                          // 0x0075696c    e8ff1dceff
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00756971    d95c2418
                         add                esp, 0x08                                     // 0x00756975    83c408
                         push               ebx                                           // 0x00756978    53
                         mov.s              ecx, edi                                      // 0x00756979    8bcf
                         call               _jmp_addr_0x0056fe70                          // 0x0075697b    e8f094e1ff
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00756980    d84c2410
                         pop                edi                                           // 0x00756984    5f
                         pop                esi                                           // 0x00756985    5e
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00756986    d84c240c
                         pop                ebx                                           // 0x0075698a    5b
                         ret                0x0008                                        // 0x0075698b    c20800
                         nop                                                              // 0x0075698e    90
                         nop                                                              // 0x0075698f    90
_jmp_addr_0x00756990:    ret                                                              // 0x00756990    c3
                         nop                                                              // 0x00756991    90
                         nop                                                              // 0x00756992    90
                         nop                                                              // 0x00756993    90
                         nop                                                              // 0x00756994    90
                         nop                                                              // 0x00756995    90
                         nop                                                              // 0x00756996    90
                         nop                                                              // 0x00756997    90
                         nop                                                              // 0x00756998    90
                         nop                                                              // 0x00756999    90
                         nop                                                              // 0x0075699a    90
                         nop                                                              // 0x0075699b    90
                         nop                                                              // 0x0075699c    90
                         nop                                                              // 0x0075699d    90
                         nop                                                              // 0x0075699e    90
                         nop                                                              // 0x0075699f    90
                         push               esi                                           // 0x007569a0    56
                         mov.s              esi, ecx                                      // 0x007569a1    8bf1
                         call               _jmp_addr_0x00756990                          // 0x007569a3    e8e8ffffff
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x007569a8    8b4e60
                         test               ecx, ecx                                      // 0x007569ab    85c9
                         {disp8} je         _jmp_addr_0x007569c0                          // 0x007569ad    7411
                         mov                eax, dword ptr [ecx]                          // 0x007569af    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x007569b1    ff502c
                         cmp                eax, 0x01                                     // 0x007569b4    83f801
                         {disp8} je         _jmp_addr_0x007569c0                          // 0x007569b7    7407
                         {disp8} mov        dword ptr [esi + 0x60], 0x00000000            // 0x007569b9    c7466000000000
_jmp_addr_0x007569c0:    pop                esi                                           // 0x007569c0    5e
                         ret                                                              // 0x007569c1    c3
                         nop                                                              // 0x007569c2    90
                         nop                                                              // 0x007569c3    90
                         nop                                                              // 0x007569c4    90
                         nop                                                              // 0x007569c5    90
                         nop                                                              // 0x007569c6    90
                         nop                                                              // 0x007569c7    90
                         nop                                                              // 0x007569c8    90
                         nop                                                              // 0x007569c9    90
                         nop                                                              // 0x007569ca    90
                         nop                                                              // 0x007569cb    90
                         nop                                                              // 0x007569cc    90
                         nop                                                              // 0x007569cd    90
                         nop                                                              // 0x007569ce    90
                         nop                                                              // 0x007569cf    90
                         push               esi                                           // 0x007569d0    56
                         mov.s              esi, ecx                                      // 0x007569d1    8bf1
                         call               _jmp_addr_0x00756990                          // 0x007569d3    e8b8ffffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x007569d8    8b8ec0000000
                         test               ecx, ecx                                      // 0x007569de    85c9
                         {disp8} je         _jmp_addr_0x007569f5                          // 0x007569e0    7413
                         mov                eax, dword ptr [ecx]                          // 0x007569e2    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x007569e4    ff502c
                         test               eax, eax                                      // 0x007569e7    85c0
                         {disp8} je         _jmp_addr_0x007569f5                          // 0x007569e9    740a
                         {disp32} mov       dword ptr [esi + 0x000000c0], 0x00000000      // 0x007569eb    c786c000000000000000
_jmp_addr_0x007569f5:    pop                esi                                           // 0x007569f5    5e
                         ret                                                              // 0x007569f6    c3
                         nop                                                              // 0x007569f7    90
                         nop                                                              // 0x007569f8    90
                         nop                                                              // 0x007569f9    90
                         nop                                                              // 0x007569fa    90
                         nop                                                              // 0x007569fb    90
                         nop                                                              // 0x007569fc    90
                         nop                                                              // 0x007569fd    90
                         nop                                                              // 0x007569fe    90
                         nop                                                              // 0x007569ff    90
_jmp_addr_0x00756a00:    push               esi                                           // 0x00756a00    56
                         mov.s              esi, ecx                                      // 0x00756a01    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x00756a03    8b8ebc000000
                         test               ecx, ecx                                      // 0x00756a09    85c9
                         {disp8} je         _jmp_addr_0x00756a3d                          // 0x00756a0b    7430
                         mov                eax, dword ptr [ecx]                          // 0x00756a0d    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00756a0f    ff502c
                         cmp                eax, 0x01                                     // 0x00756a12    83f801
                         {disp8} jne        _jmp_addr_0x00756a3d                          // 0x00756a15    7526
                         {disp32} mov       ecx, dword ptr [esi + 0x00000094]             // 0x00756a17    8b8e94000000
                         {disp8} mov        eax, dword ptr [ecx + 0x24]                   // 0x00756a1d    8b4124
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00756a20    8d0480
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00756a23    8d1480
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00d4f6d8]       // 0x00756a26    8b0495d8f6d400
                         test               eax, eax                                      // 0x00756a2d    85c0
                         {disp8} je         _jmp_addr_0x00756a44                          // 0x00756a2f    7413
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x00756a31    8b86bc000000
                         test               byte ptr [eax + 0x24], 0x04                   // 0x00756a37    f6402404
                         {disp8} je         _jmp_addr_0x00756a44                          // 0x00756a3b    7407
_jmp_addr_0x00756a3d:    mov.s              ecx, esi                                      // 0x00756a3d    8bce
                         call               _jmp_addr_0x00751e50                          // 0x00756a3f    e80cb4ffff
_jmp_addr_0x00756a44:    pop                esi                                           // 0x00756a44    5e
                         ret                                                              // 0x00756a45    c3
                         nop                                                              // 0x00756a46    90
                         nop                                                              // 0x00756a47    90
                         nop                                                              // 0x00756a48    90
                         nop                                                              // 0x00756a49    90
                         nop                                                              // 0x00756a4a    90
                         nop                                                              // 0x00756a4b    90
                         nop                                                              // 0x00756a4c    90
                         nop                                                              // 0x00756a4d    90
                         nop                                                              // 0x00756a4e    90
                         nop                                                              // 0x00756a4f    90
                         push               esi                                           // 0x00756a50    56
                         mov.s              esi, ecx                                      // 0x00756a51    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000118]             // 0x00756a53    8b8e18010000
                         test               ecx, ecx                                      // 0x00756a59    85c9
                         {disp8} je         _jmp_addr_0x00756a71                          // 0x00756a5b    7414
                         mov                eax, dword ptr [ecx]                          // 0x00756a5d    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00756a5f    ff502c
                         cmp                eax, 0x01                                     // 0x00756a62    83f801
                         {disp8} je         _jmp_addr_0x00756a71                          // 0x00756a65    740a
                         {disp32} mov       dword ptr [esi + 0x00000118], 0x00000000      // 0x00756a67    c7861801000000000000
_jmp_addr_0x00756a71:    pop                esi                                           // 0x00756a71    5e
                         ret                                                              // 0x00756a72    c3
                         nop                                                              // 0x00756a73    90
                         nop                                                              // 0x00756a74    90
                         nop                                                              // 0x00756a75    90
                         nop                                                              // 0x00756a76    90
                         nop                                                              // 0x00756a77    90
                         nop                                                              // 0x00756a78    90
                         nop                                                              // 0x00756a79    90
                         nop                                                              // 0x00756a7a    90
                         nop                                                              // 0x00756a7b    90
                         nop                                                              // 0x00756a7c    90
                         nop                                                              // 0x00756a7d    90
                         nop                                                              // 0x00756a7e    90
                         nop                                                              // 0x00756a7f    90
                         push               esi                                           // 0x00756a80    56
                         mov.s              esi, ecx                                      // 0x00756a81    8bf1
                         call               _jmp_addr_0x00756990                          // 0x00756a83    e808ffffff
                         mov.s              ecx, esi                                      // 0x00756a88    8bce
                         call               _jmp_addr_0x00756a00                          // 0x00756a8a    e871ffffff
                         pop                esi                                           // 0x00756a8f    5e
                         ret                                                              // 0x00756a90    c3
                         nop                                                              // 0x00756a91    90
                         nop                                                              // 0x00756a92    90
                         nop                                                              // 0x00756a93    90
                         nop                                                              // 0x00756a94    90
                         nop                                                              // 0x00756a95    90
                         nop                                                              // 0x00756a96    90
                         nop                                                              // 0x00756a97    90
                         nop                                                              // 0x00756a98    90
                         nop                                                              // 0x00756a99    90
                         nop                                                              // 0x00756a9a    90
                         nop                                                              // 0x00756a9b    90
                         nop                                                              // 0x00756a9c    90
                         nop                                                              // 0x00756a9d    90
                         nop                                                              // 0x00756a9e    90
                         nop                                                              // 0x00756a9f    90
                         push               esi                                           // 0x00756aa0    56
                         mov.s              esi, ecx                                      // 0x00756aa1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000118]             // 0x00756aa3    8b8e18010000
                         test               ecx, ecx                                      // 0x00756aa9    85c9
                         {disp8} je         _jmp_addr_0x00756ac1                          // 0x00756aab    7414
                         mov                eax, dword ptr [ecx]                          // 0x00756aad    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00756aaf    ff502c
                         cmp                eax, 0x01                                     // 0x00756ab2    83f801
                         {disp8} je         _jmp_addr_0x00756ac1                          // 0x00756ab5    740a
                         {disp32} mov       dword ptr [esi + 0x00000118], 0x00000000      // 0x00756ab7    c7861801000000000000
_jmp_addr_0x00756ac1:    pop                esi                                           // 0x00756ac1    5e
                         ret                                                              // 0x00756ac2    c3
                         nop                                                              // 0x00756ac3    90
                         nop                                                              // 0x00756ac4    90
                         nop                                                              // 0x00756ac5    90
                         nop                                                              // 0x00756ac6    90
                         nop                                                              // 0x00756ac7    90
                         nop                                                              // 0x00756ac8    90
                         nop                                                              // 0x00756ac9    90
                         nop                                                              // 0x00756aca    90
                         nop                                                              // 0x00756acb    90
                         nop                                                              // 0x00756acc    90
                         nop                                                              // 0x00756acd    90
                         nop                                                              // 0x00756ace    90
                         nop                                                              // 0x00756acf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00756ad0    8b442404
                         push               eax                                           // 0x00756ad4    50
                         call               @GetFinalDestPos__6LivingFP9MapCoords@12      // 0x00756ad5    e80657e9ff
                         ret                0x0004                                        // 0x00756ada    c20400
                         nop                                                              // 0x00756add    90
                         nop                                                              // 0x00756ade    90
                         nop                                                              // 0x00756adf    90
                         push               ebx                                           // 0x00756ae0    53
                         push               esi                                           // 0x00756ae1    56
                         mov.s              esi, ecx                                      // 0x00756ae2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00756ae4    8b06
                         push               edi                                           // 0x00756ae6    57
                         call               dword ptr [eax + 0x1c]                        // 0x00756ae7    ff501c
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00756aea    8b7c2414
                         test               edi, edi                                      // 0x00756aee    85ff
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00756af0    8b5c2410
                         {disp8} je         _jmp_addr_0x00756b21                          // 0x00756af4    742b
                         mov                edx, dword ptr [esi]                          // 0x00756af6    8b16
                         mov.s              ecx, esi                                      // 0x00756af8    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x00756afa    ff521c
                         test               eax, eax                                      // 0x00756afd    85c0
                         {disp8} je         _jmp_addr_0x00756b14                          // 0x00756aff    7413
                         mov                eax, dword ptr [esi]                          // 0x00756b01    8b06
                         push               ebx                                           // 0x00756b03    53
                         mov.s              ecx, esi                                      // 0x00756b04    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00756b06    ff501c
                         mov.s              ecx, eax                                      // 0x00756b09    8bc8
                         call               _jmp_addr_0x0064d750                          // 0x00756b0b    e8406cefff
                         test               eax, eax                                      // 0x00756b10    85c0
                         {disp8} je         _jmp_addr_0x00756b21                          // 0x00756b12    740d
_jmp_addr_0x00756b14:    push               0x0                                           // 0x00756b14    6a00
                         push               0x0                                           // 0x00756b16    6a00
                         push               0x0                                           // 0x00756b18    6a00
                         mov.s              ecx, esi                                      // 0x00756b1a    8bce
                         call               _jmp_addr_0x00756000                          // 0x00756b1c    e8dff4ffff
_jmp_addr_0x00756b21:    push               edi                                           // 0x00756b21    57
                         push               ebx                                           // 0x00756b22    53
                         mov.s              ecx, esi                                      // 0x00756b23    8bce
                         call               _jmp_addr_0x006385e0                          // 0x00756b25    e8b61aeeff
                         pop                edi                                           // 0x00756b2a    5f
                         pop                esi                                           // 0x00756b2b    5e
                         pop                ebx                                           // 0x00756b2c    5b
                         ret                0x0008                                        // 0x00756b2d    c20800
                         {disp32} mov       dl, byte ptr [ecx + 0x0000008c]               // 0x00756b30    8a918c000000
                         xor.s              eax, eax                                      // 0x00756b36    33c0
                         cmp                dl, 0x10                                      // 0x00756b38    80fa10
                         sete               al                                            // 0x00756b3b    0f94c0
                         ret                                                              // 0x00756b3e    c3
                         nop                                                              // 0x00756b3f    90
                         push               esi                                           // 0x00756b40    56
                         mov.s              esi, ecx                                      // 0x00756b41    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00756b43    8b06
                         call               dword ptr [eax + 0x11c]                       // 0x00756b45    ff901c010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2238]              // 0x00756b4b    d81d38b28a00
                         fnstsw             ax                                            // 0x00756b51    dfe0
                         test               ah, 0x41                                      // 0x00756b53    f6c441
                         {disp8} jne        _jmp_addr_0x00756b80                          // 0x00756b56    7528
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00756b58    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2238]              // 0x00756b5c    d81d38b28a00
                         fnstsw             ax                                            // 0x00756b62    dfe0
                         test               ah, 0x01                                      // 0x00756b64    f6c401
                         {disp8} je         _jmp_addr_0x00756b80                          // 0x00756b67    7417
                         mov.s              ecx, esi                                      // 0x00756b69    8bce
                         call               _jmp_addr_0x00756bc0                          // 0x00756b6b    e850000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00756b70    8b442408
                         push               eax                                           // 0x00756b74    50
                         mov.s              ecx, esi                                      // 0x00756b75    8bce
                         call               @SetLife__6ObjectFf@12                        // 0x00756b77    e8c435eeff
                         pop                esi                                           // 0x00756b7c    5e
                         ret                0x0004                                        // 0x00756b7d    c20400
_jmp_addr_0x00756b80:    mov                edx, dword ptr [esi]                          // 0x00756b80    8b16
                         mov.s              ecx, esi                                      // 0x00756b82    8bce
                         call               dword ptr [edx + 0x11c]                       // 0x00756b84    ff921c010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2238]              // 0x00756b8a    d81d38b28a00
                         fnstsw             ax                                            // 0x00756b90    dfe0
                         test               ah, 0x01                                      // 0x00756b92    f6c401
                         {disp8} je         _jmp_addr_0x00756baf                          // 0x00756b95    7418
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00756b97    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2238]              // 0x00756b9b    d81d38b28a00
                         fnstsw             ax                                            // 0x00756ba1    dfe0
                         test               ah, 0x41                                      // 0x00756ba3    f6c441
                         {disp8} jne        _jmp_addr_0x00756baf                          // 0x00756ba6    7507
                         mov.s              ecx, esi                                      // 0x00756ba8    8bce
                         call               _jmp_addr_0x00756bd0                          // 0x00756baa    e821000000
_jmp_addr_0x00756baf:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00756baf    8b442408
                         push               eax                                           // 0x00756bb3    50
                         mov.s              ecx, esi                                      // 0x00756bb4    8bce
                         call               @SetLife__6ObjectFf@12                        // 0x00756bb6    e88535eeff
                         pop                esi                                           // 0x00756bbb    5e
                         ret                0x0004                                        // 0x00756bbc    c20400
                         nop                                                              // 0x00756bbf    90
_jmp_addr_0x00756bc0:    mov                eax, dword ptr [ecx]                          // 0x00756bc0    8b01
                         call               dword ptr [eax + 0x48]                        // 0x00756bc2    ff5048
                         test               eax, eax                                      // 0x00756bc5    85c0
                         {disp8} je         _jmp_addr_0x00756bcf                          // 0x00756bc7    7406
                         {disp32} inc       dword ptr [eax + 0x00000714]                  // 0x00756bc9    ff8014070000
_jmp_addr_0x00756bcf:    ret                                                              // 0x00756bcf    c3
_jmp_addr_0x00756bd0:    mov                eax, dword ptr [ecx]                          // 0x00756bd0    8b01
                         call               dword ptr [eax + 0x48]                        // 0x00756bd2    ff5048
                         test               eax, eax                                      // 0x00756bd5    85c0
                         {disp8} je         _jmp_addr_0x00756bdf                          // 0x00756bd7    7406
                         dec                dword ptr [eax + 0x00000714]                  // 0x00756bd9    ff8814070000
_jmp_addr_0x00756bdf:    ret                                                              // 0x00756bdf    c3
@FindChildrenAndOrphanThem__8VillagerFv@4:    push               ebp                                           // 0x00756be0    55
                         push               esi                                           // 0x00756be1    56
                         push               edi                                           // 0x00756be2    57
                         mov.s              edi, ecx                                      // 0x00756be3    8bf9
                         mov                eax, dword ptr [edi]                          // 0x00756be5    8b07
                         call               dword ptr [eax + 0x48]                        // 0x00756be7    ff5048
                         mov.s              ebp, eax                                      // 0x00756bea    8be8
                         test               ebp, ebp                                      // 0x00756bec    85ed
                         {disp8} je         _jmp_addr_0x00756c4e                          // 0x00756bee    745e
                         push               ebx                                           // 0x00756bf0    53
                         {disp32} mov       ebx, dword ptr [ebp + 0x00000754]             // 0x00756bf1    8b9d54070000
                         test               ebx, ebx                                      // 0x00756bf7    85db
                         {disp8} je         _jmp_addr_0x00756c29                          // 0x00756bf9    742e
_jmp_addr_0x00756bfb:    {disp32} mov       esi, dword ptr [ebx + 0x000000a0]             // 0x00756bfb    8bb3a0000000
                         test               esi, esi                                      // 0x00756c01    85f6
                         {disp8} je         _jmp_addr_0x00756c1f                          // 0x00756c03    741a
_jmp_addr_0x00756c05:    cmp                dword ptr [esi + 0x00000100], edi             // 0x00756c05    39be00010000
                         {disp8} jne        _jmp_addr_0x00756c15                          // 0x00756c0b    7508
                         push               edi                                           // 0x00756c0d    57
                         mov.s              ecx, esi                                      // 0x00756c0e    8bce
                         call               @MakeChildOrphaned__8VillagerFP8Villager@12   // 0x00756c10    e8bb140000
_jmp_addr_0x00756c15:    {disp32} mov       esi, dword ptr [esi + 0x000000e4]             // 0x00756c15    8bb6e4000000
                         test               esi, esi                                      // 0x00756c1b    85f6
                         {disp8} jne        _jmp_addr_0x00756c05                          // 0x00756c1d    75e6
_jmp_addr_0x00756c1f:    {disp32} mov       ebx, dword ptr [ebx + 0x0000009c]             // 0x00756c1f    8b9b9c000000
                         test               ebx, ebx                                      // 0x00756c25    85db
                         {disp8} jne        _jmp_addr_0x00756bfb                          // 0x00756c27    75d2
_jmp_addr_0x00756c29:    {disp32} mov       esi, dword ptr [ebp + 0x00000768]             // 0x00756c29    8bb568070000
                         test               esi, esi                                      // 0x00756c2f    85f6
                         pop                ebx                                           // 0x00756c31    5b
                         {disp8} je         _jmp_addr_0x00756c4e                          // 0x00756c32    741a
_jmp_addr_0x00756c34:    cmp                dword ptr [esi + 0x00000100], edi             // 0x00756c34    39be00010000
                         {disp8} jne        _jmp_addr_0x00756c44                          // 0x00756c3a    7508
                         push               edi                                           // 0x00756c3c    57
                         mov.s              ecx, esi                                      // 0x00756c3d    8bce
                         call               @MakeChildOrphaned__8VillagerFP8Villager@12   // 0x00756c3f    e88c140000
_jmp_addr_0x00756c44:    {disp32} mov       esi, dword ptr [esi + 0x000000e4]             // 0x00756c44    8bb6e4000000
                         test               esi, esi                                      // 0x00756c4a    85f6
                         {disp8} jne        _jmp_addr_0x00756c34                          // 0x00756c4c    75e6
_jmp_addr_0x00756c4e:    pop                edi                                           // 0x00756c4e    5f
                         pop                esi                                           // 0x00756c4f    5e
                         pop                ebp                                           // 0x00756c50    5d
                         ret                                                              // 0x00756c51    c3
                         nop                                                              // 0x00756c52    90
                         nop                                                              // 0x00756c53    90
                         nop                                                              // 0x00756c54    90
                         nop                                                              // 0x00756c55    90
                         nop                                                              // 0x00756c56    90
                         nop                                                              // 0x00756c57    90
                         nop                                                              // 0x00756c58    90
                         nop                                                              // 0x00756c59    90
                         nop                                                              // 0x00756c5a    90
                         nop                                                              // 0x00756c5b    90
                         nop                                                              // 0x00756c5c    90
                         nop                                                              // 0x00756c5d    90
                         nop                                                              // 0x00756c5e    90
                         nop                                                              // 0x00756c5f    90
                         xor.s              eax, eax                                      // 0x00756c60    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x0000008c]               // 0x00756c62    8a818c000000
                         mov.s              ecx, eax                                      // 0x00756c68    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x00756c6a    8d0449
                         shl                eax, 3                                        // 0x00756c6d    c1e003
                         sub.s              eax, ecx                                      // 0x00756c70    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00756c72    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9e8c]       // 0x00756c75    8b048d8c9edb00
                         ret                                                              // 0x00756c7c    c3
                         nop                                                              // 0x00756c7d    90
                         nop                                                              // 0x00756c7e    90
                         nop                                                              // 0x00756c7f    90
_globl_ct_0x00756c80:    {disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]          // 0x00756c80    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00756c86    b001
                         test               al, cl                                        // 0x00756c88    84c8
                         {disp8} jne        _jmp_addr_0x00756c94                          // 0x00756c8a    7508
                         or.s               cl, al                                        // 0x00756c8c    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x5e6934], cl          // 0x00756c8e    880d34c9fa00
_jmp_addr_0x00756c94:    {disp32} jmp       _jmp_addr_0x00756ca0                          // 0x00756c94    e907000000
                         nop                                                              // 0x00756c99    90
                         nop                                                              // 0x00756c9a    90
                         nop                                                              // 0x00756c9b    90
                         nop                                                              // 0x00756c9c    90
                         nop                                                              // 0x00756c9d    90
                         nop                                                              // 0x00756c9e    90
                         nop                                                              // 0x00756c9f    90
_jmp_addr_0x00756ca0:    push               0x00407870                                    // 0x00756ca0    6870784000
                         call               _atexit@4                                     // 0x00756ca5    e8e7ea0600
                         pop                ecx                                           // 0x00756caa    59
                         ret                                                              // 0x00756cab    c3
                         nop                                                              // 0x00756cac    90
                         nop                                                              // 0x00756cad    90
                         nop                                                              // 0x00756cae    90
                         nop                                                              // 0x00756caf    90
_globl_ct_0x00756cb0:    {disp32} jmp       _jmp_addr_0x00756cc0                          // 0x00756cb0    e90b000000
                         nop                                                              // 0x00756cb5    90
                         nop                                                              // 0x00756cb6    90
                         nop                                                              // 0x00756cb7    90
                         nop                                                              // 0x00756cb8    90
                         nop                                                              // 0x00756cb9    90
                         nop                                                              // 0x00756cba    90
                         nop                                                              // 0x00756cbb    90
                         nop                                                              // 0x00756cbc    90
                         nop                                                              // 0x00756cbd    90
                         nop                                                              // 0x00756cbe    90
                         nop                                                              // 0x00756cbf    90
_jmp_addr_0x00756cc0:    {disp32} mov       dword ptr [data_bytes + 0x3f3dc4], 0x3e000000 // 0x00756cc0    c705c49ddb000000003e
                         ret                                                              // 0x00756cca    c3
                         nop                                                              // 0x00756ccb    90
                         nop                                                              // 0x00756ccc    90
                         nop                                                              // 0x00756ccd    90
                         nop                                                              // 0x00756cce    90
                         nop                                                              // 0x00756ccf    90
_globl_ct_0x00756cd0:    {disp32} jmp       _jmp_addr_0x00756ce0                          // 0x00756cd0    e90b000000
                         nop                                                              // 0x00756cd5    90
                         nop                                                              // 0x00756cd6    90
                         nop                                                              // 0x00756cd7    90
                         nop                                                              // 0x00756cd8    90
                         nop                                                              // 0x00756cd9    90
                         nop                                                              // 0x00756cda    90
                         nop                                                              // 0x00756cdb    90
                         nop                                                              // 0x00756cdc    90
                         nop                                                              // 0x00756cdd    90
                         nop                                                              // 0x00756cde    90
                         nop                                                              // 0x00756cdf    90
_jmp_addr_0x00756ce0:    {disp32} fld       dword ptr [rdata_bytes + 0xf1928]             // 0x00756ce0    d90528a99900
                         {disp32} fmul      dword ptr [rdata_bytes + 0x13b4]              // 0x00756ce6    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3f3dc8]             // 0x00756cec    d91dc89ddb00
                         ret                                                              // 0x00756cf2    c3
                         nop                                                              // 0x00756cf3    90
                         nop                                                              // 0x00756cf4    90
                         nop                                                              // 0x00756cf5    90
                         nop                                                              // 0x00756cf6    90
                         nop                                                              // 0x00756cf7    90
                         nop                                                              // 0x00756cf8    90
                         nop                                                              // 0x00756cf9    90
                         nop                                                              // 0x00756cfa    90
                         nop                                                              // 0x00756cfb    90
                         nop                                                              // 0x00756cfc    90
                         nop                                                              // 0x00756cfd    90
                         nop                                                              // 0x00756cfe    90
                         nop                                                              // 0x00756cff    90
_globl_ct_0x00756d00:    {disp32} jmp       _jmp_addr_0x00756d10                          // 0x00756d00    e90b000000
                         nop                                                              // 0x00756d05    90
                         nop                                                              // 0x00756d06    90
                         nop                                                              // 0x00756d07    90
                         nop                                                              // 0x00756d08    90
                         nop                                                              // 0x00756d09    90
                         nop                                                              // 0x00756d0a    90
                         nop                                                              // 0x00756d0b    90
                         nop                                                              // 0x00756d0c    90
                         nop                                                              // 0x00756d0d    90
                         nop                                                              // 0x00756d0e    90
                         nop                                                              // 0x00756d0f    90
_jmp_addr_0x00756d10:    {disp32} fld       dword ptr [rdata_bytes + 0xf1930]             // 0x00756d10    d90530a99900
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf192c]             // 0x00756d16    d80d2ca99900
                         {disp32} fstp      dword ptr [data_bytes + 0x3f3dc0]             // 0x00756d1c    d91dc09ddb00
                         ret                                                              // 0x00756d22    c3
                         nop                                                              // 0x00756d23    90
                         nop                                                              // 0x00756d24    90
                         nop                                                              // 0x00756d25    90
                         nop                                                              // 0x00756d26    90
                         nop                                                              // 0x00756d27    90
                         nop                                                              // 0x00756d28    90
                         nop                                                              // 0x00756d29    90
                         nop                                                              // 0x00756d2a    90
                         nop                                                              // 0x00756d2b    90
                         nop                                                              // 0x00756d2c    90
                         nop                                                              // 0x00756d2d    90
                         nop                                                              // 0x00756d2e    90
                         nop                                                              // 0x00756d2f    90
                         sub                esp, 0x14                                     // 0x00756d30    83ec14
                         push               ebp                                           // 0x00756d33    55
                         push               esi                                           // 0x00756d34    56
                         push               edi                                           // 0x00756d35    57
                         mov.s              edi, ecx                                      // 0x00756d36    8bf9
                         {disp8} lea        eax, dword ptr [edi + 0x14]                   // 0x00756d38    8d4714
                         mov                ecx, dword ptr [eax]                          // 0x00756d3b    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00756d3d    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00756d40    8b4008
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00756d43    894c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00756d47    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00756d4b    8944241c
                         mov                ebp, 0x00000009                               // 0x00756d4f    bd09000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000001            // 0x00756d54    c744241001000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000001            // 0x00756d5c    c744240c01000000
_jmp_addr_0x00756d64:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00756d64    8d4c2414
                         call               @GetFirstObjectFixed__9MapCoordsCFv@4         // 0x00756d68    e843c7eaff
                         mov.s              esi, eax                                      // 0x00756d6d    8bf0
                         test               esi, esi                                      // 0x00756d6f    85f6
                         {disp8} je         _jmp_addr_0x00756dc6                          // 0x00756d71    7453
_jmp_addr_0x00756d73:    cmp.s              esi, edi                                      // 0x00756d73    3bf7
                         {disp8} je         _jmp_addr_0x00756db4                          // 0x00756d75    743d
                         mov                edx, dword ptr [esi]                          // 0x00756d77    8b16
                         mov.s              ecx, esi                                      // 0x00756d79    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x00756d7b    ff522c
                         test               eax, eax                                      // 0x00756d7e    85c0
                         {disp8} je         _jmp_addr_0x00756db4                          // 0x00756d80    7432
                         mov                eax, dword ptr [esi]                          // 0x00756d82    8b06
                         mov.s              ecx, esi                                      // 0x00756d84    8bce
                         call               dword ptr [eax + 0x208]                       // 0x00756d86    ff9008020000
                         test               eax, eax                                      // 0x00756d8c    85c0
                         {disp8} je         _jmp_addr_0x00756db4                          // 0x00756d8e    7424
                         push               0x0                                           // 0x00756d90    6a00
                         push               0x009c7fa0                                    // 0x00756d92    68a07f9c00
                         push               0x009c7f50                                    // 0x00756d97    68507f9c00
                         push               0x0                                           // 0x00756d9c    6a00
                         push               esi                                           // 0x00756d9e    56
                         call               _jmp_addr_0x007c5a19                          // 0x00756d9f    e875ec0600
                         add                esp, 0x14                                     // 0x00756da4    83c414
                         push               eax                                           // 0x00756da7    50
                         mov.s              ecx, edi                                      // 0x00756da8    8bcf
                         call               _jmp_addr_0x00757180                          // 0x00756daa    e8d1030000
                         cmp                eax, 0x01                                     // 0x00756daf    83f801
                         {disp8} je         _jmp_addr_0x00756dfc                          // 0x00756db2    7448
_jmp_addr_0x00756db4:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00756db4    8d4c2414
                         push               ecx                                           // 0x00756db8    51
                         mov.s              ecx, esi                                      // 0x00756db9    8bce
                         call               @GetMapChild__6ObjectFRC9MapCoords@12         // 0x00756dbb    e8a017eeff
                         mov.s              esi, eax                                      // 0x00756dc0    8bf0
                         test               esi, esi                                      // 0x00756dc2    85f6
                         {disp8} jne        _jmp_addr_0x00756d73                          // 0x00756dc4    75ad
_jmp_addr_0x00756dc6:    {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00756dc6    8d54240c
                         push               edx                                           // 0x00756dca    52
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00756dcb    8d442414
                         push               eax                                           // 0x00756dcf    50
                         dec                ebp                                           // 0x00756dd0    4d
                         call               _Spiral__6GUtilsFRlRl                         // 0x00756dd1    e80a6affff
                         add                esp, 0x08                                     // 0x00756dd6    83c408
                         push               eax                                           // 0x00756dd9    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00756dda    8d4c2418
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12            // 0x00756dde    e88de6eaff
                         test               ebp, ebp                                      // 0x00756de3    85ed
                         {disp32} jne       _jmp_addr_0x00756d64                          // 0x00756de5    0f8579ffffff
                         mov                edx, dword ptr [edi]                          // 0x00756deb    8b17
                         mov.s              ecx, edi                                      // 0x00756ded    8bcf
                         call               dword ptr [edx + 0x8c8]                       // 0x00756def    ff92c8080000
                         pop                edi                                           // 0x00756df5    5f
                         pop                esi                                           // 0x00756df6    5e
                         pop                ebp                                           // 0x00756df7    5d
                         add                esp, 0x14                                     // 0x00756df8    83c414
                         ret                                                              // 0x00756dfb    c3
_jmp_addr_0x00756dfc:    pop                edi                                           // 0x00756dfc    5f
                         pop                esi                                           // 0x00756dfd    5e
                         mov                eax, 0x00000001                               // 0x00756dfe    b801000000
                         pop                ebp                                           // 0x00756e03    5d
                         add                esp, 0x14                                     // 0x00756e04    83c414
                         ret                                                              // 0x00756e07    c3
                         nop                                                              // 0x00756e08    90
                         nop                                                              // 0x00756e09    90
                         nop                                                              // 0x00756e0a    90
                         nop                                                              // 0x00756e0b    90
                         nop                                                              // 0x00756e0c    90
                         nop                                                              // 0x00756e0d    90
                         nop                                                              // 0x00756e0e    90
                         nop                                                              // 0x00756e0f    90
                         mov                eax, dword ptr [ecx]                          // 0x00756e10    8b01
                         jmp                dword ptr [eax + 0x8c8]                       // 0x00756e12    ffa0c8080000
                         nop                                                              // 0x00756e18    90
                         nop                                                              // 0x00756e19    90
                         nop                                                              // 0x00756e1a    90
                         nop                                                              // 0x00756e1b    90
                         nop                                                              // 0x00756e1c    90
                         nop                                                              // 0x00756e1d    90
                         nop                                                              // 0x00756e1e    90
                         nop                                                              // 0x00756e1f    90
                         xor.s              eax, eax                                      // 0x00756e20    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x000000f2]               // 0x00756e22    8a81f2000000
                         dec                eax                                           // 0x00756e28    48
                         cmp                eax, 0x09                                     // 0x00756e29    83f809
                         {disp8} ja         _jmp_addr_0x00756e53                          // 0x00756e2c    7725
                         jmp                dword ptr [eax*4 + 0x756e58]                  // 0x00756e2e    ff2485586e7500
                         mov                eax, 0x000000ad                               // 0x00756e35    b8ad000000
                         ret                                                              // 0x00756e3a    c3
                         mov                eax, 0x000000af                               // 0x00756e3b    b8af000000
                         ret                                                              // 0x00756e40    c3
                         mov                eax, 0x000000ae                               // 0x00756e41    b8ae000000
                         ret                                                              // 0x00756e46    c3
                         mov                eax, 0x000000b3                               // 0x00756e47    b8b3000000
                         ret                                                              // 0x00756e4c    c3
                         mov                eax, 0x000000ac                               // 0x00756e4d    b8ac000000
                         ret                                                              // 0x00756e52    c3
_jmp_addr_0x00756e53:    xor.s              eax, eax                                      // 0x00756e53    33c0
                         ret                                                              // 0x00756e55    c3

// Snippet: db, [0x00756e56, 0x00756e58)
.byte 0x8b, 0xff                  // 0x00756e56

// Snippet: jmptbl, [0x00756e58, 0x00756e80)
.byte 0x35, 0x6e, 0x75, 0x00      // 0x00756e58
.byte 0x3b, 0x6e, 0x75, 0x00      // 0x00756e5c
.byte 0x41, 0x6e, 0x75, 0x00      // 0x00756e60
.byte 0x4d, 0x6e, 0x75, 0x00      // 0x00756e64
.byte 0x47, 0x6e, 0x75, 0x00      // 0x00756e68
.byte 0x53, 0x6e, 0x75, 0x00      // 0x00756e6c
.byte 0x4d, 0x6e, 0x75, 0x00      // 0x00756e70
.byte 0x4d, 0x6e, 0x75, 0x00      // 0x00756e74
.byte 0x53, 0x6e, 0x75, 0x00      // 0x00756e78
.byte 0x4d, 0x6e, 0x75, 0x00      // 0x00756e7c

