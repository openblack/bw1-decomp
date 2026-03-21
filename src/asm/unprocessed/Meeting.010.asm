.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl _globl_ct_0x00605ff0
.globl _globl_ct_0x00606020
.globl ?GetTown@Meeting@@UAEPAVTown@@XZ
.globl ?RemoveDance@Meeting@@UAEXXZ
.globl ??_GMeeting@@UAEPAXI@Z
.globl ?ToBeDeleted@Meeting@@UAEXH@Z
.globl ?GetPlayer@Meeting@@UAEPAVGPlayer@@XZ


_globl_ct_0x00605ff0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00605ff0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00605ff6    b001
                         test               al, cl                                        // 0x00605ff8    84c8
                         {disp8} jne        .Lbl_addr_0x00606004                          // 0x00605ffa    7508
                         or.s               cl, al                                        // 0x00605ffc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00605ffe    880d34c9fa00
.Lbl_addr_0x00606004:    {disp32} jmp       .Lbl_addr_0x00606010                          // 0x00606004    e907000000
                         nop                                                              // 0x00606009    90
                         nop                                                              // 0x0060600a    90
                         nop                                                              // 0x0060600b    90
                         nop                                                              // 0x0060600c    90
                         nop                                                              // 0x0060600d    90
                         nop                                                              // 0x0060600e    90
                         nop                                                              // 0x0060600f    90
.Lbl_addr_0x00606010:    push               0x00407870                                    // 0x00606010    6870784000
                         call               _atexit                                       // 0x00606015    e877f71b00
                         pop                ecx                                           // 0x0060601a    59
                         ret                                                              // 0x0060601b    c3
                         nop                                                              // 0x0060601c    90
                         nop                                                              // 0x0060601d    90
                         nop                                                              // 0x0060601e    90
                         nop                                                              // 0x0060601f    90
_globl_ct_0x00606020:    {disp32} jmp       .Lbl_addr_0x00606030                          // 0x00606020    e90b000000
                         nop                                                              // 0x00606025    90
                         nop                                                              // 0x00606026    90
                         nop                                                              // 0x00606027    90
                         nop                                                              // 0x00606028    90
                         nop                                                              // 0x00606029    90
                         nop                                                              // 0x0060602a    90
                         nop                                                              // 0x0060602b    90
                         nop                                                              // 0x0060602c    90
                         nop                                                              // 0x0060602d    90
                         nop                                                              // 0x0060602e    90
                         nop                                                              // 0x0060602f    90
.Lbl_addr_0x00606030:    {disp32} fld       dword ptr [rdata_bytes + 0x87088]             // 0x00606030    d90588009300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87084]             // 0x00606036    d80d84009300
                         {disp32} fstp      dword ptr [data_bytes + 0x37233c]             // 0x0060603c    d91d3c83d300
                         ret                                                              // 0x00606042    c3
                         nop                                                              // 0x00606043    90
                         nop                                                              // 0x00606044    90
                         nop                                                              // 0x00606045    90
                         nop                                                              // 0x00606046    90
                         nop                                                              // 0x00606047    90
                         nop                                                              // 0x00606048    90
                         nop                                                              // 0x00606049    90
                         nop                                                              // 0x0060604a    90
                         nop                                                              // 0x0060604b    90
                         nop                                                              // 0x0060604c    90
                         nop                                                              // 0x0060604d    90
                         nop                                                              // 0x0060604e    90
                         nop                                                              // 0x0060604f    90
                         push               ebx                                           // 0x00606050    53
                         push               esi                                           // 0x00606051    56
                         push               edi                                           // 0x00606052    57
                         mov.s              esi, ecx                                      // 0x00606053    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x00606055    e8b699f6ff
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x0060605a    8d7e14
                         mov.s              ecx, edi                                      // 0x0060605d    8bcf
                         call               ??0MapCoords@@QAE@ABU0@@Z                     // 0x0060605f    e8fcbae3ff
                         xor.s              ebx, ebx                                      // 0x00606064    33db
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x00606066    895e20
                         mov.s              ecx, esi                                      // 0x00606069    8bce
                         mov                dword ptr [esi], 0x008c31a0                   // 0x0060606b    c706a0318c00
                         call               ?SetToZero@GameThingWithPos@@QAEXXZ           // 0x00606071    e85aa5f6ff
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00606076    8b442418
                         {disp8} mov        dword ptr [esi + 0x38], ebx                   // 0x0060607a    895e38
                         {disp8} mov        dword ptr [esi + 0x3c], ebx                   // 0x0060607d    895e3c
                         {disp8} mov        dword ptr [esi + 0x30], ebx                   // 0x00606080    895e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x00606083    895e2c
                         {disp8} mov        byte ptr [esi + 0x28], bl                     // 0x00606086    885e28
                         mov                dword ptr [esi], 0x00930090                   // 0x00606089    c70690009300
                         {disp8} mov        dword ptr [esi + 0x34], ebx                   // 0x0060608f    895e34
                         mov                edx, dword ptr [eax]                          // 0x00606092    8b10
                         mov.s              ecx, edi                                      // 0x00606094    8bcf
                         mov                dword ptr [ecx], edx                          // 0x00606096    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00606098    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0060609b    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0060609e    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x006060a1    894108
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x006060a4    8b442420
                         {disp8} mov        byte ptr [esi + 0x28], bl                     // 0x006060a8    885e28
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006060ab    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x006060b1    8b91405a2000
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x006060b7    8b4c241c
                         {disp8} mov        dword ptr [esi + 0x30], eax                   // 0x006060bb    894630
                         cmp                dword ptr [esp + 0x10], ebx                   // 0x006060be    395c2410
                         {disp8} mov        dword ptr [esi + 0x2c], edx                   // 0x006060c2    89562c
                         {disp8} mov        dword ptr [esi + 0x34], ecx                   // 0x006060c5    894e34
                         {disp8} je         .Lbl_addr_0x0060610f                          // 0x006060c8    7445
                         push               0x14                                          // 0x006060ca    6a14
                         push               0x00bf41e0                                    // 0x006060cc    68e041bf00
                         push               0x0000012c                                    // 0x006060d1    682c010000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x006060d6    e81506e3ff
                         add                esp, 0x0c                                     // 0x006060db    83c40c
                         cmp.s              eax, ebx                                      // 0x006060de    3bc3
                         {disp8} je         .Lbl_addr_0x0060610a                          // 0x006060e0    7428
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006060e2    8b542414
                         and                edx, 0x000000ff                               // 0x006060e6    81e2ff000000
                         push               ebx                                           // 0x006060ec    53
                         lea                ecx, dword ptr [edx + edx * 0x4]              // 0x006060ed    8d0c92
                         push               ebx                                           // 0x006060f0    53
                         lea                edx, dword ptr [edx + ecx * 0x2]              // 0x006060f1    8d144a
                         push               ebx                                           // 0x006060f4    53
                         shl                edx, 4                                        // 0x006060f5    c1e204
                         push               esi                                           // 0x006060f8    56
                         add                edx, OFFSET _GDanceInfo_ARRAY_00cc4b80        // 0x006060f9    81c2804bcc00
                         push               edx                                           // 0x006060ff    52
                         push               edi                                           // 0x00606100    57
                         mov.s              ecx, eax                                      // 0x00606101    8bc8
                         call               @__ct__5DanceFRC9MapCoordsPC10GDanceInfoP16GameThingWithPosUliP4Town@32                          // 0x00606103    e89855f0ff
                         {disp8} jmp        .Lbl_addr_0x0060610c                          // 0x00606108    eb02
.Lbl_addr_0x0060610a:    xor.s              eax, eax                                      // 0x0060610a    33c0
.Lbl_addr_0x0060610c:    {disp8} mov        dword ptr [esi + 0x38], eax                   // 0x0060610c    894638
.Lbl_addr_0x0060610f:    {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x0060610f    8b4634
                         {disp32} mov       ecx, dword ptr [eax + 0x00000760]             // 0x00606112    8b8860070000
                         add                eax, 0x00000760                               // 0x00606118    0560070000
                         {disp8} mov        dword ptr [esi + 0x3c], ecx                   // 0x0060611d    894e3c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00606120    8b4804
                         inc                ecx                                           // 0x00606123    41
                         mov                dword ptr [eax], esi                          // 0x00606124    8930
                         pop                edi                                           // 0x00606126    5f
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00606127    894804
                         mov.s              eax, esi                                      // 0x0060612a    8bc6
                         pop                esi                                           // 0x0060612c    5e
                         pop                ebx                                           // 0x0060612d    5b
                         ret                0x0014                                        // 0x0060612e    c21400
                         nop                                                              // 0x00606131    90
                         nop                                                              // 0x00606132    90
                         nop                                                              // 0x00606133    90
                         nop                                                              // 0x00606134    90
                         nop                                                              // 0x00606135    90
                         nop                                                              // 0x00606136    90
                         nop                                                              // 0x00606137    90
                         nop                                                              // 0x00606138    90
                         nop                                                              // 0x00606139    90
                         nop                                                              // 0x0060613a    90
                         nop                                                              // 0x0060613b    90
                         nop                                                              // 0x0060613c    90
                         nop                                                              // 0x0060613d    90
                         nop                                                              // 0x0060613e    90
                         nop                                                              // 0x0060613f    90
?GetTown@Meeting@@UAEPAVTown@@XZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x34]                   // 0x00606140    8b4134
                         ret                                                              // 0x00606143    c3
                         nop                                                              // 0x00606144    90
                         nop                                                              // 0x00606145    90
                         nop                                                              // 0x00606146    90
                         nop                                                              // 0x00606147    90
                         nop                                                              // 0x00606148    90
                         nop                                                              // 0x00606149    90
                         nop                                                              // 0x0060614a    90
                         nop                                                              // 0x0060614b    90
                         nop                                                              // 0x0060614c    90
                         nop                                                              // 0x0060614d    90
                         nop                                                              // 0x0060614e    90
                         nop                                                              // 0x0060614f    90
?RemoveDance@Meeting@@UAEXXZ:
                         {disp8} mov        dword ptr [ecx + 0x38], 0x00000000            // 0x00606150    c7413800000000
                         ret                                                              // 0x00606157    c3
                         nop                                                              // 0x00606158    90
                         nop                                                              // 0x00606159    90
                         nop                                                              // 0x0060615a    90
                         nop                                                              // 0x0060615b    90
                         nop                                                              // 0x0060615c    90
                         nop                                                              // 0x0060615d    90
                         nop                                                              // 0x0060615e    90
                         nop                                                              // 0x0060615f    90
??_GMeeting@@UAEPAXI@Z:
                         push               esi                                           // 0x00606160    56
                         mov.s              esi, ecx                                      // 0x00606161    8bf1
                         call               _jmp_addr_0x0056fa80                          // 0x00606163    e81899f6ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00606168    f644240801
                         {disp8} je         .Lbl_addr_0x0060617a                          // 0x0060616d    740b
                         push               0x40                                          // 0x0060616f    6a40
                         push               esi                                           // 0x00606171    56
                         call               ??3Base@@SAXPAXI@Z                          // 0x00606172    e8f907e3ff
                         add                esp, 0x08                                     // 0x00606177    83c408
.Lbl_addr_0x0060617a:    mov.s              eax, esi                                      // 0x0060617a    8bc6
                         pop                esi                                           // 0x0060617c    5e
                         ret                0x0004                                        // 0x0060617d    c20400
?ToBeDeleted@Meeting@@UAEXH@Z:
                         push               esi                                           // 0x00606180    56
                         mov.s              esi, ecx                                      // 0x00606181    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x38]                   // 0x00606183    8b4e38
                         mov                eax, dword ptr [ecx]                          // 0x00606186    8b01
                         push               0x0                                           // 0x00606188    6a00
                         call               dword ptr [eax + 0xc]                         // 0x0060618a    ff500c
                         mov                edx, dword ptr [esi]                          // 0x0060618d    8b16
                         mov.s              ecx, esi                                      // 0x0060618f    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00606191    ff5248
                         {disp32} mov       ecx, dword ptr [eax + 0x00000760]             // 0x00606194    8b8860070000
                         add                eax, 0x00000760                               // 0x0060619a    0560070000
                         cmp.s              ecx, esi                                      // 0x0060619f    3bce
                         {disp8} jne        .Lbl_addr_0x006061aa                          // 0x006061a1    7507
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                   // 0x006061a3    8b4e3c
                         mov                dword ptr [eax], ecx                          // 0x006061a6    8908
                         {disp8} jmp        .Lbl_addr_0x006061d1                          // 0x006061a8    eb27
.Lbl_addr_0x006061aa:    test               ecx, ecx                                      // 0x006061aa    85c9
                         {disp8} je         .Lbl_addr_0x006061db                          // 0x006061ac    742d
.Lbl_addr_0x006061ae:    {disp8} mov        edx, dword ptr [ecx + 0x3c]                   // 0x006061ae    8b513c
                         cmp.s              edx, esi                                      // 0x006061b1    3bd6
                         {disp8} je         .Lbl_addr_0x006061cb                          // 0x006061b3    7416
                         mov.s              ecx, edx                                      // 0x006061b5    8bca
                         test               ecx, ecx                                      // 0x006061b7    85c9
                         {disp8} jne        .Lbl_addr_0x006061ae                          // 0x006061b9    75f3
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006061bb    8b442408
                         push               eax                                           // 0x006061bf    50
                         mov.s              ecx, esi                                      // 0x006061c0    8bce
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x006061c2    e8399cf6ff
                         pop                esi                                           // 0x006061c7    5e
                         ret                0x0004                                        // 0x006061c8    c20400
.Lbl_addr_0x006061cb:    {disp8} mov        edx, dword ptr [esi + 0x3c]                   // 0x006061cb    8b563c
                         {disp8} mov        dword ptr [ecx + 0x3c], edx                   // 0x006061ce    89513c
.Lbl_addr_0x006061d1:    dec                dword ptr [eax + 0x04]                        // 0x006061d1    ff4804
                         {disp8} mov        dword ptr [esi + 0x3c], 0x00000000            // 0x006061d4    c7463c00000000
.Lbl_addr_0x006061db:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006061db    8b442408
                         push               eax                                           // 0x006061df    50
                         mov.s              ecx, esi                                      // 0x006061e0    8bce
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x006061e2    e8199cf6ff
                         pop                esi                                           // 0x006061e7    5e
                         ret                0x0004                                        // 0x006061e8    c20400
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x006061eb    e809b6dfff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006061f0    a15c19d000
                         {disp8} mov        edx, dword ptr [ecx + 0x2c]                   // 0x006061f5    8b512c
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]             // 0x006061f8    8b80405a2000
                         sub.s              eax, edx                                      // 0x006061fe    2bc2
                         xor.s              edx, edx                                      // 0x00606200    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x28]                     // 0x00606202    8a5128
                         sub                edx, 0x00                                     // 0x00606205    83ea00
                         {disp8} je         .Lbl_addr_0x0060621a                          // 0x00606208    7410
                         dec                edx                                           // 0x0060620a    4a
                         {disp8} jne        .Lbl_addr_0x00606223                          // 0x0060620b    7516
                         mov                edx, dword ptr [ecx]                          // 0x0060620d    8b11
                         push               0x0                                           // 0x0060620f    6a00
                         call               dword ptr [edx + 0xc]                         // 0x00606211    ff520c
                         mov                eax, 0x00000003                               // 0x00606214    b803000000
                         ret                                                              // 0x00606219    c3
.Lbl_addr_0x0060621a:    cmp                eax, dword ptr [ecx + 0x30]                   // 0x0060621a    3b4130
                         {disp8} jbe        .Lbl_addr_0x00606223                          // 0x0060621d    7604
                         {disp8} mov        byte ptr [ecx + 0x28], 0x01                   // 0x0060621f    c6412801
.Lbl_addr_0x00606223:    mov                eax, 0x00000001                               // 0x00606223    b801000000
                         ret                                                              // 0x00606228    c3
                         nop                                                              // 0x00606229    90
                         nop                                                              // 0x0060622a    90
                         nop                                                              // 0x0060622b    90
                         nop                                                              // 0x0060622c    90
                         nop                                                              // 0x0060622d    90
                         nop                                                              // 0x0060622e    90
                         nop                                                              // 0x0060622f    90
?GetPlayer@Meeting@@UAEPAVGPlayer@@XZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x34]                   // 0x00606230    8b4934
                         mov                eax, dword ptr [ecx]                          // 0x00606233    8b01
                         {disp8} jmp        dword ptr [eax + 0x1c]                        // 0x00606235    ff601c
                         nop                                                              // 0x00606238    90
                         nop                                                              // 0x00606239    90
                         nop                                                              // 0x0060623a    90
                         nop                                                              // 0x0060623b    90
                         nop                                                              // 0x0060623c    90
                         nop                                                              // 0x0060623d    90
                         nop                                                              // 0x0060623e    90
                         nop                                                              // 0x0060623f    90
