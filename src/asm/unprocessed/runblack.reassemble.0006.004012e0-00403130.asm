.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004012a4
.extern _jmp_addr_0x004012b4
.extern @Init__5AbodeFiUlUl@20
.extern _jmp_addr_0x00403190
.extern _jmp_addr_0x00403d20
.extern @CreateAbodeSurroundingObjects__5AbodeFv@4
.extern _jmp_addr_0x00405890
.extern @FindNearestDrinkingWater__5AbodeFf@12
.extern _jmp_addr_0x00436960
.extern _jmp_addr_0x00436970
.extern _jmp_addr_0x004e3ee0
.extern _jmp_addr_0x0050aad0
.extern _Create__5FieldFRC9MapCoordsPC14GFieldTypeInfoP4Townffi
.extern @__ct__13MultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfofffi@32
.extern _jmp_addr_0x0052e280
.extern _jmp_addr_0x0052e2b0
.extern _jmp_addr_0x005315a0
.extern _jmp_addr_0x005702b0
.extern _jmp_addr_0x00595d70
.extern _jmp_addr_0x006366a0
.extern _jmp_addr_0x00637cc0
.extern _jmp_addr_0x00638cb0
.extern _jmp_addr_0x007228d0
.extern _jmp_addr_0x00732770
.extern _jmp_addr_0x00732d60
.extern _jmp_addr_0x007374c0
.extern @AddStructureToTown__4TownFP13MultiMapFixed@12
.extern _jmp_addr_0x00739a60
.extern _Create__10TownCentreFRC9MapCoordsPC10GAbodeInfoP4Townfffi
.extern _jmp_addr_0x0076d4c0
.extern _Create__6WonderFRC9MapCoordsPC10GAbodeInfoP4Townfffi
.extern _jmp_addr_0x00779590
.extern  ___dl__FPv
.extern _jmp_addr_0x007f70e0
.extern _jmp_addr_0x007f8d10
.extern @SetInverse__8LHMatrixFRC8LHMatrix@12
.extern _jmp_addr_0x007fb810
.extern _jmp_addr_0x007fbac0

.globl @__ct__5AbodeFRC9MapCoordsPC10GAbodeInfoP4Townfffi@36
.globl _jmp_addr_0x004017f9
.globl _jmp_addr_0x00401879
.globl _jmp_addr_0x00402b60
.globl @SetZero__5AbodeFv@4
.globl _jmp_addr_0x00402c10
.globl _jmp_addr_0x00402c60
.globl _Create__5AbodeFRC9MapCoordsPC10GAbodeInfoP4TownffUlUlfii

start_0x004012e0_0x00403130:
// Snippet: asm, [0x004012e0, 0x00403097)
                         {disp32} mov       cl, byte ptr [data_bytes + 0x276680]     // 0x004012e0    8a0d80c6c300
                         mov                al, 0x01                                 // 0x004012e6    b001
                         test               al, cl                                   // 0x004012e8    84c8
                         {disp8} jne        _jmp_addr_0x00401312                     // 0x004012ea    7526
                         push               esi                                      // 0x004012ec    56
                         or.s               cl, al                                   // 0x004012ed    0ac8
                         push               edi                                      // 0x004012ef    57
                         {disp32} mov       byte ptr [data_bytes + 0x276680], cl     // 0x004012f0    880d80c6c300
                         mov                esi, 0x00c4cc68                          // 0x004012f6    be68ccc400
                         mov                edi, 0x00000093                          // 0x004012fb    bf93000000
_jmp_addr_0x00401300:    sub                esi, 0x000001c8                          // 0x00401300    81eec8010000
                         mov.s              ecx, esi                                 // 0x00401306    8bce
                         call               _jmp_addr_0x00436960                     // 0x00401308    e853560300
                         dec                edi                                      // 0x0040130d    4f
                         {disp8} jne        _jmp_addr_0x00401300                     // 0x0040130e    75f0
                         pop                edi                                      // 0x00401310    5f
                         pop                esi                                      // 0x00401311    5e
_jmp_addr_0x00401312:    ret                                                         // 0x00401312    c3
                         nop                                                         // 0x00401313    90
                         nop                                                         // 0x00401314    90
                         nop                                                         // 0x00401315    90
                         nop                                                         // 0x00401316    90
                         nop                                                         // 0x00401317    90
                         nop                                                         // 0x00401318    90
                         nop                                                         // 0x00401319    90
                         nop                                                         // 0x0040131a    90
                         nop                                                         // 0x0040131b    90
                         nop                                                         // 0x0040131c    90
                         nop                                                         // 0x0040131d    90
                         nop                                                         // 0x0040131e    90
                         nop                                                         // 0x0040131f    90
                         push               esi                                      // 0x00401320    56
                         mov.s              esi, ecx                                 // 0x00401321    8bf1
                         call               _jmp_addr_0x00436960                     // 0x00401323    e838560300
                         test               byte ptr [esp + 0x08], 0x01              // 0x00401328    f644240801
                         {disp8} je         _jmp_addr_0x0040133d                     // 0x0040132d    740e
                         push               0x000001c8                               // 0x0040132f    68c8010000
                         push               esi                                      // 0x00401334    56
                         call               _jmp_addr_0x00436970                     // 0x00401335    e836560300
                         add                esp, 0x08                                // 0x0040133a    83c408
_jmp_addr_0x0040133d:    mov.s              eax, esi                                 // 0x0040133d    8bc6
                         pop                esi                                      // 0x0040133f    5e
                         ret                0x0004                                   // 0x00401340    c20400
                         nop                                                         // 0x00401343    90
                         nop                                                         // 0x00401344    90
                         nop                                                         // 0x00401345    90
                         nop                                                         // 0x00401346    90
                         nop                                                         // 0x00401347    90
                         nop                                                         // 0x00401348    90
                         nop                                                         // 0x00401349    90
                         nop                                                         // 0x0040134a    90
                         nop                                                         // 0x0040134b    90
                         nop                                                         // 0x0040134c    90
                         nop                                                         // 0x0040134d    90
                         nop                                                         // 0x0040134e    90
                         nop                                                         // 0x0040134f    90
@__ct__5AbodeFRC9MapCoordsPC10GAbodeInfoP4Townfffi@36:    {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x00401350    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x00401354    8b542414
                         push               esi                                      // 0x00401358    56
                         push               edi                                      // 0x00401359    57
                         push               eax                                      // 0x0040135a    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x0040135b    8b44241c
                         mov.s              esi, ecx                                 // 0x0040135f    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x24]              // 0x00401361    8b4c2424
                         push               ecx                                      // 0x00401365    51
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x00401366    8b4c2418
                         push               edx                                      // 0x0040136a    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x0040136b    8b542418
                         push               eax                                      // 0x0040136f    50
                         push               ecx                                      // 0x00401370    51
                         push               edx                                      // 0x00401371    52
                         mov.s              ecx, esi                                 // 0x00401372    8bce
                         call               @__ct__13MultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfofffi@32                     // 0x00401374    e867ce1200
                         xor.s              edi, edi                                 // 0x00401379    33ff
                         {disp32} mov       dword ptr [esi + 0x00000080], edi        // 0x0040137b    89be80000000
                         {disp32} mov       dword ptr [esi + 0x00000084], edi        // 0x00401381    89be84000000
                         {disp32} mov       dword ptr [esi + 0x00000088], edi        // 0x00401387    89be88000000
                         {disp32} mov       dword ptr [esi + 0x00000098], edi        // 0x0040138d    89be98000000
                         {disp32} mov       dword ptr [esi + 0x0000009c], edi        // 0x00401393    89be9c000000
                         {disp32} mov       dword ptr [esi + 0x000000a0], edi        // 0x00401399    89bea0000000
                         {disp32} mov       dword ptr [esi + 0x000000a4], edi        // 0x0040139f    89bea4000000
                         mov.s              ecx, esi                                 // 0x004013a5    8bce
                         mov                dword ptr [esi], 0x008a9a64              // 0x004013a7    c706649a8a00
                         call               @SetZero__5AbodeFv@4                     // 0x004013ad    e80e180000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x004013b2    8b4c2414
                         cmp.s              ecx, edi                                 // 0x004013b6    3bcf
                         {disp8} je         _jmp_addr_0x004013d4                     // 0x004013b8    741a
                         push               esi                                      // 0x004013ba    56
                         call               @AddStructureToTown__4TownFP13MultiMapFixed@12                     // 0x004013bb    e8e0853300
                         {disp32} mov       eax, dword ptr [esi + 0x00000098]        // 0x004013c0    8b8698000000
                         {disp32} mov       cl, byte ptr [eax + 0x00000758]          // 0x004013c6    8a8858070000
                         dec                cl                                       // 0x004013cc    fec9
                         {disp32} mov       byte ptr [esi + 0x000000b8], cl          // 0x004013ce    888eb8000000
_jmp_addr_0x004013d4:    {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]   // 0x004013d4    a15c19d000
                         or                 byte ptr [eax + 0x59c0], 1               // 0x004013d9    8088c059000001
                         push               0x43480000                               // 0x004013e0    6800004843
                         mov.s              ecx, esi                                 // 0x004013e5    8bce
                         call               @FindNearestDrinkingWater__5AbodeFf@12   // 0x004013e7    e8345c0000
                         pop                edi                                      // 0x004013ec    5f
                         mov.s              eax, esi                                 // 0x004013ed    8bc6
                         pop                esi                                      // 0x004013ef    5e
                         ret                0x001c                                   // 0x004013f0    c21c00
                         nop                                                         // 0x004013f3    90
                         nop                                                         // 0x004013f4    90
                         nop                                                         // 0x004013f5    90
                         nop                                                         // 0x004013f6    90
                         nop                                                         // 0x004013f7    90
                         nop                                                         // 0x004013f8    90
                         nop                                                         // 0x004013f9    90
                         nop                                                         // 0x004013fa    90
                         nop                                                         // 0x004013fb    90
                         nop                                                         // 0x004013fc    90
                         nop                                                         // 0x004013fd    90
                         nop                                                         // 0x004013fe    90
                         nop                                                         // 0x004013ff    90
                         xor.s              eax, eax                                 // 0x00401400    33c0
                         ret                0x0004                                   // 0x00401402    c20400
                         nop                                                         // 0x00401405    90
                         nop                                                         // 0x00401406    90
                         nop                                                         // 0x00401407    90
                         nop                                                         // 0x00401408    90
                         nop                                                         // 0x00401409    90
                         nop                                                         // 0x0040140a    90
                         nop                                                         // 0x0040140b    90
                         nop                                                         // 0x0040140c    90
                         nop                                                         // 0x0040140d    90
                         nop                                                         // 0x0040140e    90
                         nop                                                         // 0x0040140f    90
                         mov                eax, 0x00000001                          // 0x00401410    b801000000
                         ret                0x0004                                   // 0x00401415    c20400
                         nop                                                         // 0x00401418    90
                         nop                                                         // 0x00401419    90
                         nop                                                         // 0x0040141a    90
                         nop                                                         // 0x0040141b    90
                         nop                                                         // 0x0040141c    90
                         nop                                                         // 0x0040141d    90
                         nop                                                         // 0x0040141e    90
                         nop                                                         // 0x0040141f    90
                         mov                eax, 0x00000001                          // 0x00401420    b801000000
                         ret                0x0004                                   // 0x00401425    c20400
                         nop                                                         // 0x00401428    90
                         nop                                                         // 0x00401429    90
                         nop                                                         // 0x0040142a    90
                         nop                                                         // 0x0040142b    90
                         nop                                                         // 0x0040142c    90
                         nop                                                         // 0x0040142d    90
                         nop                                                         // 0x0040142e    90
                         nop                                                         // 0x0040142f    90
                         xor.s              eax, eax                                 // 0x00401430    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x0a]                // 0x00401432    8a410a
                         not                al                                       // 0x00401435    f6d0
                         shr                eax, 3                                   // 0x00401437    c1e803
                         and                eax, 0x01                                // 0x0040143a    83e001
                         ret                0x0004                                   // 0x0040143d    c20400
                         xor.s              eax, eax                                 // 0x00401440    33c0
                         ret                0x0004                                   // 0x00401442    c20400
                         nop                                                         // 0x00401445    90
                         nop                                                         // 0x00401446    90
                         nop                                                         // 0x00401447    90
                         nop                                                         // 0x00401448    90
                         nop                                                         // 0x00401449    90
                         nop                                                         // 0x0040144a    90
                         nop                                                         // 0x0040144b    90
                         nop                                                         // 0x0040144c    90
                         nop                                                         // 0x0040144d    90
                         nop                                                         // 0x0040144e    90
                         nop                                                         // 0x0040144f    90
                         mov                eax, 0x00000001                          // 0x00401450    b801000000
                         ret                                                         // 0x00401455    c3
                         nop                                                         // 0x00401456    90
                         nop                                                         // 0x00401457    90
                         nop                                                         // 0x00401458    90
                         nop                                                         // 0x00401459    90
                         nop                                                         // 0x0040145a    90
                         nop                                                         // 0x0040145b    90
                         nop                                                         // 0x0040145c    90
                         nop                                                         // 0x0040145d    90
                         nop                                                         // 0x0040145e    90
                         nop                                                         // 0x0040145f    90
                         mov                eax, 0x00000001                          // 0x00401460    b801000000
                         ret                0x0004                                   // 0x00401465    c20400
                         nop                                                         // 0x00401468    90
                         nop                                                         // 0x00401469    90
                         nop                                                         // 0x0040146a    90
                         nop                                                         // 0x0040146b    90
                         nop                                                         // 0x0040146c    90
                         nop                                                         // 0x0040146d    90
                         nop                                                         // 0x0040146e    90
                         nop                                                         // 0x0040146f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x54]              // 0x00401470    8b4154
                         ret                                                         // 0x00401473    c3
                         nop                                                         // 0x00401474    90
                         nop                                                         // 0x00401475    90
                         nop                                                         // 0x00401476    90
                         nop                                                         // 0x00401477    90
                         nop                                                         // 0x00401478    90
                         nop                                                         // 0x00401479    90
                         nop                                                         // 0x0040147a    90
                         nop                                                         // 0x0040147b    90
                         nop                                                         // 0x0040147c    90
                         nop                                                         // 0x0040147d    90
                         nop                                                         // 0x0040147e    90
                         nop                                                         // 0x0040147f    90
                         {disp8} mov        edx, dword ptr [ecx + 0x54]              // 0x00401480    8b5154
                         xor.s              eax, eax                                 // 0x00401483    33c0
                         test               edx, edx                                 // 0x00401485    85d2
                         setne              al                                       // 0x00401487    0f95c0
                         ret                                                         // 0x0040148a    c3
                         call               _jmp_addr_0x00401879                     // 0x0040148b    e8e9030000
                         mov.s              eax, ecx                                 // 0x00401490    8bc1
                         ret                                                         // 0x00401492    c3
                         nop                                                         // 0x00401493    90
                         nop                                                         // 0x00401494    90
                         nop                                                         // 0x00401495    90
                         nop                                                         // 0x00401496    90
                         nop                                                         // 0x00401497    90
                         nop                                                         // 0x00401498    90
                         nop                                                         // 0x00401499    90
                         nop                                                         // 0x0040149a    90
                         nop                                                         // 0x0040149b    90
                         nop                                                         // 0x0040149c    90
                         nop                                                         // 0x0040149d    90
                         nop                                                         // 0x0040149e    90
                         nop                                                         // 0x0040149f    90
                         xor.s              eax, eax                                 // 0x004014a0    33c0
                         ret                                                         // 0x004014a2    c3
                         nop                                                         // 0x004014a3    90
                         nop                                                         // 0x004014a4    90
                         nop                                                         // 0x004014a5    90
                         nop                                                         // 0x004014a6    90
                         nop                                                         // 0x004014a7    90
                         nop                                                         // 0x004014a8    90
                         nop                                                         // 0x004014a9    90
                         nop                                                         // 0x004014aa    90
                         nop                                                         // 0x004014ab    90
                         nop                                                         // 0x004014ac    90
                         nop                                                         // 0x004014ad    90
                         nop                                                         // 0x004014ae    90
                         nop                                                         // 0x004014af    90
                         xor.s              eax, eax                                 // 0x004014b0    33c0
                         ret                                                         // 0x004014b2    c3
                         nop                                                         // 0x004014b3    90
                         nop                                                         // 0x004014b4    90
                         nop                                                         // 0x004014b5    90
                         nop                                                         // 0x004014b6    90
                         nop                                                         // 0x004014b7    90
                         nop                                                         // 0x004014b8    90
                         nop                                                         // 0x004014b9    90
                         nop                                                         // 0x004014ba    90
                         nop                                                         // 0x004014bb    90
                         nop                                                         // 0x004014bc    90
                         nop                                                         // 0x004014bd    90
                         nop                                                         // 0x004014be    90
                         nop                                                         // 0x004014bf    90
                         xor.s              eax, eax                                 // 0x004014c0    33c0
                         ret                0x0004                                   // 0x004014c2    c20400
                         nop                                                         // 0x004014c5    90
                         nop                                                         // 0x004014c6    90
                         nop                                                         // 0x004014c7    90
                         nop                                                         // 0x004014c8    90
                         nop                                                         // 0x004014c9    90
                         nop                                                         // 0x004014ca    90
                         nop                                                         // 0x004014cb    90
                         nop                                                         // 0x004014cc    90
                         nop                                                         // 0x004014cd    90
                         nop                                                         // 0x004014ce    90
                         nop                                                         // 0x004014cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x004014d0    8b442404
                         add                ecx, 0x14                                // 0x004014d4    83c114
                         push               esi                                      // 0x004014d7    56
                         mov                esi, dword ptr [ecx]                     // 0x004014d8    8b31
                         mov.s              edx, eax                                 // 0x004014da    8bd0
                         mov                dword ptr [edx], esi                     // 0x004014dc    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]              // 0x004014de    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi              // 0x004014e1    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x004014e4    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x004014e7    894a08
                         pop                esi                                      // 0x004014ea    5e
                         ret                0x0008                                   // 0x004014eb    c20800
                         nop                                                         // 0x004014ee    90
                         nop                                                         // 0x004014ef    90
                         {disp8} fld        dword ptr [ecx + 0x5c]                   // 0x004014f0    d9415c
                         ret                                                         // 0x004014f3    c3
                         nop                                                         // 0x004014f4    90
                         nop                                                         // 0x004014f5    90
                         nop                                                         // 0x004014f6    90
                         nop                                                         // 0x004014f7    90
                         nop                                                         // 0x004014f8    90
                         nop                                                         // 0x004014f9    90
                         nop                                                         // 0x004014fa    90
                         nop                                                         // 0x004014fb    90
                         nop                                                         // 0x004014fc    90
                         nop                                                         // 0x004014fd    90
                         nop                                                         // 0x004014fe    90
                         nop                                                         // 0x004014ff    90
                         mov                eax, dword ptr [ecx]                     // 0x00401500    8b01
                         jmp                dword ptr [eax + 0x11c]                  // 0x00401502    ffa01c010000
                         nop                                                         // 0x00401508    90
                         nop                                                         // 0x00401509    90
                         nop                                                         // 0x0040150a    90
                         nop                                                         // 0x0040150b    90
                         nop                                                         // 0x0040150c    90
                         nop                                                         // 0x0040150d    90
                         nop                                                         // 0x0040150e    90
                         nop                                                         // 0x0040150f    90
                         xor.s              eax, eax                                 // 0x00401510    33c0
                         ret                0x0004                                   // 0x00401512    c20400
                         nop                                                         // 0x00401515    90
                         nop                                                         // 0x00401516    90
                         nop                                                         // 0x00401517    90
                         nop                                                         // 0x00401518    90
                         nop                                                         // 0x00401519    90
                         nop                                                         // 0x0040151a    90
                         nop                                                         // 0x0040151b    90
                         nop                                                         // 0x0040151c    90
                         nop                                                         // 0x0040151d    90
                         nop                                                         // 0x0040151e    90
                         nop                                                         // 0x0040151f    90
                         mov.s              eax, ecx                                 // 0x00401520    8bc1
                         ret                                                         // 0x00401522    c3
                         nop                                                         // 0x00401523    90
                         nop                                                         // 0x00401524    90
                         nop                                                         // 0x00401525    90
                         nop                                                         // 0x00401526    90
                         nop                                                         // 0x00401527    90
                         nop                                                         // 0x00401528    90
                         nop                                                         // 0x00401529    90
                         nop                                                         // 0x0040152a    90
                         nop                                                         // 0x0040152b    90
                         nop                                                         // 0x0040152c    90
                         nop                                                         // 0x0040152d    90
                         nop                                                         // 0x0040152e    90
                         nop                                                         // 0x0040152f    90
                         mov                eax, 0x00000001                          // 0x00401530    b801000000
                         ret                                                         // 0x00401535    c3
                         nop                                                         // 0x00401536    90
                         nop                                                         // 0x00401537    90
                         nop                                                         // 0x00401538    90
                         nop                                                         // 0x00401539    90
                         nop                                                         // 0x0040153a    90
                         nop                                                         // 0x0040153b    90
                         nop                                                         // 0x0040153c    90
                         nop                                                         // 0x0040153d    90
                         nop                                                         // 0x0040153e    90
                         nop                                                         // 0x0040153f    90
                         mov.s              eax, ecx                                 // 0x00401540    8bc1
                         ret                                                         // 0x00401542    c3
                         nop                                                         // 0x00401543    90
                         nop                                                         // 0x00401544    90
                         nop                                                         // 0x00401545    90
                         nop                                                         // 0x00401546    90
                         nop                                                         // 0x00401547    90
                         nop                                                         // 0x00401548    90
                         nop                                                         // 0x00401549    90
                         nop                                                         // 0x0040154a    90
                         nop                                                         // 0x0040154b    90
                         nop                                                         // 0x0040154c    90
                         nop                                                         // 0x0040154d    90
                         nop                                                         // 0x0040154e    90
                         nop                                                         // 0x0040154f    90
                         ret                0x0004                                   // 0x00401550    c20400
                         nop                                                         // 0x00401553    90
                         nop                                                         // 0x00401554    90
                         nop                                                         // 0x00401555    90
                         nop                                                         // 0x00401556    90
                         nop                                                         // 0x00401557    90
                         nop                                                         // 0x00401558    90
                         nop                                                         // 0x00401559    90
                         nop                                                         // 0x0040155a    90
                         nop                                                         // 0x0040155b    90
                         nop                                                         // 0x0040155c    90
                         nop                                                         // 0x0040155d    90
                         nop                                                         // 0x0040155e    90
                         nop                                                         // 0x0040155f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00401560    8b442404
                         add                ecx, 0x14                                // 0x00401564    83c114
                         push               esi                                      // 0x00401567    56
                         mov                esi, dword ptr [ecx]                     // 0x00401568    8b31
                         mov.s              edx, eax                                 // 0x0040156a    8bd0
                         mov                dword ptr [edx], esi                     // 0x0040156c    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]              // 0x0040156e    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi              // 0x00401571    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x00401574    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x00401577    894a08
                         pop                esi                                      // 0x0040157a    5e
                         ret                0x000c                                   // 0x0040157b    c20c00
                         nop                                                         // 0x0040157e    90
                         nop                                                         // 0x0040157f    90
                         xor.s              al, al                                   // 0x00401580    32c0
                         ret                0x0004                                   // 0x00401582    c20400
                         nop                                                         // 0x00401585    90
                         nop                                                         // 0x00401586    90
                         nop                                                         // 0x00401587    90
                         nop                                                         // 0x00401588    90
                         nop                                                         // 0x00401589    90
                         nop                                                         // 0x0040158a    90
                         nop                                                         // 0x0040158b    90
                         nop                                                         // 0x0040158c    90
                         nop                                                         // 0x0040158d    90
                         nop                                                         // 0x0040158e    90
                         nop                                                         // 0x0040158f    90
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00401590    8b542408
                         mov                eax, dword ptr [ecx]                     // 0x00401594    8b01
                         push               esi                                      // 0x00401596    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]              // 0x00401597    8b742408
                         push               -0x1                                     // 0x0040159b    6aff
                         push               edx                                      // 0x0040159d    52
                         push               esi                                      // 0x0040159e    56
                         call               dword ptr [eax + 0x8cc]                  // 0x0040159f    ff90cc080000
                         mov.s              eax, esi                                 // 0x004015a5    8bc6
                         pop                esi                                      // 0x004015a7    5e
                         ret                0x0010                                   // 0x004015a8    c21000
                         call               _jmp_addr_0x00401879                     // 0x004015ab    e8c9020000
                         ret                                                         // 0x004015b0    c3
                         nop                                                         // 0x004015b1    90
                         nop                                                         // 0x004015b2    90
                         nop                                                         // 0x004015b3    90
                         nop                                                         // 0x004015b4    90
                         nop                                                         // 0x004015b5    90
                         nop                                                         // 0x004015b6    90
                         nop                                                         // 0x004015b7    90
                         nop                                                         // 0x004015b8    90
                         nop                                                         // 0x004015b9    90
                         nop                                                         // 0x004015ba    90
                         nop                                                         // 0x004015bb    90
                         nop                                                         // 0x004015bc    90
                         nop                                                         // 0x004015bd    90
                         nop                                                         // 0x004015be    90
                         nop                                                         // 0x004015bf    90
                         ret                                                         // 0x004015c0    c3
                         nop                                                         // 0x004015c1    90
                         nop                                                         // 0x004015c2    90
                         nop                                                         // 0x004015c3    90
                         nop                                                         // 0x004015c4    90
                         nop                                                         // 0x004015c5    90
                         nop                                                         // 0x004015c6    90
                         nop                                                         // 0x004015c7    90
                         nop                                                         // 0x004015c8    90
                         nop                                                         // 0x004015c9    90
                         nop                                                         // 0x004015ca    90
                         nop                                                         // 0x004015cb    90
                         nop                                                         // 0x004015cc    90
                         nop                                                         // 0x004015cd    90
                         nop                                                         // 0x004015ce    90
                         nop                                                         // 0x004015cf    90
                         xor.s              eax, eax                                 // 0x004015d0    33c0
                         ret                0x0004                                   // 0x004015d2    c20400
                         nop                                                         // 0x004015d5    90
                         nop                                                         // 0x004015d6    90
                         nop                                                         // 0x004015d7    90
                         nop                                                         // 0x004015d8    90
                         nop                                                         // 0x004015d9    90
                         nop                                                         // 0x004015da    90
                         nop                                                         // 0x004015db    90
                         nop                                                         // 0x004015dc    90
                         nop                                                         // 0x004015dd    90
                         nop                                                         // 0x004015de    90
                         nop                                                         // 0x004015df    90
                         mov                eax, dword ptr [ecx]                     // 0x004015e0    8b01
                         call               dword ptr [eax + 0x890]                  // 0x004015e2    ff9090080000
                         dec                eax                                      // 0x004015e8    48
                         neg                eax                                      // 0x004015e9    f7d8
                         sbb.s              eax, eax                                 // 0x004015eb    1bc0
                         neg                eax                                      // 0x004015ed    f7d8
                         ret                0x0004                                   // 0x004015ef    c20400
                         nop                                                         // 0x004015f2    90
                         nop                                                         // 0x004015f3    90
                         nop                                                         // 0x004015f4    90
                         nop                                                         // 0x004015f5    90
                         nop                                                         // 0x004015f6    90
                         nop                                                         // 0x004015f7    90
                         nop                                                         // 0x004015f8    90
                         nop                                                         // 0x004015f9    90
                         nop                                                         // 0x004015fa    90
                         nop                                                         // 0x004015fb    90
                         nop                                                         // 0x004015fc    90
                         nop                                                         // 0x004015fd    90
                         nop                                                         // 0x004015fe    90
                         nop                                                         // 0x004015ff    90
                         mov                eax, dword ptr [ecx]                     // 0x00401600    8b01
                         call               dword ptr [eax + 0x88c]                  // 0x00401602    ff908c080000
                         neg                eax                                      // 0x00401608    f7d8
                         sbb.s              eax, eax                                 // 0x0040160a    1bc0
                         inc                eax                                      // 0x0040160c    40
                         ret                0x0004                                   // 0x0040160d    c20400
                         mov                eax, 0x00000001                          // 0x00401610    b801000000
                         ret                                                         // 0x00401615    c3
                         nop                                                         // 0x00401616    90
                         nop                                                         // 0x00401617    90
                         nop                                                         // 0x00401618    90
                         nop                                                         // 0x00401619    90
                         nop                                                         // 0x0040161a    90
                         nop                                                         // 0x0040161b    90
                         nop                                                         // 0x0040161c    90
                         nop                                                         // 0x0040161d    90
                         nop                                                         // 0x0040161e    90
                         nop                                                         // 0x0040161f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x64]              // 0x00401620    8b4164
                         ret                                                         // 0x00401623    c3
                         nop                                                         // 0x00401624    90
                         nop                                                         // 0x00401625    90
                         nop                                                         // 0x00401626    90
                         nop                                                         // 0x00401627    90
                         nop                                                         // 0x00401628    90
                         nop                                                         // 0x00401629    90
                         nop                                                         // 0x0040162a    90
                         nop                                                         // 0x0040162b    90
                         nop                                                         // 0x0040162c    90
                         nop                                                         // 0x0040162d    90
                         nop                                                         // 0x0040162e    90
                         nop                                                         // 0x0040162f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x78]              // 0x00401630    8b4178
                         ret                                                         // 0x00401633    c3
                         nop                                                         // 0x00401634    90
                         nop                                                         // 0x00401635    90
                         nop                                                         // 0x00401636    90
                         nop                                                         // 0x00401637    90
                         nop                                                         // 0x00401638    90
                         nop                                                         // 0x00401639    90
                         nop                                                         // 0x0040163a    90
                         nop                                                         // 0x0040163b    90
                         nop                                                         // 0x0040163c    90
                         nop                                                         // 0x0040163d    90
                         nop                                                         // 0x0040163e    90
                         nop                                                         // 0x0040163f    90
                         mov.s              eax, ecx                                 // 0x00401640    8bc1
                         ret                                                         // 0x00401642    c3
                         nop                                                         // 0x00401643    90
                         nop                                                         // 0x00401644    90
                         nop                                                         // 0x00401645    90
                         nop                                                         // 0x00401646    90
                         nop                                                         // 0x00401647    90
                         nop                                                         // 0x00401648    90
                         nop                                                         // 0x00401649    90
                         nop                                                         // 0x0040164a    90
                         nop                                                         // 0x0040164b    90
                         nop                                                         // 0x0040164c    90
                         nop                                                         // 0x0040164d    90
                         nop                                                         // 0x0040164e    90
                         nop                                                         // 0x0040164f    90
                         xor.s              eax, eax                                 // 0x00401650    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x7c]                // 0x00401652    8a417c
                         shr                eax, 2                                   // 0x00401655    c1e802
                         and                eax, 0x01                                // 0x00401658    83e001
                         ret                                                         // 0x0040165b    c3
                         nop                                                         // 0x0040165c    90
                         nop                                                         // 0x0040165d    90
                         nop                                                         // 0x0040165e    90
                         nop                                                         // 0x0040165f    90
                         {disp8} mov        al, byte ptr [esp + 0x04]                // 0x00401660    8a442404
                         {disp8} mov        dl, byte ptr [ecx + 0x7c]                // 0x00401664    8a517c
                         and                al, 0x01                                 // 0x00401667    2401
                         shl                al, 2                                    // 0x00401669    c0e002
                         and                dl, -0x05                                // 0x0040166c    80e2fb
                         or.s               al, dl                                   // 0x0040166f    0ac2
                         {disp8} mov        byte ptr [ecx + 0x7c], al                // 0x00401671    88417c
                         ret                0x0004                                   // 0x00401674    c20400
                         nop                                                         // 0x00401677    90
                         nop                                                         // 0x00401678    90
                         nop                                                         // 0x00401679    90
                         nop                                                         // 0x0040167a    90
                         nop                                                         // 0x0040167b    90
                         nop                                                         // 0x0040167c    90
                         nop                                                         // 0x0040167d    90
                         nop                                                         // 0x0040167e    90
                         nop                                                         // 0x0040167f    90
                         ret                                                         // 0x00401680    c3
                         nop                                                         // 0x00401681    90
                         nop                                                         // 0x00401682    90
                         nop                                                         // 0x00401683    90
                         nop                                                         // 0x00401684    90
                         nop                                                         // 0x00401685    90
                         nop                                                         // 0x00401686    90
                         nop                                                         // 0x00401687    90
                         nop                                                         // 0x00401688    90
                         nop                                                         // 0x00401689    90
                         nop                                                         // 0x0040168a    90
                         nop                                                         // 0x0040168b    90
                         nop                                                         // 0x0040168c    90
                         nop                                                         // 0x0040168d    90
                         nop                                                         // 0x0040168e    90
                         nop                                                         // 0x0040168f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00401690    8b442404
                         {disp32} mov       dword ptr [ecx + 0x00000098], eax        // 0x00401694    898198000000
                         ret                0x0004                                   // 0x0040169a    c20400
                         nop                                                         // 0x0040169d    90
                         nop                                                         // 0x0040169e    90
                         nop                                                         // 0x0040169f    90
                         mov                eax, dword ptr [ecx]                     // 0x004016a0    8b01
                         call               dword ptr [eax + 0x884]                  // 0x004016a2    ff9084080000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x004016a8    d81d90a38a00
                         fnstsw             ax                                       // 0x004016ae    dfe0
                         test               ah, 0x01                                 // 0x004016b0    f6c401
                         {disp8} jne        _jmp_addr_0x004016bb                     // 0x004016b3    7506
                         mov                eax, 0x00000001                          // 0x004016b5    b801000000
                         ret                                                         // 0x004016ba    c3
_jmp_addr_0x004016bb:    xor.s              eax, eax                                 // 0x004016bb    33c0
                         ret                                                         // 0x004016bd    c3
                         nop                                                         // 0x004016be    90
                         nop                                                         // 0x004016bf    90
                         {disp8} mov        al, byte ptr [ecx + 0x58]                // 0x004016c0    8a4158
                         and                al, 0x02                                 // 0x004016c3    2402
                         cmp                al, 0x02                                 // 0x004016c5    3c02
                         {disp8} je         _jmp_addr_0x004016e4                     // 0x004016c7    741b
                         mov                edx, dword ptr [ecx]                     // 0x004016c9    8b11
                         call               dword ptr [edx + 0x880]                  // 0x004016cb    ff9280080000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x004016d1    d81d90a38a00
                         fnstsw             ax                                       // 0x004016d7    dfe0
                         test               ah, 0x01                                 // 0x004016d9    f6c401
                         {disp8} jne        _jmp_addr_0x004016e4                     // 0x004016dc    7506
                         mov                eax, 0x00000001                          // 0x004016de    b801000000
                         ret                                                         // 0x004016e3    c3
_jmp_addr_0x004016e4:    xor.s              eax, eax                                 // 0x004016e4    33c0
                         ret                                                         // 0x004016e6    c3
                         nop                                                         // 0x004016e7    90
                         nop                                                         // 0x004016e8    90
                         nop                                                         // 0x004016e9    90
                         nop                                                         // 0x004016ea    90
                         nop                                                         // 0x004016eb    90
                         nop                                                         // 0x004016ec    90
                         nop                                                         // 0x004016ed    90
                         nop                                                         // 0x004016ee    90
                         nop                                                         // 0x004016ef    90
                         xor.s              eax, eax                                 // 0x004016f0    33c0
                         ret                                                         // 0x004016f2    c3
                         nop                                                         // 0x004016f3    90
                         nop                                                         // 0x004016f4    90
                         nop                                                         // 0x004016f5    90
                         nop                                                         // 0x004016f6    90
                         nop                                                         // 0x004016f7    90
                         nop                                                         // 0x004016f8    90
                         nop                                                         // 0x004016f9    90
                         nop                                                         // 0x004016fa    90
                         nop                                                         // 0x004016fb    90
                         nop                                                         // 0x004016fc    90
                         nop                                                         // 0x004016fd    90
                         nop                                                         // 0x004016fe    90
                         nop                                                         // 0x004016ff    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000090]        // 0x00401700    8b8190000000
                         ret                                                         // 0x00401706    c3
                         nop                                                         // 0x00401707    90
                         nop                                                         // 0x00401708    90
                         nop                                                         // 0x00401709    90
                         nop                                                         // 0x0040170a    90
                         nop                                                         // 0x0040170b    90
                         nop                                                         // 0x0040170c    90
                         nop                                                         // 0x0040170d    90
                         nop                                                         // 0x0040170e    90
                         nop                                                         // 0x0040170f    90
                         mov                eax, 0x00000001                          // 0x00401710    b801000000
                         ret                                                         // 0x00401715    c3
                         nop                                                         // 0x00401716    90
                         nop                                                         // 0x00401717    90
                         nop                                                         // 0x00401718    90
                         nop                                                         // 0x00401719    90
                         nop                                                         // 0x0040171a    90
                         nop                                                         // 0x0040171b    90
                         nop                                                         // 0x0040171c    90
                         nop                                                         // 0x0040171d    90
                         nop                                                         // 0x0040171e    90
                         nop                                                         // 0x0040171f    90
                         mov                eax, 0x00000001                          // 0x00401720    b801000000
                         ret                                                         // 0x00401725    c3
                         nop                                                         // 0x00401726    90
                         nop                                                         // 0x00401727    90
                         nop                                                         // 0x00401728    90
                         nop                                                         // 0x00401729    90
                         nop                                                         // 0x0040172a    90
                         nop                                                         // 0x0040172b    90
                         nop                                                         // 0x0040172c    90
                         nop                                                         // 0x0040172d    90
                         nop                                                         // 0x0040172e    90
                         nop                                                         // 0x0040172f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000098]        // 0x00401730    8b8198000000
                         ret                                                         // 0x00401736    c3
                         nop                                                         // 0x00401737    90
                         nop                                                         // 0x00401738    90
                         nop                                                         // 0x00401739    90
                         nop                                                         // 0x0040173a    90
                         nop                                                         // 0x0040173b    90
                         nop                                                         // 0x0040173c    90
                         nop                                                         // 0x0040173d    90
                         nop                                                         // 0x0040173e    90
                         nop                                                         // 0x0040173f    90
                         mov                eax, 0x00000003                          // 0x00401740    b803000000
                         ret                                                         // 0x00401745    c3
                         nop                                                         // 0x00401746    90
                         nop                                                         // 0x00401747    90
                         nop                                                         // 0x00401748    90
                         nop                                                         // 0x00401749    90
                         nop                                                         // 0x0040174a    90
                         nop                                                         // 0x0040174b    90
                         nop                                                         // 0x0040174c    90
                         nop                                                         // 0x0040174d    90
                         nop                                                         // 0x0040174e    90
                         nop                                                         // 0x0040174f    90
                         mov                eax, 0x00000005                          // 0x00401750    b805000000
                         ret                                                         // 0x00401755    c3
                         nop                                                         // 0x00401756    90
                         nop                                                         // 0x00401757    90
                         nop                                                         // 0x00401758    90
                         nop                                                         // 0x00401759    90
                         nop                                                         // 0x0040175a    90
                         nop                                                         // 0x0040175b    90
                         nop                                                         // 0x0040175c    90
                         nop                                                         // 0x0040175d    90
                         nop                                                         // 0x0040175e    90
                         nop                                                         // 0x0040175f    90
                         mov                eax, 0x00000001                          // 0x00401760    b801000000
                         ret                                                         // 0x00401765    c3
                         nop                                                         // 0x00401766    90
                         nop                                                         // 0x00401767    90
                         nop                                                         // 0x00401768    90
                         nop                                                         // 0x00401769    90
                         nop                                                         // 0x0040176a    90
                         nop                                                         // 0x0040176b    90
                         nop                                                         // 0x0040176c    90
                         nop                                                         // 0x0040176d    90
                         nop                                                         // 0x0040176e    90
                         nop                                                         // 0x0040176f    90
                         mov                eax, dword ptr [ecx]                     // 0x00401770    8b01
                         push               esi                                      // 0x00401772    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]              // 0x00401773    8b742408
                         push               esi                                      // 0x00401777    56
                         call               dword ptr [eax + 0x864]                  // 0x00401778    ff9064080000
                         mov.s              eax, esi                                 // 0x0040177e    8bc6
                         pop                esi                                      // 0x00401780    5e
                         ret                0x0004                                   // 0x00401781    c20400
                         nop                                                         // 0x00401784    90
                         nop                                                         // 0x00401785    90
                         nop                                                         // 0x00401786    90
                         nop                                                         // 0x00401787    90
                         nop                                                         // 0x00401788    90
                         nop                                                         // 0x00401789    90
                         nop                                                         // 0x0040178a    90
                         nop                                                         // 0x0040178b    90
                         nop                                                         // 0x0040178c    90
                         nop                                                         // 0x0040178d    90
                         nop                                                         // 0x0040178e    90
                         nop                                                         // 0x0040178f    90
                         mov                eax, 0x00000001                          // 0x00401790    b801000000
                         ret                                                         // 0x00401795    c3
                         nop                                                         // 0x00401796    90
                         nop                                                         // 0x00401797    90
                         nop                                                         // 0x00401798    90
                         nop                                                         // 0x00401799    90
                         nop                                                         // 0x0040179a    90
                         nop                                                         // 0x0040179b    90
                         nop                                                         // 0x0040179c    90
                         nop                                                         // 0x0040179d    90
                         nop                                                         // 0x0040179e    90
                         nop                                                         // 0x0040179f    90
                         mov                eax, 0x00000007                          // 0x004017a0    b807000000
                         ret                                                         // 0x004017a5    c3
                         nop                                                         // 0x004017a6    90
                         nop                                                         // 0x004017a7    90
                         nop                                                         // 0x004017a8    90
                         nop                                                         // 0x004017a9    90
                         nop                                                         // 0x004017aa    90
                         nop                                                         // 0x004017ab    90
                         nop                                                         // 0x004017ac    90
                         nop                                                         // 0x004017ad    90
                         nop                                                         // 0x004017ae    90
                         nop                                                         // 0x004017af    90
                         mov                eax, 0x009c7fb4                          // 0x004017b0    b8b47f9c00
                         ret                                                         // 0x004017b5    c3
                         nop                                                         // 0x004017b6    90
                         nop                                                         // 0x004017b7    90
                         nop                                                         // 0x004017b8    90
                         nop                                                         // 0x004017b9    90
                         nop                                                         // 0x004017ba    90
                         nop                                                         // 0x004017bb    90
                         nop                                                         // 0x004017bc    90
                         nop                                                         // 0x004017bd    90
                         nop                                                         // 0x004017be    90
                         nop                                                         // 0x004017bf    90
                         push               esi                                      // 0x004017c0    56
                         mov.s              esi, ecx                                 // 0x004017c1    8bf1
                         call               _jmp_addr_0x00402b60                     // 0x004017c3    e898130000
                         test               byte ptr [esp + 0x08], 0x01              // 0x004017c8    f644240801
                         {disp8} je         _jmp_addr_0x004017dd                     // 0x004017cd    740e
                         push               0x000000c4                               // 0x004017cf    68c4000000
                         push               esi                                      // 0x004017d4    56
                         call               _jmp_addr_0x00436970                     // 0x004017d5    e896510300
                         add                esp, 0x08                                // 0x004017da    83c408
_jmp_addr_0x004017dd:    mov.s              eax, esi                                 // 0x004017dd    8bc6
                         pop                esi                                      // 0x004017df    5e
                         ret                0x0004                                   // 0x004017e0    c20400
                         nop                                                         // 0x004017e3    90
                         nop                                                         // 0x004017e4    90
                         nop                                                         // 0x004017e5    90
                         nop                                                         // 0x004017e6    90
                         nop                                                         // 0x004017e7    90
                         nop                                                         // 0x004017e8    90
                         nop                                                         // 0x004017e9    90
                         nop                                                         // 0x004017ea    90
                         nop                                                         // 0x004017eb    90
                         nop                                                         // 0x004017ec    90
                         nop                                                         // 0x004017ed    90
                         nop                                                         // 0x004017ee    90
                         nop                                                         // 0x004017ef    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x004017f0    d90590a38a00
                         ret                0x0004                                   // 0x004017f6    c20400
_jmp_addr_0x004017f9:    push               ecx                                      // 0x004017f9    51
                         push               eax                                      // 0x004017fa    50
                         call               _jmp_addr_0x004012a4                     // 0x004017fb    e8a4faffff
                         ret                                                         // 0x00401800    c3
                         nop                                                         // 0x00401801    90
                         nop                                                         // 0x00401802    90
                         nop                                                         // 0x00401803    90
                         nop                                                         // 0x00401804    90
                         nop                                                         // 0x00401805    90
                         nop                                                         // 0x00401806    90
                         nop                                                         // 0x00401807    90
                         nop                                                         // 0x00401808    90
                         nop                                                         // 0x00401809    90
                         nop                                                         // 0x0040180a    90
                         nop                                                         // 0x0040180b    90
                         nop                                                         // 0x0040180c    90
                         nop                                                         // 0x0040180d    90
                         nop                                                         // 0x0040180e    90
                         nop                                                         // 0x0040180f    90
                         xor.s              eax, eax                                 // 0x00401810    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x0a]                // 0x00401812    8a410a
                         not                al                                       // 0x00401815    f6d0
                         and                eax, 0x01                                // 0x00401817    83e001
                         ret                                                         // 0x0040181a    c3
                         call               _jmp_addr_0x00401879                     // 0x0040181b    e859000000
                         xor.s              eax, eax                                 // 0x00401820    33c0
                         ret                                                         // 0x00401822    c3
                         nop                                                         // 0x00401823    90
                         nop                                                         // 0x00401824    90
                         nop                                                         // 0x00401825    90
                         nop                                                         // 0x00401826    90
                         nop                                                         // 0x00401827    90
                         nop                                                         // 0x00401828    90
                         nop                                                         // 0x00401829    90
                         nop                                                         // 0x0040182a    90
                         nop                                                         // 0x0040182b    90
                         nop                                                         // 0x0040182c    90
                         nop                                                         // 0x0040182d    90
                         nop                                                         // 0x0040182e    90
                         nop                                                         // 0x0040182f    90
                         xor.s              eax, eax                                 // 0x00401830    33c0
                         ret                0x0004                                   // 0x00401832    c20400
                         nop                                                         // 0x00401835    90
                         nop                                                         // 0x00401836    90
                         nop                                                         // 0x00401837    90
                         nop                                                         // 0x00401838    90
                         nop                                                         // 0x00401839    90
                         nop                                                         // 0x0040183a    90
                         nop                                                         // 0x0040183b    90
                         nop                                                         // 0x0040183c    90
                         nop                                                         // 0x0040183d    90
                         nop                                                         // 0x0040183e    90
                         nop                                                         // 0x0040183f    90
                         xor.s              eax, eax                                 // 0x00401840    33c0
                         ret                0x0004                                   // 0x00401842    c20400
                         nop                                                         // 0x00401845    90
                         nop                                                         // 0x00401846    90
                         nop                                                         // 0x00401847    90
                         nop                                                         // 0x00401848    90
                         nop                                                         // 0x00401849    90
                         nop                                                         // 0x0040184a    90
                         nop                                                         // 0x0040184b    90
                         nop                                                         // 0x0040184c    90
                         nop                                                         // 0x0040184d    90
                         nop                                                         // 0x0040184e    90
                         nop                                                         // 0x0040184f    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1394]         // 0x00401850    d90594a38a00
                         ret                                                         // 0x00401856    c3
                         nop                                                         // 0x00401857    90
                         nop                                                         // 0x00401858    90
                         nop                                                         // 0x00401859    90
                         nop                                                         // 0x0040185a    90
                         nop                                                         // 0x0040185b    90
                         nop                                                         // 0x0040185c    90
                         nop                                                         // 0x0040185d    90
                         nop                                                         // 0x0040185e    90
                         nop                                                         // 0x0040185f    90
                         xor.s              eax, eax                                 // 0x00401860    33c0
                         ret                                                         // 0x00401862    c3
                         nop                                                         // 0x00401863    90
                         nop                                                         // 0x00401864    90
                         nop                                                         // 0x00401865    90
                         nop                                                         // 0x00401866    90
                         nop                                                         // 0x00401867    90
                         nop                                                         // 0x00401868    90
                         nop                                                         // 0x00401869    90
                         nop                                                         // 0x0040186a    90
                         nop                                                         // 0x0040186b    90
                         nop                                                         // 0x0040186c    90
                         nop                                                         // 0x0040186d    90
                         nop                                                         // 0x0040186e    90
                         nop                                                         // 0x0040186f    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x00401870    d90598a38a00
                         ret                0x0004                                   // 0x00401876    c20400
_jmp_addr_0x00401879:    push               ecx                                      // 0x00401879    51
                         push               eax                                      // 0x0040187a    50
                         call               _jmp_addr_0x004012b4                     // 0x0040187b    e834faffff
                         xor.s              eax, eax                                 // 0x00401880    33c0
                         ret                0x0004                                   // 0x00401882    c20400
                         nop                                                         // 0x00401885    90
                         nop                                                         // 0x00401886    90
                         nop                                                         // 0x00401887    90
                         nop                                                         // 0x00401888    90
                         nop                                                         // 0x00401889    90
                         nop                                                         // 0x0040188a    90
                         nop                                                         // 0x0040188b    90
                         nop                                                         // 0x0040188c    90
                         nop                                                         // 0x0040188d    90
                         nop                                                         // 0x0040188e    90
                         nop                                                         // 0x0040188f    90
                         xor.s              eax, eax                                 // 0x00401890    33c0
                         ret                0x0004                                   // 0x00401892    c20400
                         nop                                                         // 0x00401895    90
                         nop                                                         // 0x00401896    90
                         nop                                                         // 0x00401897    90
                         nop                                                         // 0x00401898    90
                         nop                                                         // 0x00401899    90
                         nop                                                         // 0x0040189a    90
                         nop                                                         // 0x0040189b    90
                         nop                                                         // 0x0040189c    90
                         nop                                                         // 0x0040189d    90
                         nop                                                         // 0x0040189e    90
                         nop                                                         // 0x0040189f    90
                         xor.s              eax, eax                                 // 0x004018a0    33c0
                         ret                                                         // 0x004018a2    c3
                         nop                                                         // 0x004018a3    90
                         nop                                                         // 0x004018a4    90
                         nop                                                         // 0x004018a5    90
                         nop                                                         // 0x004018a6    90
                         nop                                                         // 0x004018a7    90
                         nop                                                         // 0x004018a8    90
                         nop                                                         // 0x004018a9    90
                         nop                                                         // 0x004018aa    90
                         nop                                                         // 0x004018ab    90
                         nop                                                         // 0x004018ac    90
                         nop                                                         // 0x004018ad    90
                         nop                                                         // 0x004018ae    90
                         nop                                                         // 0x004018af    90
                         xor.s              eax, eax                                 // 0x004018b0    33c0
                         ret                                                         // 0x004018b2    c3
                         nop                                                         // 0x004018b3    90
                         nop                                                         // 0x004018b4    90
                         nop                                                         // 0x004018b5    90
                         nop                                                         // 0x004018b6    90
                         nop                                                         // 0x004018b7    90
                         nop                                                         // 0x004018b8    90
                         nop                                                         // 0x004018b9    90
                         nop                                                         // 0x004018ba    90
                         nop                                                         // 0x004018bb    90
                         nop                                                         // 0x004018bc    90
                         nop                                                         // 0x004018bd    90
                         nop                                                         // 0x004018be    90
                         nop                                                         // 0x004018bf    90
                         xor.s              eax, eax                                 // 0x004018c0    33c0
                         ret                0x0004                                   // 0x004018c2    c20400
                         nop                                                         // 0x004018c5    90
                         nop                                                         // 0x004018c6    90
                         nop                                                         // 0x004018c7    90
                         nop                                                         // 0x004018c8    90
                         nop                                                         // 0x004018c9    90
                         nop                                                         // 0x004018ca    90
                         nop                                                         // 0x004018cb    90
                         nop                                                         // 0x004018cc    90
                         nop                                                         // 0x004018cd    90
                         nop                                                         // 0x004018ce    90
                         nop                                                         // 0x004018cf    90
                         xor.s              eax, eax                                 // 0x004018d0    33c0
                         ret                                                         // 0x004018d2    c3
                         nop                                                         // 0x004018d3    90
                         nop                                                         // 0x004018d4    90
                         nop                                                         // 0x004018d5    90
                         nop                                                         // 0x004018d6    90
                         nop                                                         // 0x004018d7    90
                         nop                                                         // 0x004018d8    90
                         nop                                                         // 0x004018d9    90
                         nop                                                         // 0x004018da    90
                         nop                                                         // 0x004018db    90
                         nop                                                         // 0x004018dc    90
                         nop                                                         // 0x004018dd    90
                         nop                                                         // 0x004018de    90
                         nop                                                         // 0x004018df    90
                         xor.s              eax, eax                                 // 0x004018e0    33c0
                         ret                                                         // 0x004018e2    c3
                         nop                                                         // 0x004018e3    90
                         nop                                                         // 0x004018e4    90
                         nop                                                         // 0x004018e5    90
                         nop                                                         // 0x004018e6    90
                         nop                                                         // 0x004018e7    90
                         nop                                                         // 0x004018e8    90
                         nop                                                         // 0x004018e9    90
                         nop                                                         // 0x004018ea    90
                         nop                                                         // 0x004018eb    90
                         nop                                                         // 0x004018ec    90
                         nop                                                         // 0x004018ed    90
                         nop                                                         // 0x004018ee    90
                         nop                                                         // 0x004018ef    90
                         xor.s              eax, eax                                 // 0x004018f0    33c0
                         ret                                                         // 0x004018f2    c3
                         nop                                                         // 0x004018f3    90
                         nop                                                         // 0x004018f4    90
                         nop                                                         // 0x004018f5    90
                         nop                                                         // 0x004018f6    90
                         nop                                                         // 0x004018f7    90
                         nop                                                         // 0x004018f8    90
                         nop                                                         // 0x004018f9    90
                         nop                                                         // 0x004018fa    90
                         nop                                                         // 0x004018fb    90
                         nop                                                         // 0x004018fc    90
                         nop                                                         // 0x004018fd    90
                         nop                                                         // 0x004018fe    90
                         nop                                                         // 0x004018ff    90
                         xor.s              eax, eax                                 // 0x00401900    33c0
                         ret                                                         // 0x00401902    c3
                         nop                                                         // 0x00401903    90
                         nop                                                         // 0x00401904    90
                         nop                                                         // 0x00401905    90
                         nop                                                         // 0x00401906    90
                         nop                                                         // 0x00401907    90
                         nop                                                         // 0x00401908    90
                         nop                                                         // 0x00401909    90
                         nop                                                         // 0x0040190a    90
                         nop                                                         // 0x0040190b    90
                         nop                                                         // 0x0040190c    90
                         nop                                                         // 0x0040190d    90
                         nop                                                         // 0x0040190e    90
                         nop                                                         // 0x0040190f    90
                         xor.s              eax, eax                                 // 0x00401910    33c0
                         ret                                                         // 0x00401912    c3
                         nop                                                         // 0x00401913    90
                         nop                                                         // 0x00401914    90
                         nop                                                         // 0x00401915    90
                         nop                                                         // 0x00401916    90
                         nop                                                         // 0x00401917    90
                         nop                                                         // 0x00401918    90
                         nop                                                         // 0x00401919    90
                         nop                                                         // 0x0040191a    90
                         nop                                                         // 0x0040191b    90
                         nop                                                         // 0x0040191c    90
                         nop                                                         // 0x0040191d    90
                         nop                                                         // 0x0040191e    90
                         nop                                                         // 0x0040191f    90
                         mov                eax, 0x00000001                          // 0x00401920    b801000000
                         ret                                                         // 0x00401925    c3
                         nop                                                         // 0x00401926    90
                         nop                                                         // 0x00401927    90
                         nop                                                         // 0x00401928    90
                         nop                                                         // 0x00401929    90
                         nop                                                         // 0x0040192a    90
                         nop                                                         // 0x0040192b    90
                         nop                                                         // 0x0040192c    90
                         nop                                                         // 0x0040192d    90
                         nop                                                         // 0x0040192e    90
                         nop                                                         // 0x0040192f    90
                         xor.s              eax, eax                                 // 0x00401930    33c0
                         ret                0x0008                                   // 0x00401932    c20800
                         nop                                                         // 0x00401935    90
                         nop                                                         // 0x00401936    90
                         nop                                                         // 0x00401937    90
                         nop                                                         // 0x00401938    90
                         nop                                                         // 0x00401939    90
                         nop                                                         // 0x0040193a    90
                         nop                                                         // 0x0040193b    90
                         nop                                                         // 0x0040193c    90
                         nop                                                         // 0x0040193d    90
                         nop                                                         // 0x0040193e    90
                         nop                                                         // 0x0040193f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00401940    8b442404
                         mov                edx, dword ptr [eax]                     // 0x00401944    8b10
                         add                ecx, 0x14                                // 0x00401946    83c114
                         mov                dword ptr [ecx], edx                     // 0x00401949    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]              // 0x0040194b    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx              // 0x0040194e    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]              // 0x00401951    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax              // 0x00401954    894108
                         ret                0x0004                                   // 0x00401957    c20400
                         call               dword ptr [__imp__BinkCopyToBuffer@28]   // 0x0040195a    ff1564998a00
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00401960    8b442404
                         add                ecx, 0x14                                // 0x00401964    83c114
                         push               esi                                      // 0x00401967    56
                         mov                esi, dword ptr [ecx]                     // 0x00401968    8b31
                         mov.s              edx, eax                                 // 0x0040196a    8bd0
                         mov                dword ptr [edx], esi                     // 0x0040196c    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]              // 0x0040196e    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi              // 0x00401971    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x00401974    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x00401977    894a08
                         pop                esi                                      // 0x0040197a    5e
                         ret                0x0004                                   // 0x0040197b    c20400
                         nop                                                         // 0x0040197e    90
                         nop                                                         // 0x0040197f    90
                         {disp8} mov        dword ptr [ecx + 0x1c], 0x00000000       // 0x00401980    c7411c00000000
                         ret                0x0004                                   // 0x00401987    c20400
                         call               dword ptr [__imp__GetOpenFileNameA@4]    // 0x0040198a    ff1570998a00
                         mov                eax, 0x00000001                          // 0x00401990    b801000000
                         ret                                                         // 0x00401995    c3
                         nop                                                         // 0x00401996    90
                         nop                                                         // 0x00401997    90
                         nop                                                         // 0x00401998    90
                         nop                                                         // 0x00401999    90
                         nop                                                         // 0x0040199a    90
                         nop                                                         // 0x0040199b    90
                         nop                                                         // 0x0040199c    90
                         nop                                                         // 0x0040199d    90
                         nop                                                         // 0x0040199e    90
                         nop                                                         // 0x0040199f    90
                         xor.s              eax, eax                                 // 0x004019a0    33c0
                         ret                                                         // 0x004019a2    c3
                         nop                                                         // 0x004019a3    90
                         nop                                                         // 0x004019a4    90
                         nop                                                         // 0x004019a5    90
                         nop                                                         // 0x004019a6    90
                         nop                                                         // 0x004019a7    90
                         nop                                                         // 0x004019a8    90
                         nop                                                         // 0x004019a9    90
                         nop                                                         // 0x004019aa    90
                         nop                                                         // 0x004019ab    90
                         nop                                                         // 0x004019ac    90
                         nop                                                         // 0x004019ad    90
                         nop                                                         // 0x004019ae    90
                         nop                                                         // 0x004019af    90
                         ret                0x0004                                   // 0x004019b0    c20400
                         nop                                                         // 0x004019b3    90
                         nop                                                         // 0x004019b4    90
                         nop                                                         // 0x004019b5    90
                         nop                                                         // 0x004019b6    90
                         nop                                                         // 0x004019b7    90
                         nop                                                         // 0x004019b8    90
                         nop                                                         // 0x004019b9    90
                         nop                                                         // 0x004019ba    90
                         nop                                                         // 0x004019bb    90
                         nop                                                         // 0x004019bc    90
                         nop                                                         // 0x004019bd    90
                         nop                                                         // 0x004019be    90
                         nop                                                         // 0x004019bf    90
                         ret                0x0004                                   // 0x004019c0    c20400
                         nop                                                         // 0x004019c3    90
                         nop                                                         // 0x004019c4    90
                         nop                                                         // 0x004019c5    90
                         nop                                                         // 0x004019c6    90
                         nop                                                         // 0x004019c7    90
                         nop                                                         // 0x004019c8    90
                         nop                                                         // 0x004019c9    90
                         nop                                                         // 0x004019ca    90
                         nop                                                         // 0x004019cb    90
                         nop                                                         // 0x004019cc    90
                         nop                                                         // 0x004019cd    90
                         nop                                                         // 0x004019ce    90
                         nop                                                         // 0x004019cf    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x004019d0    d90598a38a00
                         ret                                                         // 0x004019d6    c3
                         nop                                                         // 0x004019d7    90
                         nop                                                         // 0x004019d8    90
                         nop                                                         // 0x004019d9    90
                         nop                                                         // 0x004019da    90
                         nop                                                         // 0x004019db    90
                         nop                                                         // 0x004019dc    90
                         nop                                                         // 0x004019dd    90
                         nop                                                         // 0x004019de    90
                         nop                                                         // 0x004019df    90
                         xor.s              eax, eax                                 // 0x004019e0    33c0
                         ret                                                         // 0x004019e2    c3
                         nop                                                         // 0x004019e3    90
                         nop                                                         // 0x004019e4    90
                         nop                                                         // 0x004019e5    90
                         nop                                                         // 0x004019e6    90
                         nop                                                         // 0x004019e7    90
                         nop                                                         // 0x004019e8    90
                         nop                                                         // 0x004019e9    90
                         nop                                                         // 0x004019ea    90
                         nop                                                         // 0x004019eb    90
                         nop                                                         // 0x004019ec    90
                         nop                                                         // 0x004019ed    90
                         nop                                                         // 0x004019ee    90
                         nop                                                         // 0x004019ef    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x004019f0    8b442404
                         add                ecx, 0x14                                // 0x004019f4    83c114
                         push               esi                                      // 0x004019f7    56
                         mov                esi, dword ptr [ecx]                     // 0x004019f8    8b31
                         mov.s              edx, eax                                 // 0x004019fa    8bd0
                         mov                dword ptr [edx], esi                     // 0x004019fc    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]              // 0x004019fe    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi              // 0x00401a01    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x00401a04    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x00401a07    894a08
                         pop                esi                                      // 0x00401a0a    5e
                         ret                0x0004                                   // 0x00401a0b    c20400
                         nop                                                         // 0x00401a0e    90
                         nop                                                         // 0x00401a0f    90
                         xor.s              eax, eax                                 // 0x00401a10    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x24]                // 0x00401a12    668b4124
                         shr                eax, 0xd                                 // 0x00401a16    c1e80d
                         and                eax, 0x01                                // 0x00401a19    83e001
                         ret                                                         // 0x00401a1c    c3
                         nop                                                         // 0x00401a1d    90
                         nop                                                         // 0x00401a1e    90
                         nop                                                         // 0x00401a1f    90
                         xor.s              eax, eax                                 // 0x00401a20    33c0
                         ret                                                         // 0x00401a22    c3
                         nop                                                         // 0x00401a23    90
                         nop                                                         // 0x00401a24    90
                         nop                                                         // 0x00401a25    90
                         nop                                                         // 0x00401a26    90
                         nop                                                         // 0x00401a27    90
                         nop                                                         // 0x00401a28    90
                         nop                                                         // 0x00401a29    90
                         nop                                                         // 0x00401a2a    90
                         nop                                                         // 0x00401a2b    90
                         nop                                                         // 0x00401a2c    90
                         nop                                                         // 0x00401a2d    90
                         nop                                                         // 0x00401a2e    90
                         nop                                                         // 0x00401a2f    90
                         xor.s              eax, eax                                 // 0x00401a30    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x24]                // 0x00401a32    8a4124
                         not                al                                       // 0x00401a35    f6d0
                         shr                eax, 2                                   // 0x00401a37    c1e802
                         and                eax, 0x01                                // 0x00401a3a    83e001
                         ret                                                         // 0x00401a3d    c3
                         nop                                                         // 0x00401a3e    90
                         nop                                                         // 0x00401a3f    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00401a40    d90590a38a00
                         ret                0x0004                                   // 0x00401a46    c20400
                         nop                                                         // 0x00401a49    90
                         nop                                                         // 0x00401a4a    90
                         nop                                                         // 0x00401a4b    90
                         nop                                                         // 0x00401a4c    90
                         nop                                                         // 0x00401a4d    90
                         nop                                                         // 0x00401a4e    90
                         nop                                                         // 0x00401a4f    90
                         xor.s              eax, eax                                 // 0x00401a50    33c0
                         ret                0x0004                                   // 0x00401a52    c20400
                         nop                                                         // 0x00401a55    90
                         nop                                                         // 0x00401a56    90
                         nop                                                         // 0x00401a57    90
                         nop                                                         // 0x00401a58    90
                         nop                                                         // 0x00401a59    90
                         nop                                                         // 0x00401a5a    90
                         nop                                                         // 0x00401a5b    90
                         nop                                                         // 0x00401a5c    90
                         nop                                                         // 0x00401a5d    90
                         nop                                                         // 0x00401a5e    90
                         nop                                                         // 0x00401a5f    90
                         xor.s              eax, eax                                 // 0x00401a60    33c0
                         ret                0x0004                                   // 0x00401a62    c20400
                         nop                                                         // 0x00401a65    90
                         nop                                                         // 0x00401a66    90
                         nop                                                         // 0x00401a67    90
                         nop                                                         // 0x00401a68    90
                         nop                                                         // 0x00401a69    90
                         nop                                                         // 0x00401a6a    90
                         nop                                                         // 0x00401a6b    90
                         nop                                                         // 0x00401a6c    90
                         nop                                                         // 0x00401a6d    90
                         nop                                                         // 0x00401a6e    90
                         nop                                                         // 0x00401a6f    90
                         xor.s              eax, eax                                 // 0x00401a70    33c0
                         ret                0x0004                                   // 0x00401a72    c20400
                         nop                                                         // 0x00401a75    90
                         nop                                                         // 0x00401a76    90
                         nop                                                         // 0x00401a77    90
                         nop                                                         // 0x00401a78    90
                         nop                                                         // 0x00401a79    90
                         nop                                                         // 0x00401a7a    90
                         nop                                                         // 0x00401a7b    90
                         nop                                                         // 0x00401a7c    90
                         nop                                                         // 0x00401a7d    90
                         nop                                                         // 0x00401a7e    90
                         nop                                                         // 0x00401a7f    90
                         xor.s              eax, eax                                 // 0x00401a80    33c0
                         ret                0x0004                                   // 0x00401a82    c20400
                         nop                                                         // 0x00401a85    90
                         nop                                                         // 0x00401a86    90
                         nop                                                         // 0x00401a87    90
                         nop                                                         // 0x00401a88    90
                         nop                                                         // 0x00401a89    90
                         nop                                                         // 0x00401a8a    90
                         nop                                                         // 0x00401a8b    90
                         nop                                                         // 0x00401a8c    90
                         nop                                                         // 0x00401a8d    90
                         nop                                                         // 0x00401a8e    90
                         nop                                                         // 0x00401a8f    90
                         xor.s              eax, eax                                 // 0x00401a90    33c0
                         ret                0x0004                                   // 0x00401a92    c20400
                         nop                                                         // 0x00401a95    90
                         nop                                                         // 0x00401a96    90
                         nop                                                         // 0x00401a97    90
                         nop                                                         // 0x00401a98    90
                         nop                                                         // 0x00401a99    90
                         nop                                                         // 0x00401a9a    90
                         nop                                                         // 0x00401a9b    90
                         nop                                                         // 0x00401a9c    90
                         nop                                                         // 0x00401a9d    90
                         nop                                                         // 0x00401a9e    90
                         nop                                                         // 0x00401a9f    90
                         mov                eax, 0x00000001                          // 0x00401aa0    b801000000
                         ret                                                         // 0x00401aa5    c3
                         nop                                                         // 0x00401aa6    90
                         nop                                                         // 0x00401aa7    90
                         nop                                                         // 0x00401aa8    90
                         nop                                                         // 0x00401aa9    90
                         nop                                                         // 0x00401aaa    90
                         nop                                                         // 0x00401aab    90
                         nop                                                         // 0x00401aac    90
                         nop                                                         // 0x00401aad    90
                         nop                                                         // 0x00401aae    90
                         nop                                                         // 0x00401aaf    90
                         xor.s              eax, eax                                 // 0x00401ab0    33c0
                         ret                                                         // 0x00401ab2    c3
                         nop                                                         // 0x00401ab3    90
                         nop                                                         // 0x00401ab4    90
                         nop                                                         // 0x00401ab5    90
                         nop                                                         // 0x00401ab6    90
                         nop                                                         // 0x00401ab7    90
                         nop                                                         // 0x00401ab8    90
                         nop                                                         // 0x00401ab9    90
                         nop                                                         // 0x00401aba    90
                         nop                                                         // 0x00401abb    90
                         nop                                                         // 0x00401abc    90
                         nop                                                         // 0x00401abd    90
                         nop                                                         // 0x00401abe    90
                         nop                                                         // 0x00401abf    90
                         mov                eax, 0x00000001                          // 0x00401ac0    b801000000
                         ret                                                         // 0x00401ac5    c3
                         nop                                                         // 0x00401ac6    90
                         nop                                                         // 0x00401ac7    90
                         nop                                                         // 0x00401ac8    90
                         nop                                                         // 0x00401ac9    90
                         nop                                                         // 0x00401aca    90
                         nop                                                         // 0x00401acb    90
                         nop                                                         // 0x00401acc    90
                         nop                                                         // 0x00401acd    90
                         nop                                                         // 0x00401ace    90
                         nop                                                         // 0x00401acf    90
                         xor.s              eax, eax                                 // 0x00401ad0    33c0
                         ret                                                         // 0x00401ad2    c3
                         nop                                                         // 0x00401ad3    90
                         nop                                                         // 0x00401ad4    90
                         nop                                                         // 0x00401ad5    90
                         nop                                                         // 0x00401ad6    90
                         nop                                                         // 0x00401ad7    90
                         nop                                                         // 0x00401ad8    90
                         nop                                                         // 0x00401ad9    90
                         nop                                                         // 0x00401ada    90
                         nop                                                         // 0x00401adb    90
                         nop                                                         // 0x00401adc    90
                         nop                                                         // 0x00401add    90
                         nop                                                         // 0x00401ade    90
                         nop                                                         // 0x00401adf    90
                         xor.s              eax, eax                                 // 0x00401ae0    33c0
                         ret                                                         // 0x00401ae2    c3
                         nop                                                         // 0x00401ae3    90
                         nop                                                         // 0x00401ae4    90
                         nop                                                         // 0x00401ae5    90
                         nop                                                         // 0x00401ae6    90
                         nop                                                         // 0x00401ae7    90
                         nop                                                         // 0x00401ae8    90
                         nop                                                         // 0x00401ae9    90
                         nop                                                         // 0x00401aea    90
                         nop                                                         // 0x00401aeb    90
                         nop                                                         // 0x00401aec    90
                         nop                                                         // 0x00401aed    90
                         nop                                                         // 0x00401aee    90
                         nop                                                         // 0x00401aef    90
                         xor.s              eax, eax                                 // 0x00401af0    33c0
                         ret                                                         // 0x00401af2    c3
                         nop                                                         // 0x00401af3    90
                         nop                                                         // 0x00401af4    90
                         nop                                                         // 0x00401af5    90
                         nop                                                         // 0x00401af6    90
                         nop                                                         // 0x00401af7    90
                         nop                                                         // 0x00401af8    90
                         nop                                                         // 0x00401af9    90
                         nop                                                         // 0x00401afa    90
                         nop                                                         // 0x00401afb    90
                         nop                                                         // 0x00401afc    90
                         nop                                                         // 0x00401afd    90
                         nop                                                         // 0x00401afe    90
                         nop                                                         // 0x00401aff    90
                         xor.s              eax, eax                                 // 0x00401b00    33c0
                         ret                                                         // 0x00401b02    c3
                         nop                                                         // 0x00401b03    90
                         nop                                                         // 0x00401b04    90
                         nop                                                         // 0x00401b05    90
                         nop                                                         // 0x00401b06    90
                         nop                                                         // 0x00401b07    90
                         nop                                                         // 0x00401b08    90
                         nop                                                         // 0x00401b09    90
                         nop                                                         // 0x00401b0a    90
                         nop                                                         // 0x00401b0b    90
                         nop                                                         // 0x00401b0c    90
                         nop                                                         // 0x00401b0d    90
                         nop                                                         // 0x00401b0e    90
                         nop                                                         // 0x00401b0f    90
                         xor.s              eax, eax                                 // 0x00401b10    33c0
                         ret                                                         // 0x00401b12    c3
                         nop                                                         // 0x00401b13    90
                         nop                                                         // 0x00401b14    90
                         nop                                                         // 0x00401b15    90
                         nop                                                         // 0x00401b16    90
                         nop                                                         // 0x00401b17    90
                         nop                                                         // 0x00401b18    90
                         nop                                                         // 0x00401b19    90
                         nop                                                         // 0x00401b1a    90
                         nop                                                         // 0x00401b1b    90
                         nop                                                         // 0x00401b1c    90
                         nop                                                         // 0x00401b1d    90
                         nop                                                         // 0x00401b1e    90
                         nop                                                         // 0x00401b1f    90
                         xor.s              eax, eax                                 // 0x00401b20    33c0
                         ret                                                         // 0x00401b22    c3
                         nop                                                         // 0x00401b23    90
                         nop                                                         // 0x00401b24    90
                         nop                                                         // 0x00401b25    90
                         nop                                                         // 0x00401b26    90
                         nop                                                         // 0x00401b27    90
                         nop                                                         // 0x00401b28    90
                         nop                                                         // 0x00401b29    90
                         nop                                                         // 0x00401b2a    90
                         nop                                                         // 0x00401b2b    90
                         nop                                                         // 0x00401b2c    90
                         nop                                                         // 0x00401b2d    90
                         nop                                                         // 0x00401b2e    90
                         nop                                                         // 0x00401b2f    90
                         xor.s              eax, eax                                 // 0x00401b30    33c0
                         ret                                                         // 0x00401b32    c3
                         nop                                                         // 0x00401b33    90
                         nop                                                         // 0x00401b34    90
                         nop                                                         // 0x00401b35    90
                         nop                                                         // 0x00401b36    90
                         nop                                                         // 0x00401b37    90
                         nop                                                         // 0x00401b38    90
                         nop                                                         // 0x00401b39    90
                         nop                                                         // 0x00401b3a    90
                         nop                                                         // 0x00401b3b    90
                         nop                                                         // 0x00401b3c    90
                         nop                                                         // 0x00401b3d    90
                         nop                                                         // 0x00401b3e    90
                         nop                                                         // 0x00401b3f    90
                         xor.s              eax, eax                                 // 0x00401b40    33c0
                         ret                                                         // 0x00401b42    c3
                         nop                                                         // 0x00401b43    90
                         nop                                                         // 0x00401b44    90
                         nop                                                         // 0x00401b45    90
                         nop                                                         // 0x00401b46    90
                         nop                                                         // 0x00401b47    90
                         nop                                                         // 0x00401b48    90
                         nop                                                         // 0x00401b49    90
                         nop                                                         // 0x00401b4a    90
                         nop                                                         // 0x00401b4b    90
                         nop                                                         // 0x00401b4c    90
                         nop                                                         // 0x00401b4d    90
                         nop                                                         // 0x00401b4e    90
                         nop                                                         // 0x00401b4f    90
                         xor.s              eax, eax                                 // 0x00401b50    33c0
                         ret                                                         // 0x00401b52    c3
                         nop                                                         // 0x00401b53    90
                         nop                                                         // 0x00401b54    90
                         nop                                                         // 0x00401b55    90
                         nop                                                         // 0x00401b56    90
                         nop                                                         // 0x00401b57    90
                         nop                                                         // 0x00401b58    90
                         nop                                                         // 0x00401b59    90
                         nop                                                         // 0x00401b5a    90
                         nop                                                         // 0x00401b5b    90
                         nop                                                         // 0x00401b5c    90
                         nop                                                         // 0x00401b5d    90
                         nop                                                         // 0x00401b5e    90
                         nop                                                         // 0x00401b5f    90
                         xor.s              eax, eax                                 // 0x00401b60    33c0
                         ret                                                         // 0x00401b62    c3
                         nop                                                         // 0x00401b63    90
                         nop                                                         // 0x00401b64    90
                         nop                                                         // 0x00401b65    90
                         nop                                                         // 0x00401b66    90
                         nop                                                         // 0x00401b67    90
                         nop                                                         // 0x00401b68    90
                         nop                                                         // 0x00401b69    90
                         nop                                                         // 0x00401b6a    90
                         nop                                                         // 0x00401b6b    90
                         nop                                                         // 0x00401b6c    90
                         nop                                                         // 0x00401b6d    90
                         nop                                                         // 0x00401b6e    90
                         nop                                                         // 0x00401b6f    90
                         xor.s              eax, eax                                 // 0x00401b70    33c0
                         ret                                                         // 0x00401b72    c3
                         nop                                                         // 0x00401b73    90
                         nop                                                         // 0x00401b74    90
                         nop                                                         // 0x00401b75    90
                         nop                                                         // 0x00401b76    90
                         nop                                                         // 0x00401b77    90
                         nop                                                         // 0x00401b78    90
                         nop                                                         // 0x00401b79    90
                         nop                                                         // 0x00401b7a    90
                         nop                                                         // 0x00401b7b    90
                         nop                                                         // 0x00401b7c    90
                         nop                                                         // 0x00401b7d    90
                         nop                                                         // 0x00401b7e    90
                         nop                                                         // 0x00401b7f    90
                         xor.s              eax, eax                                 // 0x00401b80    33c0
                         ret                                                         // 0x00401b82    c3
                         nop                                                         // 0x00401b83    90
                         nop                                                         // 0x00401b84    90
                         nop                                                         // 0x00401b85    90
                         nop                                                         // 0x00401b86    90
                         nop                                                         // 0x00401b87    90
                         nop                                                         // 0x00401b88    90
                         nop                                                         // 0x00401b89    90
                         nop                                                         // 0x00401b8a    90
                         nop                                                         // 0x00401b8b    90
                         nop                                                         // 0x00401b8c    90
                         nop                                                         // 0x00401b8d    90
                         nop                                                         // 0x00401b8e    90
                         nop                                                         // 0x00401b8f    90
                         xor.s              eax, eax                                 // 0x00401b90    33c0
                         ret                                                         // 0x00401b92    c3
                         nop                                                         // 0x00401b93    90
                         nop                                                         // 0x00401b94    90
                         nop                                                         // 0x00401b95    90
                         nop                                                         // 0x00401b96    90
                         nop                                                         // 0x00401b97    90
                         nop                                                         // 0x00401b98    90
                         nop                                                         // 0x00401b99    90
                         nop                                                         // 0x00401b9a    90
                         nop                                                         // 0x00401b9b    90
                         nop                                                         // 0x00401b9c    90
                         nop                                                         // 0x00401b9d    90
                         nop                                                         // 0x00401b9e    90
                         nop                                                         // 0x00401b9f    90
                         xor.s              eax, eax                                 // 0x00401ba0    33c0
                         ret                                                         // 0x00401ba2    c3
                         nop                                                         // 0x00401ba3    90
                         nop                                                         // 0x00401ba4    90
                         nop                                                         // 0x00401ba5    90
                         nop                                                         // 0x00401ba6    90
                         nop                                                         // 0x00401ba7    90
                         nop                                                         // 0x00401ba8    90
                         nop                                                         // 0x00401ba9    90
                         nop                                                         // 0x00401baa    90
                         nop                                                         // 0x00401bab    90
                         nop                                                         // 0x00401bac    90
                         nop                                                         // 0x00401bad    90
                         nop                                                         // 0x00401bae    90
                         nop                                                         // 0x00401baf    90
                         mov                eax, dword ptr [ecx]                     // 0x00401bb0    8b01
                         call               dword ptr [eax + 0x11c]                  // 0x00401bb2    ff901c010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00401bb8    d81d90a38a00
                         fnstsw             ax                                       // 0x00401bbe    dfe0
                         test               ah, 0x01                                 // 0x00401bc0    f6c401
                         {disp8} je         _jmp_addr_0x00401bcb                     // 0x00401bc3    7406
                         mov                eax, 0x00000001                          // 0x00401bc5    b801000000
                         ret                                                         // 0x00401bca    c3
_jmp_addr_0x00401bcb:    xor.s              eax, eax                                 // 0x00401bcb    33c0
                         ret                                                         // 0x00401bcd    c3
                         nop                                                         // 0x00401bce    90
                         nop                                                         // 0x00401bcf    90
                         xor.s              eax, eax                                 // 0x00401bd0    33c0
                         ret                0x0004                                   // 0x00401bd2    c20400
                         nop                                                         // 0x00401bd5    90
                         nop                                                         // 0x00401bd6    90
                         nop                                                         // 0x00401bd7    90
                         nop                                                         // 0x00401bd8    90
                         nop                                                         // 0x00401bd9    90
                         nop                                                         // 0x00401bda    90
                         nop                                                         // 0x00401bdb    90
                         nop                                                         // 0x00401bdc    90
                         nop                                                         // 0x00401bdd    90
                         nop                                                         // 0x00401bde    90
                         nop                                                         // 0x00401bdf    90
                         xor.s              eax, eax                                 // 0x00401be0    33c0
                         ret                0x0004                                   // 0x00401be2    c20400
                         nop                                                         // 0x00401be5    90
                         nop                                                         // 0x00401be6    90
                         nop                                                         // 0x00401be7    90
                         nop                                                         // 0x00401be8    90
                         nop                                                         // 0x00401be9    90
                         nop                                                         // 0x00401bea    90
                         nop                                                         // 0x00401beb    90
                         nop                                                         // 0x00401bec    90
                         nop                                                         // 0x00401bed    90
                         nop                                                         // 0x00401bee    90
                         nop                                                         // 0x00401bef    90
                         xor.s              eax, eax                                 // 0x00401bf0    33c0
                         ret                0x0004                                   // 0x00401bf2    c20400
                         nop                                                         // 0x00401bf5    90
                         nop                                                         // 0x00401bf6    90
                         nop                                                         // 0x00401bf7    90
                         nop                                                         // 0x00401bf8    90
                         nop                                                         // 0x00401bf9    90
                         nop                                                         // 0x00401bfa    90
                         nop                                                         // 0x00401bfb    90
                         nop                                                         // 0x00401bfc    90
                         nop                                                         // 0x00401bfd    90
                         nop                                                         // 0x00401bfe    90
                         nop                                                         // 0x00401bff    90
                         xor.s              eax, eax                                 // 0x00401c00    33c0
                         ret                0x0004                                   // 0x00401c02    c20400
                         nop                                                         // 0x00401c05    90
                         nop                                                         // 0x00401c06    90
                         nop                                                         // 0x00401c07    90
                         nop                                                         // 0x00401c08    90
                         nop                                                         // 0x00401c09    90
                         nop                                                         // 0x00401c0a    90
                         nop                                                         // 0x00401c0b    90
                         nop                                                         // 0x00401c0c    90
                         nop                                                         // 0x00401c0d    90
                         nop                                                         // 0x00401c0e    90
                         nop                                                         // 0x00401c0f    90
                         push               esi                                      // 0x00401c10    56
                         push               edi                                      // 0x00401c11    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00401c12    8b7c240c
                         mov.s              esi, ecx                                 // 0x00401c16    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00401c18    8b06
                         push               edi                                      // 0x00401c1a    57
                         call               dword ptr [eax + 0x258]                  // 0x00401c1b    ff9058020000
                         test               eax, eax                                 // 0x00401c21    85c0
                         {disp8} je         _jmp_addr_0x00401c3e                     // 0x00401c23    7419
                         mov                edx, dword ptr [esi]                     // 0x00401c25    8b16
                         push               edi                                      // 0x00401c27    57
                         mov.s              ecx, esi                                 // 0x00401c28    8bce
                         call               dword ptr [edx + 0x278]                  // 0x00401c2a    ff9278020000
                         test               eax, eax                                 // 0x00401c30    85c0
                         {disp8} je         _jmp_addr_0x00401c3e                     // 0x00401c32    740a
                         pop                edi                                      // 0x00401c34    5f
                         mov                eax, 0x00000001                          // 0x00401c35    b801000000
                         pop                esi                                      // 0x00401c3a    5e
                         ret                0x0004                                   // 0x00401c3b    c20400
_jmp_addr_0x00401c3e:    pop                edi                                      // 0x00401c3e    5f
                         xor.s              eax, eax                                 // 0x00401c3f    33c0
                         pop                esi                                      // 0x00401c41    5e
                         ret                0x0004                                   // 0x00401c42    c20400
                         nop                                                         // 0x00401c45    90
                         nop                                                         // 0x00401c46    90
                         nop                                                         // 0x00401c47    90
                         nop                                                         // 0x00401c48    90
                         nop                                                         // 0x00401c49    90
                         nop                                                         // 0x00401c4a    90
                         nop                                                         // 0x00401c4b    90
                         nop                                                         // 0x00401c4c    90
                         nop                                                         // 0x00401c4d    90
                         nop                                                         // 0x00401c4e    90
                         nop                                                         // 0x00401c4f    90
                         xor.s              eax, eax                                 // 0x00401c50    33c0
                         ret                0x0004                                   // 0x00401c52    c20400
                         nop                                                         // 0x00401c55    90
                         nop                                                         // 0x00401c56    90
                         nop                                                         // 0x00401c57    90
                         nop                                                         // 0x00401c58    90
                         nop                                                         // 0x00401c59    90
                         nop                                                         // 0x00401c5a    90
                         nop                                                         // 0x00401c5b    90
                         nop                                                         // 0x00401c5c    90
                         nop                                                         // 0x00401c5d    90
                         nop                                                         // 0x00401c5e    90
                         nop                                                         // 0x00401c5f    90
                         xor.s              eax, eax                                 // 0x00401c60    33c0
                         ret                0x0004                                   // 0x00401c62    c20400
                         nop                                                         // 0x00401c65    90
                         nop                                                         // 0x00401c66    90
                         nop                                                         // 0x00401c67    90
                         nop                                                         // 0x00401c68    90
                         nop                                                         // 0x00401c69    90
                         nop                                                         // 0x00401c6a    90
                         nop                                                         // 0x00401c6b    90
                         nop                                                         // 0x00401c6c    90
                         nop                                                         // 0x00401c6d    90
                         nop                                                         // 0x00401c6e    90
                         nop                                                         // 0x00401c6f    90
                         xor.s              eax, eax                                 // 0x00401c70    33c0
                         ret                0x0004                                   // 0x00401c72    c20400
                         nop                                                         // 0x00401c75    90
                         nop                                                         // 0x00401c76    90
                         nop                                                         // 0x00401c77    90
                         nop                                                         // 0x00401c78    90
                         nop                                                         // 0x00401c79    90
                         nop                                                         // 0x00401c7a    90
                         nop                                                         // 0x00401c7b    90
                         nop                                                         // 0x00401c7c    90
                         nop                                                         // 0x00401c7d    90
                         nop                                                         // 0x00401c7e    90
                         nop                                                         // 0x00401c7f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]              // 0x00401c80    8b542404
                         mov                eax, dword ptr [ecx]                     // 0x00401c84    8b01
                         push               edx                                      // 0x00401c86    52
                         call               dword ptr [eax + 0x298]                  // 0x00401c87    ff9098020000
                         neg                eax                                      // 0x00401c8d    f7d8
                         sbb.s              eax, eax                                 // 0x00401c8f    1bc0
                         inc                eax                                      // 0x00401c91    40
                         ret                0x0004                                   // 0x00401c92    c20400
                         nop                                                         // 0x00401c95    90
                         nop                                                         // 0x00401c96    90
                         nop                                                         // 0x00401c97    90
                         nop                                                         // 0x00401c98    90
                         nop                                                         // 0x00401c99    90
                         nop                                                         // 0x00401c9a    90
                         nop                                                         // 0x00401c9b    90
                         nop                                                         // 0x00401c9c    90
                         nop                                                         // 0x00401c9d    90
                         nop                                                         // 0x00401c9e    90
                         nop                                                         // 0x00401c9f    90
                         xor.s              eax, eax                                 // 0x00401ca0    33c0
                         ret                0x0004                                   // 0x00401ca2    c20400
                         nop                                                         // 0x00401ca5    90
                         nop                                                         // 0x00401ca6    90
                         nop                                                         // 0x00401ca7    90
                         nop                                                         // 0x00401ca8    90
                         nop                                                         // 0x00401ca9    90
                         nop                                                         // 0x00401caa    90
                         nop                                                         // 0x00401cab    90
                         nop                                                         // 0x00401cac    90
                         nop                                                         // 0x00401cad    90
                         nop                                                         // 0x00401cae    90
                         nop                                                         // 0x00401caf    90
                         xor.s              eax, eax                                 // 0x00401cb0    33c0
                         ret                0x0004                                   // 0x00401cb2    c20400
                         nop                                                         // 0x00401cb5    90
                         nop                                                         // 0x00401cb6    90
                         nop                                                         // 0x00401cb7    90
                         nop                                                         // 0x00401cb8    90
                         nop                                                         // 0x00401cb9    90
                         nop                                                         // 0x00401cba    90
                         nop                                                         // 0x00401cbb    90
                         nop                                                         // 0x00401cbc    90
                         nop                                                         // 0x00401cbd    90
                         nop                                                         // 0x00401cbe    90
                         nop                                                         // 0x00401cbf    90
                         xor.s              eax, eax                                 // 0x00401cc0    33c0
                         ret                0x0004                                   // 0x00401cc2    c20400
                         nop                                                         // 0x00401cc5    90
                         nop                                                         // 0x00401cc6    90
                         nop                                                         // 0x00401cc7    90
                         nop                                                         // 0x00401cc8    90
                         nop                                                         // 0x00401cc9    90
                         nop                                                         // 0x00401cca    90
                         nop                                                         // 0x00401ccb    90
                         nop                                                         // 0x00401ccc    90
                         nop                                                         // 0x00401ccd    90
                         nop                                                         // 0x00401cce    90
                         nop                                                         // 0x00401ccf    90
                         xor.s              eax, eax                                 // 0x00401cd0    33c0
                         ret                0x0004                                   // 0x00401cd2    c20400
                         nop                                                         // 0x00401cd5    90
                         nop                                                         // 0x00401cd6    90
                         nop                                                         // 0x00401cd7    90
                         nop                                                         // 0x00401cd8    90
                         nop                                                         // 0x00401cd9    90
                         nop                                                         // 0x00401cda    90
                         nop                                                         // 0x00401cdb    90
                         nop                                                         // 0x00401cdc    90
                         nop                                                         // 0x00401cdd    90
                         nop                                                         // 0x00401cde    90
                         nop                                                         // 0x00401cdf    90
                         xor.s              eax, eax                                 // 0x00401ce0    33c0
                         ret                0x0004                                   // 0x00401ce2    c20400
                         nop                                                         // 0x00401ce5    90
                         nop                                                         // 0x00401ce6    90
                         nop                                                         // 0x00401ce7    90
                         nop                                                         // 0x00401ce8    90
                         nop                                                         // 0x00401ce9    90
                         nop                                                         // 0x00401cea    90
                         nop                                                         // 0x00401ceb    90
                         nop                                                         // 0x00401cec    90
                         nop                                                         // 0x00401ced    90
                         nop                                                         // 0x00401cee    90
                         nop                                                         // 0x00401cef    90
                         xor.s              eax, eax                                 // 0x00401cf0    33c0
                         ret                0x0004                                   // 0x00401cf2    c20400
                         nop                                                         // 0x00401cf5    90
                         nop                                                         // 0x00401cf6    90
                         nop                                                         // 0x00401cf7    90
                         nop                                                         // 0x00401cf8    90
                         nop                                                         // 0x00401cf9    90
                         nop                                                         // 0x00401cfa    90
                         nop                                                         // 0x00401cfb    90
                         nop                                                         // 0x00401cfc    90
                         nop                                                         // 0x00401cfd    90
                         nop                                                         // 0x00401cfe    90
                         nop                                                         // 0x00401cff    90
                         xor.s              eax, eax                                 // 0x00401d00    33c0
                         ret                0x0004                                   // 0x00401d02    c20400
                         nop                                                         // 0x00401d05    90
                         nop                                                         // 0x00401d06    90
                         nop                                                         // 0x00401d07    90
                         nop                                                         // 0x00401d08    90
                         nop                                                         // 0x00401d09    90
                         nop                                                         // 0x00401d0a    90
                         nop                                                         // 0x00401d0b    90
                         nop                                                         // 0x00401d0c    90
                         nop                                                         // 0x00401d0d    90
                         nop                                                         // 0x00401d0e    90
                         nop                                                         // 0x00401d0f    90
                         xor.s              eax, eax                                 // 0x00401d10    33c0
                         ret                0x0004                                   // 0x00401d12    c20400
                         nop                                                         // 0x00401d15    90
                         nop                                                         // 0x00401d16    90
                         nop                                                         // 0x00401d17    90
                         nop                                                         // 0x00401d18    90
                         nop                                                         // 0x00401d19    90
                         nop                                                         // 0x00401d1a    90
                         nop                                                         // 0x00401d1b    90
                         nop                                                         // 0x00401d1c    90
                         nop                                                         // 0x00401d1d    90
                         nop                                                         // 0x00401d1e    90
                         nop                                                         // 0x00401d1f    90
                         xor.s              eax, eax                                 // 0x00401d20    33c0
                         ret                0x0004                                   // 0x00401d22    c20400
                         nop                                                         // 0x00401d25    90
                         nop                                                         // 0x00401d26    90
                         nop                                                         // 0x00401d27    90
                         nop                                                         // 0x00401d28    90
                         nop                                                         // 0x00401d29    90
                         nop                                                         // 0x00401d2a    90
                         nop                                                         // 0x00401d2b    90
                         nop                                                         // 0x00401d2c    90
                         nop                                                         // 0x00401d2d    90
                         nop                                                         // 0x00401d2e    90
                         nop                                                         // 0x00401d2f    90
                         xor.s              eax, eax                                 // 0x00401d30    33c0
                         ret                0x0004                                   // 0x00401d32    c20400
                         nop                                                         // 0x00401d35    90
                         nop                                                         // 0x00401d36    90
                         nop                                                         // 0x00401d37    90
                         nop                                                         // 0x00401d38    90
                         nop                                                         // 0x00401d39    90
                         nop                                                         // 0x00401d3a    90
                         nop                                                         // 0x00401d3b    90
                         nop                                                         // 0x00401d3c    90
                         nop                                                         // 0x00401d3d    90
                         nop                                                         // 0x00401d3e    90
                         nop                                                         // 0x00401d3f    90
                         xor.s              eax, eax                                 // 0x00401d40    33c0
                         ret                0x0004                                   // 0x00401d42    c20400
                         nop                                                         // 0x00401d45    90
                         nop                                                         // 0x00401d46    90
                         nop                                                         // 0x00401d47    90
                         nop                                                         // 0x00401d48    90
                         nop                                                         // 0x00401d49    90
                         nop                                                         // 0x00401d4a    90
                         nop                                                         // 0x00401d4b    90
                         nop                                                         // 0x00401d4c    90
                         nop                                                         // 0x00401d4d    90
                         nop                                                         // 0x00401d4e    90
                         nop                                                         // 0x00401d4f    90
                         xor.s              eax, eax                                 // 0x00401d50    33c0
                         ret                0x0004                                   // 0x00401d52    c20400
                         nop                                                         // 0x00401d55    90
                         nop                                                         // 0x00401d56    90
                         nop                                                         // 0x00401d57    90
                         nop                                                         // 0x00401d58    90
                         nop                                                         // 0x00401d59    90
                         nop                                                         // 0x00401d5a    90
                         nop                                                         // 0x00401d5b    90
                         nop                                                         // 0x00401d5c    90
                         nop                                                         // 0x00401d5d    90
                         nop                                                         // 0x00401d5e    90
                         nop                                                         // 0x00401d5f    90
                         xor.s              eax, eax                                 // 0x00401d60    33c0
                         ret                0x0004                                   // 0x00401d62    c20400
                         nop                                                         // 0x00401d65    90
                         nop                                                         // 0x00401d66    90
                         nop                                                         // 0x00401d67    90
                         nop                                                         // 0x00401d68    90
                         nop                                                         // 0x00401d69    90
                         nop                                                         // 0x00401d6a    90
                         nop                                                         // 0x00401d6b    90
                         nop                                                         // 0x00401d6c    90
                         nop                                                         // 0x00401d6d    90
                         nop                                                         // 0x00401d6e    90
                         nop                                                         // 0x00401d6f    90
                         xor.s              eax, eax                                 // 0x00401d70    33c0
                         ret                0x0004                                   // 0x00401d72    c20400
                         nop                                                         // 0x00401d75    90
                         nop                                                         // 0x00401d76    90
                         nop                                                         // 0x00401d77    90
                         nop                                                         // 0x00401d78    90
                         nop                                                         // 0x00401d79    90
                         nop                                                         // 0x00401d7a    90
                         nop                                                         // 0x00401d7b    90
                         nop                                                         // 0x00401d7c    90
                         nop                                                         // 0x00401d7d    90
                         nop                                                         // 0x00401d7e    90
                         nop                                                         // 0x00401d7f    90
                         xor.s              eax, eax                                 // 0x00401d80    33c0
                         ret                0x0004                                   // 0x00401d82    c20400
                         nop                                                         // 0x00401d85    90
                         nop                                                         // 0x00401d86    90
                         nop                                                         // 0x00401d87    90
                         nop                                                         // 0x00401d88    90
                         nop                                                         // 0x00401d89    90
                         nop                                                         // 0x00401d8a    90
                         nop                                                         // 0x00401d8b    90
                         nop                                                         // 0x00401d8c    90
                         nop                                                         // 0x00401d8d    90
                         nop                                                         // 0x00401d8e    90
                         nop                                                         // 0x00401d8f    90
                         xor.s              eax, eax                                 // 0x00401d90    33c0
                         ret                0x0004                                   // 0x00401d92    c20400
                         nop                                                         // 0x00401d95    90
                         nop                                                         // 0x00401d96    90
                         nop                                                         // 0x00401d97    90
                         nop                                                         // 0x00401d98    90
                         nop                                                         // 0x00401d99    90
                         nop                                                         // 0x00401d9a    90
                         nop                                                         // 0x00401d9b    90
                         nop                                                         // 0x00401d9c    90
                         nop                                                         // 0x00401d9d    90
                         nop                                                         // 0x00401d9e    90
                         nop                                                         // 0x00401d9f    90
                         xor.s              eax, eax                                 // 0x00401da0    33c0
                         ret                0x0004                                   // 0x00401da2    c20400
                         nop                                                         // 0x00401da5    90
                         nop                                                         // 0x00401da6    90
                         nop                                                         // 0x00401da7    90
                         nop                                                         // 0x00401da8    90
                         nop                                                         // 0x00401da9    90
                         nop                                                         // 0x00401daa    90
                         nop                                                         // 0x00401dab    90
                         nop                                                         // 0x00401dac    90
                         nop                                                         // 0x00401dad    90
                         nop                                                         // 0x00401dae    90
                         nop                                                         // 0x00401daf    90
                         xor.s              eax, eax                                 // 0x00401db0    33c0
                         ret                0x0004                                   // 0x00401db2    c20400
                         nop                                                         // 0x00401db5    90
                         nop                                                         // 0x00401db6    90
                         nop                                                         // 0x00401db7    90
                         nop                                                         // 0x00401db8    90
                         nop                                                         // 0x00401db9    90
                         nop                                                         // 0x00401dba    90
                         nop                                                         // 0x00401dbb    90
                         nop                                                         // 0x00401dbc    90
                         nop                                                         // 0x00401dbd    90
                         nop                                                         // 0x00401dbe    90
                         nop                                                         // 0x00401dbf    90
                         xor.s              eax, eax                                 // 0x00401dc0    33c0
                         ret                0x0004                                   // 0x00401dc2    c20400
                         nop                                                         // 0x00401dc5    90
                         nop                                                         // 0x00401dc6    90
                         nop                                                         // 0x00401dc7    90
                         nop                                                         // 0x00401dc8    90
                         nop                                                         // 0x00401dc9    90
                         nop                                                         // 0x00401dca    90
                         nop                                                         // 0x00401dcb    90
                         nop                                                         // 0x00401dcc    90
                         nop                                                         // 0x00401dcd    90
                         nop                                                         // 0x00401dce    90
                         nop                                                         // 0x00401dcf    90
                         xor.s              eax, eax                                 // 0x00401dd0    33c0
                         ret                0x0004                                   // 0x00401dd2    c20400
                         nop                                                         // 0x00401dd5    90
                         nop                                                         // 0x00401dd6    90
                         nop                                                         // 0x00401dd7    90
                         nop                                                         // 0x00401dd8    90
                         nop                                                         // 0x00401dd9    90
                         nop                                                         // 0x00401dda    90
                         nop                                                         // 0x00401ddb    90
                         nop                                                         // 0x00401ddc    90
                         nop                                                         // 0x00401ddd    90
                         nop                                                         // 0x00401dde    90
                         nop                                                         // 0x00401ddf    90
                         xor.s              eax, eax                                 // 0x00401de0    33c0
                         ret                0x0004                                   // 0x00401de2    c20400
                         nop                                                         // 0x00401de5    90
                         nop                                                         // 0x00401de6    90
                         nop                                                         // 0x00401de7    90
                         nop                                                         // 0x00401de8    90
                         nop                                                         // 0x00401de9    90
                         nop                                                         // 0x00401dea    90
                         nop                                                         // 0x00401deb    90
                         nop                                                         // 0x00401dec    90
                         nop                                                         // 0x00401ded    90
                         nop                                                         // 0x00401dee    90
                         nop                                                         // 0x00401def    90
                         xor.s              eax, eax                                 // 0x00401df0    33c0
                         ret                0x0004                                   // 0x00401df2    c20400
                         nop                                                         // 0x00401df5    90
                         nop                                                         // 0x00401df6    90
                         nop                                                         // 0x00401df7    90
                         nop                                                         // 0x00401df8    90
                         nop                                                         // 0x00401df9    90
                         nop                                                         // 0x00401dfa    90
                         nop                                                         // 0x00401dfb    90
                         nop                                                         // 0x00401dfc    90
                         nop                                                         // 0x00401dfd    90
                         nop                                                         // 0x00401dfe    90
                         nop                                                         // 0x00401dff    90
                         xor.s              eax, eax                                 // 0x00401e00    33c0
                         ret                                                         // 0x00401e02    c3
                         nop                                                         // 0x00401e03    90
                         nop                                                         // 0x00401e04    90
                         nop                                                         // 0x00401e05    90
                         nop                                                         // 0x00401e06    90
                         nop                                                         // 0x00401e07    90
                         nop                                                         // 0x00401e08    90
                         nop                                                         // 0x00401e09    90
                         nop                                                         // 0x00401e0a    90
                         nop                                                         // 0x00401e0b    90
                         nop                                                         // 0x00401e0c    90
                         nop                                                         // 0x00401e0d    90
                         nop                                                         // 0x00401e0e    90
                         nop                                                         // 0x00401e0f    90
                         xor.s              eax, eax                                 // 0x00401e10    33c0
                         ret                                                         // 0x00401e12    c3
                         nop                                                         // 0x00401e13    90
                         nop                                                         // 0x00401e14    90
                         nop                                                         // 0x00401e15    90
                         nop                                                         // 0x00401e16    90
                         nop                                                         // 0x00401e17    90
                         nop                                                         // 0x00401e18    90
                         nop                                                         // 0x00401e19    90
                         nop                                                         // 0x00401e1a    90
                         nop                                                         // 0x00401e1b    90
                         nop                                                         // 0x00401e1c    90
                         nop                                                         // 0x00401e1d    90
                         nop                                                         // 0x00401e1e    90
                         nop                                                         // 0x00401e1f    90
                         xor.s              eax, eax                                 // 0x00401e20    33c0
                         ret                0x0004                                   // 0x00401e22    c20400
                         nop                                                         // 0x00401e25    90
                         nop                                                         // 0x00401e26    90
                         nop                                                         // 0x00401e27    90
                         nop                                                         // 0x00401e28    90
                         nop                                                         // 0x00401e29    90
                         nop                                                         // 0x00401e2a    90
                         nop                                                         // 0x00401e2b    90
                         nop                                                         // 0x00401e2c    90
                         nop                                                         // 0x00401e2d    90
                         nop                                                         // 0x00401e2e    90
                         nop                                                         // 0x00401e2f    90
                         xor.s              eax, eax                                 // 0x00401e30    33c0
                         ret                0x0004                                   // 0x00401e32    c20400
                         nop                                                         // 0x00401e35    90
                         nop                                                         // 0x00401e36    90
                         nop                                                         // 0x00401e37    90
                         nop                                                         // 0x00401e38    90
                         nop                                                         // 0x00401e39    90
                         nop                                                         // 0x00401e3a    90
                         nop                                                         // 0x00401e3b    90
                         nop                                                         // 0x00401e3c    90
                         nop                                                         // 0x00401e3d    90
                         nop                                                         // 0x00401e3e    90
                         nop                                                         // 0x00401e3f    90
                         xor.s              eax, eax                                 // 0x00401e40    33c0
                         ret                0x0004                                   // 0x00401e42    c20400
                         nop                                                         // 0x00401e45    90
                         nop                                                         // 0x00401e46    90
                         nop                                                         // 0x00401e47    90
                         nop                                                         // 0x00401e48    90
                         nop                                                         // 0x00401e49    90
                         nop                                                         // 0x00401e4a    90
                         nop                                                         // 0x00401e4b    90
                         nop                                                         // 0x00401e4c    90
                         nop                                                         // 0x00401e4d    90
                         nop                                                         // 0x00401e4e    90
                         nop                                                         // 0x00401e4f    90
                         xor.s              eax, eax                                 // 0x00401e50    33c0
                         ret                0x0004                                   // 0x00401e52    c20400
                         nop                                                         // 0x00401e55    90
                         nop                                                         // 0x00401e56    90
                         nop                                                         // 0x00401e57    90
                         nop                                                         // 0x00401e58    90
                         nop                                                         // 0x00401e59    90
                         nop                                                         // 0x00401e5a    90
                         nop                                                         // 0x00401e5b    90
                         nop                                                         // 0x00401e5c    90
                         nop                                                         // 0x00401e5d    90
                         nop                                                         // 0x00401e5e    90
                         nop                                                         // 0x00401e5f    90
                         xor.s              eax, eax                                 // 0x00401e60    33c0
                         ret                0x0004                                   // 0x00401e62    c20400
                         nop                                                         // 0x00401e65    90
                         nop                                                         // 0x00401e66    90
                         nop                                                         // 0x00401e67    90
                         nop                                                         // 0x00401e68    90
                         nop                                                         // 0x00401e69    90
                         nop                                                         // 0x00401e6a    90
                         nop                                                         // 0x00401e6b    90
                         nop                                                         // 0x00401e6c    90
                         nop                                                         // 0x00401e6d    90
                         nop                                                         // 0x00401e6e    90
                         nop                                                         // 0x00401e6f    90
                         xor.s              eax, eax                                 // 0x00401e70    33c0
                         ret                0x0004                                   // 0x00401e72    c20400
                         nop                                                         // 0x00401e75    90
                         nop                                                         // 0x00401e76    90
                         nop                                                         // 0x00401e77    90
                         nop                                                         // 0x00401e78    90
                         nop                                                         // 0x00401e79    90
                         nop                                                         // 0x00401e7a    90
                         nop                                                         // 0x00401e7b    90
                         nop                                                         // 0x00401e7c    90
                         nop                                                         // 0x00401e7d    90
                         nop                                                         // 0x00401e7e    90
                         nop                                                         // 0x00401e7f    90
                         xor.s              eax, eax                                 // 0x00401e80    33c0
                         ret                0x0004                                   // 0x00401e82    c20400
                         nop                                                         // 0x00401e85    90
                         nop                                                         // 0x00401e86    90
                         nop                                                         // 0x00401e87    90
                         nop                                                         // 0x00401e88    90
                         nop                                                         // 0x00401e89    90
                         nop                                                         // 0x00401e8a    90
                         nop                                                         // 0x00401e8b    90
                         nop                                                         // 0x00401e8c    90
                         nop                                                         // 0x00401e8d    90
                         nop                                                         // 0x00401e8e    90
                         nop                                                         // 0x00401e8f    90
                         xor.s              eax, eax                                 // 0x00401e90    33c0
                         ret                0x0004                                   // 0x00401e92    c20400
                         nop                                                         // 0x00401e95    90
                         nop                                                         // 0x00401e96    90
                         nop                                                         // 0x00401e97    90
                         nop                                                         // 0x00401e98    90
                         nop                                                         // 0x00401e99    90
                         nop                                                         // 0x00401e9a    90
                         nop                                                         // 0x00401e9b    90
                         nop                                                         // 0x00401e9c    90
                         nop                                                         // 0x00401e9d    90
                         nop                                                         // 0x00401e9e    90
                         nop                                                         // 0x00401e9f    90
                         xor.s              eax, eax                                 // 0x00401ea0    33c0
                         ret                0x0004                                   // 0x00401ea2    c20400
                         nop                                                         // 0x00401ea5    90
                         nop                                                         // 0x00401ea6    90
                         nop                                                         // 0x00401ea7    90
                         nop                                                         // 0x00401ea8    90
                         nop                                                         // 0x00401ea9    90
                         nop                                                         // 0x00401eaa    90
                         nop                                                         // 0x00401eab    90
                         nop                                                         // 0x00401eac    90
                         nop                                                         // 0x00401ead    90
                         nop                                                         // 0x00401eae    90
                         nop                                                         // 0x00401eaf    90
                         xor.s              eax, eax                                 // 0x00401eb0    33c0
                         ret                0x0004                                   // 0x00401eb2    c20400
                         nop                                                         // 0x00401eb5    90
                         nop                                                         // 0x00401eb6    90
                         nop                                                         // 0x00401eb7    90
                         nop                                                         // 0x00401eb8    90
                         nop                                                         // 0x00401eb9    90
                         nop                                                         // 0x00401eba    90
                         nop                                                         // 0x00401ebb    90
                         nop                                                         // 0x00401ebc    90
                         nop                                                         // 0x00401ebd    90
                         nop                                                         // 0x00401ebe    90
                         nop                                                         // 0x00401ebf    90
                         xor.s              eax, eax                                 // 0x00401ec0    33c0
                         ret                0x0004                                   // 0x00401ec2    c20400
                         nop                                                         // 0x00401ec5    90
                         nop                                                         // 0x00401ec6    90
                         nop                                                         // 0x00401ec7    90
                         nop                                                         // 0x00401ec8    90
                         nop                                                         // 0x00401ec9    90
                         nop                                                         // 0x00401eca    90
                         nop                                                         // 0x00401ecb    90
                         nop                                                         // 0x00401ecc    90
                         nop                                                         // 0x00401ecd    90
                         nop                                                         // 0x00401ece    90
                         nop                                                         // 0x00401ecf    90
                         xor.s              eax, eax                                 // 0x00401ed0    33c0
                         ret                0x0004                                   // 0x00401ed2    c20400
                         nop                                                         // 0x00401ed5    90
                         nop                                                         // 0x00401ed6    90
                         nop                                                         // 0x00401ed7    90
                         nop                                                         // 0x00401ed8    90
                         nop                                                         // 0x00401ed9    90
                         nop                                                         // 0x00401eda    90
                         nop                                                         // 0x00401edb    90
                         nop                                                         // 0x00401edc    90
                         nop                                                         // 0x00401edd    90
                         nop                                                         // 0x00401ede    90
                         nop                                                         // 0x00401edf    90
                         xor.s              eax, eax                                 // 0x00401ee0    33c0
                         ret                0x0004                                   // 0x00401ee2    c20400
                         nop                                                         // 0x00401ee5    90
                         nop                                                         // 0x00401ee6    90
                         nop                                                         // 0x00401ee7    90
                         nop                                                         // 0x00401ee8    90
                         nop                                                         // 0x00401ee9    90
                         nop                                                         // 0x00401eea    90
                         nop                                                         // 0x00401eeb    90
                         nop                                                         // 0x00401eec    90
                         nop                                                         // 0x00401eed    90
                         nop                                                         // 0x00401eee    90
                         nop                                                         // 0x00401eef    90
                         xor.s              eax, eax                                 // 0x00401ef0    33c0
                         ret                0x0004                                   // 0x00401ef2    c20400
                         nop                                                         // 0x00401ef5    90
                         nop                                                         // 0x00401ef6    90
                         nop                                                         // 0x00401ef7    90
                         nop                                                         // 0x00401ef8    90
                         nop                                                         // 0x00401ef9    90
                         nop                                                         // 0x00401efa    90
                         nop                                                         // 0x00401efb    90
                         nop                                                         // 0x00401efc    90
                         nop                                                         // 0x00401efd    90
                         nop                                                         // 0x00401efe    90
                         nop                                                         // 0x00401eff    90
                         xor.s              eax, eax                                 // 0x00401f00    33c0
                         ret                0x0004                                   // 0x00401f02    c20400
                         nop                                                         // 0x00401f05    90
                         nop                                                         // 0x00401f06    90
                         nop                                                         // 0x00401f07    90
                         nop                                                         // 0x00401f08    90
                         nop                                                         // 0x00401f09    90
                         nop                                                         // 0x00401f0a    90
                         nop                                                         // 0x00401f0b    90
                         nop                                                         // 0x00401f0c    90
                         nop                                                         // 0x00401f0d    90
                         nop                                                         // 0x00401f0e    90
                         nop                                                         // 0x00401f0f    90
                         push               esi                                      // 0x00401f10    56
                         mov.s              esi, ecx                                 // 0x00401f11    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00401f13    8b06
                         push               edi                                      // 0x00401f15    57
                         call               dword ptr [eax + 0x1f0]                  // 0x00401f16    ff90f0010000
                         test               eax, eax                                 // 0x00401f1c    85c0
                         {disp8} je         _jmp_addr_0x00401f49                     // 0x00401f1e    7429
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00401f20    8b7c240c
                         mov                edx, dword ptr [esi]                     // 0x00401f24    8b16
                         push               edi                                      // 0x00401f26    57
                         mov.s              ecx, esi                                 // 0x00401f27    8bce
                         call               dword ptr [edx + 0x2a0]                  // 0x00401f29    ff92a0020000
                         test               eax, eax                                 // 0x00401f2f    85c0
                         {disp8} je         _jmp_addr_0x00401f49                     // 0x00401f31    7416
                         push               edi                                      // 0x00401f33    57
                         mov.s              ecx, esi                                 // 0x00401f34    8bce
                         call               _jmp_addr_0x004e3ee0                     // 0x00401f36    e8a51f0e00
                         test               eax, eax                                 // 0x00401f3b    85c0
                         {disp8} jne        _jmp_addr_0x00401f49                     // 0x00401f3d    750a
                         pop                edi                                      // 0x00401f3f    5f
                         mov                eax, 0x00000001                          // 0x00401f40    b801000000
                         pop                esi                                      // 0x00401f45    5e
                         ret                0x0004                                   // 0x00401f46    c20400
_jmp_addr_0x00401f49:    pop                edi                                      // 0x00401f49    5f
                         xor.s              eax, eax                                 // 0x00401f4a    33c0
                         pop                esi                                      // 0x00401f4c    5e
                         ret                0x0004                                   // 0x00401f4d    c20400
                         mov                eax, dword ptr [ecx]                     // 0x00401f50    8b01
                         call               dword ptr [eax + 0x1f0]                  // 0x00401f52    ff90f0010000
                         ret                0x0004                                   // 0x00401f58    c20400
                         call               _jmp_addr_0x00401879                     // 0x00401f5b    e819f9ffff
                         push               esi                                      // 0x00401f60    56
                         mov.s              esi, ecx                                 // 0x00401f61    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00401f63    8b06
                         call               dword ptr [eax + 0x1f0]                  // 0x00401f65    ff90f0010000
                         test               eax, eax                                 // 0x00401f6b    85c0
                         {disp8} je         _jmp_addr_0x00401f8b                     // 0x00401f6d    741c
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00401f6f    8b442408
                         mov                edx, dword ptr [esi]                     // 0x00401f73    8b16
                         push               eax                                      // 0x00401f75    50
                         mov.s              ecx, esi                                 // 0x00401f76    8bce
                         call               dword ptr [edx + 0x258]                  // 0x00401f78    ff9258020000
                         test               eax, eax                                 // 0x00401f7e    85c0
                         {disp8} je         _jmp_addr_0x00401f8b                     // 0x00401f80    7409
                         mov                eax, 0x00000001                          // 0x00401f82    b801000000
                         pop                esi                                      // 0x00401f87    5e
                         ret                0x0004                                   // 0x00401f88    c20400
_jmp_addr_0x00401f8b:    xor.s              eax, eax                                 // 0x00401f8b    33c0
                         pop                esi                                      // 0x00401f8d    5e
                         ret                0x0004                                   // 0x00401f8e    c20400
                         nop                                                         // 0x00401f91    90
                         nop                                                         // 0x00401f92    90
                         nop                                                         // 0x00401f93    90
                         nop                                                         // 0x00401f94    90
                         nop                                                         // 0x00401f95    90
                         nop                                                         // 0x00401f96    90
                         nop                                                         // 0x00401f97    90
                         nop                                                         // 0x00401f98    90
                         nop                                                         // 0x00401f99    90
                         nop                                                         // 0x00401f9a    90
                         nop                                                         // 0x00401f9b    90
                         nop                                                         // 0x00401f9c    90
                         nop                                                         // 0x00401f9d    90
                         nop                                                         // 0x00401f9e    90
                         nop                                                         // 0x00401f9f    90
                         xor.s              eax, eax                                 // 0x00401fa0    33c0
                         ret                0x0004                                   // 0x00401fa2    c20400
                         nop                                                         // 0x00401fa5    90
                         nop                                                         // 0x00401fa6    90
                         nop                                                         // 0x00401fa7    90
                         nop                                                         // 0x00401fa8    90
                         nop                                                         // 0x00401fa9    90
                         nop                                                         // 0x00401faa    90
                         nop                                                         // 0x00401fab    90
                         nop                                                         // 0x00401fac    90
                         nop                                                         // 0x00401fad    90
                         nop                                                         // 0x00401fae    90
                         nop                                                         // 0x00401faf    90
                         xor.s              eax, eax                                 // 0x00401fb0    33c0
                         ret                0x0004                                   // 0x00401fb2    c20400
                         nop                                                         // 0x00401fb5    90
                         nop                                                         // 0x00401fb6    90
                         nop                                                         // 0x00401fb7    90
                         nop                                                         // 0x00401fb8    90
                         nop                                                         // 0x00401fb9    90
                         nop                                                         // 0x00401fba    90
                         nop                                                         // 0x00401fbb    90
                         nop                                                         // 0x00401fbc    90
                         nop                                                         // 0x00401fbd    90
                         nop                                                         // 0x00401fbe    90
                         nop                                                         // 0x00401fbf    90
                         xor.s              eax, eax                                 // 0x00401fc0    33c0
                         ret                0x0004                                   // 0x00401fc2    c20400
                         nop                                                         // 0x00401fc5    90
                         nop                                                         // 0x00401fc6    90
                         nop                                                         // 0x00401fc7    90
                         nop                                                         // 0x00401fc8    90
                         nop                                                         // 0x00401fc9    90
                         nop                                                         // 0x00401fca    90
                         nop                                                         // 0x00401fcb    90
                         nop                                                         // 0x00401fcc    90
                         nop                                                         // 0x00401fcd    90
                         nop                                                         // 0x00401fce    90
                         nop                                                         // 0x00401fcf    90
                         xor.s              eax, eax                                 // 0x00401fd0    33c0
                         ret                0x0004                                   // 0x00401fd2    c20400
                         nop                                                         // 0x00401fd5    90
                         nop                                                         // 0x00401fd6    90
                         nop                                                         // 0x00401fd7    90
                         nop                                                         // 0x00401fd8    90
                         nop                                                         // 0x00401fd9    90
                         nop                                                         // 0x00401fda    90
                         nop                                                         // 0x00401fdb    90
                         nop                                                         // 0x00401fdc    90
                         nop                                                         // 0x00401fdd    90
                         nop                                                         // 0x00401fde    90
                         nop                                                         // 0x00401fdf    90
                         xor.s              eax, eax                                 // 0x00401fe0    33c0
                         ret                0x0004                                   // 0x00401fe2    c20400
                         nop                                                         // 0x00401fe5    90
                         nop                                                         // 0x00401fe6    90
                         nop                                                         // 0x00401fe7    90
                         nop                                                         // 0x00401fe8    90
                         nop                                                         // 0x00401fe9    90
                         nop                                                         // 0x00401fea    90
                         nop                                                         // 0x00401feb    90
                         nop                                                         // 0x00401fec    90
                         nop                                                         // 0x00401fed    90
                         nop                                                         // 0x00401fee    90
                         nop                                                         // 0x00401fef    90
                         xor.s              eax, eax                                 // 0x00401ff0    33c0
                         ret                0x0004                                   // 0x00401ff2    c20400
                         nop                                                         // 0x00401ff5    90
                         nop                                                         // 0x00401ff6    90
                         nop                                                         // 0x00401ff7    90
                         nop                                                         // 0x00401ff8    90
                         nop                                                         // 0x00401ff9    90
                         nop                                                         // 0x00401ffa    90
                         nop                                                         // 0x00401ffb    90
                         nop                                                         // 0x00401ffc    90
                         nop                                                         // 0x00401ffd    90
                         nop                                                         // 0x00401ffe    90
                         nop                                                         // 0x00401fff    90
                         xor.s              eax, eax                                 // 0x00402000    33c0
                         ret                0x0004                                   // 0x00402002    c20400
                         nop                                                         // 0x00402005    90
                         nop                                                         // 0x00402006    90
                         nop                                                         // 0x00402007    90
                         nop                                                         // 0x00402008    90
                         nop                                                         // 0x00402009    90
                         nop                                                         // 0x0040200a    90
                         nop                                                         // 0x0040200b    90
                         nop                                                         // 0x0040200c    90
                         nop                                                         // 0x0040200d    90
                         nop                                                         // 0x0040200e    90
                         nop                                                         // 0x0040200f    90
                         xor.s              eax, eax                                 // 0x00402010    33c0
                         ret                0x0004                                   // 0x00402012    c20400
                         nop                                                         // 0x00402015    90
                         nop                                                         // 0x00402016    90
                         nop                                                         // 0x00402017    90
                         nop                                                         // 0x00402018    90
                         nop                                                         // 0x00402019    90
                         nop                                                         // 0x0040201a    90
                         nop                                                         // 0x0040201b    90
                         nop                                                         // 0x0040201c    90
                         nop                                                         // 0x0040201d    90
                         nop                                                         // 0x0040201e    90
                         nop                                                         // 0x0040201f    90
                         xor.s              eax, eax                                 // 0x00402020    33c0
                         ret                0x0004                                   // 0x00402022    c20400
                         nop                                                         // 0x00402025    90
                         nop                                                         // 0x00402026    90
                         nop                                                         // 0x00402027    90
                         nop                                                         // 0x00402028    90
                         nop                                                         // 0x00402029    90
                         nop                                                         // 0x0040202a    90
                         nop                                                         // 0x0040202b    90
                         nop                                                         // 0x0040202c    90
                         nop                                                         // 0x0040202d    90
                         nop                                                         // 0x0040202e    90
                         nop                                                         // 0x0040202f    90
                         xor.s              eax, eax                                 // 0x00402030    33c0
                         ret                0x0004                                   // 0x00402032    c20400
                         nop                                                         // 0x00402035    90
                         nop                                                         // 0x00402036    90
                         nop                                                         // 0x00402037    90
                         nop                                                         // 0x00402038    90
                         nop                                                         // 0x00402039    90
                         nop                                                         // 0x0040203a    90
                         nop                                                         // 0x0040203b    90
                         nop                                                         // 0x0040203c    90
                         nop                                                         // 0x0040203d    90
                         nop                                                         // 0x0040203e    90
                         nop                                                         // 0x0040203f    90
                         xor.s              eax, eax                                 // 0x00402040    33c0
                         ret                0x0004                                   // 0x00402042    c20400
                         nop                                                         // 0x00402045    90
                         nop                                                         // 0x00402046    90
                         nop                                                         // 0x00402047    90
                         nop                                                         // 0x00402048    90
                         nop                                                         // 0x00402049    90
                         nop                                                         // 0x0040204a    90
                         nop                                                         // 0x0040204b    90
                         nop                                                         // 0x0040204c    90
                         nop                                                         // 0x0040204d    90
                         nop                                                         // 0x0040204e    90
                         nop                                                         // 0x0040204f    90
                         xor.s              eax, eax                                 // 0x00402050    33c0
                         ret                0x0004                                   // 0x00402052    c20400
                         nop                                                         // 0x00402055    90
                         nop                                                         // 0x00402056    90
                         nop                                                         // 0x00402057    90
                         nop                                                         // 0x00402058    90
                         nop                                                         // 0x00402059    90
                         nop                                                         // 0x0040205a    90
                         nop                                                         // 0x0040205b    90
                         nop                                                         // 0x0040205c    90
                         nop                                                         // 0x0040205d    90
                         nop                                                         // 0x0040205e    90
                         nop                                                         // 0x0040205f    90
                         xor.s              eax, eax                                 // 0x00402060    33c0
                         ret                0x0004                                   // 0x00402062    c20400
                         nop                                                         // 0x00402065    90
                         nop                                                         // 0x00402066    90
                         nop                                                         // 0x00402067    90
                         nop                                                         // 0x00402068    90
                         nop                                                         // 0x00402069    90
                         nop                                                         // 0x0040206a    90
                         nop                                                         // 0x0040206b    90
                         nop                                                         // 0x0040206c    90
                         nop                                                         // 0x0040206d    90
                         nop                                                         // 0x0040206e    90
                         nop                                                         // 0x0040206f    90
                         xor.s              eax, eax                                 // 0x00402070    33c0
                         ret                0x0004                                   // 0x00402072    c20400
                         nop                                                         // 0x00402075    90
                         nop                                                         // 0x00402076    90
                         nop                                                         // 0x00402077    90
                         nop                                                         // 0x00402078    90
                         nop                                                         // 0x00402079    90
                         nop                                                         // 0x0040207a    90
                         nop                                                         // 0x0040207b    90
                         nop                                                         // 0x0040207c    90
                         nop                                                         // 0x0040207d    90
                         nop                                                         // 0x0040207e    90
                         nop                                                         // 0x0040207f    90
                         xor.s              eax, eax                                 // 0x00402080    33c0
                         ret                0x0004                                   // 0x00402082    c20400
                         nop                                                         // 0x00402085    90
                         nop                                                         // 0x00402086    90
                         nop                                                         // 0x00402087    90
                         nop                                                         // 0x00402088    90
                         nop                                                         // 0x00402089    90
                         nop                                                         // 0x0040208a    90
                         nop                                                         // 0x0040208b    90
                         nop                                                         // 0x0040208c    90
                         nop                                                         // 0x0040208d    90
                         nop                                                         // 0x0040208e    90
                         nop                                                         // 0x0040208f    90
                         xor.s              eax, eax                                 // 0x00402090    33c0
                         ret                0x0004                                   // 0x00402092    c20400
                         nop                                                         // 0x00402095    90
                         nop                                                         // 0x00402096    90
                         nop                                                         // 0x00402097    90
                         nop                                                         // 0x00402098    90
                         nop                                                         // 0x00402099    90
                         nop                                                         // 0x0040209a    90
                         nop                                                         // 0x0040209b    90
                         nop                                                         // 0x0040209c    90
                         nop                                                         // 0x0040209d    90
                         nop                                                         // 0x0040209e    90
                         nop                                                         // 0x0040209f    90
                         xor.s              eax, eax                                 // 0x004020a0    33c0
                         ret                0x0004                                   // 0x004020a2    c20400
                         nop                                                         // 0x004020a5    90
                         nop                                                         // 0x004020a6    90
                         nop                                                         // 0x004020a7    90
                         nop                                                         // 0x004020a8    90
                         nop                                                         // 0x004020a9    90
                         nop                                                         // 0x004020aa    90
                         nop                                                         // 0x004020ab    90
                         nop                                                         // 0x004020ac    90
                         nop                                                         // 0x004020ad    90
                         nop                                                         // 0x004020ae    90
                         nop                                                         // 0x004020af    90
                         xor.s              eax, eax                                 // 0x004020b0    33c0
                         ret                0x0004                                   // 0x004020b2    c20400
                         nop                                                         // 0x004020b5    90
                         nop                                                         // 0x004020b6    90
                         nop                                                         // 0x004020b7    90
                         nop                                                         // 0x004020b8    90
                         nop                                                         // 0x004020b9    90
                         nop                                                         // 0x004020ba    90
                         nop                                                         // 0x004020bb    90
                         nop                                                         // 0x004020bc    90
                         nop                                                         // 0x004020bd    90
                         nop                                                         // 0x004020be    90
                         nop                                                         // 0x004020bf    90
                         xor.s              eax, eax                                 // 0x004020c0    33c0
                         ret                0x0004                                   // 0x004020c2    c20400
                         nop                                                         // 0x004020c5    90
                         nop                                                         // 0x004020c6    90
                         nop                                                         // 0x004020c7    90
                         nop                                                         // 0x004020c8    90
                         nop                                                         // 0x004020c9    90
                         nop                                                         // 0x004020ca    90
                         nop                                                         // 0x004020cb    90
                         nop                                                         // 0x004020cc    90
                         nop                                                         // 0x004020cd    90
                         nop                                                         // 0x004020ce    90
                         nop                                                         // 0x004020cf    90
                         xor.s              eax, eax                                 // 0x004020d0    33c0
                         ret                0x0004                                   // 0x004020d2    c20400
                         nop                                                         // 0x004020d5    90
                         nop                                                         // 0x004020d6    90
                         nop                                                         // 0x004020d7    90
                         nop                                                         // 0x004020d8    90
                         nop                                                         // 0x004020d9    90
                         nop                                                         // 0x004020da    90
                         nop                                                         // 0x004020db    90
                         nop                                                         // 0x004020dc    90
                         nop                                                         // 0x004020dd    90
                         nop                                                         // 0x004020de    90
                         nop                                                         // 0x004020df    90
                         xor.s              eax, eax                                 // 0x004020e0    33c0
                         ret                0x0004                                   // 0x004020e2    c20400
                         nop                                                         // 0x004020e5    90
                         nop                                                         // 0x004020e6    90
                         nop                                                         // 0x004020e7    90
                         nop                                                         // 0x004020e8    90
                         nop                                                         // 0x004020e9    90
                         nop                                                         // 0x004020ea    90
                         nop                                                         // 0x004020eb    90
                         nop                                                         // 0x004020ec    90
                         nop                                                         // 0x004020ed    90
                         nop                                                         // 0x004020ee    90
                         nop                                                         // 0x004020ef    90
                         xor.s              eax, eax                                 // 0x004020f0    33c0
                         ret                0x0004                                   // 0x004020f2    c20400
                         nop                                                         // 0x004020f5    90
                         nop                                                         // 0x004020f6    90
                         nop                                                         // 0x004020f7    90
                         nop                                                         // 0x004020f8    90
                         nop                                                         // 0x004020f9    90
                         nop                                                         // 0x004020fa    90
                         nop                                                         // 0x004020fb    90
                         nop                                                         // 0x004020fc    90
                         nop                                                         // 0x004020fd    90
                         nop                                                         // 0x004020fe    90
                         nop                                                         // 0x004020ff    90
                         mov                eax, dword ptr [ecx]                     // 0x00402100    8b01
                         call               dword ptr [eax + 0x3c4]                  // 0x00402102    ff90c4030000
                         ret                0x0004                                   // 0x00402108    c20400
                         call               _jmp_addr_0x00401879                     // 0x0040210b    e869f7ffff
                         xor.s              eax, eax                                 // 0x00402110    33c0
                         ret                                                         // 0x00402112    c3
                         nop                                                         // 0x00402113    90
                         nop                                                         // 0x00402114    90
                         nop                                                         // 0x00402115    90
                         nop                                                         // 0x00402116    90
                         nop                                                         // 0x00402117    90
                         nop                                                         // 0x00402118    90
                         nop                                                         // 0x00402119    90
                         nop                                                         // 0x0040211a    90
                         nop                                                         // 0x0040211b    90
                         nop                                                         // 0x0040211c    90
                         nop                                                         // 0x0040211d    90
                         nop                                                         // 0x0040211e    90
                         nop                                                         // 0x0040211f    90
                         xor.s              eax, eax                                 // 0x00402120    33c0
                         ret                                                         // 0x00402122    c3
                         nop                                                         // 0x00402123    90
                         nop                                                         // 0x00402124    90
                         nop                                                         // 0x00402125    90
                         nop                                                         // 0x00402126    90
                         nop                                                         // 0x00402127    90
                         nop                                                         // 0x00402128    90
                         nop                                                         // 0x00402129    90
                         nop                                                         // 0x0040212a    90
                         nop                                                         // 0x0040212b    90
                         nop                                                         // 0x0040212c    90
                         nop                                                         // 0x0040212d    90
                         nop                                                         // 0x0040212e    90
                         nop                                                         // 0x0040212f    90
                         xor.s              eax, eax                                 // 0x00402130    33c0
                         ret                0x0004                                   // 0x00402132    c20400
                         nop                                                         // 0x00402135    90
                         nop                                                         // 0x00402136    90
                         nop                                                         // 0x00402137    90
                         nop                                                         // 0x00402138    90
                         nop                                                         // 0x00402139    90
                         nop                                                         // 0x0040213a    90
                         nop                                                         // 0x0040213b    90
                         nop                                                         // 0x0040213c    90
                         nop                                                         // 0x0040213d    90
                         nop                                                         // 0x0040213e    90
                         nop                                                         // 0x0040213f    90
                         xor.s              eax, eax                                 // 0x00402140    33c0
                         ret                0x0004                                   // 0x00402142    c20400
                         nop                                                         // 0x00402145    90
                         nop                                                         // 0x00402146    90
                         nop                                                         // 0x00402147    90
                         nop                                                         // 0x00402148    90
                         nop                                                         // 0x00402149    90
                         nop                                                         // 0x0040214a    90
                         nop                                                         // 0x0040214b    90
                         nop                                                         // 0x0040214c    90
                         nop                                                         // 0x0040214d    90
                         nop                                                         // 0x0040214e    90
                         nop                                                         // 0x0040214f    90
                         xor.s              eax, eax                                 // 0x00402150    33c0
                         ret                0x0004                                   // 0x00402152    c20400
                         nop                                                         // 0x00402155    90
                         nop                                                         // 0x00402156    90
                         nop                                                         // 0x00402157    90
                         nop                                                         // 0x00402158    90
                         nop                                                         // 0x00402159    90
                         nop                                                         // 0x0040215a    90
                         nop                                                         // 0x0040215b    90
                         nop                                                         // 0x0040215c    90
                         nop                                                         // 0x0040215d    90
                         nop                                                         // 0x0040215e    90
                         nop                                                         // 0x0040215f    90
                         xor.s              eax, eax                                 // 0x00402160    33c0
                         ret                                                         // 0x00402162    c3
                         nop                                                         // 0x00402163    90
                         nop                                                         // 0x00402164    90
                         nop                                                         // 0x00402165    90
                         nop                                                         // 0x00402166    90
                         nop                                                         // 0x00402167    90
                         nop                                                         // 0x00402168    90
                         nop                                                         // 0x00402169    90
                         nop                                                         // 0x0040216a    90
                         nop                                                         // 0x0040216b    90
                         nop                                                         // 0x0040216c    90
                         nop                                                         // 0x0040216d    90
                         nop                                                         // 0x0040216e    90
                         nop                                                         // 0x0040216f    90
                         xor.s              eax, eax                                 // 0x00402170    33c0
                         ret                                                         // 0x00402172    c3
                         nop                                                         // 0x00402173    90
                         nop                                                         // 0x00402174    90
                         nop                                                         // 0x00402175    90
                         nop                                                         // 0x00402176    90
                         nop                                                         // 0x00402177    90
                         nop                                                         // 0x00402178    90
                         nop                                                         // 0x00402179    90
                         nop                                                         // 0x0040217a    90
                         nop                                                         // 0x0040217b    90
                         nop                                                         // 0x0040217c    90
                         nop                                                         // 0x0040217d    90
                         nop                                                         // 0x0040217e    90
                         nop                                                         // 0x0040217f    90
                         xor.s              eax, eax                                 // 0x00402180    33c0
                         ret                                                         // 0x00402182    c3
                         nop                                                         // 0x00402183    90
                         nop                                                         // 0x00402184    90
                         nop                                                         // 0x00402185    90
                         nop                                                         // 0x00402186    90
                         nop                                                         // 0x00402187    90
                         nop                                                         // 0x00402188    90
                         nop                                                         // 0x00402189    90
                         nop                                                         // 0x0040218a    90
                         nop                                                         // 0x0040218b    90
                         nop                                                         // 0x0040218c    90
                         nop                                                         // 0x0040218d    90
                         nop                                                         // 0x0040218e    90
                         nop                                                         // 0x0040218f    90
                         xor.s              eax, eax                                 // 0x00402190    33c0
                         ret                                                         // 0x00402192    c3
                         nop                                                         // 0x00402193    90
                         nop                                                         // 0x00402194    90
                         nop                                                         // 0x00402195    90
                         nop                                                         // 0x00402196    90
                         nop                                                         // 0x00402197    90
                         nop                                                         // 0x00402198    90
                         nop                                                         // 0x00402199    90
                         nop                                                         // 0x0040219a    90
                         nop                                                         // 0x0040219b    90
                         nop                                                         // 0x0040219c    90
                         nop                                                         // 0x0040219d    90
                         nop                                                         // 0x0040219e    90
                         nop                                                         // 0x0040219f    90
                         xor.s              eax, eax                                 // 0x004021a0    33c0
                         ret                                                         // 0x004021a2    c3
                         nop                                                         // 0x004021a3    90
                         nop                                                         // 0x004021a4    90
                         nop                                                         // 0x004021a5    90
                         nop                                                         // 0x004021a6    90
                         nop                                                         // 0x004021a7    90
                         nop                                                         // 0x004021a8    90
                         nop                                                         // 0x004021a9    90
                         nop                                                         // 0x004021aa    90
                         nop                                                         // 0x004021ab    90
                         nop                                                         // 0x004021ac    90
                         nop                                                         // 0x004021ad    90
                         nop                                                         // 0x004021ae    90
                         nop                                                         // 0x004021af    90
                         xor.s              eax, eax                                 // 0x004021b0    33c0
                         ret                                                         // 0x004021b2    c3
                         nop                                                         // 0x004021b3    90
                         nop                                                         // 0x004021b4    90
                         nop                                                         // 0x004021b5    90
                         nop                                                         // 0x004021b6    90
                         nop                                                         // 0x004021b7    90
                         nop                                                         // 0x004021b8    90
                         nop                                                         // 0x004021b9    90
                         nop                                                         // 0x004021ba    90
                         nop                                                         // 0x004021bb    90
                         nop                                                         // 0x004021bc    90
                         nop                                                         // 0x004021bd    90
                         nop                                                         // 0x004021be    90
                         nop                                                         // 0x004021bf    90
                         xor.s              eax, eax                                 // 0x004021c0    33c0
                         ret                                                         // 0x004021c2    c3
                         nop                                                         // 0x004021c3    90
                         nop                                                         // 0x004021c4    90
                         nop                                                         // 0x004021c5    90
                         nop                                                         // 0x004021c6    90
                         nop                                                         // 0x004021c7    90
                         nop                                                         // 0x004021c8    90
                         nop                                                         // 0x004021c9    90
                         nop                                                         // 0x004021ca    90
                         nop                                                         // 0x004021cb    90
                         nop                                                         // 0x004021cc    90
                         nop                                                         // 0x004021cd    90
                         nop                                                         // 0x004021ce    90
                         nop                                                         // 0x004021cf    90
                         xor.s              eax, eax                                 // 0x004021d0    33c0
                         ret                                                         // 0x004021d2    c3
                         nop                                                         // 0x004021d3    90
                         nop                                                         // 0x004021d4    90
                         nop                                                         // 0x004021d5    90
                         nop                                                         // 0x004021d6    90
                         nop                                                         // 0x004021d7    90
                         nop                                                         // 0x004021d8    90
                         nop                                                         // 0x004021d9    90
                         nop                                                         // 0x004021da    90
                         nop                                                         // 0x004021db    90
                         nop                                                         // 0x004021dc    90
                         nop                                                         // 0x004021dd    90
                         nop                                                         // 0x004021de    90
                         nop                                                         // 0x004021df    90
                         xor.s              eax, eax                                 // 0x004021e0    33c0
                         ret                                                         // 0x004021e2    c3
                         nop                                                         // 0x004021e3    90
                         nop                                                         // 0x004021e4    90
                         nop                                                         // 0x004021e5    90
                         nop                                                         // 0x004021e6    90
                         nop                                                         // 0x004021e7    90
                         nop                                                         // 0x004021e8    90
                         nop                                                         // 0x004021e9    90
                         nop                                                         // 0x004021ea    90
                         nop                                                         // 0x004021eb    90
                         nop                                                         // 0x004021ec    90
                         nop                                                         // 0x004021ed    90
                         nop                                                         // 0x004021ee    90
                         nop                                                         // 0x004021ef    90
                         xor.s              eax, eax                                 // 0x004021f0    33c0
                         ret                                                         // 0x004021f2    c3
                         nop                                                         // 0x004021f3    90
                         nop                                                         // 0x004021f4    90
                         nop                                                         // 0x004021f5    90
                         nop                                                         // 0x004021f6    90
                         nop                                                         // 0x004021f7    90
                         nop                                                         // 0x004021f8    90
                         nop                                                         // 0x004021f9    90
                         nop                                                         // 0x004021fa    90
                         nop                                                         // 0x004021fb    90
                         nop                                                         // 0x004021fc    90
                         nop                                                         // 0x004021fd    90
                         nop                                                         // 0x004021fe    90
                         nop                                                         // 0x004021ff    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x00402200    d90598a38a00
                         ret                                                         // 0x00402206    c3
                         nop                                                         // 0x00402207    90
                         nop                                                         // 0x00402208    90
                         nop                                                         // 0x00402209    90
                         nop                                                         // 0x0040220a    90
                         nop                                                         // 0x0040220b    90
                         nop                                                         // 0x0040220c    90
                         nop                                                         // 0x0040220d    90
                         nop                                                         // 0x0040220e    90
                         nop                                                         // 0x0040220f    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x00402210    d90598a38a00
                         ret                                                         // 0x00402216    c3
                         nop                                                         // 0x00402217    90
                         nop                                                         // 0x00402218    90
                         nop                                                         // 0x00402219    90
                         nop                                                         // 0x0040221a    90
                         nop                                                         // 0x0040221b    90
                         nop                                                         // 0x0040221c    90
                         nop                                                         // 0x0040221d    90
                         nop                                                         // 0x0040221e    90
                         nop                                                         // 0x0040221f    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x00402220    d90598a38a00
                         ret                                                         // 0x00402226    c3
                         nop                                                         // 0x00402227    90
                         nop                                                         // 0x00402228    90
                         nop                                                         // 0x00402229    90
                         nop                                                         // 0x0040222a    90
                         nop                                                         // 0x0040222b    90
                         nop                                                         // 0x0040222c    90
                         nop                                                         // 0x0040222d    90
                         nop                                                         // 0x0040222e    90
                         nop                                                         // 0x0040222f    90
                         xor.s              eax, eax                                 // 0x00402230    33c0
                         ret                                                         // 0x00402232    c3
                         nop                                                         // 0x00402233    90
                         nop                                                         // 0x00402234    90
                         nop                                                         // 0x00402235    90
                         nop                                                         // 0x00402236    90
                         nop                                                         // 0x00402237    90
                         nop                                                         // 0x00402238    90
                         nop                                                         // 0x00402239    90
                         nop                                                         // 0x0040223a    90
                         nop                                                         // 0x0040223b    90
                         nop                                                         // 0x0040223c    90
                         nop                                                         // 0x0040223d    90
                         nop                                                         // 0x0040223e    90
                         nop                                                         // 0x0040223f    90
                         xor.s              eax, eax                                 // 0x00402240    33c0
                         {disp8} mov        al, byte ptr [esp + 0x04]                // 0x00402242    8a442404
                         xor.s              edx, edx                                 // 0x00402246    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x24]                // 0x00402248    668b5124
                         and                eax, 0x01                                // 0x0040224c    83e001
                         shl                eax, 0xa                                 // 0x0040224f    c1e00a
                         and                edx, 0x0000fbff                          // 0x00402252    81e2fffb0000
                         or.s               eax, edx                                 // 0x00402258    0bc2
                         {disp8} mov        word ptr [ecx + 0x24], ax                // 0x0040225a    66894124
                         ret                0x0004                                   // 0x0040225e    c20400
                         nop                                                         // 0x00402261    90
                         nop                                                         // 0x00402262    90
                         nop                                                         // 0x00402263    90
                         nop                                                         // 0x00402264    90
                         nop                                                         // 0x00402265    90
                         nop                                                         // 0x00402266    90
                         nop                                                         // 0x00402267    90
                         nop                                                         // 0x00402268    90
                         nop                                                         // 0x00402269    90
                         nop                                                         // 0x0040226a    90
                         nop                                                         // 0x0040226b    90
                         nop                                                         // 0x0040226c    90
                         nop                                                         // 0x0040226d    90
                         nop                                                         // 0x0040226e    90
                         nop                                                         // 0x0040226f    90
                         xor.s              eax, eax                                 // 0x00402270    33c0
                         ret                                                         // 0x00402272    c3
                         nop                                                         // 0x00402273    90
                         nop                                                         // 0x00402274    90
                         nop                                                         // 0x00402275    90
                         nop                                                         // 0x00402276    90
                         nop                                                         // 0x00402277    90
                         nop                                                         // 0x00402278    90
                         nop                                                         // 0x00402279    90
                         nop                                                         // 0x0040227a    90
                         nop                                                         // 0x0040227b    90
                         nop                                                         // 0x0040227c    90
                         nop                                                         // 0x0040227d    90
                         nop                                                         // 0x0040227e    90
                         nop                                                         // 0x0040227f    90
                         xor.s              eax, eax                                 // 0x00402280    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x24]                // 0x00402282    668b4124
                         shr                eax, 9                                   // 0x00402286    c1e809
                         and                eax, 0x01                                // 0x00402289    83e001
                         ret                                                         // 0x0040228c    c3
                         nop                                                         // 0x0040228d    90
                         nop                                                         // 0x0040228e    90
                         nop                                                         // 0x0040228f    90
                         xor.s              eax, eax                                 // 0x00402290    33c0
                         ret                                                         // 0x00402292    c3
                         nop                                                         // 0x00402293    90
                         nop                                                         // 0x00402294    90
                         nop                                                         // 0x00402295    90
                         nop                                                         // 0x00402296    90
                         nop                                                         // 0x00402297    90
                         nop                                                         // 0x00402298    90
                         nop                                                         // 0x00402299    90
                         nop                                                         // 0x0040229a    90
                         nop                                                         // 0x0040229b    90
                         nop                                                         // 0x0040229c    90
                         nop                                                         // 0x0040229d    90
                         nop                                                         // 0x0040229e    90
                         nop                                                         // 0x0040229f    90
                         xor.s              eax, eax                                 // 0x004022a0    33c0
                         ret                                                         // 0x004022a2    c3
                         nop                                                         // 0x004022a3    90
                         nop                                                         // 0x004022a4    90
                         nop                                                         // 0x004022a5    90
                         nop                                                         // 0x004022a6    90
                         nop                                                         // 0x004022a7    90
                         nop                                                         // 0x004022a8    90
                         nop                                                         // 0x004022a9    90
                         nop                                                         // 0x004022aa    90
                         nop                                                         // 0x004022ab    90
                         nop                                                         // 0x004022ac    90
                         nop                                                         // 0x004022ad    90
                         nop                                                         // 0x004022ae    90
                         nop                                                         // 0x004022af    90
                         xor.s              eax, eax                                 // 0x004022b0    33c0
                         ret                                                         // 0x004022b2    c3
                         nop                                                         // 0x004022b3    90
                         nop                                                         // 0x004022b4    90
                         nop                                                         // 0x004022b5    90
                         nop                                                         // 0x004022b6    90
                         nop                                                         // 0x004022b7    90
                         nop                                                         // 0x004022b8    90
                         nop                                                         // 0x004022b9    90
                         nop                                                         // 0x004022ba    90
                         nop                                                         // 0x004022bb    90
                         nop                                                         // 0x004022bc    90
                         nop                                                         // 0x004022bd    90
                         nop                                                         // 0x004022be    90
                         nop                                                         // 0x004022bf    90
                         xor.s              eax, eax                                 // 0x004022c0    33c0
                         ret                                                         // 0x004022c2    c3
                         nop                                                         // 0x004022c3    90
                         nop                                                         // 0x004022c4    90
                         nop                                                         // 0x004022c5    90
                         nop                                                         // 0x004022c6    90
                         nop                                                         // 0x004022c7    90
                         nop                                                         // 0x004022c8    90
                         nop                                                         // 0x004022c9    90
                         nop                                                         // 0x004022ca    90
                         nop                                                         // 0x004022cb    90
                         nop                                                         // 0x004022cc    90
                         nop                                                         // 0x004022cd    90
                         nop                                                         // 0x004022ce    90
                         nop                                                         // 0x004022cf    90
                         xor.s              eax, eax                                 // 0x004022d0    33c0
                         ret                                                         // 0x004022d2    c3
                         nop                                                         // 0x004022d3    90
                         nop                                                         // 0x004022d4    90
                         nop                                                         // 0x004022d5    90
                         nop                                                         // 0x004022d6    90
                         nop                                                         // 0x004022d7    90
                         nop                                                         // 0x004022d8    90
                         nop                                                         // 0x004022d9    90
                         nop                                                         // 0x004022da    90
                         nop                                                         // 0x004022db    90
                         nop                                                         // 0x004022dc    90
                         nop                                                         // 0x004022dd    90
                         nop                                                         // 0x004022de    90
                         nop                                                         // 0x004022df    90
                         xor.s              eax, eax                                 // 0x004022e0    33c0
                         ret                                                         // 0x004022e2    c3
                         nop                                                         // 0x004022e3    90
                         nop                                                         // 0x004022e4    90
                         nop                                                         // 0x004022e5    90
                         nop                                                         // 0x004022e6    90
                         nop                                                         // 0x004022e7    90
                         nop                                                         // 0x004022e8    90
                         nop                                                         // 0x004022e9    90
                         nop                                                         // 0x004022ea    90
                         nop                                                         // 0x004022eb    90
                         nop                                                         // 0x004022ec    90
                         nop                                                         // 0x004022ed    90
                         nop                                                         // 0x004022ee    90
                         nop                                                         // 0x004022ef    90
                         xor.s              eax, eax                                 // 0x004022f0    33c0
                         ret                                                         // 0x004022f2    c3
                         nop                                                         // 0x004022f3    90
                         nop                                                         // 0x004022f4    90
                         nop                                                         // 0x004022f5    90
                         nop                                                         // 0x004022f6    90
                         nop                                                         // 0x004022f7    90
                         nop                                                         // 0x004022f8    90
                         nop                                                         // 0x004022f9    90
                         nop                                                         // 0x004022fa    90
                         nop                                                         // 0x004022fb    90
                         nop                                                         // 0x004022fc    90
                         nop                                                         // 0x004022fd    90
                         nop                                                         // 0x004022fe    90
                         nop                                                         // 0x004022ff    90
                         xor.s              eax, eax                                 // 0x00402300    33c0
                         ret                                                         // 0x00402302    c3
                         nop                                                         // 0x00402303    90
                         nop                                                         // 0x00402304    90
                         nop                                                         // 0x00402305    90
                         nop                                                         // 0x00402306    90
                         nop                                                         // 0x00402307    90
                         nop                                                         // 0x00402308    90
                         nop                                                         // 0x00402309    90
                         nop                                                         // 0x0040230a    90
                         nop                                                         // 0x0040230b    90
                         nop                                                         // 0x0040230c    90
                         nop                                                         // 0x0040230d    90
                         nop                                                         // 0x0040230e    90
                         nop                                                         // 0x0040230f    90
                         xor.s              eax, eax                                 // 0x00402310    33c0
                         ret                                                         // 0x00402312    c3
                         nop                                                         // 0x00402313    90
                         nop                                                         // 0x00402314    90
                         nop                                                         // 0x00402315    90
                         nop                                                         // 0x00402316    90
                         nop                                                         // 0x00402317    90
                         nop                                                         // 0x00402318    90
                         nop                                                         // 0x00402319    90
                         nop                                                         // 0x0040231a    90
                         nop                                                         // 0x0040231b    90
                         nop                                                         // 0x0040231c    90
                         nop                                                         // 0x0040231d    90
                         nop                                                         // 0x0040231e    90
                         nop                                                         // 0x0040231f    90
                         xor.s              eax, eax                                 // 0x00402320    33c0
                         ret                                                         // 0x00402322    c3
                         nop                                                         // 0x00402323    90
                         nop                                                         // 0x00402324    90
                         nop                                                         // 0x00402325    90
                         nop                                                         // 0x00402326    90
                         nop                                                         // 0x00402327    90
                         nop                                                         // 0x00402328    90
                         nop                                                         // 0x00402329    90
                         nop                                                         // 0x0040232a    90
                         nop                                                         // 0x0040232b    90
                         nop                                                         // 0x0040232c    90
                         nop                                                         // 0x0040232d    90
                         nop                                                         // 0x0040232e    90
                         nop                                                         // 0x0040232f    90
                         xor.s              eax, eax                                 // 0x00402330    33c0
                         ret                                                         // 0x00402332    c3
                         nop                                                         // 0x00402333    90
                         nop                                                         // 0x00402334    90
                         nop                                                         // 0x00402335    90
                         nop                                                         // 0x00402336    90
                         nop                                                         // 0x00402337    90
                         nop                                                         // 0x00402338    90
                         nop                                                         // 0x00402339    90
                         nop                                                         // 0x0040233a    90
                         nop                                                         // 0x0040233b    90
                         nop                                                         // 0x0040233c    90
                         nop                                                         // 0x0040233d    90
                         nop                                                         // 0x0040233e    90
                         nop                                                         // 0x0040233f    90
                         xor.s              eax, eax                                 // 0x00402340    33c0
                         ret                                                         // 0x00402342    c3
                         nop                                                         // 0x00402343    90
                         nop                                                         // 0x00402344    90
                         nop                                                         // 0x00402345    90
                         nop                                                         // 0x00402346    90
                         nop                                                         // 0x00402347    90
                         nop                                                         // 0x00402348    90
                         nop                                                         // 0x00402349    90
                         nop                                                         // 0x0040234a    90
                         nop                                                         // 0x0040234b    90
                         nop                                                         // 0x0040234c    90
                         nop                                                         // 0x0040234d    90
                         nop                                                         // 0x0040234e    90
                         nop                                                         // 0x0040234f    90
                         xor.s              eax, eax                                 // 0x00402350    33c0
                         ret                                                         // 0x00402352    c3
                         nop                                                         // 0x00402353    90
                         nop                                                         // 0x00402354    90
                         nop                                                         // 0x00402355    90
                         nop                                                         // 0x00402356    90
                         nop                                                         // 0x00402357    90
                         nop                                                         // 0x00402358    90
                         nop                                                         // 0x00402359    90
                         nop                                                         // 0x0040235a    90
                         nop                                                         // 0x0040235b    90
                         nop                                                         // 0x0040235c    90
                         nop                                                         // 0x0040235d    90
                         nop                                                         // 0x0040235e    90
                         nop                                                         // 0x0040235f    90
                         xor.s              eax, eax                                 // 0x00402360    33c0
                         ret                                                         // 0x00402362    c3
                         nop                                                         // 0x00402363    90
                         nop                                                         // 0x00402364    90
                         nop                                                         // 0x00402365    90
                         nop                                                         // 0x00402366    90
                         nop                                                         // 0x00402367    90
                         nop                                                         // 0x00402368    90
                         nop                                                         // 0x00402369    90
                         nop                                                         // 0x0040236a    90
                         nop                                                         // 0x0040236b    90
                         nop                                                         // 0x0040236c    90
                         nop                                                         // 0x0040236d    90
                         nop                                                         // 0x0040236e    90
                         nop                                                         // 0x0040236f    90
                         xor.s              eax, eax                                 // 0x00402370    33c0
                         ret                                                         // 0x00402372    c3
                         nop                                                         // 0x00402373    90
                         nop                                                         // 0x00402374    90
                         nop                                                         // 0x00402375    90
                         nop                                                         // 0x00402376    90
                         nop                                                         // 0x00402377    90
                         nop                                                         // 0x00402378    90
                         nop                                                         // 0x00402379    90
                         nop                                                         // 0x0040237a    90
                         nop                                                         // 0x0040237b    90
                         nop                                                         // 0x0040237c    90
                         nop                                                         // 0x0040237d    90
                         nop                                                         // 0x0040237e    90
                         nop                                                         // 0x0040237f    90
                         xor.s              eax, eax                                 // 0x00402380    33c0
                         ret                                                         // 0x00402382    c3
                         nop                                                         // 0x00402383    90
                         nop                                                         // 0x00402384    90
                         nop                                                         // 0x00402385    90
                         nop                                                         // 0x00402386    90
                         nop                                                         // 0x00402387    90
                         nop                                                         // 0x00402388    90
                         nop                                                         // 0x00402389    90
                         nop                                                         // 0x0040238a    90
                         nop                                                         // 0x0040238b    90
                         nop                                                         // 0x0040238c    90
                         nop                                                         // 0x0040238d    90
                         nop                                                         // 0x0040238e    90
                         nop                                                         // 0x0040238f    90
                         xor.s              eax, eax                                 // 0x00402390    33c0
                         ret                                                         // 0x00402392    c3
                         nop                                                         // 0x00402393    90
                         nop                                                         // 0x00402394    90
                         nop                                                         // 0x00402395    90
                         nop                                                         // 0x00402396    90
                         nop                                                         // 0x00402397    90
                         nop                                                         // 0x00402398    90
                         nop                                                         // 0x00402399    90
                         nop                                                         // 0x0040239a    90
                         nop                                                         // 0x0040239b    90
                         nop                                                         // 0x0040239c    90
                         nop                                                         // 0x0040239d    90
                         nop                                                         // 0x0040239e    90
                         nop                                                         // 0x0040239f    90
                         xor.s              eax, eax                                 // 0x004023a0    33c0
                         ret                                                         // 0x004023a2    c3
                         nop                                                         // 0x004023a3    90
                         nop                                                         // 0x004023a4    90
                         nop                                                         // 0x004023a5    90
                         nop                                                         // 0x004023a6    90
                         nop                                                         // 0x004023a7    90
                         nop                                                         // 0x004023a8    90
                         nop                                                         // 0x004023a9    90
                         nop                                                         // 0x004023aa    90
                         nop                                                         // 0x004023ab    90
                         nop                                                         // 0x004023ac    90
                         nop                                                         // 0x004023ad    90
                         nop                                                         // 0x004023ae    90
                         nop                                                         // 0x004023af    90
                         xor.s              eax, eax                                 // 0x004023b0    33c0
                         ret                                                         // 0x004023b2    c3
                         nop                                                         // 0x004023b3    90
                         nop                                                         // 0x004023b4    90
                         nop                                                         // 0x004023b5    90
                         nop                                                         // 0x004023b6    90
                         nop                                                         // 0x004023b7    90
                         nop                                                         // 0x004023b8    90
                         nop                                                         // 0x004023b9    90
                         nop                                                         // 0x004023ba    90
                         nop                                                         // 0x004023bb    90
                         nop                                                         // 0x004023bc    90
                         nop                                                         // 0x004023bd    90
                         nop                                                         // 0x004023be    90
                         nop                                                         // 0x004023bf    90
                         xor.s              eax, eax                                 // 0x004023c0    33c0
                         ret                                                         // 0x004023c2    c3
                         nop                                                         // 0x004023c3    90
                         nop                                                         // 0x004023c4    90
                         nop                                                         // 0x004023c5    90
                         nop                                                         // 0x004023c6    90
                         nop                                                         // 0x004023c7    90
                         nop                                                         // 0x004023c8    90
                         nop                                                         // 0x004023c9    90
                         nop                                                         // 0x004023ca    90
                         nop                                                         // 0x004023cb    90
                         nop                                                         // 0x004023cc    90
                         nop                                                         // 0x004023cd    90
                         nop                                                         // 0x004023ce    90
                         nop                                                         // 0x004023cf    90
                         xor.s              eax, eax                                 // 0x004023d0    33c0
                         ret                                                         // 0x004023d2    c3
                         nop                                                         // 0x004023d3    90
                         nop                                                         // 0x004023d4    90
                         nop                                                         // 0x004023d5    90
                         nop                                                         // 0x004023d6    90
                         nop                                                         // 0x004023d7    90
                         nop                                                         // 0x004023d8    90
                         nop                                                         // 0x004023d9    90
                         nop                                                         // 0x004023da    90
                         nop                                                         // 0x004023db    90
                         nop                                                         // 0x004023dc    90
                         nop                                                         // 0x004023dd    90
                         nop                                                         // 0x004023de    90
                         nop                                                         // 0x004023df    90
                         xor.s              eax, eax                                 // 0x004023e0    33c0
                         ret                                                         // 0x004023e2    c3
                         nop                                                         // 0x004023e3    90
                         nop                                                         // 0x004023e4    90
                         nop                                                         // 0x004023e5    90
                         nop                                                         // 0x004023e6    90
                         nop                                                         // 0x004023e7    90
                         nop                                                         // 0x004023e8    90
                         nop                                                         // 0x004023e9    90
                         nop                                                         // 0x004023ea    90
                         nop                                                         // 0x004023eb    90
                         nop                                                         // 0x004023ec    90
                         nop                                                         // 0x004023ed    90
                         nop                                                         // 0x004023ee    90
                         nop                                                         // 0x004023ef    90
                         xor.s              eax, eax                                 // 0x004023f0    33c0
                         ret                                                         // 0x004023f2    c3
                         nop                                                         // 0x004023f3    90
                         nop                                                         // 0x004023f4    90
                         nop                                                         // 0x004023f5    90
                         nop                                                         // 0x004023f6    90
                         nop                                                         // 0x004023f7    90
                         nop                                                         // 0x004023f8    90
                         nop                                                         // 0x004023f9    90
                         nop                                                         // 0x004023fa    90
                         nop                                                         // 0x004023fb    90
                         nop                                                         // 0x004023fc    90
                         nop                                                         // 0x004023fd    90
                         nop                                                         // 0x004023fe    90
                         nop                                                         // 0x004023ff    90
                         xor.s              al, al                                   // 0x00402400    32c0
                         ret                                                         // 0x00402402    c3
                         nop                                                         // 0x00402403    90
                         nop                                                         // 0x00402404    90
                         nop                                                         // 0x00402405    90
                         nop                                                         // 0x00402406    90
                         nop                                                         // 0x00402407    90
                         nop                                                         // 0x00402408    90
                         nop                                                         // 0x00402409    90
                         nop                                                         // 0x0040240a    90
                         nop                                                         // 0x0040240b    90
                         nop                                                         // 0x0040240c    90
                         nop                                                         // 0x0040240d    90
                         nop                                                         // 0x0040240e    90
                         nop                                                         // 0x0040240f    90
                         xor.s              al, al                                   // 0x00402410    32c0
                         ret                                                         // 0x00402412    c3
                         nop                                                         // 0x00402413    90
                         nop                                                         // 0x00402414    90
                         nop                                                         // 0x00402415    90
                         nop                                                         // 0x00402416    90
                         nop                                                         // 0x00402417    90
                         nop                                                         // 0x00402418    90
                         nop                                                         // 0x00402419    90
                         nop                                                         // 0x0040241a    90
                         nop                                                         // 0x0040241b    90
                         nop                                                         // 0x0040241c    90
                         nop                                                         // 0x0040241d    90
                         nop                                                         // 0x0040241e    90
                         nop                                                         // 0x0040241f    90
                         xor.s              eax, eax                                 // 0x00402420    33c0
                         ret                                                         // 0x00402422    c3
                         nop                                                         // 0x00402423    90
                         nop                                                         // 0x00402424    90
                         nop                                                         // 0x00402425    90
                         nop                                                         // 0x00402426    90
                         nop                                                         // 0x00402427    90
                         nop                                                         // 0x00402428    90
                         nop                                                         // 0x00402429    90
                         nop                                                         // 0x0040242a    90
                         nop                                                         // 0x0040242b    90
                         nop                                                         // 0x0040242c    90
                         nop                                                         // 0x0040242d    90
                         nop                                                         // 0x0040242e    90
                         nop                                                         // 0x0040242f    90
                         xor.s              eax, eax                                 // 0x00402430    33c0
                         ret                                                         // 0x00402432    c3
                         nop                                                         // 0x00402433    90
                         nop                                                         // 0x00402434    90
                         nop                                                         // 0x00402435    90
                         nop                                                         // 0x00402436    90
                         nop                                                         // 0x00402437    90
                         nop                                                         // 0x00402438    90
                         nop                                                         // 0x00402439    90
                         nop                                                         // 0x0040243a    90
                         nop                                                         // 0x0040243b    90
                         nop                                                         // 0x0040243c    90
                         nop                                                         // 0x0040243d    90
                         nop                                                         // 0x0040243e    90
                         nop                                                         // 0x0040243f    90
                         xor.s              eax, eax                                 // 0x00402440    33c0
                         ret                                                         // 0x00402442    c3
                         nop                                                         // 0x00402443    90
                         nop                                                         // 0x00402444    90
                         nop                                                         // 0x00402445    90
                         nop                                                         // 0x00402446    90
                         nop                                                         // 0x00402447    90
                         nop                                                         // 0x00402448    90
                         nop                                                         // 0x00402449    90
                         nop                                                         // 0x0040244a    90
                         nop                                                         // 0x0040244b    90
                         nop                                                         // 0x0040244c    90
                         nop                                                         // 0x0040244d    90
                         nop                                                         // 0x0040244e    90
                         nop                                                         // 0x0040244f    90
                         xor.s              eax, eax                                 // 0x00402450    33c0
                         ret                                                         // 0x00402452    c3
                         nop                                                         // 0x00402453    90
                         nop                                                         // 0x00402454    90
                         nop                                                         // 0x00402455    90
                         nop                                                         // 0x00402456    90
                         nop                                                         // 0x00402457    90
                         nop                                                         // 0x00402458    90
                         nop                                                         // 0x00402459    90
                         nop                                                         // 0x0040245a    90
                         nop                                                         // 0x0040245b    90
                         nop                                                         // 0x0040245c    90
                         nop                                                         // 0x0040245d    90
                         nop                                                         // 0x0040245e    90
                         nop                                                         // 0x0040245f    90
                         ret                0x0004                                   // 0x00402460    c20400
                         nop                                                         // 0x00402463    90
                         nop                                                         // 0x00402464    90
                         nop                                                         // 0x00402465    90
                         nop                                                         // 0x00402466    90
                         nop                                                         // 0x00402467    90
                         nop                                                         // 0x00402468    90
                         nop                                                         // 0x00402469    90
                         nop                                                         // 0x0040246a    90
                         nop                                                         // 0x0040246b    90
                         nop                                                         // 0x0040246c    90
                         nop                                                         // 0x0040246d    90
                         nop                                                         // 0x0040246e    90
                         nop                                                         // 0x0040246f    90
                         xor.s              eax, eax                                 // 0x00402470    33c0
                         ret                                                         // 0x00402472    c3
                         nop                                                         // 0x00402473    90
                         nop                                                         // 0x00402474    90
                         nop                                                         // 0x00402475    90
                         nop                                                         // 0x00402476    90
                         nop                                                         // 0x00402477    90
                         nop                                                         // 0x00402478    90
                         nop                                                         // 0x00402479    90
                         nop                                                         // 0x0040247a    90
                         nop                                                         // 0x0040247b    90
                         nop                                                         // 0x0040247c    90
                         nop                                                         // 0x0040247d    90
                         nop                                                         // 0x0040247e    90
                         nop                                                         // 0x0040247f    90
                         xor.s              eax, eax                                 // 0x00402480    33c0
                         ret                                                         // 0x00402482    c3
                         nop                                                         // 0x00402483    90
                         nop                                                         // 0x00402484    90
                         nop                                                         // 0x00402485    90
                         nop                                                         // 0x00402486    90
                         nop                                                         // 0x00402487    90
                         nop                                                         // 0x00402488    90
                         nop                                                         // 0x00402489    90
                         nop                                                         // 0x0040248a    90
                         nop                                                         // 0x0040248b    90
                         nop                                                         // 0x0040248c    90
                         nop                                                         // 0x0040248d    90
                         nop                                                         // 0x0040248e    90
                         nop                                                         // 0x0040248f    90
                         xor.s              eax, eax                                 // 0x00402490    33c0
                         ret                                                         // 0x00402492    c3
                         nop                                                         // 0x00402493    90
                         nop                                                         // 0x00402494    90
                         nop                                                         // 0x00402495    90
                         nop                                                         // 0x00402496    90
                         nop                                                         // 0x00402497    90
                         nop                                                         // 0x00402498    90
                         nop                                                         // 0x00402499    90
                         nop                                                         // 0x0040249a    90
                         nop                                                         // 0x0040249b    90
                         nop                                                         // 0x0040249c    90
                         nop                                                         // 0x0040249d    90
                         nop                                                         // 0x0040249e    90
                         nop                                                         // 0x0040249f    90
                         xor.s              eax, eax                                 // 0x004024a0    33c0
                         ret                                                         // 0x004024a2    c3
                         nop                                                         // 0x004024a3    90
                         nop                                                         // 0x004024a4    90
                         nop                                                         // 0x004024a5    90
                         nop                                                         // 0x004024a6    90
                         nop                                                         // 0x004024a7    90
                         nop                                                         // 0x004024a8    90
                         nop                                                         // 0x004024a9    90
                         nop                                                         // 0x004024aa    90
                         nop                                                         // 0x004024ab    90
                         nop                                                         // 0x004024ac    90
                         nop                                                         // 0x004024ad    90
                         nop                                                         // 0x004024ae    90
                         nop                                                         // 0x004024af    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x004024b0    d90598a38a00
                         ret                                                         // 0x004024b6    c3
                         nop                                                         // 0x004024b7    90
                         nop                                                         // 0x004024b8    90
                         nop                                                         // 0x004024b9    90
                         nop                                                         // 0x004024ba    90
                         nop                                                         // 0x004024bb    90
                         nop                                                         // 0x004024bc    90
                         nop                                                         // 0x004024bd    90
                         nop                                                         // 0x004024be    90
                         nop                                                         // 0x004024bf    90
                         ret                0x0004                                   // 0x004024c0    c20400
                         nop                                                         // 0x004024c3    90
                         nop                                                         // 0x004024c4    90
                         nop                                                         // 0x004024c5    90
                         nop                                                         // 0x004024c6    90
                         nop                                                         // 0x004024c7    90
                         nop                                                         // 0x004024c8    90
                         nop                                                         // 0x004024c9    90
                         nop                                                         // 0x004024ca    90
                         nop                                                         // 0x004024cb    90
                         nop                                                         // 0x004024cc    90
                         nop                                                         // 0x004024cd    90
                         nop                                                         // 0x004024ce    90
                         nop                                                         // 0x004024cf    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x004024d0    d90590a38a00
                         ret                                                         // 0x004024d6    c3
                         nop                                                         // 0x004024d7    90
                         nop                                                         // 0x004024d8    90
                         nop                                                         // 0x004024d9    90
                         nop                                                         // 0x004024da    90
                         nop                                                         // 0x004024db    90
                         nop                                                         // 0x004024dc    90
                         nop                                                         // 0x004024dd    90
                         nop                                                         // 0x004024de    90
                         nop                                                         // 0x004024df    90
                         ret                                                         // 0x004024e0    c3
                         nop                                                         // 0x004024e1    90
                         nop                                                         // 0x004024e2    90
                         nop                                                         // 0x004024e3    90
                         nop                                                         // 0x004024e4    90
                         nop                                                         // 0x004024e5    90
                         nop                                                         // 0x004024e6    90
                         nop                                                         // 0x004024e7    90
                         nop                                                         // 0x004024e8    90
                         nop                                                         // 0x004024e9    90
                         nop                                                         // 0x004024ea    90
                         nop                                                         // 0x004024eb    90
                         nop                                                         // 0x004024ec    90
                         nop                                                         // 0x004024ed    90
                         nop                                                         // 0x004024ee    90
                         nop                                                         // 0x004024ef    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x004024f0    d90598a38a00
                         ret                                                         // 0x004024f6    c3
                         nop                                                         // 0x004024f7    90
                         nop                                                         // 0x004024f8    90
                         nop                                                         // 0x004024f9    90
                         nop                                                         // 0x004024fa    90
                         nop                                                         // 0x004024fb    90
                         nop                                                         // 0x004024fc    90
                         nop                                                         // 0x004024fd    90
                         nop                                                         // 0x004024fe    90
                         nop                                                         // 0x004024ff    90
                         {disp8} fld        dword ptr [ecx + 0x4c]                   // 0x00402500    d9414c
                         ret                                                         // 0x00402503    c3
                         nop                                                         // 0x00402504    90
                         nop                                                         // 0x00402505    90
                         nop                                                         // 0x00402506    90
                         nop                                                         // 0x00402507    90
                         nop                                                         // 0x00402508    90
                         nop                                                         // 0x00402509    90
                         nop                                                         // 0x0040250a    90
                         nop                                                         // 0x0040250b    90
                         nop                                                         // 0x0040250c    90
                         nop                                                         // 0x0040250d    90
                         nop                                                         // 0x0040250e    90
                         nop                                                         // 0x0040250f    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x00402510    d90598a38a00
                         ret                                                         // 0x00402516    c3
                         nop                                                         // 0x00402517    90
                         nop                                                         // 0x00402518    90
                         nop                                                         // 0x00402519    90
                         nop                                                         // 0x0040251a    90
                         nop                                                         // 0x0040251b    90
                         nop                                                         // 0x0040251c    90
                         nop                                                         // 0x0040251d    90
                         nop                                                         // 0x0040251e    90
                         nop                                                         // 0x0040251f    90
                         {disp8} fld        dword ptr [ecx + 0x50]                   // 0x00402520    d94150
                         ret                                                         // 0x00402523    c3
                         nop                                                         // 0x00402524    90
                         nop                                                         // 0x00402525    90
                         nop                                                         // 0x00402526    90
                         nop                                                         // 0x00402527    90
                         nop                                                         // 0x00402528    90
                         nop                                                         // 0x00402529    90
                         nop                                                         // 0x0040252a    90
                         nop                                                         // 0x0040252b    90
                         nop                                                         // 0x0040252c    90
                         nop                                                         // 0x0040252d    90
                         nop                                                         // 0x0040252e    90
                         nop                                                         // 0x0040252f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00402530    8b442404
                         {disp8} mov        dword ptr [ecx + 0x50], eax              // 0x00402534    894150
                         ret                0x0004                                   // 0x00402537    c20400
                         call               dword ptr [__imp__DirectDrawCreate@4]    // 0x0040253a    ff152c908a00
                         ret                                                         // 0x00402540    c3
                         nop                                                         // 0x00402541    90
                         nop                                                         // 0x00402542    90
                         nop                                                         // 0x00402543    90
                         nop                                                         // 0x00402544    90
                         nop                                                         // 0x00402545    90
                         nop                                                         // 0x00402546    90
                         nop                                                         // 0x00402547    90
                         nop                                                         // 0x00402548    90
                         nop                                                         // 0x00402549    90
                         nop                                                         // 0x0040254a    90
                         nop                                                         // 0x0040254b    90
                         nop                                                         // 0x0040254c    90
                         nop                                                         // 0x0040254d    90
                         nop                                                         // 0x0040254e    90
                         nop                                                         // 0x0040254f    90
                         mov                eax, 0x00000001                          // 0x00402550    b801000000
                         ret                                                         // 0x00402555    c3
                         nop                                                         // 0x00402556    90
                         nop                                                         // 0x00402557    90
                         nop                                                         // 0x00402558    90
                         nop                                                         // 0x00402559    90
                         nop                                                         // 0x0040255a    90
                         nop                                                         // 0x0040255b    90
                         nop                                                         // 0x0040255c    90
                         nop                                                         // 0x0040255d    90
                         nop                                                         // 0x0040255e    90
                         nop                                                         // 0x0040255f    90
                         mov                eax, dword ptr [ecx]                     // 0x00402560    8b01
                         {disp8} jmp        dword ptr [eax + 0x2c]                   // 0x00402562    ff602c
                         nop                                                         // 0x00402565    90
                         nop                                                         // 0x00402566    90
                         nop                                                         // 0x00402567    90
                         nop                                                         // 0x00402568    90
                         nop                                                         // 0x00402569    90
                         nop                                                         // 0x0040256a    90
                         nop                                                         // 0x0040256b    90
                         nop                                                         // 0x0040256c    90
                         nop                                                         // 0x0040256d    90
                         nop                                                         // 0x0040256e    90
                         nop                                                         // 0x0040256f    90
                         mov.s              eax, ecx                                 // 0x00402570    8bc1
                         ret                                                         // 0x00402572    c3
                         nop                                                         // 0x00402573    90
                         nop                                                         // 0x00402574    90
                         nop                                                         // 0x00402575    90
                         nop                                                         // 0x00402576    90
                         nop                                                         // 0x00402577    90
                         nop                                                         // 0x00402578    90
                         nop                                                         // 0x00402579    90
                         nop                                                         // 0x0040257a    90
                         nop                                                         // 0x0040257b    90
                         nop                                                         // 0x0040257c    90
                         nop                                                         // 0x0040257d    90
                         nop                                                         // 0x0040257e    90
                         nop                                                         // 0x0040257f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x40]              // 0x00402580    8b4140
                         ret                                                         // 0x00402583    c3
                         nop                                                         // 0x00402584    90
                         nop                                                         // 0x00402585    90
                         nop                                                         // 0x00402586    90
                         nop                                                         // 0x00402587    90
                         nop                                                         // 0x00402588    90
                         nop                                                         // 0x00402589    90
                         nop                                                         // 0x0040258a    90
                         nop                                                         // 0x0040258b    90
                         nop                                                         // 0x0040258c    90
                         nop                                                         // 0x0040258d    90
                         nop                                                         // 0x0040258e    90
                         nop                                                         // 0x0040258f    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x00402590    d90598a38a00
                         ret                                                         // 0x00402596    c3
                         nop                                                         // 0x00402597    90
                         nop                                                         // 0x00402598    90
                         nop                                                         // 0x00402599    90
                         nop                                                         // 0x0040259a    90
                         nop                                                         // 0x0040259b    90
                         nop                                                         // 0x0040259c    90
                         nop                                                         // 0x0040259d    90
                         nop                                                         // 0x0040259e    90
                         nop                                                         // 0x0040259f    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x004025a0    d90598a38a00
                         ret                                                         // 0x004025a6    c3
                         nop                                                         // 0x004025a7    90
                         nop                                                         // 0x004025a8    90
                         nop                                                         // 0x004025a9    90
                         nop                                                         // 0x004025aa    90
                         nop                                                         // 0x004025ab    90
                         nop                                                         // 0x004025ac    90
                         nop                                                         // 0x004025ad    90
                         nop                                                         // 0x004025ae    90
                         nop                                                         // 0x004025af    90
                         mov                eax, 0x00000001                          // 0x004025b0    b801000000
                         ret                                                         // 0x004025b5    c3
                         nop                                                         // 0x004025b6    90
                         nop                                                         // 0x004025b7    90
                         nop                                                         // 0x004025b8    90
                         nop                                                         // 0x004025b9    90
                         nop                                                         // 0x004025ba    90
                         nop                                                         // 0x004025bb    90
                         nop                                                         // 0x004025bc    90
                         nop                                                         // 0x004025bd    90
                         nop                                                         // 0x004025be    90
                         nop                                                         // 0x004025bf    90
                         ret                0x0004                                   // 0x004025c0    c20400
                         nop                                                         // 0x004025c3    90
                         nop                                                         // 0x004025c4    90
                         nop                                                         // 0x004025c5    90
                         nop                                                         // 0x004025c6    90
                         nop                                                         // 0x004025c7    90
                         nop                                                         // 0x004025c8    90
                         nop                                                         // 0x004025c9    90
                         nop                                                         // 0x004025ca    90
                         nop                                                         // 0x004025cb    90
                         nop                                                         // 0x004025cc    90
                         nop                                                         // 0x004025cd    90
                         nop                                                         // 0x004025ce    90
                         nop                                                         // 0x004025cf    90
                         xor.s              eax, eax                                 // 0x004025d0    33c0
                         ret                                                         // 0x004025d2    c3
                         nop                                                         // 0x004025d3    90
                         nop                                                         // 0x004025d4    90
                         nop                                                         // 0x004025d5    90
                         nop                                                         // 0x004025d6    90
                         nop                                                         // 0x004025d7    90
                         nop                                                         // 0x004025d8    90
                         nop                                                         // 0x004025d9    90
                         nop                                                         // 0x004025da    90
                         nop                                                         // 0x004025db    90
                         nop                                                         // 0x004025dc    90
                         nop                                                         // 0x004025dd    90
                         nop                                                         // 0x004025de    90
                         nop                                                         // 0x004025df    90
                         ret                0x0004                                   // 0x004025e0    c20400
                         nop                                                         // 0x004025e3    90
                         nop                                                         // 0x004025e4    90
                         nop                                                         // 0x004025e5    90
                         nop                                                         // 0x004025e6    90
                         nop                                                         // 0x004025e7    90
                         nop                                                         // 0x004025e8    90
                         nop                                                         // 0x004025e9    90
                         nop                                                         // 0x004025ea    90
                         nop                                                         // 0x004025eb    90
                         nop                                                         // 0x004025ec    90
                         nop                                                         // 0x004025ed    90
                         nop                                                         // 0x004025ee    90
                         nop                                                         // 0x004025ef    90
                         xor.s              eax, eax                                 // 0x004025f0    33c0
                         ret                                                         // 0x004025f2    c3
                         nop                                                         // 0x004025f3    90
                         nop                                                         // 0x004025f4    90
                         nop                                                         // 0x004025f5    90
                         nop                                                         // 0x004025f6    90
                         nop                                                         // 0x004025f7    90
                         nop                                                         // 0x004025f8    90
                         nop                                                         // 0x004025f9    90
                         nop                                                         // 0x004025fa    90
                         nop                                                         // 0x004025fb    90
                         nop                                                         // 0x004025fc    90
                         nop                                                         // 0x004025fd    90
                         nop                                                         // 0x004025fe    90
                         nop                                                         // 0x004025ff    90
                         {disp8} fld        dword ptr [ecx + 0x48]                   // 0x00402600    d94148
                         ret                                                         // 0x00402603    c3
                         nop                                                         // 0x00402604    90
                         nop                                                         // 0x00402605    90
                         nop                                                         // 0x00402606    90
                         nop                                                         // 0x00402607    90
                         nop                                                         // 0x00402608    90
                         nop                                                         // 0x00402609    90
                         nop                                                         // 0x0040260a    90
                         nop                                                         // 0x0040260b    90
                         nop                                                         // 0x0040260c    90
                         nop                                                         // 0x0040260d    90
                         nop                                                         // 0x0040260e    90
                         nop                                                         // 0x0040260f    90
                         push               esi                                      // 0x00402610    56
                         mov.s              esi, ecx                                 // 0x00402611    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00402613    8b06
                         call               dword ptr [eax + 0x11c]                  // 0x00402615    ff901c010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1398]         // 0x0040261b    d81d98a38a00
                         fnstsw             ax                                       // 0x00402621    dfe0
                         test               ah, 0x41                                 // 0x00402623    f6c441
                         {disp8} jne        _jmp_addr_0x0040263a                     // 0x00402626    7512
                         mov                edx, dword ptr [esi]                     // 0x00402628    8b16
                         mov.s              ecx, esi                                 // 0x0040262a    8bce
                         call               dword ptr [edx + 0x2c]                   // 0x0040262c    ff522c
                         test               eax, eax                                 // 0x0040262f    85c0
                         {disp8} je         _jmp_addr_0x0040263a                     // 0x00402631    7407
                         mov                eax, 0x00000001                          // 0x00402633    b801000000
                         pop                esi                                      // 0x00402638    5e
                         ret                                                         // 0x00402639    c3
_jmp_addr_0x0040263a:    xor.s              eax, eax                                 // 0x0040263a    33c0
                         pop                esi                                      // 0x0040263c    5e
                         ret                                                         // 0x0040263d    c3
                         nop                                                         // 0x0040263e    90
                         nop                                                         // 0x0040263f    90
                         ret                0x0004                                   // 0x00402640    c20400
                         nop                                                         // 0x00402643    90
                         nop                                                         // 0x00402644    90
                         nop                                                         // 0x00402645    90
                         nop                                                         // 0x00402646    90
                         nop                                                         // 0x00402647    90
                         nop                                                         // 0x00402648    90
                         nop                                                         // 0x00402649    90
                         nop                                                         // 0x0040264a    90
                         nop                                                         // 0x0040264b    90
                         nop                                                         // 0x0040264c    90
                         nop                                                         // 0x0040264d    90
                         nop                                                         // 0x0040264e    90
                         nop                                                         // 0x0040264f    90
                         mov                eax, 0x00000001                          // 0x00402650    b801000000
                         ret                0x0004                                   // 0x00402655    c20400
                         nop                                                         // 0x00402658    90
                         nop                                                         // 0x00402659    90
                         nop                                                         // 0x0040265a    90
                         nop                                                         // 0x0040265b    90
                         nop                                                         // 0x0040265c    90
                         nop                                                         // 0x0040265d    90
                         nop                                                         // 0x0040265e    90
                         nop                                                         // 0x0040265f    90
                         mov                eax, dword ptr [ecx]                     // 0x00402660    8b01
                         call               dword ptr [eax + 0x608]                  // 0x00402662    ff9008060000
                         ret                0x0004                                   // 0x00402668    c20400
                         call               _jmp_addr_0x00401879                     // 0x0040266b    e809f2ffff
                         mov                al, 0x01                                 // 0x00402670    b001
                         ret                                                         // 0x00402672    c3
                         nop                                                         // 0x00402673    90
                         nop                                                         // 0x00402674    90
                         nop                                                         // 0x00402675    90
                         nop                                                         // 0x00402676    90
                         nop                                                         // 0x00402677    90
                         nop                                                         // 0x00402678    90
                         nop                                                         // 0x00402679    90
                         nop                                                         // 0x0040267a    90
                         nop                                                         // 0x0040267b    90
                         nop                                                         // 0x0040267c    90
                         nop                                                         // 0x0040267d    90
                         nop                                                         // 0x0040267e    90
                         nop                                                         // 0x0040267f    90
                         ret                0x0004                                   // 0x00402680    c20400
                         nop                                                         // 0x00402683    90
                         nop                                                         // 0x00402684    90
                         nop                                                         // 0x00402685    90
                         nop                                                         // 0x00402686    90
                         nop                                                         // 0x00402687    90
                         nop                                                         // 0x00402688    90
                         nop                                                         // 0x00402689    90
                         nop                                                         // 0x0040268a    90
                         nop                                                         // 0x0040268b    90
                         nop                                                         // 0x0040268c    90
                         nop                                                         // 0x0040268d    90
                         nop                                                         // 0x0040268e    90
                         nop                                                         // 0x0040268f    90
                         xor.s              eax, eax                                 // 0x00402690    33c0
                         ret                                                         // 0x00402692    c3
                         nop                                                         // 0x00402693    90
                         nop                                                         // 0x00402694    90
                         nop                                                         // 0x00402695    90
                         nop                                                         // 0x00402696    90
                         nop                                                         // 0x00402697    90
                         nop                                                         // 0x00402698    90
                         nop                                                         // 0x00402699    90
                         nop                                                         // 0x0040269a    90
                         nop                                                         // 0x0040269b    90
                         nop                                                         // 0x0040269c    90
                         nop                                                         // 0x0040269d    90
                         nop                                                         // 0x0040269e    90
                         nop                                                         // 0x0040269f    90
                         xor.s              eax, eax                                 // 0x004026a0    33c0
                         ret                                                         // 0x004026a2    c3
                         nop                                                         // 0x004026a3    90
                         nop                                                         // 0x004026a4    90
                         nop                                                         // 0x004026a5    90
                         nop                                                         // 0x004026a6    90
                         nop                                                         // 0x004026a7    90
                         nop                                                         // 0x004026a8    90
                         nop                                                         // 0x004026a9    90
                         nop                                                         // 0x004026aa    90
                         nop                                                         // 0x004026ab    90
                         nop                                                         // 0x004026ac    90
                         nop                                                         // 0x004026ad    90
                         nop                                                         // 0x004026ae    90
                         nop                                                         // 0x004026af    90
                         mov                eax, dword ptr [ecx]                     // 0x004026b0    8b01
                         call               dword ptr [eax + 0x64]                   // 0x004026b2    ff5064
                         {disp32} fmul      dword ptr [rdata_bytes + 0x13a0]         // 0x004026b5    d80da0a38a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x139c]         // 0x004026bb    d8059ca38a00
                         ret                                                         // 0x004026c1    c3
                         nop                                                         // 0x004026c2    90
                         nop                                                         // 0x004026c3    90
                         nop                                                         // 0x004026c4    90
                         nop                                                         // 0x004026c5    90
                         nop                                                         // 0x004026c6    90
                         nop                                                         // 0x004026c7    90
                         nop                                                         // 0x004026c8    90
                         nop                                                         // 0x004026c9    90
                         nop                                                         // 0x004026ca    90
                         nop                                                         // 0x004026cb    90
                         nop                                                         // 0x004026cc    90
                         nop                                                         // 0x004026cd    90
                         nop                                                         // 0x004026ce    90
                         nop                                                         // 0x004026cf    90
                         push               esi                                      // 0x004026d0    56
                         mov.s              esi, ecx                                 // 0x004026d1    8bf1
                         mov                eax, dword ptr [esi]                     // 0x004026d3    8b06
                         call               dword ptr [eax + 0x668]                  // 0x004026d5    ff9068060000
                         test               dword ptr [esp + 0x08], eax              // 0x004026db    85442408
                         {disp8} je         _jmp_addr_0x004026eb                     // 0x004026df    740a
                         {disp8} mov        ecx, dword ptr [esi + 0x28]              // 0x004026e1    8b4e28
                         {disp8} fld        dword ptr [ecx + 0x68]                   // 0x004026e4    d94168
                         pop                esi                                      // 0x004026e7    5e
                         ret                0x0004                                   // 0x004026e8    c20400
_jmp_addr_0x004026eb:    {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x004026eb    d90598a38a00
                         pop                esi                                      // 0x004026f1    5e
                         ret                0x0004                                   // 0x004026f2    c20400
                         nop                                                         // 0x004026f5    90
                         nop                                                         // 0x004026f6    90
                         nop                                                         // 0x004026f7    90
                         nop                                                         // 0x004026f8    90
                         nop                                                         // 0x004026f9    90
                         nop                                                         // 0x004026fa    90
                         nop                                                         // 0x004026fb    90
                         nop                                                         // 0x004026fc    90
                         nop                                                         // 0x004026fd    90
                         nop                                                         // 0x004026fe    90
                         nop                                                         // 0x004026ff    90
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]              // 0x00402700    8b4928
                         mov                eax, dword ptr [ecx]                     // 0x00402703    8b01
                         {disp8} jmp        dword ptr [eax + 0x38]                   // 0x00402705    ff6038
                         nop                                                         // 0x00402708    90
                         nop                                                         // 0x00402709    90
                         nop                                                         // 0x0040270a    90
                         nop                                                         // 0x0040270b    90
                         nop                                                         // 0x0040270c    90
                         nop                                                         // 0x0040270d    90
                         nop                                                         // 0x0040270e    90
                         nop                                                         // 0x0040270f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x14]              // 0x00402710    8b4114
                         cmp                eax, dword ptr [ecx + 0x2c]              // 0x00402713    3b412c
                         {disp8} jne        _jmp_addr_0x00402723                     // 0x00402716    750b
                         {disp8} mov        edx, dword ptr [ecx + 0x18]              // 0x00402718    8b5118
                         cmp                edx, dword ptr [ecx + 0x30]              // 0x0040271b    3b5130
                         {disp8} jne        _jmp_addr_0x00402723                     // 0x0040271e    7503
                         xor.s              eax, eax                                 // 0x00402720    33c0
                         ret                                                         // 0x00402722    c3
_jmp_addr_0x00402723:    mov                eax, 0x00000001                          // 0x00402723    b801000000
                         ret                                                         // 0x00402728    c3
                         nop                                                         // 0x00402729    90
                         nop                                                         // 0x0040272a    90
                         nop                                                         // 0x0040272b    90
                         nop                                                         // 0x0040272c    90
                         nop                                                         // 0x0040272d    90
                         nop                                                         // 0x0040272e    90
                         nop                                                         // 0x0040272f    90
                         xor.s              eax, eax                                 // 0x00402730    33c0
                         ret                                                         // 0x00402732    c3
                         nop                                                         // 0x00402733    90
                         nop                                                         // 0x00402734    90
                         nop                                                         // 0x00402735    90
                         nop                                                         // 0x00402736    90
                         nop                                                         // 0x00402737    90
                         nop                                                         // 0x00402738    90
                         nop                                                         // 0x00402739    90
                         nop                                                         // 0x0040273a    90
                         nop                                                         // 0x0040273b    90
                         nop                                                         // 0x0040273c    90
                         nop                                                         // 0x0040273d    90
                         nop                                                         // 0x0040273e    90
                         nop                                                         // 0x0040273f    90
                         xor.s              eax, eax                                 // 0x00402740    33c0
                         ret                                                         // 0x00402742    c3
                         nop                                                         // 0x00402743    90
                         nop                                                         // 0x00402744    90
                         nop                                                         // 0x00402745    90
                         nop                                                         // 0x00402746    90
                         nop                                                         // 0x00402747    90
                         nop                                                         // 0x00402748    90
                         nop                                                         // 0x00402749    90
                         nop                                                         // 0x0040274a    90
                         nop                                                         // 0x0040274b    90
                         nop                                                         // 0x0040274c    90
                         nop                                                         // 0x0040274d    90
                         nop                                                         // 0x0040274e    90
                         nop                                                         // 0x0040274f    90
                         or                 eax, -0x1                                // 0x00402750    83c8ff
                         ret                                                         // 0x00402753    c3
                         nop                                                         // 0x00402754    90
                         nop                                                         // 0x00402755    90
                         nop                                                         // 0x00402756    90
                         nop                                                         // 0x00402757    90
                         nop                                                         // 0x00402758    90
                         nop                                                         // 0x00402759    90
                         nop                                                         // 0x0040275a    90
                         nop                                                         // 0x0040275b    90
                         nop                                                         // 0x0040275c    90
                         nop                                                         // 0x0040275d    90
                         nop                                                         // 0x0040275e    90
                         nop                                                         // 0x0040275f    90
                         xor.s              eax, eax                                 // 0x00402760    33c0
                         ret                                                         // 0x00402762    c3
                         nop                                                         // 0x00402763    90
                         nop                                                         // 0x00402764    90
                         nop                                                         // 0x00402765    90
                         nop                                                         // 0x00402766    90
                         nop                                                         // 0x00402767    90
                         nop                                                         // 0x00402768    90
                         nop                                                         // 0x00402769    90
                         nop                                                         // 0x0040276a    90
                         nop                                                         // 0x0040276b    90
                         nop                                                         // 0x0040276c    90
                         nop                                                         // 0x0040276d    90
                         nop                                                         // 0x0040276e    90
                         nop                                                         // 0x0040276f    90
                         ret                0x0008                                   // 0x00402770    c20800
                         nop                                                         // 0x00402773    90
                         nop                                                         // 0x00402774    90
                         nop                                                         // 0x00402775    90
                         nop                                                         // 0x00402776    90
                         nop                                                         // 0x00402777    90
                         nop                                                         // 0x00402778    90
                         nop                                                         // 0x00402779    90
                         nop                                                         // 0x0040277a    90
                         nop                                                         // 0x0040277b    90
                         nop                                                         // 0x0040277c    90
                         nop                                                         // 0x0040277d    90
                         nop                                                         // 0x0040277e    90
                         nop                                                         // 0x0040277f    90
                         ret                0x0004                                   // 0x00402780    c20400
                         nop                                                         // 0x00402783    90
                         nop                                                         // 0x00402784    90
                         nop                                                         // 0x00402785    90
                         nop                                                         // 0x00402786    90
                         nop                                                         // 0x00402787    90
                         nop                                                         // 0x00402788    90
                         nop                                                         // 0x00402789    90
                         nop                                                         // 0x0040278a    90
                         nop                                                         // 0x0040278b    90
                         nop                                                         // 0x0040278c    90
                         nop                                                         // 0x0040278d    90
                         nop                                                         // 0x0040278e    90
                         nop                                                         // 0x0040278f    90
                         xor.s              eax, eax                                 // 0x00402790    33c0
                         ret                                                         // 0x00402792    c3
                         nop                                                         // 0x00402793    90
                         nop                                                         // 0x00402794    90
                         nop                                                         // 0x00402795    90
                         nop                                                         // 0x00402796    90
                         nop                                                         // 0x00402797    90
                         nop                                                         // 0x00402798    90
                         nop                                                         // 0x00402799    90
                         nop                                                         // 0x0040279a    90
                         nop                                                         // 0x0040279b    90
                         nop                                                         // 0x0040279c    90
                         nop                                                         // 0x0040279d    90
                         nop                                                         // 0x0040279e    90
                         nop                                                         // 0x0040279f    90
                         mov                eax, dword ptr [ecx]                     // 0x004027a0    8b01
                         push               0x0                                      // 0x004027a2    6a00
                         call               dword ptr [eax + 0xc]                    // 0x004027a4    ff500c
                         mov                eax, 0x00000001                          // 0x004027a7    b801000000
                         ret                                                         // 0x004027ac    c3
                         nop                                                         // 0x004027ad    90
                         nop                                                         // 0x004027ae    90
                         nop                                                         // 0x004027af    90
                         ret                                                         // 0x004027b0    c3
                         nop                                                         // 0x004027b1    90
                         nop                                                         // 0x004027b2    90
                         nop                                                         // 0x004027b3    90
                         nop                                                         // 0x004027b4    90
                         nop                                                         // 0x004027b5    90
                         nop                                                         // 0x004027b6    90
                         nop                                                         // 0x004027b7    90
                         nop                                                         // 0x004027b8    90
                         nop                                                         // 0x004027b9    90
                         nop                                                         // 0x004027ba    90
                         nop                                                         // 0x004027bb    90
                         nop                                                         // 0x004027bc    90
                         nop                                                         // 0x004027bd    90
                         nop                                                         // 0x004027be    90
                         nop                                                         // 0x004027bf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x004027c0    8b442404
                         push               eax                                      // 0x004027c4    50
                         call               _jmp_addr_0x005702b0                     // 0x004027c5    e8e6da1600
                         ret                0x0004                                   // 0x004027ca    c20400
                         nop                                                         // 0x004027cd    90
                         nop                                                         // 0x004027ce    90
                         nop                                                         // 0x004027cf    90
                         mov                eax, 0x00000001                          // 0x004027d0    b801000000
                         ret                                                         // 0x004027d5    c3
                         nop                                                         // 0x004027d6    90
                         nop                                                         // 0x004027d7    90
                         nop                                                         // 0x004027d8    90
                         nop                                                         // 0x004027d9    90
                         nop                                                         // 0x004027da    90
                         nop                                                         // 0x004027db    90
                         nop                                                         // 0x004027dc    90
                         nop                                                         // 0x004027dd    90
                         nop                                                         // 0x004027de    90
                         nop                                                         // 0x004027df    90
                         mov                eax, 0x00000001                          // 0x004027e0    b801000000
                         ret                                                         // 0x004027e5    c3
                         nop                                                         // 0x004027e6    90
                         nop                                                         // 0x004027e7    90
                         nop                                                         // 0x004027e8    90
                         nop                                                         // 0x004027e9    90
                         nop                                                         // 0x004027ea    90
                         nop                                                         // 0x004027eb    90
                         nop                                                         // 0x004027ec    90
                         nop                                                         // 0x004027ed    90
                         nop                                                         // 0x004027ee    90
                         nop                                                         // 0x004027ef    90
                         mov                eax, 0x00000001                          // 0x004027f0    b801000000
                         ret                0x0004                                   // 0x004027f5    c20400
                         nop                                                         // 0x004027f8    90
                         nop                                                         // 0x004027f9    90
                         nop                                                         // 0x004027fa    90
                         nop                                                         // 0x004027fb    90
                         nop                                                         // 0x004027fc    90
                         nop                                                         // 0x004027fd    90
                         nop                                                         // 0x004027fe    90
                         nop                                                         // 0x004027ff    90
                         mov                eax, 0x00000001                          // 0x00402800    b801000000
                         ret                                                         // 0x00402805    c3
                         nop                                                         // 0x00402806    90
                         nop                                                         // 0x00402807    90
                         nop                                                         // 0x00402808    90
                         nop                                                         // 0x00402809    90
                         nop                                                         // 0x0040280a    90
                         nop                                                         // 0x0040280b    90
                         nop                                                         // 0x0040280c    90
                         nop                                                         // 0x0040280d    90
                         nop                                                         // 0x0040280e    90
                         nop                                                         // 0x0040280f    90
                         mov                eax, 0x00000001                          // 0x00402810    b801000000
                         ret                                                         // 0x00402815    c3
                         nop                                                         // 0x00402816    90
                         nop                                                         // 0x00402817    90
                         nop                                                         // 0x00402818    90
                         nop                                                         // 0x00402819    90
                         nop                                                         // 0x0040281a    90
                         nop                                                         // 0x0040281b    90
                         nop                                                         // 0x0040281c    90
                         nop                                                         // 0x0040281d    90
                         nop                                                         // 0x0040281e    90
                         nop                                                         // 0x0040281f    90
                         mov                eax, 0x00000001                          // 0x00402820    b801000000
                         ret                                                         // 0x00402825    c3
                         nop                                                         // 0x00402826    90
                         nop                                                         // 0x00402827    90
                         nop                                                         // 0x00402828    90
                         nop                                                         // 0x00402829    90
                         nop                                                         // 0x0040282a    90
                         nop                                                         // 0x0040282b    90
                         nop                                                         // 0x0040282c    90
                         nop                                                         // 0x0040282d    90
                         nop                                                         // 0x0040282e    90
                         nop                                                         // 0x0040282f    90
                         mov                eax, 0x00000001                          // 0x00402830    b801000000
                         ret                0x0004                                   // 0x00402835    c20400
                         nop                                                         // 0x00402838    90
                         nop                                                         // 0x00402839    90
                         nop                                                         // 0x0040283a    90
                         nop                                                         // 0x0040283b    90
                         nop                                                         // 0x0040283c    90
                         nop                                                         // 0x0040283d    90
                         nop                                                         // 0x0040283e    90
                         nop                                                         // 0x0040283f    90
                         mov                eax, 0x00000001                          // 0x00402840    b801000000
                         ret                                                         // 0x00402845    c3
                         nop                                                         // 0x00402846    90
                         nop                                                         // 0x00402847    90
                         nop                                                         // 0x00402848    90
                         nop                                                         // 0x00402849    90
                         nop                                                         // 0x0040284a    90
                         nop                                                         // 0x0040284b    90
                         nop                                                         // 0x0040284c    90
                         nop                                                         // 0x0040284d    90
                         nop                                                         // 0x0040284e    90
                         nop                                                         // 0x0040284f    90
                         mov                eax, 0x00000001                          // 0x00402850    b801000000
                         ret                                                         // 0x00402855    c3
                         nop                                                         // 0x00402856    90
                         nop                                                         // 0x00402857    90
                         nop                                                         // 0x00402858    90
                         nop                                                         // 0x00402859    90
                         nop                                                         // 0x0040285a    90
                         nop                                                         // 0x0040285b    90
                         nop                                                         // 0x0040285c    90
                         nop                                                         // 0x0040285d    90
                         nop                                                         // 0x0040285e    90
                         nop                                                         // 0x0040285f    90
                         xor.s              eax, eax                                 // 0x00402860    33c0
                         ret                                                         // 0x00402862    c3
                         nop                                                         // 0x00402863    90
                         nop                                                         // 0x00402864    90
                         nop                                                         // 0x00402865    90
                         nop                                                         // 0x00402866    90
                         nop                                                         // 0x00402867    90
                         nop                                                         // 0x00402868    90
                         nop                                                         // 0x00402869    90
                         nop                                                         // 0x0040286a    90
                         nop                                                         // 0x0040286b    90
                         nop                                                         // 0x0040286c    90
                         nop                                                         // 0x0040286d    90
                         nop                                                         // 0x0040286e    90
                         nop                                                         // 0x0040286f    90
                         xor.s              eax, eax                                 // 0x00402870    33c0
                         ret                0x0004                                   // 0x00402872    c20400
                         nop                                                         // 0x00402875    90
                         nop                                                         // 0x00402876    90
                         nop                                                         // 0x00402877    90
                         nop                                                         // 0x00402878    90
                         nop                                                         // 0x00402879    90
                         nop                                                         // 0x0040287a    90
                         nop                                                         // 0x0040287b    90
                         nop                                                         // 0x0040287c    90
                         nop                                                         // 0x0040287d    90
                         nop                                                         // 0x0040287e    90
                         nop                                                         // 0x0040287f    90
                         xor.s              eax, eax                                 // 0x00402880    33c0
                         ret                0x0008                                   // 0x00402882    c20800
                         nop                                                         // 0x00402885    90
                         nop                                                         // 0x00402886    90
                         nop                                                         // 0x00402887    90
                         nop                                                         // 0x00402888    90
                         nop                                                         // 0x00402889    90
                         nop                                                         // 0x0040288a    90
                         nop                                                         // 0x0040288b    90
                         nop                                                         // 0x0040288c    90
                         nop                                                         // 0x0040288d    90
                         nop                                                         // 0x0040288e    90
                         nop                                                         // 0x0040288f    90
                         mov                eax, 0x00000017                          // 0x00402890    b817000000
                         ret                0x0008                                   // 0x00402895    c20800
                         nop                                                         // 0x00402898    90
                         nop                                                         // 0x00402899    90
                         nop                                                         // 0x0040289a    90
                         nop                                                         // 0x0040289b    90
                         nop                                                         // 0x0040289c    90
                         nop                                                         // 0x0040289d    90
                         nop                                                         // 0x0040289e    90
                         nop                                                         // 0x0040289f    90
                         mov                eax, 0x00000001                          // 0x004028a0    b801000000
                         ret                                                         // 0x004028a5    c3
                         nop                                                         // 0x004028a6    90
                         nop                                                         // 0x004028a7    90
                         nop                                                         // 0x004028a8    90
                         nop                                                         // 0x004028a9    90
                         nop                                                         // 0x004028aa    90
                         nop                                                         // 0x004028ab    90
                         nop                                                         // 0x004028ac    90
                         nop                                                         // 0x004028ad    90
                         nop                                                         // 0x004028ae    90
                         nop                                                         // 0x004028af    90
                         xor.s              eax, eax                                 // 0x004028b0    33c0
                         ret                0x0008                                   // 0x004028b2    c20800
                         nop                                                         // 0x004028b5    90
                         nop                                                         // 0x004028b6    90
                         nop                                                         // 0x004028b7    90
                         nop                                                         // 0x004028b8    90
                         nop                                                         // 0x004028b9    90
                         nop                                                         // 0x004028ba    90
                         nop                                                         // 0x004028bb    90
                         nop                                                         // 0x004028bc    90
                         nop                                                         // 0x004028bd    90
                         nop                                                         // 0x004028be    90
                         nop                                                         // 0x004028bf    90
                         xor.s              eax, eax                                 // 0x004028c0    33c0
                         ret                0x000c                                   // 0x004028c2    c20c00
                         nop                                                         // 0x004028c5    90
                         nop                                                         // 0x004028c6    90
                         nop                                                         // 0x004028c7    90
                         nop                                                         // 0x004028c8    90
                         nop                                                         // 0x004028c9    90
                         nop                                                         // 0x004028ca    90
                         nop                                                         // 0x004028cb    90
                         nop                                                         // 0x004028cc    90
                         nop                                                         // 0x004028cd    90
                         nop                                                         // 0x004028ce    90
                         nop                                                         // 0x004028cf    90
                         xor.s              eax, eax                                 // 0x004028d0    33c0
                         ret                0x0008                                   // 0x004028d2    c20800
                         nop                                                         // 0x004028d5    90
                         nop                                                         // 0x004028d6    90
                         nop                                                         // 0x004028d7    90
                         nop                                                         // 0x004028d8    90
                         nop                                                         // 0x004028d9    90
                         nop                                                         // 0x004028da    90
                         nop                                                         // 0x004028db    90
                         nop                                                         // 0x004028dc    90
                         nop                                                         // 0x004028dd    90
                         nop                                                         // 0x004028de    90
                         nop                                                         // 0x004028df    90
                         xor.s              eax, eax                                 // 0x004028e0    33c0
                         ret                0x000c                                   // 0x004028e2    c20c00
                         nop                                                         // 0x004028e5    90
                         nop                                                         // 0x004028e6    90
                         nop                                                         // 0x004028e7    90
                         nop                                                         // 0x004028e8    90
                         nop                                                         // 0x004028e9    90
                         nop                                                         // 0x004028ea    90
                         nop                                                         // 0x004028eb    90
                         nop                                                         // 0x004028ec    90
                         nop                                                         // 0x004028ed    90
                         nop                                                         // 0x004028ee    90
                         nop                                                         // 0x004028ef    90
                         xor.s              eax, eax                                 // 0x004028f0    33c0
                         ret                0x0004                                   // 0x004028f2    c20400
                         nop                                                         // 0x004028f5    90
                         nop                                                         // 0x004028f6    90
                         nop                                                         // 0x004028f7    90
                         nop                                                         // 0x004028f8    90
                         nop                                                         // 0x004028f9    90
                         nop                                                         // 0x004028fa    90
                         nop                                                         // 0x004028fb    90
                         nop                                                         // 0x004028fc    90
                         nop                                                         // 0x004028fd    90
                         nop                                                         // 0x004028fe    90
                         nop                                                         // 0x004028ff    90
                         mov                eax, 0x00000001                          // 0x00402900    b801000000
                         ret                0x0004                                   // 0x00402905    c20400
                         nop                                                         // 0x00402908    90
                         nop                                                         // 0x00402909    90
                         nop                                                         // 0x0040290a    90
                         nop                                                         // 0x0040290b    90
                         nop                                                         // 0x0040290c    90
                         nop                                                         // 0x0040290d    90
                         nop                                                         // 0x0040290e    90
                         nop                                                         // 0x0040290f    90
                         xor.s              eax, eax                                 // 0x00402910    33c0
                         ret                                                         // 0x00402912    c3
                         nop                                                         // 0x00402913    90
                         nop                                                         // 0x00402914    90
                         nop                                                         // 0x00402915    90
                         nop                                                         // 0x00402916    90
                         nop                                                         // 0x00402917    90
                         nop                                                         // 0x00402918    90
                         nop                                                         // 0x00402919    90
                         nop                                                         // 0x0040291a    90
                         nop                                                         // 0x0040291b    90
                         nop                                                         // 0x0040291c    90
                         nop                                                         // 0x0040291d    90
                         nop                                                         // 0x0040291e    90
                         nop                                                         // 0x0040291f    90
                         xor.s              eax, eax                                 // 0x00402920    33c0
                         ret                                                         // 0x00402922    c3
                         nop                                                         // 0x00402923    90
                         nop                                                         // 0x00402924    90
                         nop                                                         // 0x00402925    90
                         nop                                                         // 0x00402926    90
                         nop                                                         // 0x00402927    90
                         nop                                                         // 0x00402928    90
                         nop                                                         // 0x00402929    90
                         nop                                                         // 0x0040292a    90
                         nop                                                         // 0x0040292b    90
                         nop                                                         // 0x0040292c    90
                         nop                                                         // 0x0040292d    90
                         nop                                                         // 0x0040292e    90
                         nop                                                         // 0x0040292f    90
                         xor.s              eax, eax                                 // 0x00402930    33c0
                         ret                                                         // 0x00402932    c3
                         nop                                                         // 0x00402933    90
                         nop                                                         // 0x00402934    90
                         nop                                                         // 0x00402935    90
                         nop                                                         // 0x00402936    90
                         nop                                                         // 0x00402937    90
                         nop                                                         // 0x00402938    90
                         nop                                                         // 0x00402939    90
                         nop                                                         // 0x0040293a    90
                         nop                                                         // 0x0040293b    90
                         nop                                                         // 0x0040293c    90
                         nop                                                         // 0x0040293d    90
                         nop                                                         // 0x0040293e    90
                         nop                                                         // 0x0040293f    90
                         xor.s              eax, eax                                 // 0x00402940    33c0
                         ret                0x0008                                   // 0x00402942    c20800
                         nop                                                         // 0x00402945    90
                         nop                                                         // 0x00402946    90
                         nop                                                         // 0x00402947    90
                         nop                                                         // 0x00402948    90
                         nop                                                         // 0x00402949    90
                         nop                                                         // 0x0040294a    90
                         nop                                                         // 0x0040294b    90
                         nop                                                         // 0x0040294c    90
                         nop                                                         // 0x0040294d    90
                         nop                                                         // 0x0040294e    90
                         nop                                                         // 0x0040294f    90
                         mov                eax, 0x00000016                          // 0x00402950    b816000000
                         ret                0x0008                                   // 0x00402955    c20800
                         nop                                                         // 0x00402958    90
                         nop                                                         // 0x00402959    90
                         nop                                                         // 0x0040295a    90
                         nop                                                         // 0x0040295b    90
                         nop                                                         // 0x0040295c    90
                         nop                                                         // 0x0040295d    90
                         nop                                                         // 0x0040295e    90
                         nop                                                         // 0x0040295f    90
                         xor.s              eax, eax                                 // 0x00402960    33c0
                         ret                0x0004                                   // 0x00402962    c20400
                         nop                                                         // 0x00402965    90
                         nop                                                         // 0x00402966    90
                         nop                                                         // 0x00402967    90
                         nop                                                         // 0x00402968    90
                         nop                                                         // 0x00402969    90
                         nop                                                         // 0x0040296a    90
                         nop                                                         // 0x0040296b    90
                         nop                                                         // 0x0040296c    90
                         nop                                                         // 0x0040296d    90
                         nop                                                         // 0x0040296e    90
                         nop                                                         // 0x0040296f    90
                         mov                eax, 0x00000001                          // 0x00402970    b801000000
                         ret                0x0004                                   // 0x00402975    c20400
                         nop                                                         // 0x00402978    90
                         nop                                                         // 0x00402979    90
                         nop                                                         // 0x0040297a    90
                         nop                                                         // 0x0040297b    90
                         nop                                                         // 0x0040297c    90
                         nop                                                         // 0x0040297d    90
                         nop                                                         // 0x0040297e    90
                         nop                                                         // 0x0040297f    90
                         xor.s              eax, eax                                 // 0x00402980    33c0
                         ret                0x0008                                   // 0x00402982    c20800
                         nop                                                         // 0x00402985    90
                         nop                                                         // 0x00402986    90
                         nop                                                         // 0x00402987    90
                         nop                                                         // 0x00402988    90
                         nop                                                         // 0x00402989    90
                         nop                                                         // 0x0040298a    90
                         nop                                                         // 0x0040298b    90
                         nop                                                         // 0x0040298c    90
                         nop                                                         // 0x0040298d    90
                         nop                                                         // 0x0040298e    90
                         nop                                                         // 0x0040298f    90
                         xor.s              eax, eax                                 // 0x00402990    33c0
                         ret                0x0008                                   // 0x00402992    c20800
                         nop                                                         // 0x00402995    90
                         nop                                                         // 0x00402996    90
                         nop                                                         // 0x00402997    90
                         nop                                                         // 0x00402998    90
                         nop                                                         // 0x00402999    90
                         nop                                                         // 0x0040299a    90
                         nop                                                         // 0x0040299b    90
                         nop                                                         // 0x0040299c    90
                         nop                                                         // 0x0040299d    90
                         nop                                                         // 0x0040299e    90
                         nop                                                         // 0x0040299f    90
                         mov                eax, 0x00000001                          // 0x004029a0    b801000000
                         ret                0x0008                                   // 0x004029a5    c20800
                         nop                                                         // 0x004029a8    90
                         nop                                                         // 0x004029a9    90
                         nop                                                         // 0x004029aa    90
                         nop                                                         // 0x004029ab    90
                         nop                                                         // 0x004029ac    90
                         nop                                                         // 0x004029ad    90
                         nop                                                         // 0x004029ae    90
                         nop                                                         // 0x004029af    90
                         mov                eax, 0x00000001                          // 0x004029b0    b801000000
                         ret                0x0008                                   // 0x004029b5    c20800
                         nop                                                         // 0x004029b8    90
                         nop                                                         // 0x004029b9    90
                         nop                                                         // 0x004029ba    90
                         nop                                                         // 0x004029bb    90
                         nop                                                         // 0x004029bc    90
                         nop                                                         // 0x004029bd    90
                         nop                                                         // 0x004029be    90
                         nop                                                         // 0x004029bf    90
                         xor.s              eax, eax                                 // 0x004029c0    33c0
                         ret                0x0008                                   // 0x004029c2    c20800
                         nop                                                         // 0x004029c5    90
                         nop                                                         // 0x004029c6    90
                         nop                                                         // 0x004029c7    90
                         nop                                                         // 0x004029c8    90
                         nop                                                         // 0x004029c9    90
                         nop                                                         // 0x004029ca    90
                         nop                                                         // 0x004029cb    90
                         nop                                                         // 0x004029cc    90
                         nop                                                         // 0x004029cd    90
                         nop                                                         // 0x004029ce    90
                         nop                                                         // 0x004029cf    90
                         mov                eax, 0x00000001                          // 0x004029d0    b801000000
                         ret                0x0008                                   // 0x004029d5    c20800
                         nop                                                         // 0x004029d8    90
                         nop                                                         // 0x004029d9    90
                         nop                                                         // 0x004029da    90
                         nop                                                         // 0x004029db    90
                         nop                                                         // 0x004029dc    90
                         nop                                                         // 0x004029dd    90
                         nop                                                         // 0x004029de    90
                         nop                                                         // 0x004029df    90
                         mov                eax, 0x00000001                          // 0x004029e0    b801000000
                         ret                0x0004                                   // 0x004029e5    c20400
                         nop                                                         // 0x004029e8    90
                         nop                                                         // 0x004029e9    90
                         nop                                                         // 0x004029ea    90
                         nop                                                         // 0x004029eb    90
                         nop                                                         // 0x004029ec    90
                         nop                                                         // 0x004029ed    90
                         nop                                                         // 0x004029ee    90
                         nop                                                         // 0x004029ef    90
                         mov                eax, 0x00000001                          // 0x004029f0    b801000000
                         ret                                                         // 0x004029f5    c3
                         nop                                                         // 0x004029f6    90
                         nop                                                         // 0x004029f7    90
                         nop                                                         // 0x004029f8    90
                         nop                                                         // 0x004029f9    90
                         nop                                                         // 0x004029fa    90
                         nop                                                         // 0x004029fb    90
                         nop                                                         // 0x004029fc    90
                         nop                                                         // 0x004029fd    90
                         nop                                                         // 0x004029fe    90
                         nop                                                         // 0x004029ff    90
                         xor.s              al, al                                   // 0x00402a00    32c0
                         ret                                                         // 0x00402a02    c3
                         nop                                                         // 0x00402a03    90
                         nop                                                         // 0x00402a04    90
                         nop                                                         // 0x00402a05    90
                         nop                                                         // 0x00402a06    90
                         nop                                                         // 0x00402a07    90
                         nop                                                         // 0x00402a08    90
                         nop                                                         // 0x00402a09    90
                         nop                                                         // 0x00402a0a    90
                         nop                                                         // 0x00402a0b    90
                         nop                                                         // 0x00402a0c    90
                         nop                                                         // 0x00402a0d    90
                         nop                                                         // 0x00402a0e    90
                         nop                                                         // 0x00402a0f    90
                         xor.s              al, al                                   // 0x00402a10    32c0
                         ret                                                         // 0x00402a12    c3
                         nop                                                         // 0x00402a13    90
                         nop                                                         // 0x00402a14    90
                         nop                                                         // 0x00402a15    90
                         nop                                                         // 0x00402a16    90
                         nop                                                         // 0x00402a17    90
                         nop                                                         // 0x00402a18    90
                         nop                                                         // 0x00402a19    90
                         nop                                                         // 0x00402a1a    90
                         nop                                                         // 0x00402a1b    90
                         nop                                                         // 0x00402a1c    90
                         nop                                                         // 0x00402a1d    90
                         nop                                                         // 0x00402a1e    90
                         nop                                                         // 0x00402a1f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00402a20    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x000000c0]        // 0x00402a23    8b80c0000000
                         ret                                                         // 0x00402a29    c3
                         call               dword ptr [__imp__DirectInputCreateA@4]  // 0x00402a2a    ff1534908a00
                         mov                eax, 0x00000001                          // 0x00402a30    b801000000
                         ret                0x0004                                   // 0x00402a35    c20400
                         nop                                                         // 0x00402a38    90
                         nop                                                         // 0x00402a39    90
                         nop                                                         // 0x00402a3a    90
                         nop                                                         // 0x00402a3b    90
                         nop                                                         // 0x00402a3c    90
                         nop                                                         // 0x00402a3d    90
                         nop                                                         // 0x00402a3e    90
                         nop                                                         // 0x00402a3f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00402a40    8b4128
                         {disp32} mov       edx, dword ptr [eax + 0x000000c4]        // 0x00402a43    8b90c4000000
                         test               edx, edx                                 // 0x00402a49    85d2
                         {disp8} je         _jmp_addr_0x00402a5b                     // 0x00402a4b    740e
                         cmp                dword ptr [esp + 0x04], ecx              // 0x00402a4d    394c2404
                         {disp8} je         _jmp_addr_0x00402a5b                     // 0x00402a51    7408
                         mov                eax, 0x00000001                          // 0x00402a53    b801000000
                         ret                0x0004                                   // 0x00402a58    c20400
_jmp_addr_0x00402a5b:    xor.s              eax, eax                                 // 0x00402a5b    33c0
                         ret                0x0004                                   // 0x00402a5d    c20400
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00402a60    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x000000c8]        // 0x00402a63    8b80c8000000
                         ret                0x0004                                   // 0x00402a69    c20400
                         nop                                                         // 0x00402a6c    90
                         nop                                                         // 0x00402a6d    90
                         nop                                                         // 0x00402a6e    90
                         nop                                                         // 0x00402a6f    90
                         xor.s              eax, eax                                 // 0x00402a70    33c0
                         ret                0x0004                                   // 0x00402a72    c20400
                         nop                                                         // 0x00402a75    90
                         nop                                                         // 0x00402a76    90
                         nop                                                         // 0x00402a77    90
                         nop                                                         // 0x00402a78    90
                         nop                                                         // 0x00402a79    90
                         nop                                                         // 0x00402a7a    90
                         nop                                                         // 0x00402a7b    90
                         nop                                                         // 0x00402a7c    90
                         nop                                                         // 0x00402a7d    90
                         nop                                                         // 0x00402a7e    90
                         nop                                                         // 0x00402a7f    90
                         mov                eax, 0x00000001                          // 0x00402a80    b801000000
                         ret                0x0004                                   // 0x00402a85    c20400
                         nop                                                         // 0x00402a88    90
                         nop                                                         // 0x00402a89    90
                         nop                                                         // 0x00402a8a    90
                         nop                                                         // 0x00402a8b    90
                         nop                                                         // 0x00402a8c    90
                         nop                                                         // 0x00402a8d    90
                         nop                                                         // 0x00402a8e    90
                         nop                                                         // 0x00402a8f    90
                         mov                eax, 0x00000001                          // 0x00402a90    b801000000
                         ret                0x0004                                   // 0x00402a95    c20400
                         nop                                                         // 0x00402a98    90
                         nop                                                         // 0x00402a99    90
                         nop                                                         // 0x00402a9a    90
                         nop                                                         // 0x00402a9b    90
                         nop                                                         // 0x00402a9c    90
                         nop                                                         // 0x00402a9d    90
                         nop                                                         // 0x00402a9e    90
                         nop                                                         // 0x00402a9f    90
                         call               _jmp_addr_0x00637cc0                     // 0x00402aa0    e81b522300
                         ret                0x0004                                   // 0x00402aa5    c20400
                         nop                                                         // 0x00402aa8    90
                         nop                                                         // 0x00402aa9    90
                         nop                                                         // 0x00402aaa    90
                         nop                                                         // 0x00402aab    90
                         nop                                                         // 0x00402aac    90
                         nop                                                         // 0x00402aad    90
                         nop                                                         // 0x00402aae    90
                         nop                                                         // 0x00402aaf    90
                         xor.s              eax, eax                                 // 0x00402ab0    33c0
                         ret                                                         // 0x00402ab2    c3
                         nop                                                         // 0x00402ab3    90
                         nop                                                         // 0x00402ab4    90
                         nop                                                         // 0x00402ab5    90
                         nop                                                         // 0x00402ab6    90
                         nop                                                         // 0x00402ab7    90
                         nop                                                         // 0x00402ab8    90
                         nop                                                         // 0x00402ab9    90
                         nop                                                         // 0x00402aba    90
                         nop                                                         // 0x00402abb    90
                         nop                                                         // 0x00402abc    90
                         nop                                                         // 0x00402abd    90
                         nop                                                         // 0x00402abe    90
                         nop                                                         // 0x00402abf    90
                         xor.s              eax, eax                                 // 0x00402ac0    33c0
                         ret                                                         // 0x00402ac2    c3
                         nop                                                         // 0x00402ac3    90
                         nop                                                         // 0x00402ac4    90
                         nop                                                         // 0x00402ac5    90
                         nop                                                         // 0x00402ac6    90
                         nop                                                         // 0x00402ac7    90
                         nop                                                         // 0x00402ac8    90
                         nop                                                         // 0x00402ac9    90
                         nop                                                         // 0x00402aca    90
                         nop                                                         // 0x00402acb    90
                         nop                                                         // 0x00402acc    90
                         nop                                                         // 0x00402acd    90
                         nop                                                         // 0x00402ace    90
                         nop                                                         // 0x00402acf    90
                         xor.s              eax, eax                                 // 0x00402ad0    33c0
                         ret                                                         // 0x00402ad2    c3
                         nop                                                         // 0x00402ad3    90
                         nop                                                         // 0x00402ad4    90
                         nop                                                         // 0x00402ad5    90
                         nop                                                         // 0x00402ad6    90
                         nop                                                         // 0x00402ad7    90
                         nop                                                         // 0x00402ad8    90
                         nop                                                         // 0x00402ad9    90
                         nop                                                         // 0x00402ada    90
                         nop                                                         // 0x00402adb    90
                         nop                                                         // 0x00402adc    90
                         nop                                                         // 0x00402add    90
                         nop                                                         // 0x00402ade    90
                         nop                                                         // 0x00402adf    90
                         xor.s              eax, eax                                 // 0x00402ae0    33c0
                         ret                                                         // 0x00402ae2    c3
                         nop                                                         // 0x00402ae3    90
                         nop                                                         // 0x00402ae4    90
                         nop                                                         // 0x00402ae5    90
                         nop                                                         // 0x00402ae6    90
                         nop                                                         // 0x00402ae7    90
                         nop                                                         // 0x00402ae8    90
                         nop                                                         // 0x00402ae9    90
                         nop                                                         // 0x00402aea    90
                         nop                                                         // 0x00402aeb    90
                         nop                                                         // 0x00402aec    90
                         nop                                                         // 0x00402aed    90
                         nop                                                         // 0x00402aee    90
                         nop                                                         // 0x00402aef    90
                         xor.s              eax, eax                                 // 0x00402af0    33c0
                         ret                                                         // 0x00402af2    c3
                         nop                                                         // 0x00402af3    90
                         nop                                                         // 0x00402af4    90
                         nop                                                         // 0x00402af5    90
                         nop                                                         // 0x00402af6    90
                         nop                                                         // 0x00402af7    90
                         nop                                                         // 0x00402af8    90
                         nop                                                         // 0x00402af9    90
                         nop                                                         // 0x00402afa    90
                         nop                                                         // 0x00402afb    90
                         nop                                                         // 0x00402afc    90
                         nop                                                         // 0x00402afd    90
                         nop                                                         // 0x00402afe    90
                         nop                                                         // 0x00402aff    90
                         {disp32} fld       dword ptr [rdata_bytes + 0x1398]         // 0x00402b00    d90598a38a00
                         ret                                                         // 0x00402b06    c3
                         nop                                                         // 0x00402b07    90
                         nop                                                         // 0x00402b08    90
                         nop                                                         // 0x00402b09    90
                         nop                                                         // 0x00402b0a    90
                         nop                                                         // 0x00402b0b    90
                         nop                                                         // 0x00402b0c    90
                         nop                                                         // 0x00402b0d    90
                         nop                                                         // 0x00402b0e    90
                         nop                                                         // 0x00402b0f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00402b10    8b442404
                         add                ecx, 0x14                                // 0x00402b14    83c114
                         mov                edx, dword ptr [ecx]                     // 0x00402b17    8b11
                         mov                dword ptr [eax], edx                     // 0x00402b19    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]              // 0x00402b1b    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx              // 0x00402b1e    895004
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x00402b21    8b4908
                         {disp8} mov        dword ptr [eax + 0x08], ecx              // 0x00402b24    894808
                         ret                0x0004                                   // 0x00402b27    c20400
                         call               dword ptr [rdata_bytes + 0xd8]           // 0x00402b2a    ff15d8908a00
                         xor.s              eax, eax                                 // 0x00402b30    33c0
                         ret                                                         // 0x00402b32    c3
                         nop                                                         // 0x00402b33    90
                         nop                                                         // 0x00402b34    90
                         nop                                                         // 0x00402b35    90
                         nop                                                         // 0x00402b36    90
                         nop                                                         // 0x00402b37    90
                         nop                                                         // 0x00402b38    90
                         nop                                                         // 0x00402b39    90
                         nop                                                         // 0x00402b3a    90
                         nop                                                         // 0x00402b3b    90
                         nop                                                         // 0x00402b3c    90
                         nop                                                         // 0x00402b3d    90
                         nop                                                         // 0x00402b3e    90
                         nop                                                         // 0x00402b3f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00402b40    8b4128
                         add                eax, 0x18                                // 0x00402b43    83c018
                         ret                                                         // 0x00402b46    c3
                         nop                                                         // 0x00402b47    90
                         nop                                                         // 0x00402b48    90
                         nop                                                         // 0x00402b49    90
                         nop                                                         // 0x00402b4a    90
                         nop                                                         // 0x00402b4b    90
                         nop                                                         // 0x00402b4c    90
                         nop                                                         // 0x00402b4d    90
                         nop                                                         // 0x00402b4e    90
                         nop                                                         // 0x00402b4f    90
                         or                 eax, -0x1                                // 0x00402b50    83c8ff
                         ret                                                         // 0x00402b53    c3
                         nop                                                         // 0x00402b54    90
                         nop                                                         // 0x00402b55    90
                         nop                                                         // 0x00402b56    90
                         nop                                                         // 0x00402b57    90
                         nop                                                         // 0x00402b58    90
                         nop                                                         // 0x00402b59    90
                         nop                                                         // 0x00402b5a    90
                         nop                                                         // 0x00402b5b    90
                         nop                                                         // 0x00402b5c    90
                         nop                                                         // 0x00402b5d    90
                         nop                                                         // 0x00402b5e    90
                         nop                                                         // 0x00402b5f    90
_jmp_addr_0x00402b60:    push               esi                                      // 0x00402b60    56
                         mov.s              esi, ecx                                 // 0x00402b61    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000008c]        // 0x00402b63    8b8e8c000000
                         test               ecx, ecx                                 // 0x00402b69    85c9
                         push               edi                                      // 0x00402b6b    57
                         mov                dword ptr [esi], 0x008a9a64              // 0x00402b6c    c706649a8a00
                         {disp8} je         _jmp_addr_0x00402b83                     // 0x00402b72    740f
                         call               _jmp_addr_0x007f8d10                     // 0x00402b74    e897613f00
                         {disp32} mov       dword ptr [esi + 0x0000008c], 0x00000000 // 0x00402b79    c7868c00000000000000
_jmp_addr_0x00402b83:    {disp32} mov       edi, dword ptr [esi + 0x00000090]        // 0x00402b83    8bbe90000000
                         test               edi, edi                                 // 0x00402b89    85ff
                         {disp8} je         _jmp_addr_0x00402ba7                     // 0x00402b8b    741a
                         mov.s              ecx, edi                                 // 0x00402b8d    8bcf
                         call               _jmp_addr_0x007f70e0                     // 0x00402b8f    e84c453f00
                         push               edi                                      // 0x00402b94    57
                         call                ___dl__FPv                              // 0x00402b95    e8fec23a00
                         add                esp, 0x04                                // 0x00402b9a    83c404
                         {disp32} mov       dword ptr [esi + 0x00000090], 0x00000000 // 0x00402b9d    c7869000000000000000
_jmp_addr_0x00402ba7:    mov.s              ecx, esi                                 // 0x00402ba7    8bce
                         call               _jmp_addr_0x0052e280                     // 0x00402ba9    e8d2b61200
                         pop                edi                                      // 0x00402bae    5f
                         pop                esi                                      // 0x00402baf    5e
                         ret                                                         // 0x00402bb0    c3
                         nop                                                         // 0x00402bb1    90
                         nop                                                         // 0x00402bb2    90
                         nop                                                         // 0x00402bb3    90
                         nop                                                         // 0x00402bb4    90
                         nop                                                         // 0x00402bb5    90
                         nop                                                         // 0x00402bb6    90
                         nop                                                         // 0x00402bb7    90
                         nop                                                         // 0x00402bb8    90
                         nop                                                         // 0x00402bb9    90
                         nop                                                         // 0x00402bba    90
                         nop                                                         // 0x00402bbb    90
                         nop                                                         // 0x00402bbc    90
                         nop                                                         // 0x00402bbd    90
                         nop                                                         // 0x00402bbe    90
                         nop                                                         // 0x00402bbf    90
@SetZero__5AbodeFv@4:    xor.s              eax, eax                                 // 0x00402bc0    33c0
                         {disp32} mov       byte ptr [ecx + 0x000000b6], al          // 0x00402bc2    8881b6000000
                         {disp32} mov       byte ptr [ecx + 0x000000b4], al          // 0x00402bc8    8881b4000000
                         {disp32} mov       byte ptr [ecx + 0x000000b7], al          // 0x00402bce    8881b7000000
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax        // 0x00402bd4    898194000000
                         {disp32} mov       dword ptr [ecx + 0x000000bc], eax        // 0x00402bda    8981bc000000
                         {disp32} mov       dword ptr [ecx + 0x000000c0], eax        // 0x00402be0    8981c0000000
                         {disp32} mov       dword ptr [ecx + 0x0000008c], eax        // 0x00402be6    89818c000000
                         {disp32} mov       dword ptr [ecx + 0x00000090], eax        // 0x00402bec    898190000000
                         {disp8} mov        byte ptr [ecx + 0x7c], al                // 0x00402bf2    88417c
                         {disp32} mov       dword ptr [ecx + 0x000000b0], eax        // 0x00402bf5    8981b0000000
                         {disp32} mov       byte ptr [ecx + 0x000000b5], al          // 0x00402bfb    8881b5000000
                         {disp32} mov       byte ptr [ecx + 0x000000b9], al          // 0x00402c01    8881b9000000
                         ret                                                         // 0x00402c07    c3
                         nop                                                         // 0x00402c08    90
                         nop                                                         // 0x00402c09    90
                         nop                                                         // 0x00402c0a    90
                         nop                                                         // 0x00402c0b    90
                         nop                                                         // 0x00402c0c    90
                         nop                                                         // 0x00402c0d    90
                         nop                                                         // 0x00402c0e    90
                         nop                                                         // 0x00402c0f    90
_jmp_addr_0x00402c10:    push               esi                                      // 0x00402c10    56
                         mov.s              esi, ecx                                 // 0x00402c11    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00402c13    8b06
                         call               dword ptr [eax + 0x910]                  // 0x00402c15    ff9010090000
                         mov                edx, dword ptr [esi]                     // 0x00402c1b    8b16
                         mov.s              ecx, esi                                 // 0x00402c1d    8bce
                         call               dword ptr [edx + 0x48]                   // 0x00402c1f    ff5248
                         test               eax, eax                                 // 0x00402c22    85c0
                         {disp8} je         _jmp_addr_0x00402c4c                     // 0x00402c24    7426
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]   // 0x00402c26    a15c19d000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]              // 0x00402c2b    8b4814
                         test               ch, -0x80                                // 0x00402c2e    f6c580
                         {disp8} jne        _jmp_addr_0x00402c3d                     // 0x00402c31    750a
                         mov                edx, dword ptr [esi]                     // 0x00402c33    8b16
                         mov.s              ecx, esi                                 // 0x00402c35    8bce
                         call               dword ptr [edx + 0x90c]                  // 0x00402c37    ff920c090000
_jmp_addr_0x00402c3d:    mov                eax, dword ptr [esi]                     // 0x00402c3d    8b06
                         push               esi                                      // 0x00402c3f    56
                         mov.s              ecx, esi                                 // 0x00402c40    8bce
                         call               dword ptr [eax + 0x48]                   // 0x00402c42    ff5048
                         mov.s              ecx, eax                                 // 0x00402c45    8bc8
                         call               _jmp_addr_0x00739a60                     // 0x00402c47    e8146e3300
_jmp_addr_0x00402c4c:    mov.s              ecx, esi                                 // 0x00402c4c    8bce
                         call               _jmp_addr_0x006366a0                     // 0x00402c4e    e84d3a2300
                         pop                esi                                      // 0x00402c53    5e
                         ret                                                         // 0x00402c54    c3
                         nop                                                         // 0x00402c55    90
                         nop                                                         // 0x00402c56    90
                         nop                                                         // 0x00402c57    90
                         nop                                                         // 0x00402c58    90
                         nop                                                         // 0x00402c59    90
                         nop                                                         // 0x00402c5a    90
                         nop                                                         // 0x00402c5b    90
                         nop                                                         // 0x00402c5c    90
                         nop                                                         // 0x00402c5d    90
                         nop                                                         // 0x00402c5e    90
                         nop                                                         // 0x00402c5f    90
_jmp_addr_0x00402c60:    push               esi                                      // 0x00402c60    56
                         mov.s              esi, ecx                                 // 0x00402c61    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00402c63    8b06
                         push               edi                                      // 0x00402c65    57
                         call               dword ptr [eax + 0x48]                   // 0x00402c66    ff5048
                         mov                edx, dword ptr [esi]                     // 0x00402c69    8b16
                         mov.s              ecx, esi                                 // 0x00402c6b    8bce
                         mov.s              edi, eax                                 // 0x00402c6d    8bf8
                         call               dword ptr [edx + 0x910]                  // 0x00402c6f    ff9210090000
                         test               edi, edi                                 // 0x00402c75    85ff
                         {disp8} je         _jmp_addr_0x00402c98                     // 0x00402c77    741f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]   // 0x00402c79    a15c19d000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]              // 0x00402c7e    8b4814
                         test               ch, -0x80                                // 0x00402c81    f6c580
                         {disp8} jne        _jmp_addr_0x00402c98                     // 0x00402c84    7512
                         mov                edx, dword ptr [esi]                     // 0x00402c86    8b16
                         mov.s              ecx, esi                                 // 0x00402c88    8bce
                         call               dword ptr [edx + 0x90c]                  // 0x00402c8a    ff920c090000
                         push               esi                                      // 0x00402c90    56
                         mov.s              ecx, edi                                 // 0x00402c91    8bcf
                         call               _jmp_addr_0x00739a60                     // 0x00402c93    e8c86d3300
_jmp_addr_0x00402c98:    mov.s              ecx, esi                                 // 0x00402c98    8bce
                         call               _jmp_addr_0x00403d20                     // 0x00402c9a    e881100000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00402c9f    8b44240c
                         push               eax                                      // 0x00402ca3    50
                         mov.s              ecx, esi                                 // 0x00402ca4    8bce
                         call               _jmp_addr_0x0052e2b0                     // 0x00402ca6    e805b61200
                         pop                edi                                      // 0x00402cab    5f
                         pop                esi                                      // 0x00402cac    5e
                         ret                0x0004                                   // 0x00402cad    c20400
                         push               esi                                      // 0x00402cb0    56
                         push               edi                                      // 0x00402cb1    57
                         mov.s              esi, ecx                                 // 0x00402cb2    8bf1
                         mov                edi, dword ptr [esi]                     // 0x00402cb4    8b3e
                         push               0x0                                      // 0x00402cb6    6a00
                         call               dword ptr [edi + 0x11c]                  // 0x00402cb8    ff971c010000
                         push               ecx                                      // 0x00402cbe    51
                         mov.s              ecx, esi                                 // 0x00402cbf    8bce
                         fstp               dword ptr [esp]                          // 0x00402cc1    d91c24
                         call               dword ptr [edi + 0x5b8]                  // 0x00402cc4    ff97b8050000
                         fstp               st(0)                                    // 0x00402cca    ddd8
                         pop                edi                                      // 0x00402ccc    5f
                         pop                esi                                      // 0x00402ccd    5e
                         ret                                                         // 0x00402cce    c3
                         nop                                                         // 0x00402ccf    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00402cd0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]              // 0x00402cd4    8b542404
                         push               eax                                      // 0x00402cd8    50
                         push               edx                                      // 0x00402cd9    52
                         call               _jmp_addr_0x00638cb0                     // 0x00402cda    e8d15f2300
                         ret                0x0008                                   // 0x00402cdf    c20800
                         nop                                                         // 0x00402ce2    90
                         nop                                                         // 0x00402ce3    90
                         nop                                                         // 0x00402ce4    90
                         nop                                                         // 0x00402ce5    90
                         nop                                                         // 0x00402ce6    90
                         nop                                                         // 0x00402ce7    90
                         nop                                                         // 0x00402ce8    90
                         nop                                                         // 0x00402ce9    90
                         nop                                                         // 0x00402cea    90
                         nop                                                         // 0x00402ceb    90
                         nop                                                         // 0x00402cec    90
                         nop                                                         // 0x00402ced    90
                         nop                                                         // 0x00402cee    90
                         nop                                                         // 0x00402cef    90
                         sub                esp, 0x30                                // 0x00402cf0    83ec30
                         push               esi                                      // 0x00402cf3    56
                         {disp8} mov        esi, dword ptr [esp + 0x38]              // 0x00402cf4    8b742438
                         push               edi                                      // 0x00402cf8    57
                         mov.s              edi, ecx                                 // 0x00402cf9    8bf9
                         {disp32} mov       ecx, dword ptr [edi + 0x00000090]        // 0x00402cfb    8b8f90000000
                         test               ecx, ecx                                 // 0x00402d01    85c9
                         {disp32} je        _jmp_addr_0x00402da3                     // 0x00402d03    0f849a000000
                         push               0x006de590                               // 0x00402d09    6890e56d00
                         push               esi                                      // 0x00402d0e    56
                         call               _jmp_addr_0x0076d4c0                     // 0x00402d0f    e8aca73600
                         test               al, al                                   // 0x00402d14    84c0
                         {disp32} je        _jmp_addr_0x00402da3                     // 0x00402d16    0f8487000000
                         {disp8} mov        edx, dword ptr [edi + 0x40]              // 0x00402d1c    8b5740
                         add                edx, 0x14                                // 0x00402d1f    83c214
                         {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x00402d22    8d4c2408
                         call               @SetInverse__8LHMatrixFRC8LHMatrix@12    // 0x00402d26    e865853f00
                         fld                dword ptr [esi]                          // 0x00402d2b    d906
                         {disp8} fld        dword ptr [esi + 0x04]                   // 0x00402d2d    d94604
                         {disp8} mov        eax, dword ptr [esp + 0x40]              // 0x00402d30    8b442440
                         {disp8} fld        dword ptr [esi + 0x08]                   // 0x00402d34    d94608
                         pop                edi                                      // 0x00402d37    5f
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x00402d38    d944241c
                         fmul               st, st(1)                                // 0x00402d3c    d8c9
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x00402d3e    d9442410
                         fmul               st, st(3)                                // 0x00402d42    d8cb
                         faddp              st(1), st                                // 0x00402d44    dec1
                         {disp8} fld        dword ptr [esp + 0x04]                   // 0x00402d46    d9442404
                         fmul               st, st(4)                                // 0x00402d4a    d8cc
                         faddp              st(1), st                                // 0x00402d4c    dec1
                         {disp8} fadd       dword ptr [esp + 0x28]                   // 0x00402d4e    d8442428
                         fstp               dword ptr [esi]                          // 0x00402d52    d91e
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x00402d54    d9442420
                         fmul               st, st(1)                                // 0x00402d58    d8c9
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00402d5a    d9442414
                         fmul               st, st(3)                                // 0x00402d5e    d8cb
                         faddp              st(1), st                                // 0x00402d60    dec1
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x00402d62    d9442408
                         fmul               st, st(4)                                // 0x00402d66    d8cc
                         faddp              st(1), st                                // 0x00402d68    dec1
                         {disp8} fadd       dword ptr [esp + 0x2c]                   // 0x00402d6a    d844242c
                         {disp8} fstp       dword ptr [esi + 0x04]                   // 0x00402d6e    d95e04
                         {disp8} fld        dword ptr [esp + 0x24]                   // 0x00402d71    d9442424
                         fmul               st, st(1)                                // 0x00402d75    d8c9
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x00402d77    d9442418
                         fmul               st, st(3)                                // 0x00402d7b    d8cb
                         faddp              st(1), st                                // 0x00402d7d    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00402d7f    d944240c
                         fmul               st, st(4)                                // 0x00402d83    d8cc
                         faddp              st(1), st                                // 0x00402d85    dec1
                         {disp8} fadd       dword ptr [esp + 0x30]                   // 0x00402d87    d8442430
                         {disp8} fstp       dword ptr [esi + 0x08]                   // 0x00402d8b    d95e08
                         mov                dword ptr [eax], 0x00000000              // 0x00402d8e    c70000000000
                         mov                al, 0x01                                 // 0x00402d94    b001
                         fstp               st(0)                                    // 0x00402d96    ddd8
                         pop                esi                                      // 0x00402d98    5e
                         fstp               st(0)                                    // 0x00402d99    ddd8
                         fstp               st(0)                                    // 0x00402d9b    ddd8
                         add                esp, 0x30                                // 0x00402d9d    83c430
                         ret                0x0008                                   // 0x00402da0    c20800
_jmp_addr_0x00402da3:    {disp8} mov        ecx, dword ptr [esp + 0x40]              // 0x00402da3    8b4c2440
                         push               ecx                                      // 0x00402da7    51
                         push               esi                                      // 0x00402da8    56
                         mov.s              ecx, edi                                 // 0x00402da9    8bcf
                         call               _jmp_addr_0x00732770                     // 0x00402dab    e8c0f93200
                         pop                edi                                      // 0x00402db0    5f
                         pop                esi                                      // 0x00402db1    5e
                         add                esp, 0x30                                // 0x00402db2    83c430
                         ret                0x0008                                   // 0x00402db5    c20800
                         nop                                                         // 0x00402db8    90
                         nop                                                         // 0x00402db9    90
                         nop                                                         // 0x00402dba    90
                         nop                                                         // 0x00402dbb    90
                         nop                                                         // 0x00402dbc    90
                         nop                                                         // 0x00402dbd    90
                         nop                                                         // 0x00402dbe    90
                         nop                                                         // 0x00402dbf    90
                         xor.s              eax, eax                                 // 0x00402dc0    33c0
                         ret                                                         // 0x00402dc2    c3
                         nop                                                         // 0x00402dc3    90
                         nop                                                         // 0x00402dc4    90
                         nop                                                         // 0x00402dc5    90
                         nop                                                         // 0x00402dc6    90
                         nop                                                         // 0x00402dc7    90
                         nop                                                         // 0x00402dc8    90
                         nop                                                         // 0x00402dc9    90
                         nop                                                         // 0x00402dca    90
                         nop                                                         // 0x00402dcb    90
                         nop                                                         // 0x00402dcc    90
                         nop                                                         // 0x00402dcd    90
                         nop                                                         // 0x00402dce    90
                         nop                                                         // 0x00402dcf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000090]        // 0x00402dd0    8b8190000000
                         test               eax, eax                                 // 0x00402dd6    85c0
                         {disp8} je         _jmp_addr_0x00402de0                     // 0x00402dd8    7406
                         mov                dword ptr [eax], 0x00000000              // 0x00402dda    c70000000000
_jmp_addr_0x00402de0:    mov                eax, dword ptr [ecx]                     // 0x00402de0    8b01
                         push               esi                                      // 0x00402de2    56
                         push               0x0                                      // 0x00402de3    6a00
                         call               dword ptr [eax + 0x788]                  // 0x00402de5    ff9088070000
                         {disp8} mov        esi, dword ptr [esp + 0x0c]              // 0x00402deb    8b74240c
                         lea                ecx, dword ptr [eax + eax * 0x2]         // 0x00402def    8d0c40
                         {disp32} lea       edx, dword ptr [ecx * 0x8 + 0x00cc63e0]  // 0x00402df2    8d14cde063cc00
                         push               edx                                      // 0x00402df9    52
                         push               0x44fa0000                               // 0x00402dfa    680000fa44
                         mov.s              ecx, esi                                 // 0x00402dff    8bce
                         call               _jmp_addr_0x007fb810                     // 0x00402e01    e80a8a3f00
                         mov.s              ecx, esi                                 // 0x00402e06    8bce
                         call               _jmp_addr_0x007fbac0                     // 0x00402e08    e8b38c3f00
                         pop                esi                                      // 0x00402e0d    5e
                         ret                0x0004                                   // 0x00402e0e    c20400
                         nop                                                         // 0x00402e11    90
                         nop                                                         // 0x00402e12    90
                         nop                                                         // 0x00402e13    90
                         nop                                                         // 0x00402e14    90
                         nop                                                         // 0x00402e15    90
                         nop                                                         // 0x00402e16    90
                         nop                                                         // 0x00402e17    90
                         nop                                                         // 0x00402e18    90
                         nop                                                         // 0x00402e19    90
                         nop                                                         // 0x00402e1a    90
                         nop                                                         // 0x00402e1b    90
                         nop                                                         // 0x00402e1c    90
                         nop                                                         // 0x00402e1d    90
                         nop                                                         // 0x00402e1e    90
                         nop                                                         // 0x00402e1f    90
_Create__5AbodeFRC9MapCoordsPC10GAbodeInfoP4TownffUlUlfii:    {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00402e20    8b442408
                         {disp32} mov       ecx, dword ptr [eax + 0x00000120]        // 0x00402e24    8b8820010000
                         cmp                ecx, 0x00000100                          // 0x00402e2a    81f900010000
                         push               esi                                      // 0x00402e30    56
                         {disp32} jg        _jmp_addr_0x00402f4e                     // 0x00402e31    0f8f17010000
                         {disp32} je        _jmp_addr_0x00402f25                     // 0x00402e37    0f84e8000000
                         add                ecx, -0xa                                // 0x00402e3d    83c1f6
                         cmp                ecx, 0x7a                                // 0x00402e40    83f97a
                         {disp32} ja        _jmp_addr_0x00402ffb                     // 0x00402e43    0f87b2010000
                         xor.s              edx, edx                                 // 0x00402e49    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x004030b0]          // 0x00402e4b    8a91b0304000
                         jmp                dword ptr [edx*4 + 0x403098]             // 0x00402e51    ff249598304000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402e58    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402e5c    8b542424
                         push               ecx                                      // 0x00402e60    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402e61    8b4c241c
                         push               edx                                      // 0x00402e65    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402e66    8b54241c
                         push               ecx                                      // 0x00402e6a    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402e6b    8b4c241c
                         push               edx                                      // 0x00402e6f    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402e70    8b542418
                         push               ecx                                      // 0x00402e74    51
                         push               eax                                      // 0x00402e75    50
                         push               edx                                      // 0x00402e76    52
                         call               _jmp_addr_0x007374c0                     // 0x00402e77    e844463300
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402e7c    e9ec010000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402e81    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402e85    8b542424
                         push               ecx                                      // 0x00402e89    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402e8a    8b4c241c
                         push               edx                                      // 0x00402e8e    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402e8f    8b54241c
                         push               ecx                                      // 0x00402e93    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402e94    8b4c241c
                         push               edx                                      // 0x00402e98    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402e99    8b542418
                         push               ecx                                      // 0x00402e9d    51
                         push               eax                                      // 0x00402e9e    50
                         push               edx                                      // 0x00402e9f    52
                         call               _jmp_addr_0x00732d60                     // 0x00402ea0    e8bbfe3200
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402ea5    e9c3010000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402eaa    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402eae    8b542424
                         push               ecx                                      // 0x00402eb2    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402eb3    8b4c241c
                         push               edx                                      // 0x00402eb7    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402eb8    8b54241c
                         push               ecx                                      // 0x00402ebc    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402ebd    8b4c241c
                         push               edx                                      // 0x00402ec1    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402ec2    8b542418
                         push               ecx                                      // 0x00402ec6    51
                         push               eax                                      // 0x00402ec7    50
                         push               edx                                      // 0x00402ec8    52
                         call               _jmp_addr_0x00405890                     // 0x00402ec9    e8c2290000
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402ece    e99a010000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402ed3    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402ed7    8b542424
                         push               ecx                                      // 0x00402edb    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402edc    8b4c241c
                         push               edx                                      // 0x00402ee0    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402ee1    8b54241c
                         push               ecx                                      // 0x00402ee5    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402ee6    8b4c241c
                         push               edx                                      // 0x00402eea    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402eeb    8b542418
                         push               ecx                                      // 0x00402eef    51
                         push               eax                                      // 0x00402ef0    50
                         push               edx                                      // 0x00402ef1    52
                         call               _jmp_addr_0x0050aad0                     // 0x00402ef2    e8d97b1000
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402ef7    e971010000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402efc    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402f00    8b542424
                         push               ecx                                      // 0x00402f04    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f05    8b4c241c
                         push               edx                                      // 0x00402f09    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402f0a    8b54241c
                         push               ecx                                      // 0x00402f0e    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f0f    8b4c241c
                         push               edx                                      // 0x00402f13    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402f14    8b542418
                         push               ecx                                      // 0x00402f18    51
                         push               eax                                      // 0x00402f19    50
                         push               edx                                      // 0x00402f1a    52
                         call               _jmp_addr_0x00779590                     // 0x00402f1b    e870663700
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402f20    e948010000
_jmp_addr_0x00402f25:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402f25    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402f29    8b542424
                         push               ecx                                      // 0x00402f2d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f2e    8b4c241c
                         push               edx                                      // 0x00402f32    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402f33    8b54241c
                         push               ecx                                      // 0x00402f37    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f38    8b4c241c
                         push               edx                                      // 0x00402f3c    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402f3d    8b542418
                         push               ecx                                      // 0x00402f41    51
                         push               eax                                      // 0x00402f42    50
                         push               edx                                      // 0x00402f43    52
                         call               _Create__6WonderFRC9MapCoordsPC10GAbodeInfoP4Townfffi                     // 0x00402f44    e8375f3700
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402f49    e91f010000
_jmp_addr_0x00402f4e:    cmp                ecx, 0x00001004                          // 0x00402f4e    81f904100000
                         {disp32} jg        _jmp_addr_0x00402feb                     // 0x00402f54    0f8f91000000
                         {disp8} je         _jmp_addr_0x00402fc2                     // 0x00402f5a    7466
                         cmp                ecx, 0x00000204                          // 0x00402f5c    81f904020000
                         {disp8} je         _jmp_addr_0x00402f99                     // 0x00402f62    7435
                         cmp                ecx, 0x00000404                          // 0x00402f64    81f904040000
                         {disp32} jne       _jmp_addr_0x00402ffb                     // 0x00402f6a    0f858b000000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402f70    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402f74    8b542424
                         push               ecx                                      // 0x00402f78    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f79    8b4c241c
                         push               edx                                      // 0x00402f7d    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402f7e    8b54241c
                         push               ecx                                      // 0x00402f82    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f83    8b4c241c
                         push               edx                                      // 0x00402f87    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402f88    8b542418
                         push               ecx                                      // 0x00402f8c    51
                         push               eax                                      // 0x00402f8d    50
                         push               edx                                      // 0x00402f8e    52
                         call               _Create__10TownCentreFRC9MapCoordsPC10GAbodeInfoP4Townfffi                     // 0x00402f8f    e8fc0c3400
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402f94    e9d4000000
_jmp_addr_0x00402f99:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402f99    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402f9d    8b542424
                         push               ecx                                      // 0x00402fa1    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402fa2    8b4c241c
                         push               edx                                      // 0x00402fa6    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402fa7    8b54241c
                         push               ecx                                      // 0x00402fab    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402fac    8b4c241c
                         push               edx                                      // 0x00402fb0    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402fb1    8b542418
                         push               ecx                                      // 0x00402fb5    51
                         push               eax                                      // 0x00402fb6    50
                         push               edx                                      // 0x00402fb7    52
                         call               _jmp_addr_0x00595d70                     // 0x00402fb8    e8b32d1900
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402fbd    e9ab000000
_jmp_addr_0x00402fc2:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402fc2    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402fc6    8b542424
                         push               ecx                                      // 0x00402fca    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402fcb    8b4c241c
                         push               edx                                      // 0x00402fcf    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402fd0    8b54241c
                         push               ecx                                      // 0x00402fd4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402fd5    8b4c241c
                         push               edx                                      // 0x00402fd9    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402fda    8b542418
                         push               ecx                                      // 0x00402fde    51
                         push               eax                                      // 0x00402fdf    50
                         push               edx                                      // 0x00402fe0    52
                         call               _jmp_addr_0x005315a0                     // 0x00402fe1    e8bae51200
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402fe6    e982000000
_jmp_addr_0x00402feb:    cmp                ecx, 0x00002004                          // 0x00402feb    81f904200000
                         {disp8} je         _jmp_addr_0x00403049                     // 0x00402ff1    7456
                         cmp                ecx, 0x00004004                          // 0x00402ff3    81f904400000
                         {disp8} je         _jmp_addr_0x00403021                     // 0x00402ff9    7426
_jmp_addr_0x00402ffb:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402ffb    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402fff    8b542424
                         push               ecx                                      // 0x00403003    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00403004    8b4c241c
                         push               edx                                      // 0x00403008    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00403009    8b54241c
                         push               ecx                                      // 0x0040300d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x0040300e    8b4c241c
                         push               edx                                      // 0x00403012    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00403013    8b542418
                         push               ecx                                      // 0x00403017    51
                         push               eax                                      // 0x00403018    50
                         push               edx                                      // 0x00403019    52
                         call               _jmp_addr_0x00403190                     // 0x0040301a    e871010000
                         {disp8} jmp        _jmp_addr_0x0040306d                     // 0x0040301f    eb4c
_jmp_addr_0x00403021:    {disp8} mov        eax, dword ptr [esp + 0x28]              // 0x00403021    8b442428
                         {disp8} mov        ecx, dword ptr [esp + 0x24]              // 0x00403025    8b4c2424
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x00403029    8b542414
                         push               eax                                      // 0x0040302d    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x0040302e    8b442414
                         push               ecx                                      // 0x00403032    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]              // 0x00403033    8b4c2410
                         push               edx                                      // 0x00403037    52
                         push               eax                                      // 0x00403038    50
                         push               0x00ccf1c4                               // 0x00403039    68c4f1cc00
                         push               ecx                                      // 0x0040303e    51
                         call               _Create__5FieldFRC9MapCoordsPC14GFieldTypeInfoP4Townffi                     // 0x0040303f    e83c521200
                         add                esp, 0x18                                // 0x00403044    83c418
                         pop                esi                                      // 0x00403047    5e
                         ret                                                         // 0x00403048    c3
_jmp_addr_0x00403049:    {disp8} mov        edx, dword ptr [esp + 0x28]              // 0x00403049    8b542428
                         {disp8} mov        ecx, dword ptr [esp + 0x24]              // 0x0040304d    8b4c2424
                         push               edx                                      // 0x00403051    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00403052    8b54241c
                         push               ecx                                      // 0x00403056    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00403057    8b4c241c
                         push               edx                                      // 0x0040305b    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x0040305c    8b54241c
                         push               ecx                                      // 0x00403060    51
                         push               edx                                      // 0x00403061    52
                         push               eax                                      // 0x00403062    50
                         {disp8} mov        eax, dword ptr [esp + 0x20]              // 0x00403063    8b442420
                         push               eax                                      // 0x00403067    50
                         call               _jmp_addr_0x007228d0                     // 0x00403068    e863f83100
_jmp_addr_0x0040306d:    mov.s              esi, eax                                 // 0x0040306d    8bf0
                         add                esp, 0x1c                                // 0x0040306f    83c41c
                         test               esi, esi                                 // 0x00403072    85f6
                         {disp8} je         _jmp_addr_0x00403093                     // 0x00403074    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x20]              // 0x00403076    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x0040307a    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x2c]              // 0x0040307e    8b44242c
                         push               ecx                                      // 0x00403082    51
                         push               edx                                      // 0x00403083    52
                         push               eax                                      // 0x00403084    50
                         mov.s              ecx, esi                                 // 0x00403085    8bce
                         call               @Init__5AbodeFiUlUl@20                   // 0x00403087    e8a4000000
                         mov.s              ecx, esi                                 // 0x0040308c    8bce
                         call               @CreateAbodeSurroundingObjects__5AbodeFv@4                     // 0x0040308e    e86d0d0000
_jmp_addr_0x00403093:    mov.s              eax, esi                                 // 0x00403093    8bc6
                         pop                esi                                      // 0x00403095    5e
                         ret                                                         // 0x00403096    c3

// Snippet: db, [0x00403097, 0x00403098)
.byte 0x90                        // 0x00403097

// Snippet: jmptbl, [0x00403098, 0x004030b0)
.byte 0xaa, 0x2e, 0x40, 0x00      // 0x00403098
.byte 0x58, 0x2e, 0x40, 0x00      // 0x0040309c
.byte 0x81, 0x2e, 0x40, 0x00      // 0x004030a0
.byte 0xd3, 0x2e, 0x40, 0x00      // 0x004030a4
.byte 0xfc, 0x2e, 0x40, 0x00      // 0x004030a8
.byte 0xfb, 0x2f, 0x40, 0x00      // 0x004030ac

// Snippet: ijmptbl, [0x004030b0, 0x00403130)
.byte 0x00, 0x05, 0x05, 0x05      // 0x004030b0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030b4
.byte 0x05, 0x05, 0x01, 0x05      // 0x004030b8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030bc
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030c0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030c4
.byte 0x05, 0x05, 0x02, 0x05      // 0x004030c8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030cc
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030d0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030d4
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030d8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030dc
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030e0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030e4
.byte 0x05, 0x05, 0x03, 0x05      // 0x004030e8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030ec
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030f0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030f4
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030f8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030fc
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403100
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403104
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403108
.byte 0x05, 0x05, 0x05, 0x05      // 0x0040310c
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403110
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403114
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403118
.byte 0x05, 0x05, 0x05, 0x05      // 0x0040311c
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403120
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403124
.byte 0x05, 0x05, 0x04, 0x90      // 0x00403128
.byte 0x90, 0x90, 0x90, 0x90      // 0x0040312c

