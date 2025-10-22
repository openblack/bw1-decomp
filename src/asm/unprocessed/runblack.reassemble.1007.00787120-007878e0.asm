.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00480240
.extern _jmp_addr_0x00553a70
.extern ?Create@SpellSeedGraphic@@SAPAV1@PBUMapCoords@@W4SPELL_SEED_TYPE@@PAVGPlayer@@MW4POWER_UP_TYPE@@@Z
.extern _jmp_addr_0x00727680
.extern _jmp_addr_0x00798af0
.extern _jmp_addr_0x00799e60
.extern _jmp_addr_0x0079a3a0
.extern _jmp_addr_0x0079a5a0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _sprintf
.extern ?Release@LH3DSmoke@@QAEXXZ
.extern _jmp_addr_0x007fb5c0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Release__8LH3DMeshFv@4
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern ?Release@LH3DSprite@@QAEXXZ

start_0x00787120_0x007878e0:
// Snippet: asm, [0x00787120, 0x007878ce)
                         push               esi                                           // 0x00787120    56
                         mov.s              esi, ecx                                      // 0x00787121    8bf1
                         call               _jmp_addr_0x00799e60                          // 0x00787123    e8382d0100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x44001c]        // 0x00787128    a11c60e000
                         test               eax, eax                                      // 0x0078712d    85c0
                         {disp8} je         _jmp_addr_0x00787148                          // 0x0078712f    7417
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00787131    8b0d5c19d000
                         call               _jmp_addr_0x00553a70                          // 0x00787137    e834c9dcff
                         {disp32} mov       dword ptr [data_bytes + 0x44001c], 0x00000000 // 0x0078713c    c7051c60e00000000000
                         pop                esi                                           // 0x00787146    5e
                         ret                                                              // 0x00787147    c3
_jmp_addr_0x00787148:    mov                eax, dword ptr [esi]                          // 0x00787148    8b06
                         mov.s              ecx, esi                                      // 0x0078714a    8bce
                         call               dword ptr [eax + 0x44]                        // 0x0078714c    ff5044
                         pop                esi                                           // 0x0078714f    5e
                         ret                                                              // 0x00787150    c3
                         nop                                                              // 0x00787151    90
                         nop                                                              // 0x00787152    90
                         nop                                                              // 0x00787153    90
                         nop                                                              // 0x00787154    90
                         nop                                                              // 0x00787155    90
                         nop                                                              // 0x00787156    90
                         nop                                                              // 0x00787157    90
                         nop                                                              // 0x00787158    90
                         nop                                                              // 0x00787159    90
                         nop                                                              // 0x0078715a    90
                         nop                                                              // 0x0078715b    90
                         nop                                                              // 0x0078715c    90
                         nop                                                              // 0x0078715d    90
                         nop                                                              // 0x0078715e    90
                         nop                                                              // 0x0078715f    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00787160    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00787164    8b542408
                         push               eax                                           // 0x00787168    50
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00787169    8b442408
                         push               edx                                           // 0x0078716d    52
                         push               eax                                           // 0x0078716e    50
                         call               _jmp_addr_0x0079a3a0                          // 0x0078716f    e82c320100
                         ret                0x000c                                        // 0x00787174    c20c00
                         nop                                                              // 0x00787177    90
                         nop                                                              // 0x00787178    90
                         nop                                                              // 0x00787179    90
                         nop                                                              // 0x0078717a    90
                         nop                                                              // 0x0078717b    90
                         nop                                                              // 0x0078717c    90
                         nop                                                              // 0x0078717d    90
                         nop                                                              // 0x0078717e    90
                         nop                                                              // 0x0078717f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00787180    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00787184    8b542404
                         push               eax                                           // 0x00787188    50
                         push               edx                                           // 0x00787189    52
                         call               _jmp_addr_0x0079a5a0                          // 0x0078718a    e811340100
                         ret                0x0008                                        // 0x0078718f    c20800
                         nop                                                              // 0x00787192    90
                         nop                                                              // 0x00787193    90
                         nop                                                              // 0x00787194    90
                         nop                                                              // 0x00787195    90
                         nop                                                              // 0x00787196    90
                         nop                                                              // 0x00787197    90
                         nop                                                              // 0x00787198    90
                         nop                                                              // 0x00787199    90
                         nop                                                              // 0x0078719a    90
                         nop                                                              // 0x0078719b    90
                         nop                                                              // 0x0078719c    90
                         nop                                                              // 0x0078719d    90
                         nop                                                              // 0x0078719e    90
                         nop                                                              // 0x0078719f    90
                         push               ebp                                           // 0x007871a0    55
                         push               edi                                           // 0x007871a1    57
                         mov.s              edi, ecx                                      // 0x007871a2    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x000000e0]             // 0x007871a4    8b87e0000000
                         xor.s              ebp, ebp                                      // 0x007871aa    33ed
                         cmp.s              eax, ebp                                      // 0x007871ac    3bc5
                         {disp32} je        _jmp_addr_0x0078733b                          // 0x007871ae    0f8487010000
                         push               esi                                           // 0x007871b4    56
                         call               _jmp_addr_0x00798af0                          // 0x007871b5    e836190100
                         {disp32} mov       eax, dword ptr [_global]                      // 0x007871ba    a1203bcd00
                         {disp32} mov       ecx, dword ptr [eax + 0x000003ac]             // 0x007871bf    8b88ac030000
                         {disp32} mov       esi, dword ptr [rdata_bytes + 0x7a4]          // 0x007871c5    8b35a4978a00
                         push               0x000000af                                    // 0x007871cb    68af000000
                         push               ebp                                           // 0x007871d0    55
                         push               ecx                                           // 0x007871d1    51
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x007871d2    8b4814
                         call               esi                                           // 0x007871d5    ffd6
                         {disp32} mov       eax, dword ptr [_global]                      // 0x007871d7    a1203bcd00
                         {disp32} mov       edx, dword ptr [eax + 0x000003ac]             // 0x007871dc    8b90ac030000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x007871e2    8b4814
                         push               0x000000b1                                    // 0x007871e5    68b1000000
                         push               ebp                                           // 0x007871ea    55
                         push               edx                                           // 0x007871eb    52
                         call               esi                                           // 0x007871ec    ffd6
                         {disp32} mov       esi, dword ptr [edi + 0x000000fc]             // 0x007871ee    8bb7fc000000
                         cmp.s              esi, ebp                                      // 0x007871f4    3bf5
                         {disp8} je         _jmp_addr_0x0078720e                          // 0x007871f6    7416
                         mov.s              ecx, esi                                      // 0x007871f8    8bce
                         call               _jmp_addr_0x00480240                          // 0x007871fa    e84190cfff
                         push               esi                                           // 0x007871ff    56
                         call               ??3@YAXPAX@Z                                  // 0x00787200    e8937c0200
                         add                esp, 0x04                                     // 0x00787205    83c404
                         {disp32} mov       dword ptr [edi + 0x000000fc], ebp             // 0x00787208    89affc000000
_jmp_addr_0x0078720e:    {disp32} mov       ecx, dword ptr [edi + 0x00000470]             // 0x0078720e    8b8f70040000
                         push               ebx                                           // 0x00787214    53
                         call               @Release__8LH3DMeshFv@4                       // 0x00787215    e8e6fa0700
                         {disp32} mov       ecx, dword ptr [edi + 0x00000474]             // 0x0078721a    8b8f74040000
                         mov                eax, dword ptr [ecx]                          // 0x00787220    8b01
                         call               dword ptr [eax + 4]                           // 0x00787222    ff5004
                         {disp32} mov       ecx, dword ptr [edi + 0x00000478]             // 0x00787225    8b8f78040000
                         call               ?Release@LH3DSprite@@QAEXXZ                   // 0x0078722b    e8f0920b00
                         {disp32} mov       ecx, dword ptr [edi + 0x0000047c]             // 0x00787230    8b8f7c040000
                         {disp8} mov        dword ptr [ecx + 0x08], ebp                   // 0x00787236    896908
                         {disp32} lea       esi, dword ptr [edi + 0x000000ec]             // 0x00787239    8db7ec000000
                         mov                ebx, 0x00000004                               // 0x0078723f    bb04000000
_jmp_addr_0x00787244:    mov                ecx, dword ptr [esi]                          // 0x00787244    8b0e
                         cmp.s              ecx, ebp                                      // 0x00787246    3bcd
                         {disp8} je         _jmp_addr_0x00787250                          // 0x00787248    7406
                         mov                edx, dword ptr [ecx]                          // 0x0078724a    8b11
                         push               ebp                                           // 0x0078724c    55
                         call               dword ptr [edx + 0xc]                         // 0x0078724d    ff520c
_jmp_addr_0x00787250:    mov                dword ptr [esi], ebp                          // 0x00787250    892e
                         add                esi, 0x04                                     // 0x00787252    83c604
                         dec                ebx                                           // 0x00787255    4b
                         {disp8} jne        _jmp_addr_0x00787244                          // 0x00787256    75ec
                         {disp32} lea       esi, dword ptr [edi + 0x00000110]             // 0x00787258    8db710010000
                         mov                ebx, 0x00000035                               // 0x0078725e    bb35000000
_jmp_addr_0x00787263:    mov                ecx, dword ptr [esi]                          // 0x00787263    8b0e
                         cmp.s              ecx, ebp                                      // 0x00787265    3bcd
                         {disp8} je         _jmp_addr_0x0078726e                          // 0x00787267    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x00787269    e892fa0700
_jmp_addr_0x0078726e:    mov                dword ptr [esi], ebp                          // 0x0078726e    892e
                         add                esi, 0x04                                     // 0x00787270    83c604
                         dec                ebx                                           // 0x00787273    4b
                         {disp8} jne        _jmp_addr_0x00787263                          // 0x00787274    75ed
                         {disp32} lea       esi, dword ptr [edi + 0x000001e4]             // 0x00787276    8db7e4010000
                         mov                ebx, 0x00000036                               // 0x0078727c    bb36000000
_jmp_addr_0x00787281:    mov                ecx, dword ptr [esi]                          // 0x00787281    8b0e
                         cmp.s              ecx, ebp                                      // 0x00787283    3bcd
                         {disp8} je         _jmp_addr_0x0078729c                          // 0x00787285    7415
                         mov                eax, dword ptr [ecx]                          // 0x00787287    8b01
                         push               ebp                                           // 0x00787289    55
                         push               ebp                                           // 0x0078728a    55
                         xor.s              edx, edx                                      // 0x0078728b    33d2
                         call               dword ptr [eax + 0xf4]                        // 0x0078728d    ff90f4000000
                         mov                ecx, dword ptr [esi]                          // 0x00787293    8b0e
                         mov                edx, dword ptr [ecx]                          // 0x00787295    8b11
                         call               dword ptr [edx + 4]                           // 0x00787297    ff5204
                         mov                dword ptr [esi], ebp                          // 0x0078729a    892e
_jmp_addr_0x0078729c:    add                esi, 0x04                                     // 0x0078729c    83c604
                         dec                ebx                                           // 0x0078729f    4b
                         {disp8} jne        _jmp_addr_0x00787281                          // 0x007872a0    75df
                         {disp32} lea       esi, dword ptr [edi + 0x00000480]             // 0x007872a2    8db780040000
                         mov                ebx, 0x00000010                               // 0x007872a8    bb10000000
_jmp_addr_0x007872ad:    mov                ecx, dword ptr [esi]                          // 0x007872ad    8b0e
                         call               ?Release@LH3DSmoke@@QAEXXZ                    // 0x007872af    e85c1a0700
                         add                esi, 0x04                                     // 0x007872b4    83c604
                         dec                ebx                                           // 0x007872b7    4b
                         {disp8} jne        _jmp_addr_0x007872ad                          // 0x007872b8    75f3
                         {disp32} lea       esi, dword ptr [edi + 0x000004c0]             // 0x007872ba    8db7c0040000
                         mov                ebx, 0x00000002                               // 0x007872c0    bb02000000
_jmp_addr_0x007872c5:    mov                ecx, dword ptr [esi]                          // 0x007872c5    8b0e
                         call               ?Release@LH3DSmoke@@QAEXXZ                    // 0x007872c7    e8441a0700
                         add                esi, 0x04                                     // 0x007872cc    83c604
                         dec                ebx                                           // 0x007872cf    4b
                         {disp8} jne        _jmp_addr_0x007872c5                          // 0x007872d0    75f3
                         {disp32} lea       esi, dword ptr [edi + 0x000004c8]             // 0x007872d2    8db7c8040000
                         mov                edi, 0x00000004                               // 0x007872d8    bf04000000
                         pop                ebx                                           // 0x007872dd    5b
_jmp_addr_0x007872de:    mov                ecx, dword ptr [esi]                          // 0x007872de    8b0e
                         mov                eax, dword ptr [ecx]                          // 0x007872e0    8b01
                         call               dword ptr [eax + 4]                           // 0x007872e2    ff5004
                         add                esi, 0x04                                     // 0x007872e5    83c604
                         dec                edi                                           // 0x007872e8    4f
                         {disp8} jne        _jmp_addr_0x007872de                          // 0x007872e9    75f3
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afc8]        // 0x007872eb    8b0dc80fde00
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x007872f1    e84a0a0b00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afcc]        // 0x007872f6    8b0dcc0fde00
                         {disp8} mov        dword ptr [ecx + 0x08], ebp                   // 0x007872fc    896908
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afd0]        // 0x007872ff    8b0dd00fde00
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x00787305    e8360a0b00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x41afd4]        // 0x0078730a    8b15d40fde00
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x00787310    896a08
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afd8]        // 0x00787313    8b0dd80fde00
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x00787319    e8220a0b00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41afdc]        // 0x0078731e    a1dc0fde00
                         {disp8} mov        dword ptr [eax + 0x08], ebp                   // 0x00787323    896808
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afe0]        // 0x00787326    8b0de00fde00
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x0078732c    e80f0a0b00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afe4]        // 0x00787331    8b0de40fde00
                         {disp8} mov        dword ptr [ecx + 0x08], ebp                   // 0x00787337    896908
                         pop                esi                                           // 0x0078733a    5e
_jmp_addr_0x0078733b:    pop                edi                                           // 0x0078733b    5f
                         pop                ebp                                           // 0x0078733c    5d
                         ret                                                              // 0x0078733d    c3
                         nop                                                              // 0x0078733e    90
                         nop                                                              // 0x0078733f    90
_jmp_addr_0x00787340:    {disp32} mov       eax, dword ptr [data_bytes + 0x41af88]        // 0x00787340    a1880fde00
                         test               eax, eax                                      // 0x00787345    85c0
                         push               esi                                           // 0x00787347    56
                         push               edi                                           // 0x00787348    57
                         mov.s              edi, ecx                                      // 0x00787349    8bf9
                         {disp8} jne        _jmp_addr_0x00787365                          // 0x0078734b    7518
                         push               0x0                                           // 0x0078734d    6a00
                         push               -0x1                                          // 0x0078734f    6aff
                         push               0x41                                          // 0x00787351    6a41
                         push               0x00c2756c                                    // 0x00787353    686c75c200
                         call               _jmp_addr_0x008379e0                          // 0x00787358    e883060b00
                         add                esp, 0x10                                     // 0x0078735d    83c410
                         {disp32} mov       dword ptr [data_bytes + 0x41af88], eax        // 0x00787360    a3880fde00
_jmp_addr_0x00787365:    {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00787365    8b74240c
                         test               esi, esi                                      // 0x00787369    85f6
                         {disp32} jl        _jmp_addr_0x0078740b                          // 0x0078736b    0f8c9a000000
                         cmp                esi, 0x35                                     // 0x00787371    83fe35
                         {disp32} jge       _jmp_addr_0x0078740b                          // 0x00787374    0f8d91000000
                         {disp32} mov       eax, dword ptr [edi + esi * 0x4 + 0x00000110] // 0x0078737a    8b84b710010000
                         test               eax, eax                                      // 0x00787381    85c0
                         {disp8} jne        _jmp_addr_0x007873ff                          // 0x00787383    757a
                         {disp32} mov       eax, dword ptr [esi * 0x4 + 0x00c26f38]       // 0x00787385    8b04b5386fc200
                         push               eax                                           // 0x0078738c    50
                         push               0x00c27554                                    // 0x0078738d    685475c200
                         push               0x00de0d48                                    // 0x00787392    68480dde00
                         call               _sprintf                                      // 0x00787397    e836e40300
                         push               0x1                                           // 0x0078739c    6a01
                         push               0x00de0d48                                    // 0x0078739e    68480dde00
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x007873a3    e848f40700
                         add                esp, 0x14                                     // 0x007873a8    83c414
                         test               eax, eax                                      // 0x007873ab    85c0
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x00000110], eax // 0x007873ad    8984b710010000
                         {disp8} je         _jmp_addr_0x007873ff                          // 0x007873b4    7449
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x007873b6    8b480c
                         xor.s              edx, edx                                      // 0x007873b9    33d2
                         test               ecx, ecx                                      // 0x007873bb    85c9
                         {disp8} jle        _jmp_addr_0x007873ff                          // 0x007873bd    7e40
                         push               ebx                                           // 0x007873bf    53
                         push               ebp                                           // 0x007873c0    55
_jmp_addr_0x007873c1:    {disp32} mov       ecx, dword ptr [edi + esi * 0x4 + 0x00000110] // 0x007873c1    8b8cb710010000
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x007873c8    8b4110
                         mov                eax, dword ptr [eax + edx * 0x4]              // 0x007873cb    8b0490
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x007873ce    8b5804
                         xor.s              ecx, ecx                                      // 0x007873d1    33c9
                         test               ebx, ebx                                      // 0x007873d3    85db
                         {disp8} jle        _jmp_addr_0x007873ee                          // 0x007873d5    7e17
_jmp_addr_0x007873d7:    {disp8} mov        ebx, dword ptr [eax + 0x08]                   // 0x007873d7    8b5808
                         mov                ebx, dword ptr [ebx + ecx * 0x4]              // 0x007873da    8b1c8b
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x41af88]        // 0x007873dd    8b2d880fde00
                         {disp8} mov        dword ptr [ebx + 0x08], ebp                   // 0x007873e3    896b08
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x007873e6    8b5804
                         inc                ecx                                           // 0x007873e9    41
                         cmp.s              ecx, ebx                                      // 0x007873ea    3bcb
                         {disp8} jl         _jmp_addr_0x007873d7                          // 0x007873ec    7ce9
_jmp_addr_0x007873ee:    {disp32} mov       ecx, dword ptr [edi + esi * 0x4 + 0x00000110] // 0x007873ee    8b8cb710010000
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x007873f5    8b410c
                         inc                edx                                           // 0x007873f8    42
                         cmp.s              edx, eax                                      // 0x007873f9    3bd0
                         {disp8} jl         _jmp_addr_0x007873c1                          // 0x007873fb    7cc4
                         pop                ebp                                           // 0x007873fd    5d
                         pop                ebx                                           // 0x007873fe    5b
_jmp_addr_0x007873ff:    {disp32} mov       eax, dword ptr [edi + esi * 0x4 + 0x00000110] // 0x007873ff    8b84b710010000
                         pop                edi                                           // 0x00787406    5f
                         pop                esi                                           // 0x00787407    5e
                         ret                0x0004                                        // 0x00787408    c20400
_jmp_addr_0x0078740b:    pop                edi                                           // 0x0078740b    5f
                         xor.s              eax, eax                                      // 0x0078740c    33c0
                         pop                esi                                           // 0x0078740e    5e
                         ret                0x0004                                        // 0x0078740f    c20400
                         nop                                                              // 0x00787412    90
                         nop                                                              // 0x00787413    90
                         nop                                                              // 0x00787414    90
                         nop                                                              // 0x00787415    90
                         nop                                                              // 0x00787416    90
                         nop                                                              // 0x00787417    90
                         nop                                                              // 0x00787418    90
                         nop                                                              // 0x00787419    90
                         nop                                                              // 0x0078741a    90
                         nop                                                              // 0x0078741b    90
                         nop                                                              // 0x0078741c    90
                         nop                                                              // 0x0078741d    90
                         nop                                                              // 0x0078741e    90
                         nop                                                              // 0x0078741f    90
                         sub                esp, 0x38                                     // 0x00787420    83ec38
                         xor.s              eax, eax                                      // 0x00787423    33c0
                         push               ebx                                           // 0x00787425    53
                         {disp32} mov       ebx, dword ptr [_game]                        // 0x00787426    8b1d5c19d000
                         {disp32} mov       al, byte ptr [ebx + 0x00205a59]               // 0x0078742c    8a83595a2000
                         push               ebp                                           // 0x00787432    55
                         push               esi                                           // 0x00787433    56
                         push               edi                                           // 0x00787434    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00787435    894c2410
                         {disp32} lea       ebp, dword ptr [ecx + 0x00000224]             // 0x00787439    8da924020000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0078743f    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00787442    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00787445    8d0450
                         shl                eax, 5                                        // 0x00787448    c1e005
                         {disp32} mov       edx, dword ptr [eax + ebx * 0x1 + 0x00000a64] // 0x0078744b    8b9418640a0000
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00787452    89542418
                         xor.s              esi, esi                                      // 0x00787456    33f6
                         {disp8} jmp        _jmp_addr_0x00787460                          // 0x00787458    eb06
_jmp_addr_0x0078745a:    {disp32} mov       ebx, dword ptr [_game]                        // 0x0078745a    8b1d5c19d000
_jmp_addr_0x00787460:    mov.s              eax, esi                                      // 0x00787460    8bc6
                         cdq                                                              // 0x00787462    99
                         mov                ecx, 0x00000007                               // 0x00787463    b907000000
                         idiv               ecx                                           // 0x00787468    f7f9
                         mov                eax, 0x92492493                               // 0x0078746a    b893244992
                         mov                ecx, 0x00000018                               // 0x0078746f    b918000000
                         mov.s              edi, edx                                      // 0x00787474    8bfa
                         imul               esi                                           // 0x00787476    f7ee
                         add.s              edx, esi                                      // 0x00787478    03d6
                         sar                edx, 2                                        // 0x0078747a    c1fa02
                         mov.s              eax, edx                                      // 0x0078747d    8bc2
                         shr                eax, 0x1f                                     // 0x0078747f    c1e81f
                         add.s              edx, eax                                      // 0x00787482    03d0
                         cmp                edx, 0x03                                     // 0x00787484    83fa03
                         {disp32} ja        _jmp_addr_0x0078751d                          // 0x00787487    0f8790000000
                         jmp                dword ptr [edx*4 + 0x7878d0]                  // 0x0078748d    ff2495d0787800
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00787494    8b4c2418
                         {disp32} mov       edx, dword ptr [ecx + 0x00000164]             // 0x00787498    8b9164010000
                         {disp32} fld       dword ptr [edx + 0x00017d04]                  // 0x0078749e    d982047d0100
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x007874a4    d80590a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x007874aa    d80db4a38a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0xf5b80]             // 0x007874b0    dc0d80eb9900
                         call               _jmp_addr_0x007a1400                          // 0x007874b6    e8459f0100
                         {disp8} jmp        _jmp_addr_0x0078751b                          // 0x007874bb    eb5e
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007874bd    8b442418
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]             // 0x007874c1    8b8864010000
                         {disp32} fld       dword ptr [ecx + 0x00017d04]                  // 0x007874c7    d981047d0100
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x007874cd    d80590a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x007874d3    d80db4a38a00
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]   // 0x007874d9    dc2d80b68a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0xf5b80]             // 0x007874df    dc0d80eb9900
                         call               _jmp_addr_0x007a1400                          // 0x007874e5    e8169f0100
                         {disp8} jmp        _jmp_addr_0x0078751b                          // 0x007874ea    eb2f
                         xor.s              eax, eax                                      // 0x007874ec    33c0
                         {disp32} mov       al, byte ptr [ebx + 0x00205a59]               // 0x007874ee    8a83595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x007874f4    8d1480
                         lea                ecx, dword ptr [eax + edx * 0x8]              // 0x007874f7    8d0cd0
                         lea                edx, dword ptr [eax + ecx * 0x2]              // 0x007874fa    8d1448
                         shl                edx, 5                                        // 0x007874fd    c1e205
                         {disp32} mov       eax, dword ptr [edx + ebx * 0x1 + 0x00000a64] // 0x00787500    8b841a640a0000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000160]             // 0x00787507    8b8860010000
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x0078750d    d9410c
                         {disp32} fmul      qword ptr [rdata_bytes + 0xf5b80]             // 0x00787510    dc0d80eb9900
                         call               _jmp_addr_0x007a1400                          // 0x00787516    e8e59e0100
_jmp_addr_0x0078751b:    mov.s              ecx, eax                                      // 0x0078751b    8bc8
_jmp_addr_0x0078751d:    lea                edx, dword ptr [edi + edi * 0x4]              // 0x0078751d    8d14bf
                         sub.s              ecx, edx                                      // 0x00787520    2bca
                         test               ecx, ecx                                      // 0x00787522    85c9
                         {disp8} jle        _jmp_addr_0x0078758d                          // 0x00787524    7e67
                         cmp                ecx, 0x04                                     // 0x00787526    83f904
                         {disp8} jl         _jmp_addr_0x00787530                          // 0x00787529    7c05
                         mov                ecx, 0x00000004                               // 0x0078752b    b904000000
_jmp_addr_0x00787530:    {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x00787530    8b5500
                         mov                ebx, dword ptr [edx]                          // 0x00787533    8b1a
                         push               0x0                                           // 0x00787535    6a00
                         {disp8} lea        eax, dword ptr [ecx + edi * 0x4 + -0x01]      // 0x00787537    8d44b9ff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0078753b    8b4c2414
                         push               0x0                                           // 0x0078753f    6a00
                         push               eax                                           // 0x00787541    50
                         call               _jmp_addr_0x00787340                          // 0x00787542    e8f9fdffff
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x00787547    8b4d00
                         mov.s              edx, eax                                      // 0x0078754a    8bd0
                         call               dword ptr [ebx + 0xf4]                        // 0x0078754c    ff93f4000000
_jmp_addr_0x00787552:    {disp32} mov       dword ptr [ebp + 0x000001b0], 0xffa0a0a0      // 0x00787552    c785b0010000a0a0a0ff
                         add                ebp, 0x04                                     // 0x0078755c    83c504
                         inc                esi                                           // 0x0078755f    46
                         {disp8} lea        ecx, dword ptr [esi + 0x10]                   // 0x00787560    8d4e10
                         cmp                ecx, 0x1d                                     // 0x00787563    83f91d
                         {disp32} jle       _jmp_addr_0x0078745a                          // 0x00787566    0f8eeefeffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0078756c    8b542410
                         mov                ebp, 0x00000006                               // 0x00787570    bd06000000
                         {disp32} lea       esi, dword ptr [edx + 0x000001fc]             // 0x00787575    8db2fc010000
_jmp_addr_0x0078757b:    {disp8} lea        eax, dword ptr [ebp + -0x06]                  // 0x0078757b    8d45fa
                         cdq                                                              // 0x0078757e    99
                         sub.s              eax, edx                                      // 0x0078757f    2bc2
                         sar                eax, 1                                        // 0x00787581    d1f8
                         {disp8} jne        _jmp_addr_0x007875a0                          // 0x00787583    751b
                         {disp32} fld       dword ptr [data_bytes + 0x41afe8]             // 0x00787585    d905e80fde00
                         {disp8} jmp        _jmp_addr_0x007875a7                          // 0x0078758b    eb1a
_jmp_addr_0x0078758d:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x0078758d    8b4d00
                         mov                eax, dword ptr [ecx]                          // 0x00787590    8b01
                         push               0x0                                           // 0x00787592    6a00
                         push               0x0                                           // 0x00787594    6a00
                         xor.s              edx, edx                                      // 0x00787596    33d2
                         call               dword ptr [eax + 0xf4]                        // 0x00787598    ff90f4000000
                         {disp8} jmp        _jmp_addr_0x00787552                          // 0x0078759e    ebb2
_jmp_addr_0x007875a0:    {disp32} fld       dword ptr [eax * 0x4 + 0x00de0d34]            // 0x007875a0    d90485340dde00
_jmp_addr_0x007875a7:    {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x007875a7    d80d104b8c00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x19c68]             // 0x007875ad    dc0d682c8c00
                         call               _jmp_addr_0x007a1400                          // 0x007875b3    e8489e0100
                         mov.s              edi, eax                                      // 0x007875b8    8bf8
                         test               edi, edi                                      // 0x007875ba    85ff
                         {disp8} jle        _jmp_addr_0x007875f8                          // 0x007875bc    7e3a
                         cmp                edi, 0x19                                     // 0x007875be    83ff19
                         {disp8} jl         _jmp_addr_0x007875c8                          // 0x007875c1    7c05
                         mov                edi, 0x00000019                               // 0x007875c3    bf19000000
_jmp_addr_0x007875c8:    mov                eax, dword ptr [esi]                          // 0x007875c8    8b06
                         mov                ebx, dword ptr [eax]                          // 0x007875ca    8b18
                         push               0x0                                           // 0x007875cc    6a00
                         push               0x0                                           // 0x007875ce    6a00
                         {disp8} lea        ecx, dword ptr [edi + 0x1b]                   // 0x007875d0    8d4f1b
                         push               ecx                                           // 0x007875d3    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x007875d4    8b4c241c
                         call               _jmp_addr_0x00787340                          // 0x007875d8    e863fdffff
                         mov                ecx, dword ptr [esi]                          // 0x007875dd    8b0e
                         mov.s              edx, eax                                      // 0x007875df    8bd0
                         call               dword ptr [ebx + 0xf4]                        // 0x007875e1    ff93f4000000
                         xor.s              edx, edx                                      // 0x007875e7    33d2
                         cmp                edi, 0x05                                     // 0x007875e9    83ff05
                         setg               dl                                            // 0x007875ec    0f9fc2
                         dec                edx                                           // 0x007875ef    4a
                         {disp32} mov       dword ptr [esi + 0x000000d8], edx             // 0x007875f0    8996d8000000
                         {disp8} jmp        _jmp_addr_0x00787608                          // 0x007875f6    eb10
_jmp_addr_0x007875f8:    mov                ecx, dword ptr [esi]                          // 0x007875f8    8b0e
                         mov                eax, dword ptr [ecx]                          // 0x007875fa    8b01
                         push               0x0                                           // 0x007875fc    6a00
                         push               0x0                                           // 0x007875fe    6a00
                         xor.s              edx, edx                                      // 0x00787600    33d2
                         call               dword ptr [eax + 0xf4]                        // 0x00787602    ff90f4000000
_jmp_addr_0x00787608:    {disp32} mov       dword ptr [esi + 0x000001b0], 0xff808080      // 0x00787608    c786b0010000808080ff
                         add                ebp, 0x02                                     // 0x00787612    83c502
                         add                esi, 0x08                                     // 0x00787615    83c608
                         cmp                ebp, 0x0e                                     // 0x00787618    83fd0e
                         {disp32} jle       _jmp_addr_0x0078757b                          // 0x0078761b    0f8e5affffff
                         {disp32} fld       qword ptr [rdata_bytes + 0x8d1e8]             // 0x00787621    dd05e8619300
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00787627    8b4c2410
                         fcos                                                             // 0x0078762b    d9ff
                         xor.s              ebp, ebp                                      // 0x0078762d    33ed
                         {disp8} mov        dword ptr [esp + 0x38], ebp                   // 0x0078762f    896c2438
                         {disp8} mov        dword ptr [esp + 0x3c], ebp                   // 0x00787633    896c243c
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x00787637    896c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x0078763b    896c2444
                         xor.s              edi, edi                                      // 0x0078763f    33ff
                         {disp8} lea        ebx, dword ptr [esp + 0x38]                   // 0x00787641    8d5c2438
                         {disp32} lea       esi, dword ptr [ecx + 0x000001e8]             // 0x00787645    8db1e8010000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0078764b    d95c2418
                         {disp32} fld       qword ptr [rdata_bytes + 0x8d1e8]             // 0x0078764f    dd05e8619300
                         fsin                                                             // 0x00787655    d9fe
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00787657    d95c2414
_jmp_addr_0x0078765b:    mov                eax, dword ptr [ebx]                          // 0x0078765b    8b03
                         cmp.s              eax, ebp                                      // 0x0078765d    3bc5
                         {disp8} jle        _jmp_addr_0x007876df                          // 0x0078765f    7e7e
                         {disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00787661    8b0d34fee900
                         {disp8} jl         _jmp_addr_0x0078766d                          // 0x00787667    7c04
                         cmp                eax, dword ptr [ecx]                          // 0x00787669    3b01
                         {disp8} jl         _jmp_addr_0x0078766f                          // 0x0078766b    7c02
_jmp_addr_0x0078766d:    xor.s              eax, eax                                      // 0x0078766d    33c0
_jmp_addr_0x0078766f:    {disp8} mov        ebp, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x0078766f    8b6c8104
                         {disp8} mov        al, byte ptr [ebp + 0x04]                     // 0x00787673    8a4504
                         test               al, al                                        // 0x00787676    84c0
                         mov                ecx, dword ptr [esi]                          // 0x00787678    8b0e
                         mov                edx, dword ptr [ecx]                          // 0x0078767a    8b11
                         {disp8} je         _jmp_addr_0x007876b1                          // 0x0078767c    7433
                         call               dword ptr [edx + 0x1ac]                       // 0x0078767e    ff92ac010000
                         test               eax, eax                                      // 0x00787684    85c0
                         {disp8} jne        _jmp_addr_0x007876cb                          // 0x00787686    7543
                         mov                ecx, dword ptr [esi]                          // 0x00787688    8b0e
                         mov                eax, dword ptr [ecx]                          // 0x0078768a    8b01
                         call               dword ptr [eax + 4]                           // 0x0078768c    ff5004
                         mov                ecx, 0x00000002                               // 0x0078768f    b902000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x00787694    e8373e0800
                         mov                dword ptr [esi], eax                          // 0x00787699    8906
                         mov                ecx, dword ptr [eax]                          // 0x0078769b    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0078769d    894c241c
                         mov.s              ecx, eax                                      // 0x007876a1    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x007876a3    8b44241c
                         xor.s              edx, edx                                      // 0x007876a7    33d2
                         call               dword ptr [eax + 0x180]                       // 0x007876a9    ff9080010000
                         {disp8} jmp        _jmp_addr_0x007876cb                          // 0x007876af    eb1a
_jmp_addr_0x007876b1:    call               dword ptr [edx + 0x1ac]                       // 0x007876b1    ff92ac010000
                         test               eax, eax                                      // 0x007876b7    85c0
                         {disp8} je         _jmp_addr_0x007876cb                          // 0x007876b9    7410
                         mov                ecx, dword ptr [esi]                          // 0x007876bb    8b0e
                         mov                eax, dword ptr [ecx]                          // 0x007876bd    8b01
                         call               dword ptr [eax + 4]                           // 0x007876bf    ff5004
                         xor.s              ecx, ecx                                      // 0x007876c2    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x007876c4    e8073e0800
                         mov                dword ptr [esi], eax                          // 0x007876c9    8906
_jmp_addr_0x007876cb:    mov                ecx, dword ptr [esi]                          // 0x007876cb    8b0e
                         mov                eax, dword ptr [ecx]                          // 0x007876cd    8b01
                         push               0x0                                           // 0x007876cf    6a00
                         push               0x0                                           // 0x007876d1    6a00
                         mov.s              edx, ebp                                      // 0x007876d3    8bd5
                         call               dword ptr [eax + 0xf4]                        // 0x007876d5    ff90f4000000
                         xor.s              ebp, ebp                                      // 0x007876db    33ed
                         {disp8} jmp        _jmp_addr_0x007876ed                          // 0x007876dd    eb0e
_jmp_addr_0x007876df:    mov                ecx, dword ptr [esi]                          // 0x007876df    8b0e
                         mov                eax, dword ptr [ecx]                          // 0x007876e1    8b01
                         push               ebp                                           // 0x007876e3    55
                         push               ebp                                           // 0x007876e4    55
                         xor.s              edx, edx                                      // 0x007876e5    33d2
                         call               dword ptr [eax + 0xf4]                        // 0x007876e7    ff90f4000000
_jmp_addr_0x007876ed:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007876ed    8b4c2410
                         {disp32} mov       edx, dword ptr [ecx + 0x000000c0]             // 0x007876f1    8b91c0000000
                         {disp8} mov        ecx, dword ptr [edx + 0x18]                   // 0x007876f7    8b4a18
                         mov                edx, dword ptr [esi]                          // 0x007876fa    8b16
                         mov                eax, dword ptr [ecx]                          // 0x007876fc    8b01
                         add                edx, 0x14                                     // 0x007876fe    83c214
                         inc                edi                                           // 0x00787701    47
                         push               edx                                           // 0x00787702    52
                         mov.s              edx, edi                                      // 0x00787703    8bd7
                         call               dword ptr [eax + 0x1c8]                       // 0x00787705    ff90c8010000
                         mov                ecx, dword ptr [esi]                          // 0x0078770b    8b0e
                         add                ecx, 0x14                                     // 0x0078770d    83c114
                         call               _jmp_addr_0x007fb5c0                          // 0x00787710    e8ab3e0700
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00787715    d9442414
                         mov                eax, dword ptr [esi]                          // 0x00787719    8b06
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0078771b    d84820
                         add                eax, 0x14                                     // 0x0078771e    83c014
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00787721    d9442418
                         add                ebx, 0x04                                     // 0x00787725    83c304
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00787728    d8480c
                         add                esi, 0x04                                     // 0x0078772b    83c604
                         cmp                edi, 0x04                                     // 0x0078772e    83ff04
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00787731    d9442414
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00787735    d84818
                         fsubp              st(1), st                                     // 0x00787738    dee9
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0078773a    d9580c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0078773d    d9442418
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00787741    d84818
                         fadd               st, st(1)                                     // 0x00787744    d8c1
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x00787746    d95818
                         fstp               st(0)                                         // 0x00787749    ddd8
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0078774b    d9442414
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0078774f    d84810
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00787752    d9442418
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00787756    d84810
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00787759    d9442414
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0078775d    d8481c
                         fsubp              st(1), st                                     // 0x00787760    dee9
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x00787762    d95810
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00787765    d9442418
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00787769    d8481c
                         fadd               st, st(1)                                     // 0x0078776c    d8c1
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x0078776e    d9581c
                         fstp               st(0)                                         // 0x00787771    ddd8
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00787773    d9442414
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x00787777    d84814
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0078777a    d9442418
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0078777e    d84814
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00787781    d9442414
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00787785    d84820
                         fsubp              st(1), st                                     // 0x00787788    dee9
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0078778a    d95814
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0078778d    d9442418
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00787791    d84820
                         fadd               st, st(1)                                     // 0x00787794    d8c1
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x00787796    d95820
                         {disp8} mov        eax, dword ptr [esi + -0x04]                  // 0x00787799    8b46fc
                         fstp               st(0)                                         // 0x0078779c    ddd8
                         {disp8} fld        dword ptr [eax + 0x3c]                        // 0x0078779e    d9403c
                         {disp32} fadd      dword ptr [__real@3fc00000]                   // 0x007877a1    d8054cb28a00
                         {disp8} fstp       dword ptr [eax + 0x3c]                        // 0x007877a7    d9583c
                         {disp32} mov       dword ptr [esi + 0x000001ac], 0xffa0a0a0      // 0x007877aa    c786ac010000a0a0a0ff
                         {disp32} jl        _jmp_addr_0x0078765b                          // 0x007877b4    0f8ca1feffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007877ba    8b442410
                         mov                ebp, 0x00de0d28                               // 0x007877be    bd280dde00
                         mov                edi, 0x00000007                               // 0x007877c3    bf07000000
                         {disp32} lea       esi, dword ptr [eax + 0x000000ec]             // 0x007877c8    8db0ec000000
_jmp_addr_0x007877ce:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007877ce    8b4c2410
                         {disp32} mov       edx, dword ptr [ecx + 0x000000c0]             // 0x007877d2    8b91c0000000
                         xor.s              ebx, ebx                                      // 0x007877d8    33db
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x007877da    895c2420
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x007877de    895c2424
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x007877e2    895c2428
                         {disp8} mov        ecx, dword ptr [edx + 0x18]                   // 0x007877e6    8b4a18
                         mov                eax, dword ptr [ecx]                          // 0x007877e9    8b01
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x007877eb    8d54242c
                         push               edx                                           // 0x007877ef    52
                         mov.s              edx, edi                                      // 0x007877f0    8bd7
                         call               dword ptr [eax + 0x1cc]                       // 0x007877f2    ff90cc010000
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x007877f8    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x007877fc    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00787802    e8f99b0100
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00787807    d9442434
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x0078780b    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00787811    89442420
                         call               _jmp_addr_0x007a1400                          // 0x00787815    e8e69b0100
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0078781a    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0078781e    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00787824    89442424
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x00787828    895c2428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0078782c    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00787832    e8c99b0100
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00787837    d9442434
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0078783b    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00787841    89442438
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00787845    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0078784b    e8b09b0100
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00787850    8d4c2438
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x00787854    8944243c
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x00787858    895c2440
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0078785c    e82fb80700
                         {disp8} fsubr      dword ptr [esp + 0x30]                        // 0x00787861    d86c2430
                         cmp                dword ptr [esi], ebx                          // 0x00787865    391e
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x00787867    8b4d00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0078786a    d95c2428
                         {disp8} jne        _jmp_addr_0x007878b4                          // 0x0078786e    7544
                         cmp                ecx, -0x01                                    // 0x00787870    83f9ff
                         {disp8} je         _jmp_addr_0x007878b4                          // 0x00787873    743f
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00787875    8b155c19d000
                         xor.s              eax, eax                                      // 0x0078787b    33c0
                         {disp32} mov       al, byte ptr [edx + 0x00205a59]               // 0x0078787d    8a82595a2000
                         push               -0x1                                          // 0x00787883    6aff
                         push               0x3f800000                                    // 0x00787885    680000803f
                         lea                ebx, dword ptr [eax + eax * 0x4]              // 0x0078788a    8d1c80
                         lea                ebx, dword ptr [eax + ebx * 0x8]              // 0x0078788d    8d1cd8
                         lea                eax, dword ptr [eax + ebx * 0x2]              // 0x00787890    8d0458
                         shl                eax, 5                                        // 0x00787893    c1e005
                         {disp8} lea        edx, dword ptr [eax + edx * 0x1 + 0x18]       // 0x00787896    8d541018
                         push               edx                                           // 0x0078789a    52
                         push               ecx                                           // 0x0078789b    51
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x0078789c    8d442430
                         push               eax                                           // 0x007878a0    50
                         call               ?Create@SpellSeedGraphic@@SAPAV1@PBUMapCoords@@W4SPELL_SEED_TYPE@@PAVGPlayer@@MW4POWER_UP_TYPE@@@Z                          // 0x007878a1    e8baf6f9ff
                         add                esp, 0x14                                     // 0x007878a6    83c414
                         push               0x0                                           // 0x007878a9    6a00
                         mov.s              ecx, eax                                      // 0x007878ab    8bc8
                         mov                dword ptr [esi], eax                          // 0x007878ad    8906
                         call               _jmp_addr_0x00727680                          // 0x007878af    e8ccfdf9ff
_jmp_addr_0x007878b4:    add                edi, 0x02                                     // 0x007878b4    83c702
                         add                ebp, 0x04                                     // 0x007878b7    83c504
                         add                esi, 0x04                                     // 0x007878ba    83c604
                         cmp                edi, 0x0f                                     // 0x007878bd    83ff0f
                         {disp32} jl        _jmp_addr_0x007877ce                          // 0x007878c0    0f8c08ffffff
                         pop                edi                                           // 0x007878c6    5f
                         pop                esi                                           // 0x007878c7    5e
                         pop                ebp                                           // 0x007878c8    5d
                         pop                ebx                                           // 0x007878c9    5b
                         add                esp, 0x38                                     // 0x007878ca    83c438
                         ret                                                              // 0x007878cd    c3

// Snippet: db, [0x007878ce, 0x007878d0)
.byte 0x8b, 0xff                  // 0x007878ce

// Snippet: jmptbl, [0x007878d0, 0x007878e0)
.byte 0x94, 0x74, 0x78, 0x00      // 0x007878d0
.byte 0xbd, 0x74, 0x78, 0x00      // 0x007878d4
.byte 0x1d, 0x75, 0x78, 0x00      // 0x007878d8
.byte 0xec, 0x74, 0x78, 0x00      // 0x007878dc

