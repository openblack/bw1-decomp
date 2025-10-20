.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00436960
.extern _jmp_addr_0x004637e0
.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern _jmp_addr_0x004c4f60
.extern _jmp_addr_0x004c9fe0
.extern _jmp_addr_0x004d7b50
.extern _jmp_addr_0x004d7b80
.extern ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z
.extern _jmp_addr_0x004d7d90
.extern _jmp_addr_0x004d7e80
.extern _jmp_addr_0x004dc9f0
.extern _jmp_addr_0x004e1570
.extern _jmp_addr_0x004f12b0
.extern @Initialise__17CreaturePlanStateFP14CreatureMental@12
.extern _jmp_addr_0x004ff5c0
.extern _jmp_addr_0x0053a1a0
.extern  ??3@YAXPAX@Z
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z

.globl _jmp_addr_0x004d82a0
.globl _jmp_addr_0x004d8300
.globl _jmp_addr_0x004d8360
.globl _jmp_addr_0x004d83c0
.globl _jmp_addr_0x004d8980
.globl _jmp_addr_0x004d8a20
.globl _jmp_addr_0x004d8a90
.globl _jmp_addr_0x004d8ab0
.globl _jmp_addr_0x004d8af0
.globl _jmp_addr_0x004d8b50
.globl _jmp_addr_0x004d8bb0

start_0x004d8230_0x004d8df0:
// Snippet: asm, [0x004d8230, 0x004d8dae)
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x004d8230    8b44240c
                         push             esi                                           // 0x004d8234    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                   // 0x004d8235    8b74240c
                         push             edi                                           // 0x004d8239    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                   // 0x004d823a    8b7c240c
                         push             eax                                           // 0x004d823e    50
                         push             esi                                           // 0x004d823f    56
                         push             edi                                           // 0x004d8240    57
                         call             _jmp_addr_0x004d7e80                          // 0x004d8241    e83afcffff
                         test             byte ptr [edi + 0x25], 0x04                   // 0x004d8246    f6472504
                         {disp8} jne      _jmp_addr_0x004d8296                          // 0x004d824a    754a
                         push             0x0                                           // 0x004d824c    6a00
                         push             0x009c8060                                    // 0x004d824e    6860809c00
                         push             0x009c7f30                                    // 0x004d8253    68307f9c00
                         push             0x0                                           // 0x004d8258    6a00
                         push             esi                                           // 0x004d825a    56
                         call             ___RTDynamicCast                              // 0x004d825b    e8b9d72e00
                         mov.s            esi, eax                                      // 0x004d8260    8bf0
                         add              esp, 0x14                                     // 0x004d8262    83c414
                         cmp.s            edi, esi                                      // 0x004d8265    3bfe
                         {disp8} je       _jmp_addr_0x004d8296                          // 0x004d8267    742d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000164]             // 0x004d8269    8b8e64010000
                         push             edi                                           // 0x004d826f    57
                         call             _jmp_addr_0x004d7b80                          // 0x004d8270    e80bf9ffff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000164]             // 0x004d8275    8b8e64010000
                         push             eax                                           // 0x004d827b    50
                         call             _jmp_addr_0x004d7d90                          // 0x004d827c    e80ffbffff
                         test             eax, eax                                      // 0x004d8281    85c0
                         {disp8} je       _jmp_addr_0x004d8296                          // 0x004d8283    7411
                         {disp32} mov     ecx, dword ptr [edi + 0x00000164]             // 0x004d8285    8b8f64010000
                         push             0x3ca3d70a                                    // 0x004d828b    680ad7a33c
                         push             esi                                           // 0x004d8290    56
                         call             _jmp_addr_0x004c4f60                          // 0x004d8291    e8caccfeff
_jmp_addr_0x004d8296:    pop              edi                                           // 0x004d8296    5f
                         pop              esi                                           // 0x004d8297    5e
                         ret              0x000c                                        // 0x004d8298    c20c00
                         call             ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004d829b    e8d995f2ff
_jmp_addr_0x004d82a0:    push             ecx                                           // 0x004d82a0    51
                         push             ebx                                           // 0x004d82a1    53
                         push             edi                                           // 0x004d82a2    57
                         mov.s            edi, ecx                                      // 0x004d82a3    8bf9
                         {disp32} mov     ecx, dword ptr [edi + 0x0001d480]             // 0x004d82a5    8b8f80d40100
                         mov              eax, dword ptr [ecx]                          // 0x004d82ab    8b01
                         xor.s            ebx, ebx                                      // 0x004d82ad    33db
                         call             dword ptr [eax + 0x1c]                        // 0x004d82af    ff501c
                         test             eax, eax                                      // 0x004d82b2    85c0
                         {disp8} jbe      _jmp_addr_0x004d82f2                          // 0x004d82b4    763c
                         push             ebp                                           // 0x004d82b6    55
                         push             esi                                           // 0x004d82b7    56
_jmp_addr_0x004d82b8:    {disp32} mov     ecx, dword ptr [edi + 0x0001d480]             // 0x004d82b8    8b8f80d40100
                         mov              edx, dword ptr [ecx]                          // 0x004d82be    8b11
                         push             ebx                                           // 0x004d82c0    53
                         call             dword ptr [edx + 0x20]                        // 0x004d82c1    ff5220
                         {disp32} mov     esi, dword ptr [edi + 0x00020d18]             // 0x004d82c4    8bb7180d0200
                         mov              ebp, dword ptr [eax]                          // 0x004d82ca    8b28
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x004d82cc    89442410
                         mov              eax, dword ptr [esi]                          // 0x004d82d0    8b06
                         mov.s            ecx, esi                                      // 0x004d82d2    8bce
                         call             dword ptr [eax + 0x1c]                        // 0x004d82d4    ff501c
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x004d82d7    8b4c2410
                         push             eax                                           // 0x004d82db    50
                         push             esi                                           // 0x004d82dc    56
                         call             dword ptr [ebp + 0x28]                        // 0x004d82dd    ff5528
                         {disp32} mov     ecx, dword ptr [edi + 0x0001d480]             // 0x004d82e0    8b8f80d40100
                         mov              edx, dword ptr [ecx]                          // 0x004d82e6    8b11
                         inc              ebx                                           // 0x004d82e8    43
                         call             dword ptr [edx + 0x1c]                        // 0x004d82e9    ff521c
                         cmp.s            ebx, eax                                      // 0x004d82ec    3bd8
                         .byte            0x72, 0xc8// {disp8} jb _jmp_addr_0x004d82b8  // 0x004d82ee    72c8
                         pop              esi                                           // 0x004d82f0    5e
                         pop              ebp                                           // 0x004d82f1    5d
_jmp_addr_0x004d82f2:    pop              edi                                           // 0x004d82f2    5f
                         pop              ebx                                           // 0x004d82f3    5b
                         pop              ecx                                           // 0x004d82f4    59
                         ret                                                            // 0x004d82f5    c3
                         nop                                                            // 0x004d82f6    90
                         nop                                                            // 0x004d82f7    90
                         nop                                                            // 0x004d82f8    90
                         nop                                                            // 0x004d82f9    90
                         nop                                                            // 0x004d82fa    90
                         nop                                                            // 0x004d82fb    90
                         nop                                                            // 0x004d82fc    90
                         nop                                                            // 0x004d82fd    90
                         nop                                                            // 0x004d82fe    90
                         nop                                                            // 0x004d82ff    90
_jmp_addr_0x004d8300:    push             ebx                                           // 0x004d8300    53
                         push             ebp                                           // 0x004d8301    55
                         push             esi                                           // 0x004d8302    56
                         mov.s            esi, ecx                                      // 0x004d8303    8bf1
                         mov              eax, dword ptr [esi]                          // 0x004d8305    8b06
                         push             edi                                           // 0x004d8307    57
                         xor.s            ebx, ebx                                      // 0x004d8308    33db
                         call             dword ptr [eax + 0x1c]                        // 0x004d830a    ff501c
                         test             eax, eax                                      // 0x004d830d    85c0
                         {disp8} jbe      _jmp_addr_0x004d8336                          // 0x004d830f    7625
                         {disp8} mov      ebp, dword ptr [esp + 0x14]                   // 0x004d8311    8b6c2414
_jmp_addr_0x004d8315:    mov              edx, dword ptr [esi]                          // 0x004d8315    8b16
                         push             ebx                                           // 0x004d8317    53
                         mov.s            ecx, esi                                      // 0x004d8318    8bce
                         call             dword ptr [edx + 0x20]                        // 0x004d831a    ff5220
                         mov.s            edi, eax                                      // 0x004d831d    8bf8
                         mov              eax, dword ptr [edi]                          // 0x004d831f    8b07
                         mov.s            ecx, edi                                      // 0x004d8321    8bcf
                         call             dword ptr [eax + 0x2c]                        // 0x004d8323    ff502c
                         cmp.s            eax, ebp                                      // 0x004d8326    3bc5
                         {disp8} je       _jmp_addr_0x004d8342                          // 0x004d8328    7418
                         mov              edx, dword ptr [esi]                          // 0x004d832a    8b16
                         mov.s            ecx, esi                                      // 0x004d832c    8bce
                         inc              ebx                                           // 0x004d832e    43
                         call             dword ptr [edx + 0x1c]                        // 0x004d832f    ff521c
                         cmp.s            ebx, eax                                      // 0x004d8332    3bd8
                         .byte            0x72, 0xdf// {disp8} jb _jmp_addr_0x004d8315  // 0x004d8334    72df
_jmp_addr_0x004d8336:    pop              edi                                           // 0x004d8336    5f
                         pop              esi                                           // 0x004d8337    5e
                         pop              ebp                                           // 0x004d8338    5d
                         mov              eax, 0x00000002                               // 0x004d8339    b802000000
                         pop              ebx                                           // 0x004d833e    5b
                         ret              0x0008                                        // 0x004d833f    c20800
_jmp_addr_0x004d8342:    {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x004d8342    8b4f08
                         {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x004d8345    8b542418
                         pop              edi                                           // 0x004d8349    5f
                         pop              esi                                           // 0x004d834a    5e
                         xor.s            eax, eax                                      // 0x004d834b    33c0
                         cmp.s            ecx, edx                                      // 0x004d834d    3bca
                         pop              ebp                                           // 0x004d834f    5d
                         setne            al                                            // 0x004d8350    0f95c0
                         pop              ebx                                           // 0x004d8353    5b
                         ret              0x0008                                        // 0x004d8354    c20800
                         nop                                                            // 0x004d8357    90
                         nop                                                            // 0x004d8358    90
                         nop                                                            // 0x004d8359    90
                         nop                                                            // 0x004d835a    90
                         nop                                                            // 0x004d835b    90
                         nop                                                            // 0x004d835c    90
                         nop                                                            // 0x004d835d    90
                         nop                                                            // 0x004d835e    90
                         nop                                                            // 0x004d835f    90
_jmp_addr_0x004d8360:    push             ebx                                           // 0x004d8360    53
                         push             ebp                                           // 0x004d8361    55
                         push             esi                                           // 0x004d8362    56
                         mov.s            esi, ecx                                      // 0x004d8363    8bf1
                         mov              eax, dword ptr [esi]                          // 0x004d8365    8b06
                         push             edi                                           // 0x004d8367    57
                         xor.s            ebx, ebx                                      // 0x004d8368    33db
                         call             dword ptr [eax + 0x1c]                        // 0x004d836a    ff501c
                         test             eax, eax                                      // 0x004d836d    85c0
                         {disp8} jbe      _jmp_addr_0x004d8396                          // 0x004d836f    7625
                         {disp8} mov      ebp, dword ptr [esp + 0x14]                   // 0x004d8371    8b6c2414
_jmp_addr_0x004d8375:    mov              edx, dword ptr [esi]                          // 0x004d8375    8b16
                         push             ebx                                           // 0x004d8377    53
                         mov.s            ecx, esi                                      // 0x004d8378    8bce
                         call             dword ptr [edx + 0x20]                        // 0x004d837a    ff5220
                         mov.s            edi, eax                                      // 0x004d837d    8bf8
                         mov              eax, dword ptr [edi]                          // 0x004d837f    8b07
                         mov.s            ecx, edi                                      // 0x004d8381    8bcf
                         call             dword ptr [eax + 0x2c]                        // 0x004d8383    ff502c
                         cmp.s            eax, ebp                                      // 0x004d8386    3bc5
                         {disp8} je       _jmp_addr_0x004d839f                          // 0x004d8388    7415
                         mov              edx, dword ptr [esi]                          // 0x004d838a    8b16
                         mov.s            ecx, esi                                      // 0x004d838c    8bce
                         inc              ebx                                           // 0x004d838e    43
                         call             dword ptr [edx + 0x1c]                        // 0x004d838f    ff521c
                         cmp.s            ebx, eax                                      // 0x004d8392    3bd8
                         .byte            0x72, 0xdf// {disp8} jb _jmp_addr_0x004d8375  // 0x004d8394    72df
_jmp_addr_0x004d8396:    pop              edi                                           // 0x004d8396    5f
                         pop              esi                                           // 0x004d8397    5e
                         pop              ebp                                           // 0x004d8398    5d
                         xor.s            eax, eax                                      // 0x004d8399    33c0
                         pop              ebx                                           // 0x004d839b    5b
                         ret              0x0008                                        // 0x004d839c    c20800
_jmp_addr_0x004d839f:    {disp8} mov      eax, dword ptr [edi + 0x08]                   // 0x004d839f    8b4708
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x004d83a2    8b4c2418
                         pop              edi                                           // 0x004d83a6    5f
                         pop              esi                                           // 0x004d83a7    5e
                         pop              ebp                                           // 0x004d83a8    5d
                         mov              dword ptr [ecx], eax                          // 0x004d83a9    8901
                         mov              eax, 0x00000001                               // 0x004d83ab    b801000000
                         pop              ebx                                           // 0x004d83b0    5b
                         ret              0x0008                                        // 0x004d83b1    c20800
                         nop                                                            // 0x004d83b4    90
                         nop                                                            // 0x004d83b5    90
                         nop                                                            // 0x004d83b6    90
                         nop                                                            // 0x004d83b7    90
                         nop                                                            // 0x004d83b8    90
                         nop                                                            // 0x004d83b9    90
                         nop                                                            // 0x004d83ba    90
                         nop                                                            // 0x004d83bb    90
                         nop                                                            // 0x004d83bc    90
                         nop                                                            // 0x004d83bd    90
                         nop                                                            // 0x004d83be    90
                         nop                                                            // 0x004d83bf    90
_jmp_addr_0x004d83c0:    sub              esp, 0x18                                     // 0x004d83c0    83ec18
                         push             ebx                                           // 0x004d83c3    53
                         push             ebp                                           // 0x004d83c4    55
                         push             esi                                           // 0x004d83c5    56
                         mov.s            esi, ecx                                      // 0x004d83c6    8bf1
                         xor.s            ebp, ebp                                      // 0x004d83c8    33ed
                         {disp32} lea     eax, dword ptr [esi + 0x00002210]             // 0x004d83ca    8d8610220000
                         push             edi                                           // 0x004d83d0    57
                         {disp8} mov      dword ptr [esp + 0x10], ebp                   // 0x004d83d1    896c2410
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x004d83d5    89442414
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000002            // 0x004d83d9    c744241c02000000
_jmp_addr_0x004d83e1:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x004d83e1    8b4c2414
                         {disp8} mov      ebx, dword ptr [ecx + 0x08]                   // 0x004d83e5    8b5908
                         test             ebx, ebx                                      // 0x004d83e8    85db
                         {disp32} je      _jmp_addr_0x004d852f                          // 0x004d83ea    0f843f010000
_jmp_addr_0x004d83f0:    {disp8} mov      edx, dword ptr [ebx + 0x30]                   // 0x004d83f0    8b5330
                         test             byte ptr [edx + 0x0a], 0x01                   // 0x004d83f3    f6420a01
                         {disp8} mov      eax, dword ptr [ebx + 0x08]                   // 0x004d83f7    8b4308
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x004d83fa    89442424
                         {disp32} je      _jmp_addr_0x004d8525                          // 0x004d83fe    0f8421010000
                         push             ebx                                           // 0x004d8404    53
                         mov.s            ecx, esi                                      // 0x004d8405    8bce
                         call             _jmp_addr_0x004d7d90                          // 0x004d8407    e884f9ffff
                         test             eax, eax                                      // 0x004d840c    85c0
                         {disp8} je       _jmp_addr_0x004d8418                          // 0x004d840e    7408
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000001            // 0x004d8410    c744241001000000
_jmp_addr_0x004d8418:    xor.s            edi, edi                                      // 0x004d8418    33ff
                         {disp8} mov      dword ptr [esp + 0x18], edi                   // 0x004d841a    897c2418
                         {disp32} lea     ebp, dword ptr [esi + 0x00000718]             // 0x004d841e    8dae18070000
_jmp_addr_0x004d8424:    mov.s            ecx, edi                                      // 0x004d8424    8bcf
                         and              ecx, 0x80000007                               // 0x004d8426    81e107000080
                         {disp8} jns      _jmp_addr_0x004d8433                          // 0x004d842c    7905
                         dec              ecx                                           // 0x004d842e    49
                         or               ecx, 0xfffffff8                               // 0x004d842f    83c9f8
                         inc              ecx                                           // 0x004d8432    41
_jmp_addr_0x004d8433:    mov              edx, 0x00000001                               // 0x004d8433    ba01000000
                         shl              edx, cl                                       // 0x004d8438    d3e2
                         mov.s            eax, edi                                      // 0x004d843a    8bc7
                         mov.s            ecx, edx                                      // 0x004d843c    8bca
                         cdq                                                            // 0x004d843e    99
                         and              edx, 0x07                                     // 0x004d843f    83e207
                         add.s            eax, edx                                      // 0x004d8442    03c2
                         sar              eax, 3                                        // 0x004d8444    c1f803
                         {disp8} mov      al, byte ptr [eax + ebx * 0x1 + 0x40]         // 0x004d8447    8a441840
                         test             al, cl                                        // 0x004d844b    84c8
                         {disp8} je       _jmp_addr_0x004d845e                          // 0x004d844d    740f
                         mov.s            ecx, ebp                                      // 0x004d844f    8bcd
                         call             _jmp_addr_0x004f12b0                          // 0x004d8451    e85a8e0100
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000001            // 0x004d8456    c744241801000000
_jmp_addr_0x004d845e:    inc              edi                                           // 0x004d845e    47
                         add              ebp, 0x30                                     // 0x004d845f    83c530
                         cmp              edi, 0x28                                     // 0x004d8462    83ff28
                         .byte            0x72, 0xbd// {disp8} jb _jmp_addr_0x004d8424  // 0x004d8465    72bd
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x004d8467    8b442418
                         test             eax, eax                                      // 0x004d846b    85c0
                         {disp8} je       _jmp_addr_0x004d847b                          // 0x004d846d    740c
                         push             esi                                           // 0x004d846f    56
                         {disp32} lea     ecx, dword ptr [esi + 0x00000718]             // 0x004d8470    8d8e18070000
                         call             @Initialise__17CreaturePlanStateFP14CreatureMental@12                          // 0x004d8476    e8658f0100
_jmp_addr_0x004d847b:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x004d847b    8b4c2414
                         push             ebx                                           // 0x004d847f    53
                         call             _jmp_addr_0x004d8980                          // 0x004d8480    e8fb040000
                         {disp32} mov     edx, dword ptr [esi + 0x00020d18]             // 0x004d8485    8b96180d0200
                         {disp32} mov     eax, dword ptr [edx + 0x00000160]             // 0x004d848b    8b8260010000
                         {disp8} mov      edx, dword ptr [eax + 0x58]                   // 0x004d8491    8b5058
                         {disp8} mov      ecx, dword ptr [ebx + 0x30]                   // 0x004d8494    8b4b30
                         cmp              ecx, dword ptr [edx + 0x000048d0]             // 0x004d8497    3b8ad0480000
                         {disp8} jne      _jmp_addr_0x004d84c3                          // 0x004d849d    7524
                         xor.s            ecx, ecx                                      // 0x004d849f    33c9
                         {disp8} mov      dword ptr [eax + 0x28], ecx                   // 0x004d84a1    894828
                         {disp32} mov     eax, dword ptr [esi + 0x00020d18]             // 0x004d84a4    8b86180d0200
                         {disp32} mov     edx, dword ptr [eax + 0x00000160]             // 0x004d84aa    8b9060010000
                         {disp8} mov      eax, dword ptr [edx + 0x58]                   // 0x004d84b0    8b4258
                         {disp32} mov     dword ptr [eax + 0x000048d0], ecx             // 0x004d84b3    8988d0480000
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000001            // 0x004d84b9    c744241001000000
                         {disp8} jmp      _jmp_addr_0x004d84ee                          // 0x004d84c1    eb2b
_jmp_addr_0x004d84c3:    cmp              ecx, dword ptr [eax + 0x28]                   // 0x004d84c3    3b4828
                         {disp8} jne      _jmp_addr_0x004d84ec                          // 0x004d84c6    7524
                         xor.s            ecx, ecx                                      // 0x004d84c8    33c9
                         {disp8} mov      dword ptr [eax + 0x28], ecx                   // 0x004d84ca    894828
                         {disp32} mov     edx, dword ptr [esi + 0x00020d18]             // 0x004d84cd    8b96180d0200
                         {disp32} mov     eax, dword ptr [edx + 0x00000160]             // 0x004d84d3    8b8260010000
                         {disp8} mov      edx, dword ptr [eax + 0x58]                   // 0x004d84d9    8b5058
                         {disp32} mov     dword ptr [edx + 0x000048d0], ecx             // 0x004d84dc    898ad0480000
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000001            // 0x004d84e2    c744241001000000
                         {disp8} jmp      _jmp_addr_0x004d84ee                          // 0x004d84ea    eb02
_jmp_addr_0x004d84ec:    xor.s            ecx, ecx                                      // 0x004d84ec    33c9
_jmp_addr_0x004d84ee:    cmp              dword ptr [esi + 0x000021e0], ebx             // 0x004d84ee    399ee0210000
                         {disp8} jne      _jmp_addr_0x004d8515                          // 0x004d84f4    751f
                         xor.s            eax, eax                                      // 0x004d84f6    33c0
                         {disp32} lea     ebp, dword ptr [esi + 0x000021d0]             // 0x004d84f8    8daed0210000
                         {disp8} mov      dword ptr [ebp + 0x00], eax                   // 0x004d84fe    894500
                         xor.s            edx, edx                                      // 0x004d8501    33d2
                         {disp8} mov      dword ptr [ebp + 0x04], ecx                   // 0x004d8503    894d04
                         or               edi, 0xffffffff                               // 0x004d8506    83cfff
                         {disp8} mov      dword ptr [ebp + 0x08], edx                   // 0x004d8509    895508
                         {disp32} mov     dword ptr [esi + 0x000021e0], ecx             // 0x004d850c    898ee0210000
                         {disp8} mov      dword ptr [ebp + 0x0c], edi                   // 0x004d8512    897d0c
_jmp_addr_0x004d8515:    push             ebx                                           // 0x004d8515    53
                         mov.s            ecx, esi                                      // 0x004d8516    8bce
                         call             _jmp_addr_0x004d7b50                          // 0x004d8518    e833f6ffff
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x004d851d    8b442424
                         {disp8} mov      ebp, dword ptr [esp + 0x10]                   // 0x004d8521    8b6c2410
_jmp_addr_0x004d8525:    test             eax, eax                                      // 0x004d8525    85c0
                         mov.s            ebx, eax                                      // 0x004d8527    8bd8
                         {disp32} jne     _jmp_addr_0x004d83f0                          // 0x004d8529    0f85c1feffff
_jmp_addr_0x004d852f:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x004d852f    8b4c2414
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x004d8533    8b44241c
                         add              ecx, 0x14                                     // 0x004d8537    83c114
                         dec              eax                                           // 0x004d853a    48
                         {disp8} mov      dword ptr [esp + 0x14], ecx                   // 0x004d853b    894c2414
                         {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x004d853f    8944241c
                         {disp32} jne     _jmp_addr_0x004d83e1                          // 0x004d8543    0f8598feffff
                         {disp32} mov     ebx, dword ptr [esi + 0x00000fb4]             // 0x004d8549    8b9eb40f0000
                         cmp              ebx, dword ptr [esi + 0x00000fbc]             // 0x004d854f    3b9ebc0f0000
                         {disp8} jae      _jmp_addr_0x004d85b7                          // 0x004d8555    7360
                         lea              eax, dword ptr [ebx + ebx * 0x2]              // 0x004d8557    8d045b
                         shl              eax, 5                                        // 0x004d855a    c1e005
                         {disp32} lea     edi, dword ptr [eax + esi * 0x1 + 0x00000fdc] // 0x004d855d    8dbc30dc0f0000
_jmp_addr_0x004d8564:    mov              eax, dword ptr [edi]                          // 0x004d8564    8b07
                         test             eax, eax                                      // 0x004d8566    85c0
                         {disp8} je       _jmp_addr_0x004d85a9                          // 0x004d8568    743f
                         {disp8} mov      eax, dword ptr [eax + 0x30]                   // 0x004d856a    8b4030
                         test             eax, eax                                      // 0x004d856d    85c0
                         {disp8} je       _jmp_addr_0x004d85a9                          // 0x004d856f    7438
                         mov              edx, dword ptr [eax]                          // 0x004d8571    8b10
                         mov.s            ecx, eax                                      // 0x004d8573    8bc8
                         call             dword ptr [edx + 0x2c]                        // 0x004d8575    ff522c
                         test             eax, eax                                      // 0x004d8578    85c0
                         {disp8} jne      _jmp_addr_0x004d858c                          // 0x004d857a    7510
                         {disp32} lea     ecx, dword ptr [esi + 0x00000fa8]             // 0x004d857c    8d8ea80f0000
                         call             _jmp_addr_0x004ff5c0                          // 0x004d8582    e839700200
                         mov              ebp, 0x00000001                               // 0x004d8587    bd01000000
_jmp_addr_0x004d858c:    {disp8} mov      eax, dword ptr [edi + 0x20]                   // 0x004d858c    8b4720
                         test             eax, eax                                      // 0x004d858f    85c0
                         {disp8} je       _jmp_addr_0x004d85a9                          // 0x004d8591    7416
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8593    f6400a01
                         {disp8} je       _jmp_addr_0x004d85a9                          // 0x004d8597    7410
                         {disp32} lea     ecx, dword ptr [esi + 0x00000fa8]             // 0x004d8599    8d8ea80f0000
                         call             _jmp_addr_0x004ff5c0                          // 0x004d859f    e81c700200
                         mov              ebp, 0x00000001                               // 0x004d85a4    bd01000000
_jmp_addr_0x004d85a9:    {disp32} mov     eax, dword ptr [esi + 0x00000fbc]             // 0x004d85a9    8b86bc0f0000
                         inc              ebx                                           // 0x004d85af    43
                         add              edi, 0x60                                     // 0x004d85b0    83c760
                         cmp.s            ebx, eax                                      // 0x004d85b3    3bd8
                         .byte            0x72, 0xad// {disp8} jb _jmp_addr_0x004d8564  // 0x004d85b5    72ad
_jmp_addr_0x004d85b7:    test             ebp, ebp                                      // 0x004d85b7    85ed
                         {disp8} je       _jmp_addr_0x004d85f9                          // 0x004d85b9    743e
                         cmp              dword ptr [esi + 0x00000f50], 0x05            // 0x004d85bb    83be500f000005
                         {disp8} jne      _jmp_addr_0x004d85dd                          // 0x004d85c2    7519
                         {disp32} mov     eax, dword ptr [esi + 0x00020d18]             // 0x004d85c4    8b86180d0200
                         {disp8} mov      ecx, dword ptr [eax + 0x28]                   // 0x004d85ca    8b4828
                         push             0x3fa66666                                    // 0x004d85cd    686666a63f
                         push             ecx                                           // 0x004d85d2    51
                         push             0x5                                           // 0x004d85d3    6a05
                         {disp8} lea      ecx, dword ptr [esi + 0x08]                   // 0x004d85d5    8d4e08
                         call             _jmp_addr_0x004dc9f0                          // 0x004d85d8    e813440000
_jmp_addr_0x004d85dd:    {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d85dd    8b8e180d0200
                         push             0x0                                           // 0x004d85e3    6a00
                         push             0x0                                           // 0x004d85e5    6a00
                         push             0x0                                           // 0x004d85e7    6a00
                         push             0x8                                           // 0x004d85e9    6a08
                         push             0x28                                          // 0x004d85eb    6a28
                         call             _jmp_addr_0x004c9fe0                          // 0x004d85ed    e8ee19ffff
                         mov.s            ecx, esi                                      // 0x004d85f2    8bce
                         call             _jmp_addr_0x004e1570                          // 0x004d85f4    e8778f0000
_jmp_addr_0x004d85f9:    {disp32} mov     edx, dword ptr [esi + 0x00020d18]             // 0x004d85f9    8b96180d0200
                         {disp32} mov     eax, dword ptr [edx + 0x00001090]             // 0x004d85ff    8b8290100000
                         test             eax, eax                                      // 0x004d8605    85c0
                         {disp8} je       _jmp_addr_0x004d866c                          // 0x004d8607    7463
_jmp_addr_0x004d8609:    {disp8} mov      ecx, dword ptr [eax + 0x04]                   // 0x004d8609    8b4804
                         mov              eax, dword ptr [eax]                          // 0x004d860c    8b00
                         {disp8} mov      dword ptr [esp + 0x20], eax                   // 0x004d860e    89442420
                         test             byte ptr [ecx + 0x0a], 0x01                   // 0x004d8612    f6410a01
                         {disp8} mov      dword ptr [esp + 0x24], ecx                   // 0x004d8616    894c2424
                         {disp8} je       _jmp_addr_0x004d8664                          // 0x004d861a    7448
                         {disp32} mov     edi, dword ptr [esi + 0x00020d18]             // 0x004d861c    8bbe180d0200
                         {disp32} mov     eax, dword ptr [edi + 0x00001090]             // 0x004d8622    8b8790100000
                         add              edi, 0x00001090                               // 0x004d8628    81c790100000
                         xor.s            ebp, ebp                                      // 0x004d862e    33ed
                         test             eax, eax                                      // 0x004d8630    85c0
                         {disp8} je       _jmp_addr_0x004d8664                          // 0x004d8632    7430
_jmp_addr_0x004d8634:    {disp8} mov      ecx, dword ptr [eax + 0x04]                   // 0x004d8634    8b4804
                         cmp              ecx, dword ptr [esp + 0x24]                   // 0x004d8637    3b4c2424
                         mov              ebx, dword ptr [eax]                          // 0x004d863b    8b18
                         {disp8} jne      _jmp_addr_0x004d865c                          // 0x004d863d    751d
                         cmp              eax, dword ptr [edi]                          // 0x004d863f    3b07
                         {disp8} jne      _jmp_addr_0x004d8647                          // 0x004d8641    7504
                         mov              dword ptr [edi], ebx                          // 0x004d8643    891f
                         {disp8} jmp      _jmp_addr_0x004d864a                          // 0x004d8645    eb03
_jmp_addr_0x004d8647:    {disp8} mov      dword ptr [ebp + 0x00], ebx                   // 0x004d8647    895d00
_jmp_addr_0x004d864a:    {disp8} mov      edx, dword ptr [edi + 0x04]                   // 0x004d864a    8b5704
                         dec              edx                                           // 0x004d864d    4a
                         push             eax                                           // 0x004d864e    50
                         {disp8} mov      dword ptr [edi + 0x04], edx                   // 0x004d864f    895704
                         call             ??3@YAXPAX@Z                                  // 0x004d8652    e841682d00
                         add              esp, 0x04                                     // 0x004d8657    83c404
                         {disp8} jmp      _jmp_addr_0x004d865e                          // 0x004d865a    eb02
_jmp_addr_0x004d865c:    mov.s            ebp, eax                                      // 0x004d865c    8be8
_jmp_addr_0x004d865e:    test             ebx, ebx                                      // 0x004d865e    85db
                         mov.s            eax, ebx                                      // 0x004d8660    8bc3
                         {disp8} jne      _jmp_addr_0x004d8634                          // 0x004d8662    75d0
_jmp_addr_0x004d8664:    {disp8} mov      eax, dword ptr [esp + 0x20]                   // 0x004d8664    8b442420
                         test             eax, eax                                      // 0x004d8668    85c0
                         {disp8} jne      _jmp_addr_0x004d8609                          // 0x004d866a    759d
_jmp_addr_0x004d866c:    {disp32} mov     eax, dword ptr [esi + 0x0001d3f4]             // 0x004d866c    8b86f4d30100
                         xor.s            ecx, ecx                                      // 0x004d8672    33c9
                         cmp.s            eax, ecx                                      // 0x004d8674    3bc1
                         {disp8} je       _jmp_addr_0x004d869c                          // 0x004d8676    7424
                         cmp              dword ptr [esi + 0x0001d3f8], ecx             // 0x004d8678    398ef8d30100
                         {disp8} jne      _jmp_addr_0x004d869c                          // 0x004d867e    751c
                         {disp32} mov     eax, dword ptr [esi + 0x0001d3fc]             // 0x004d8680    8b86fcd30100
                         cmp.s            eax, ecx                                      // 0x004d8686    3bc1
                         {disp8} je       _jmp_addr_0x004d869c                          // 0x004d8688    7412
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d868a    f6400a01
                         {disp8} je       _jmp_addr_0x004d869c                          // 0x004d868e    740c
                         {disp32} mov     dword ptr [esi + 0x0001d3fc], ecx             // 0x004d8690    898efcd30100
                         {disp32} mov     dword ptr [esi + 0x0001d3f4], ecx             // 0x004d8696    898ef4d30100
_jmp_addr_0x004d869c:    cmp              dword ptr [esi + 0x00001c38], ecx             // 0x004d869c    398e381c0000
                         {disp8} je       _jmp_addr_0x004d86c1                          // 0x004d86a2    741d
                         {disp32} mov     eax, dword ptr [esi + 0x00001c48]             // 0x004d86a4    8b86481c0000
                         cmp.s            eax, ecx                                      // 0x004d86aa    3bc1
                         {disp8} je       _jmp_addr_0x004d86c1                          // 0x004d86ac    7413
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d86ae    f6400a01
                         {disp8} je       _jmp_addr_0x004d86c1                          // 0x004d86b2    740d
                         {disp32} mov     dword ptr [esi + 0x00001c48], ecx             // 0x004d86b4    898e481c0000
                         mov.s            ecx, esi                                      // 0x004d86ba    8bce
                         call             _jmp_addr_0x004e1570                          // 0x004d86bc    e8af8e0000
_jmp_addr_0x004d86c1:    {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d86c1    8b8e180d0200
                         {disp32} mov     eax, dword ptr [ecx + 0x000010d4]             // 0x004d86c7    8b81d4100000
                         xor.s            edx, edx                                      // 0x004d86cd    33d2
                         cmp.s            eax, edx                                      // 0x004d86cf    3bc2
                         {disp8} je       _jmp_addr_0x004d86df                          // 0x004d86d1    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d86d3    f6400a01
                         {disp8} je       _jmp_addr_0x004d86df                          // 0x004d86d7    7406
                         {disp32} mov     dword ptr [ecx + 0x000010d4], edx             // 0x004d86d9    8991d4100000
_jmp_addr_0x004d86df:    {disp32} mov     eax, dword ptr [esi + 0x00001c6c]             // 0x004d86df    8b866c1c0000
                         cmp.s            eax, edx                                      // 0x004d86e5    3bc2
                         {disp8} je       _jmp_addr_0x004d86f5                          // 0x004d86e7    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d86e9    f6400a01
                         {disp8} je       _jmp_addr_0x004d86f5                          // 0x004d86ed    7406
                         {disp32} mov     dword ptr [esi + 0x00001c6c], edx             // 0x004d86ef    89966c1c0000
_jmp_addr_0x004d86f5:    {disp32} mov     eax, dword ptr [esi + 0x0001a9e8]             // 0x004d86f5    8b86e8a90100
                         cmp.s            eax, edx                                      // 0x004d86fb    3bc2
                         {disp8} je       _jmp_addr_0x004d870b                          // 0x004d86fd    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d86ff    f6400a01
                         {disp8} je       _jmp_addr_0x004d870b                          // 0x004d8703    7406
                         {disp32} mov     dword ptr [esi + 0x0001a9e8], edx             // 0x004d8705    8996e8a90100
_jmp_addr_0x004d870b:    {disp32} mov     eax, dword ptr [esi + 0x0001a9ec]             // 0x004d870b    8b86eca90100
                         cmp.s            eax, edx                                      // 0x004d8711    3bc2
                         {disp8} je       _jmp_addr_0x004d8721                          // 0x004d8713    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8715    f6400a01
                         {disp8} je       _jmp_addr_0x004d8721                          // 0x004d8719    7406
                         {disp32} mov     dword ptr [esi + 0x0001a9ec], edx             // 0x004d871b    8996eca90100
_jmp_addr_0x004d8721:    {disp32} mov     eax, dword ptr [esi + 0x00001c74]             // 0x004d8721    8b86741c0000
                         cmp.s            eax, edx                                      // 0x004d8727    3bc2
                         {disp8} je       _jmp_addr_0x004d8737                          // 0x004d8729    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d872b    f6400a01
                         {disp8} je       _jmp_addr_0x004d8737                          // 0x004d872f    7406
                         {disp32} mov     dword ptr [esi + 0x00001c74], edx             // 0x004d8731    8996741c0000
_jmp_addr_0x004d8737:    {disp32} mov     eax, dword ptr [esi + 0x00000f84]             // 0x004d8737    8b86840f0000
                         cmp.s            eax, edx                                      // 0x004d873d    3bc2
                         {disp8} je       _jmp_addr_0x004d8759                          // 0x004d873f    7418
                         {disp8} mov      eax, dword ptr [eax + 0x30]                   // 0x004d8741    8b4030
                         cmp.s            eax, edx                                      // 0x004d8744    3bc2
                         {disp8} je       _jmp_addr_0x004d8759                          // 0x004d8746    7411
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8748    f6400a01
                         {disp8} je       _jmp_addr_0x004d8759                          // 0x004d874c    740b
                         {disp32} lea     ecx, dword ptr [esi + 0x00000f78]             // 0x004d874e    8d8e780f0000
                         call             _jmp_addr_0x004f12b0                          // 0x004d8754    e8578b0100
_jmp_addr_0x004d8759:    {disp32} mov     eax, dword ptr [esi + 0x00000f88]             // 0x004d8759    8b86880f0000
                         test             eax, eax                                      // 0x004d875f    85c0
                         {disp8} je       _jmp_addr_0x004d877b                          // 0x004d8761    7418
                         {disp8} mov      eax, dword ptr [eax + 0x30]                   // 0x004d8763    8b4030
                         test             eax, eax                                      // 0x004d8766    85c0
                         {disp8} je       _jmp_addr_0x004d877b                          // 0x004d8768    7411
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d876a    f6400a01
                         {disp8} je       _jmp_addr_0x004d877b                          // 0x004d876e    740b
                         {disp32} lea     ecx, dword ptr [esi + 0x00000f78]             // 0x004d8770    8d8e780f0000
                         call             _jmp_addr_0x004f12b0                          // 0x004d8776    e8358b0100
_jmp_addr_0x004d877b:    {disp32} mov     eax, dword ptr [esi + 0x00000f8c]             // 0x004d877b    8b868c0f0000
                         test             eax, eax                                      // 0x004d8781    85c0
                         {disp8} je       _jmp_addr_0x004d879d                          // 0x004d8783    7418
                         {disp8} mov      eax, dword ptr [eax + 0x30]                   // 0x004d8785    8b4030
                         test             eax, eax                                      // 0x004d8788    85c0
                         {disp8} je       _jmp_addr_0x004d879d                          // 0x004d878a    7411
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d878c    f6400a01
                         {disp8} je       _jmp_addr_0x004d879d                          // 0x004d8790    740b
                         {disp32} lea     ecx, dword ptr [esi + 0x00000f78]             // 0x004d8792    8d8e780f0000
                         call             _jmp_addr_0x004f12b0                          // 0x004d8798    e8138b0100
_jmp_addr_0x004d879d:    {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d879d    8b8e180d0200
                         {disp32} mov     eax, dword ptr [ecx + 0x000010ec]             // 0x004d87a3    8b81ec100000
                         xor.s            edx, edx                                      // 0x004d87a9    33d2
                         cmp.s            eax, edx                                      // 0x004d87ab    3bc2
                         {disp8} je       _jmp_addr_0x004d87bb                          // 0x004d87ad    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d87af    f6400a01
                         {disp8} je       _jmp_addr_0x004d87bb                          // 0x004d87b3    7406
                         {disp32} mov     dword ptr [ecx + 0x000010ec], edx             // 0x004d87b5    8991ec100000
_jmp_addr_0x004d87bb:    {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d87bb    8b8e180d0200
                         {disp32} mov     eax, dword ptr [ecx + 0x000010f0]             // 0x004d87c1    8b81f0100000
                         cmp.s            eax, edx                                      // 0x004d87c7    3bc2
                         {disp8} je       _jmp_addr_0x004d87d7                          // 0x004d87c9    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d87cb    f6400a01
                         {disp8} je       _jmp_addr_0x004d87d7                          // 0x004d87cf    7406
                         {disp32} mov     dword ptr [ecx + 0x000010f0], edx             // 0x004d87d1    8991f0100000
_jmp_addr_0x004d87d7:    {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d87d7    8b8e180d0200
                         {disp32} mov     eax, dword ptr [ecx + 0x000010f8]             // 0x004d87dd    8b81f8100000
                         cmp.s            eax, edx                                      // 0x004d87e3    3bc2
                         {disp8} je       _jmp_addr_0x004d87f3                          // 0x004d87e5    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d87e7    f6400a01
                         {disp8} je       _jmp_addr_0x004d87f3                          // 0x004d87eb    7406
                         {disp32} mov     dword ptr [ecx + 0x000010f8], edx             // 0x004d87ed    8991f8100000
_jmp_addr_0x004d87f3:    {disp32} mov     eax, dword ptr [esi + 0x00020d18]             // 0x004d87f3    8b86180d0200
                         {disp32} mov     ecx, dword ptr [eax + 0x000000bc]             // 0x004d87f9    8b88bc000000
                         cmp.s            ecx, edx                                      // 0x004d87ff    3bca
                         {disp8} je       _jmp_addr_0x004d882e                          // 0x004d8801    742b
                         mov              edx, dword ptr [ecx]                          // 0x004d8803    8b11
                         call             dword ptr [edx + 0x2c]                        // 0x004d8805    ff522c
                         test             eax, eax                                      // 0x004d8808    85c0
                         {disp8} jne      _jmp_addr_0x004d882e                          // 0x004d880a    7522
                         {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d880c    8b8e180d0200
                         mov              eax, dword ptr [ecx]                          // 0x004d8812    8b01
                         call             dword ptr [eax + 0x998]                       // 0x004d8814    ff9098090000
                         {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d881a    8b8e180d0200
                         push             0x1                                           // 0x004d8820    6a01
                         push             0x1                                           // 0x004d8822    6a01
                         push             0x00bdf3b4                                    // 0x004d8824    68b4f3bd00
                         call             ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                          // 0x004d8829    e802cff9ff
_jmp_addr_0x004d882e:    {disp32} mov     eax, dword ptr [esi + 0x00001c70]             // 0x004d882e    8b86701c0000
                         xor.s            ecx, ecx                                      // 0x004d8834    33c9
                         cmp.s            eax, ecx                                      // 0x004d8836    3bc1
                         {disp8} je       _jmp_addr_0x004d884d                          // 0x004d8838    7413
                         {disp8} mov      eax, dword ptr [eax + 0x30]                   // 0x004d883a    8b4030
                         cmp.s            eax, ecx                                      // 0x004d883d    3bc1
                         {disp8} je       _jmp_addr_0x004d884d                          // 0x004d883f    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8841    f6400a01
                         {disp8} je       _jmp_addr_0x004d884d                          // 0x004d8845    7406
                         {disp32} mov     dword ptr [esi + 0x00001c70], ecx             // 0x004d8847    898e701c0000
_jmp_addr_0x004d884d:    {disp32} mov     eax, dword ptr [esi + 0x000021c0]             // 0x004d884d    8b86c0210000
                         cmp.s            eax, ecx                                      // 0x004d8853    3bc1
                         {disp8} je       _jmp_addr_0x004d8863                          // 0x004d8855    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8857    f6400a01
                         {disp8} je       _jmp_addr_0x004d8863                          // 0x004d885b    7406
                         {disp32} mov     dword ptr [esi + 0x000021c0], ecx             // 0x004d885d    898ec0210000
_jmp_addr_0x004d8863:    {disp32} mov     eax, dword ptr [esi + 0x0001d484]             // 0x004d8863    8b8684d40100
                         cmp.s            eax, ecx                                      // 0x004d8869    3bc1
                         {disp8} je       _jmp_addr_0x004d887c                          // 0x004d886b    740f
                         {disp8} mov      edx, dword ptr [eax + 0x30]                   // 0x004d886d    8b5030
                         test             byte ptr [edx + 0x0a], 0x01                   // 0x004d8870    f6420a01
                         {disp8} je       _jmp_addr_0x004d887c                          // 0x004d8874    7406
                         {disp32} mov     dword ptr [esi + 0x0001d484], ecx             // 0x004d8876    898e84d40100
_jmp_addr_0x004d887c:    {disp32} mov     eax, dword ptr [esi + 0x0001aa48]             // 0x004d887c    8b8648aa0100
                         cmp.s            eax, ecx                                      // 0x004d8882    3bc1
                         {disp8} je       _jmp_addr_0x004d8892                          // 0x004d8884    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8886    f6400a01
                         {disp8} je       _jmp_addr_0x004d8892                          // 0x004d888a    7406
                         {disp32} mov     dword ptr [esi + 0x0001aa48], ecx             // 0x004d888c    898e48aa0100
_jmp_addr_0x004d8892:    {disp32} mov     eax, dword ptr [esi + 0x00020d18]             // 0x004d8892    8b86180d0200
                         {disp32} mov     eax, dword ptr [eax + 0x000003d0]             // 0x004d8898    8b80d0030000
                         cmp.s            eax, ecx                                      // 0x004d889e    3bc1
                         {disp8} je       _jmp_addr_0x004d8905                          // 0x004d88a0    7463
_jmp_addr_0x004d88a2:    {disp8} mov      ecx, dword ptr [eax + 0x04]                   // 0x004d88a2    8b4804
                         mov              edx, dword ptr [eax]                          // 0x004d88a5    8b10
                         test             byte ptr [ecx + 0x0a], 0x01                   // 0x004d88a7    f6410a01
                         {disp8} mov      dword ptr [esp + 0x24], ecx                   // 0x004d88ab    894c2424
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x004d88af    89542420
                         {disp8} je       _jmp_addr_0x004d88fd                          // 0x004d88b3    7448
                         {disp32} mov     edi, dword ptr [esi + 0x00020d18]             // 0x004d88b5    8bbe180d0200
                         {disp32} mov     eax, dword ptr [edi + 0x000003d0]             // 0x004d88bb    8b87d0030000
                         add              edi, 0x000003d0                               // 0x004d88c1    81c7d0030000
                         xor.s            ebp, ebp                                      // 0x004d88c7    33ed
                         test             eax, eax                                      // 0x004d88c9    85c0
                         {disp8} je       _jmp_addr_0x004d88fd                          // 0x004d88cb    7430
_jmp_addr_0x004d88cd:    {disp8} mov      ecx, dword ptr [eax + 0x04]                   // 0x004d88cd    8b4804
                         cmp              ecx, dword ptr [esp + 0x24]                   // 0x004d88d0    3b4c2424
                         mov              ebx, dword ptr [eax]                          // 0x004d88d4    8b18
                         {disp8} jne      _jmp_addr_0x004d88f5                          // 0x004d88d6    751d
                         cmp              eax, dword ptr [edi]                          // 0x004d88d8    3b07
                         {disp8} jne      _jmp_addr_0x004d88e0                          // 0x004d88da    7504
                         mov              dword ptr [edi], ebx                          // 0x004d88dc    891f
                         {disp8} jmp      _jmp_addr_0x004d88e3                          // 0x004d88de    eb03
_jmp_addr_0x004d88e0:    {disp8} mov      dword ptr [ebp + 0x00], ebx                   // 0x004d88e0    895d00
_jmp_addr_0x004d88e3:    {disp8} mov      edx, dword ptr [edi + 0x04]                   // 0x004d88e3    8b5704
                         dec              edx                                           // 0x004d88e6    4a
                         push             eax                                           // 0x004d88e7    50
                         {disp8} mov      dword ptr [edi + 0x04], edx                   // 0x004d88e8    895704
                         call             ??3@YAXPAX@Z                                  // 0x004d88eb    e8a8652d00
                         add              esp, 0x04                                     // 0x004d88f0    83c404
                         {disp8} jmp      _jmp_addr_0x004d88f7                          // 0x004d88f3    eb02
_jmp_addr_0x004d88f5:    mov.s            ebp, eax                                      // 0x004d88f5    8be8
_jmp_addr_0x004d88f7:    test             ebx, ebx                                      // 0x004d88f7    85db
                         mov.s            eax, ebx                                      // 0x004d88f9    8bc3
                         {disp8} jne      _jmp_addr_0x004d88cd                          // 0x004d88fb    75d0
_jmp_addr_0x004d88fd:    {disp8} mov      eax, dword ptr [esp + 0x20]                   // 0x004d88fd    8b442420
                         test             eax, eax                                      // 0x004d8901    85c0
                         {disp8} jne      _jmp_addr_0x004d88a2                          // 0x004d8903    759d
_jmp_addr_0x004d8905:    {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d8905    8b8e180d0200
                         {disp32} mov     eax, dword ptr [ecx + 0x000010a0]             // 0x004d890b    8b81a0100000
                         xor.s            edx, edx                                      // 0x004d8911    33d2
                         cmp.s            eax, edx                                      // 0x004d8913    3bc2
                         {disp8} je       _jmp_addr_0x004d8923                          // 0x004d8915    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8917    f6400a01
                         {disp8} je       _jmp_addr_0x004d8923                          // 0x004d891b    7406
                         {disp32} mov     dword ptr [ecx + 0x000010a0], edx             // 0x004d891d    8991a0100000
_jmp_addr_0x004d8923:    {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d8923    8b8e180d0200
                         {disp32} mov     eax, dword ptr [ecx + 0x000011c8]             // 0x004d8929    8b81c8110000
                         cmp.s            eax, edx                                      // 0x004d892f    3bc2
                         {disp8} je       _jmp_addr_0x004d893f                          // 0x004d8931    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8933    f6400a01
                         {disp8} je       _jmp_addr_0x004d893f                          // 0x004d8937    7406
                         {disp32} mov     dword ptr [ecx + 0x000011c8], edx             // 0x004d8939    8991c8110000
_jmp_addr_0x004d893f:    {disp32} mov     ecx, dword ptr [esi + 0x00020d18]             // 0x004d893f    8b8e180d0200
                         {disp32} mov     eax, dword ptr [ecx + 0x000011e8]             // 0x004d8945    8b81e8110000
                         cmp.s            eax, edx                                      // 0x004d894b    3bc2
                         {disp8} je       _jmp_addr_0x004d895b                          // 0x004d894d    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d894f    f6400a01
                         {disp8} je       _jmp_addr_0x004d895b                          // 0x004d8953    7406
                         {disp32} mov     dword ptr [ecx + 0x000011e8], edx             // 0x004d8955    8991e8110000
_jmp_addr_0x004d895b:    {disp32} mov     eax, dword ptr [esi + 0x00001be8]             // 0x004d895b    8b86e81b0000
                         cmp.s            eax, edx                                      // 0x004d8961    3bc2
                         {disp8} je       _jmp_addr_0x004d8971                          // 0x004d8963    740c
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8965    f6400a01
                         {disp8} je       _jmp_addr_0x004d8971                          // 0x004d8969    7406
                         {disp32} mov     dword ptr [esi + 0x00001be8], edx             // 0x004d896b    8996e81b0000
_jmp_addr_0x004d8971:    pop              edi                                           // 0x004d8971    5f
                         pop              esi                                           // 0x004d8972    5e
                         pop              ebp                                           // 0x004d8973    5d
                         pop              ebx                                           // 0x004d8974    5b
                         add              esp, 0x18                                     // 0x004d8975    83c418
                         ret                                                            // 0x004d8978    c3
                         nop                                                            // 0x004d8979    90
                         nop                                                            // 0x004d897a    90
                         nop                                                            // 0x004d897b    90
                         nop                                                            // 0x004d897c    90
                         nop                                                            // 0x004d897d    90
                         nop                                                            // 0x004d897e    90
                         nop                                                            // 0x004d897f    90
_jmp_addr_0x004d8980:    push             ecx                                           // 0x004d8980    51
                         push             ebx                                           // 0x004d8981    53
                         {disp8} mov      ebx, dword ptr [esp + 0x0c]                   // 0x004d8982    8b5c240c
                         push             edi                                           // 0x004d8986    57
                         {disp8} mov      edi, dword ptr [ebx + 0x14]                   // 0x004d8987    8b7b14
                         test             edi, edi                                      // 0x004d898a    85ff
                         {disp8} mov      dword ptr [esp + 0x08], ecx                   // 0x004d898c    894c2408
                         {disp8} je       _jmp_addr_0x004d89d8                          // 0x004d8990    7446
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x004d8992    8b4718
                         push             ebp                                           // 0x004d8995    55
                         xor.s            ebp, ebp                                      // 0x004d8996    33ed
                         test             eax, eax                                      // 0x004d8998    85c0
                         {disp8} je       _jmp_addr_0x004d89d0                          // 0x004d899a    7434
                         push             esi                                           // 0x004d899c    56
_jmp_addr_0x004d899d:    cmp              dword ptr [eax + 0x04], ebx                   // 0x004d899d    395804
                         mov              esi, dword ptr [eax]                          // 0x004d89a0    8b30
                         {disp8} jne      _jmp_addr_0x004d89c7                          // 0x004d89a2    7523
                         cmp              eax, dword ptr [edi + 0x18]                   // 0x004d89a4    3b4718
                         {disp8} jne      _jmp_addr_0x004d89ae                          // 0x004d89a7    7505
                         {disp8} mov      dword ptr [edi + 0x18], esi                   // 0x004d89a9    897718
                         {disp8} jmp      _jmp_addr_0x004d89b1                          // 0x004d89ac    eb03
_jmp_addr_0x004d89ae:    {disp8} mov      dword ptr [ebp + 0x00], esi                   // 0x004d89ae    897500
_jmp_addr_0x004d89b1:    {disp8} mov      edx, dword ptr [edi + 0x1c]                   // 0x004d89b1    8b571c
                         dec              edx                                           // 0x004d89b4    4a
                         push             eax                                           // 0x004d89b5    50
                         {disp8} mov      dword ptr [edi + 0x1c], edx                   // 0x004d89b6    89571c
                         call             ??3@YAXPAX@Z                                  // 0x004d89b9    e8da642d00
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x004d89be    8b4c2414
                         add              esp, 0x04                                     // 0x004d89c2    83c404
                         {disp8} jmp      _jmp_addr_0x004d89c9                          // 0x004d89c5    eb02
_jmp_addr_0x004d89c7:    mov.s            ebp, eax                                      // 0x004d89c7    8be8
_jmp_addr_0x004d89c9:    test             esi, esi                                      // 0x004d89c9    85f6
                         mov.s            eax, esi                                      // 0x004d89cb    8bc6
                         {disp8} jne      _jmp_addr_0x004d899d                          // 0x004d89cd    75ce
                         pop              esi                                           // 0x004d89cf    5e
_jmp_addr_0x004d89d0:    {disp8} mov      dword ptr [ebx + 0x14], 0x00000000            // 0x004d89d0    c7431400000000
                         pop              ebp                                           // 0x004d89d7    5d
_jmp_addr_0x004d89d8:    {disp8} mov      eax, dword ptr [ebx + 0x0c]                   // 0x004d89d8    8b430c
                         test             eax, eax                                      // 0x004d89db    85c0
                         {disp8} je       _jmp_addr_0x004d89e5                          // 0x004d89dd    7406
                         {disp8} mov      edx, dword ptr [ebx + 0x08]                   // 0x004d89df    8b5308
                         {disp8} mov      dword ptr [eax + 0x08], edx                   // 0x004d89e2    895008
_jmp_addr_0x004d89e5:    {disp8} mov      eax, dword ptr [ebx + 0x08]                   // 0x004d89e5    8b4308
                         test             eax, eax                                      // 0x004d89e8    85c0
                         {disp8} je       _jmp_addr_0x004d89f2                          // 0x004d89ea    7406
                         {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x004d89ec    8b530c
                         {disp8} mov      dword ptr [eax + 0x0c], edx                   // 0x004d89ef    89500c
_jmp_addr_0x004d89f2:    {disp8} mov      eax, dword ptr [ecx + 0x08]                   // 0x004d89f2    8b4108
                         cmp.s            ebx, eax                                      // 0x004d89f5    3bd8
                         {disp8} jne      _jmp_addr_0x004d89ff                          // 0x004d89f7    7506
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x004d89f9    8b4008
                         {disp8} mov      dword ptr [ecx + 0x08], eax                   // 0x004d89fc    894108
_jmp_addr_0x004d89ff:    cmp              ebx, dword ptr [ecx + 0x0c]                   // 0x004d89ff    3b590c
                         {disp8} jne      _jmp_addr_0x004d8a0a                          // 0x004d8a02    7506
                         {disp8} mov      edx, dword ptr [ebx + 0x0c]                   // 0x004d8a04    8b530c
                         {disp8} mov      dword ptr [ecx + 0x0c], edx                   // 0x004d8a07    89510c
_jmp_addr_0x004d8a0a:    {disp8} mov      eax, dword ptr [ecx + 0x10]                   // 0x004d8a0a    8b4110
                         dec              eax                                           // 0x004d8a0d    48
                         pop              edi                                           // 0x004d8a0e    5f
                         {disp8} mov      dword ptr [ecx + 0x10], eax                   // 0x004d8a0f    894110
                         pop              ebx                                           // 0x004d8a12    5b
                         pop              ecx                                           // 0x004d8a13    59
                         ret              0x0004                                        // 0x004d8a14    c20400
                         nop                                                            // 0x004d8a17    90
                         nop                                                            // 0x004d8a18    90
                         nop                                                            // 0x004d8a19    90
                         nop                                                            // 0x004d8a1a    90
                         nop                                                            // 0x004d8a1b    90
                         nop                                                            // 0x004d8a1c    90
                         nop                                                            // 0x004d8a1d    90
                         nop                                                            // 0x004d8a1e    90
                         nop                                                            // 0x004d8a1f    90
_jmp_addr_0x004d8a20:    push             ebx                                           // 0x004d8a20    53
                         push             ebp                                           // 0x004d8a21    55
                         push             esi                                           // 0x004d8a22    56
                         mov.s            ebx, ecx                                      // 0x004d8a23    8bd9
                         push             edi                                           // 0x004d8a25    57
                         mov              dword ptr [ebx], 0x008cf8ec                   // 0x004d8a26    c703ecf88c00
                         {disp8} lea      edi, dword ptr [ebx + 0x40]                   // 0x004d8a2c    8d7b40
                         mov              ebp, 0x00000018                               // 0x004d8a2f    bd18000000
_jmp_addr_0x004d8a34:    mov              ecx, dword ptr [edi]                          // 0x004d8a34    8b0f
                         test             ecx, ecx                                      // 0x004d8a36    85c9
                         {disp8} je       _jmp_addr_0x004d8a4e                          // 0x004d8a38    7414
_jmp_addr_0x004d8a3a:    test             ecx, ecx                                      // 0x004d8a3a    85c9
                         {disp8} mov      esi, dword ptr [ecx + 0x10]                   // 0x004d8a3c    8b7110
                         {disp8} je       _jmp_addr_0x004d8a48                          // 0x004d8a3f    7407
                         mov              eax, dword ptr [ecx]                          // 0x004d8a41    8b01
                         push             0x1                                           // 0x004d8a43    6a01
                         call             dword ptr [eax + 4]                           // 0x004d8a45    ff5004
_jmp_addr_0x004d8a48:    test             esi, esi                                      // 0x004d8a48    85f6
                         mov.s            ecx, esi                                      // 0x004d8a4a    8bce
                         {disp8} jne      _jmp_addr_0x004d8a3a                          // 0x004d8a4c    75ec
_jmp_addr_0x004d8a4e:    add              edi, 0x18                                     // 0x004d8a4e    83c718
                         dec              ebp                                           // 0x004d8a51    4d
                         {disp8} jne      _jmp_addr_0x004d8a34                          // 0x004d8a52    75e0
                         {disp32} lea     esi, dword ptr [ebx + 0x00000270]             // 0x004d8a54    8db370020000
                         mov              edi, 0x00000018                               // 0x004d8a5a    bf18000000
_jmp_addr_0x004d8a5f:    sub              esi, 0x18                                     // 0x004d8a5f    83ee18
                         mov.s            ecx, esi                                      // 0x004d8a62    8bce
                         call             _jmp_addr_0x00436960                          // 0x004d8a64    e8f7def5ff
                         dec              edi                                           // 0x004d8a69    4f
                         {disp8} jne      _jmp_addr_0x004d8a5f                          // 0x004d8a6a    75f3
                         {disp8} lea      esi, dword ptr [ebx + 0x30]                   // 0x004d8a6c    8d7330
                         mov              edi, 0x00000002                               // 0x004d8a6f    bf02000000
_jmp_addr_0x004d8a74:    sub              esi, 0x14                                     // 0x004d8a74    83ee14
                         mov.s            ecx, esi                                      // 0x004d8a77    8bce
                         call             _jmp_addr_0x00436960                          // 0x004d8a79    e8e2def5ff
                         dec              edi                                           // 0x004d8a7e    4f
                         {disp8} jne      _jmp_addr_0x004d8a74                          // 0x004d8a7f    75f3
                         mov.s            ecx, ebx                                      // 0x004d8a81    8bcb
                         call             _jmp_addr_0x00436960                          // 0x004d8a83    e8d8def5ff
                         pop              edi                                           // 0x004d8a88    5f
                         pop              esi                                           // 0x004d8a89    5e
                         pop              ebp                                           // 0x004d8a8a    5d
                         pop              ebx                                           // 0x004d8a8b    5b
                         ret                                                            // 0x004d8a8c    c3
                         nop                                                            // 0x004d8a8d    90
                         nop                                                            // 0x004d8a8e    90
                         nop                                                            // 0x004d8a8f    90
_jmp_addr_0x004d8a90:    {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x004d8a90    8b542404
                         mov              eax, dword ptr [ecx]                          // 0x004d8a94    8b01
                         push             edx                                           // 0x004d8a96    52
                         call             dword ptr [eax + 0x20]                        // 0x004d8a97    ff5020
                         mov              edx, dword ptr [eax]                          // 0x004d8a9a    8b10
                         mov.s            ecx, eax                                      // 0x004d8a9c    8bc8
                         call             dword ptr [edx + 0x1c]                        // 0x004d8a9e    ff521c
                         ret              0x0004                                        // 0x004d8aa1    c20400
                         nop                                                            // 0x004d8aa4    90
                         nop                                                            // 0x004d8aa5    90
                         nop                                                            // 0x004d8aa6    90
                         nop                                                            // 0x004d8aa7    90
                         nop                                                            // 0x004d8aa8    90
                         nop                                                            // 0x004d8aa9    90
                         nop                                                            // 0x004d8aaa    90
                         nop                                                            // 0x004d8aab    90
                         nop                                                            // 0x004d8aac    90
                         nop                                                            // 0x004d8aad    90
                         nop                                                            // 0x004d8aae    90
                         nop                                                            // 0x004d8aaf    90
_jmp_addr_0x004d8ab0:    {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x004d8ab0    8b542404
                         mov              eax, dword ptr [ecx]                          // 0x004d8ab4    8b01
                         push             edx                                           // 0x004d8ab6    52
                         call             dword ptr [eax + 0x20]                        // 0x004d8ab7    ff5020
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x004d8aba    8b4c2408
                         mov              edx, dword ptr [eax]                          // 0x004d8abe    8b10
                         push             ecx                                           // 0x004d8ac0    51
                         mov.s            ecx, eax                                      // 0x004d8ac1    8bc8
                         call             dword ptr [edx + 0x24]                        // 0x004d8ac3    ff5224
                         ret              0x0008                                        // 0x004d8ac6    c20800
                         nop                                                            // 0x004d8ac9    90
                         nop                                                            // 0x004d8aca    90
                         nop                                                            // 0x004d8acb    90
                         nop                                                            // 0x004d8acc    90
                         nop                                                            // 0x004d8acd    90
                         nop                                                            // 0x004d8ace    90
                         nop                                                            // 0x004d8acf    90
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x004d8ad0    8b542404
                         mov              eax, dword ptr [ecx]                          // 0x004d8ad4    8b01
                         push             edx                                           // 0x004d8ad6    52
                         call             dword ptr [eax + 0x20]                        // 0x004d8ad7    ff5020
                         mov              edx, dword ptr [eax]                          // 0x004d8ada    8b10
                         mov.s            ecx, eax                                      // 0x004d8adc    8bc8
                         call             dword ptr [edx + 0x20]                        // 0x004d8ade    ff5220
                         ret              0x0004                                        // 0x004d8ae1    c20400
                         nop                                                            // 0x004d8ae4    90
                         nop                                                            // 0x004d8ae5    90
                         nop                                                            // 0x004d8ae6    90
                         nop                                                            // 0x004d8ae7    90
                         nop                                                            // 0x004d8ae8    90
                         nop                                                            // 0x004d8ae9    90
                         nop                                                            // 0x004d8aea    90
                         nop                                                            // 0x004d8aeb    90
                         nop                                                            // 0x004d8aec    90
                         nop                                                            // 0x004d8aed    90
                         nop                                                            // 0x004d8aee    90
                         nop                                                            // 0x004d8aef    90
_jmp_addr_0x004d8af0:    push             ebx                                           // 0x004d8af0    53
                         push             ebp                                           // 0x004d8af1    55
                         {disp8} mov      ebp, dword ptr [esp + 0x0c]                   // 0x004d8af2    8b6c240c
                         push             esi                                           // 0x004d8af6    56
                         push             edi                                           // 0x004d8af7    57
                         mov.s            edi, ecx                                      // 0x004d8af8    8bf9
                         {disp8} mov      esi, dword ptr [edi + 0x10]                   // 0x004d8afa    8b7710
                         xor.s            ebx, ebx                                      // 0x004d8afd    33db
                         test             esi, esi                                      // 0x004d8aff    85f6
                         {disp8} je       _jmp_addr_0x004d8b16                          // 0x004d8b01    7413
_jmp_addr_0x004d8b03:    mov              eax, dword ptr [esi]                          // 0x004d8b03    8b06
                         mov.s            ecx, esi                                      // 0x004d8b05    8bce
                         call             dword ptr [eax + 0x2c]                        // 0x004d8b07    ff502c
                         cmp.s            eax, ebp                                      // 0x004d8b0a    3bc5
                         {disp8} jne      _jmp_addr_0x004d8b0f                          // 0x004d8b0c    7501
                         inc              ebx                                           // 0x004d8b0e    43
_jmp_addr_0x004d8b0f:    {disp8} mov      esi, dword ptr [esi + 0x08]                   // 0x004d8b0f    8b7608
                         test             esi, esi                                      // 0x004d8b12    85f6
                         {disp8} jne      _jmp_addr_0x004d8b03                          // 0x004d8b14    75ed
_jmp_addr_0x004d8b16:    {disp8} mov      esi, dword ptr [edi + 0x24]                   // 0x004d8b16    8b7724
                         test             esi, esi                                      // 0x004d8b19    85f6
                         {disp8} je       _jmp_addr_0x004d8b30                          // 0x004d8b1b    7413
_jmp_addr_0x004d8b1d:    mov              edx, dword ptr [esi]                          // 0x004d8b1d    8b16
                         mov.s            ecx, esi                                      // 0x004d8b1f    8bce
                         call             dword ptr [edx + 0x2c]                        // 0x004d8b21    ff522c
                         cmp.s            eax, ebp                                      // 0x004d8b24    3bc5
                         {disp8} jne      _jmp_addr_0x004d8b29                          // 0x004d8b26    7501
                         inc              ebx                                           // 0x004d8b28    43
_jmp_addr_0x004d8b29:    {disp8} mov      esi, dword ptr [esi + 0x08]                   // 0x004d8b29    8b7608
                         test             esi, esi                                      // 0x004d8b2c    85f6
                         {disp8} jne      _jmp_addr_0x004d8b1d                          // 0x004d8b2e    75ed
_jmp_addr_0x004d8b30:    pop              edi                                           // 0x004d8b30    5f
                         pop              esi                                           // 0x004d8b31    5e
                         pop              ebp                                           // 0x004d8b32    5d
                         mov.s            eax, ebx                                      // 0x004d8b33    8bc3
                         pop              ebx                                           // 0x004d8b35    5b
                         ret              0x0004                                        // 0x004d8b36    c20400
                         nop                                                            // 0x004d8b39    90
                         nop                                                            // 0x004d8b3a    90
                         nop                                                            // 0x004d8b3b    90
                         nop                                                            // 0x004d8b3c    90
                         nop                                                            // 0x004d8b3d    90
                         nop                                                            // 0x004d8b3e    90
                         nop                                                            // 0x004d8b3f    90
                         xor.s            eax, eax                                      // 0x004d8b40    33c0
                         ret                                                            // 0x004d8b42    c3
                         nop                                                            // 0x004d8b43    90
                         nop                                                            // 0x004d8b44    90
                         nop                                                            // 0x004d8b45    90
                         nop                                                            // 0x004d8b46    90
                         nop                                                            // 0x004d8b47    90
                         nop                                                            // 0x004d8b48    90
                         nop                                                            // 0x004d8b49    90
                         nop                                                            // 0x004d8b4a    90
                         nop                                                            // 0x004d8b4b    90
                         nop                                                            // 0x004d8b4c    90
                         nop                                                            // 0x004d8b4d    90
                         nop                                                            // 0x004d8b4e    90
                         nop                                                            // 0x004d8b4f    90
_jmp_addr_0x004d8b50:    push             ebx                                           // 0x004d8b50    53
                         push             ebp                                           // 0x004d8b51    55
                         push             esi                                           // 0x004d8b52    56
                         push             edi                                           // 0x004d8b53    57
                         mov.s            edi, ecx                                      // 0x004d8b54    8bf9
                         mov              dword ptr [edi], 0x008cfe10                   // 0x004d8b56    c70710fe8c00
_jmp_addr_0x004d8b5c:    {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x004d8b5c    8b4718
                         test             eax, eax                                      // 0x004d8b5f    85c0
                         {disp8} je       _jmp_addr_0x004d8b9b                          // 0x004d8b61    7438
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                   // 0x004d8b63    8b6804
                         xor.s            ebx, ebx                                      // 0x004d8b66    33db
                         test             eax, eax                                      // 0x004d8b68    85c0
                         {disp8} je       _jmp_addr_0x004d8b5c                          // 0x004d8b6a    74f0
_jmp_addr_0x004d8b6c:    cmp              dword ptr [eax + 0x04], ebp                   // 0x004d8b6c    396804
                         mov              esi, dword ptr [eax]                          // 0x004d8b6f    8b30
                         {disp8} jne      _jmp_addr_0x004d8b91                          // 0x004d8b71    751e
                         cmp              eax, dword ptr [edi + 0x18]                   // 0x004d8b73    3b4718
                         {disp8} jne      _jmp_addr_0x004d8b7d                          // 0x004d8b76    7505
                         {disp8} mov      dword ptr [edi + 0x18], esi                   // 0x004d8b78    897718
                         {disp8} jmp      _jmp_addr_0x004d8b7f                          // 0x004d8b7b    eb02
_jmp_addr_0x004d8b7d:    mov              dword ptr [ebx], esi                          // 0x004d8b7d    8933
_jmp_addr_0x004d8b7f:    {disp8} mov      edx, dword ptr [edi + 0x1c]                   // 0x004d8b7f    8b571c
                         dec              edx                                           // 0x004d8b82    4a
                         push             eax                                           // 0x004d8b83    50
                         {disp8} mov      dword ptr [edi + 0x1c], edx                   // 0x004d8b84    89571c
                         call             ??3@YAXPAX@Z                                  // 0x004d8b87    e80c632d00
                         add              esp, 0x04                                     // 0x004d8b8c    83c404
                         {disp8} jmp      _jmp_addr_0x004d8b93                          // 0x004d8b8f    eb02
_jmp_addr_0x004d8b91:    mov.s            ebx, eax                                      // 0x004d8b91    8bd8
_jmp_addr_0x004d8b93:    test             esi, esi                                      // 0x004d8b93    85f6
                         mov.s            eax, esi                                      // 0x004d8b95    8bc6
                         {disp8} jne      _jmp_addr_0x004d8b6c                          // 0x004d8b97    75d3
                         {disp8} jmp      _jmp_addr_0x004d8b5c                          // 0x004d8b99    ebc1
_jmp_addr_0x004d8b9b:    mov.s            ecx, edi                                      // 0x004d8b9b    8bcf
                         call             _jmp_addr_0x00436960                          // 0x004d8b9d    e8beddf5ff
                         pop              edi                                           // 0x004d8ba2    5f
                         pop              esi                                           // 0x004d8ba3    5e
                         pop              ebp                                           // 0x004d8ba4    5d
                         pop              ebx                                           // 0x004d8ba5    5b
                         ret                                                            // 0x004d8ba6    c3
                         nop                                                            // 0x004d8ba7    90
                         nop                                                            // 0x004d8ba8    90
                         nop                                                            // 0x004d8ba9    90
                         nop                                                            // 0x004d8baa    90
                         nop                                                            // 0x004d8bab    90
                         nop                                                            // 0x004d8bac    90
                         nop                                                            // 0x004d8bad    90
                         nop                                                            // 0x004d8bae    90
                         nop                                                            // 0x004d8baf    90
_jmp_addr_0x004d8bb0:    push             ebx                                           // 0x004d8bb0    53
                         push             ebp                                           // 0x004d8bb1    55
                         push             esi                                           // 0x004d8bb2    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x004d8bb3    8b742410
                         test             esi, esi                                      // 0x004d8bb7    85f6
                         push             edi                                           // 0x004d8bb9    57
                         mov.s            edi, ecx                                      // 0x004d8bba    8bf9
                         {disp8} jne      _jmp_addr_0x004d8bc7                          // 0x004d8bbc    7509
                         pop              edi                                           // 0x004d8bbe    5f
                         pop              esi                                           // 0x004d8bbf    5e
                         pop              ebp                                           // 0x004d8bc0    5d
                         xor.s            eax, eax                                      // 0x004d8bc1    33c0
                         pop              ebx                                           // 0x004d8bc3    5b
                         ret              0x0004                                        // 0x004d8bc4    c20400
_jmp_addr_0x004d8bc7:    mov              eax, dword ptr [esi]                          // 0x004d8bc7    8b06
                         mov.s            ecx, esi                                      // 0x004d8bc9    8bce
                         xor.s            ebp, ebp                                      // 0x004d8bcb    33ed
                         call             dword ptr [eax + 0x2c]                        // 0x004d8bcd    ff502c
                         add              eax, -0x03                                    // 0x004d8bd0    83c0fd
                         cmp              eax, 0x14                                     // 0x004d8bd3    83f814
                         {disp32} ja      _jmp_addr_0x004d8d21                          // 0x004d8bd6    0f8745010000
                         xor.s            ecx, ecx                                      // 0x004d8bdc    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x004d8dd0]               // 0x004d8bde    8a88d08d4d00
                         jmp              dword ptr [ecx*4 + 0x4d8db0]                  // 0x004d8be4    ff248db08d4d00
                         {disp8} mov      ecx, dword ptr [esi + 0x30]                   // 0x004d8beb    8b4e30
                         mov              edx, dword ptr [ecx]                          // 0x004d8bee    8b11
                         call             dword ptr [edx + 0x48]                        // 0x004d8bf0    ff5248
                         test             eax, eax                                      // 0x004d8bf3    85c0
                         {disp32} je      _jmp_addr_0x004d8d21                          // 0x004d8bf5    0f8426010000
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8bfb    f6400a01
                         {disp32} jne     _jmp_addr_0x004d8d21                          // 0x004d8bff    0f851c010000
                         {disp8} mov      ecx, dword ptr [esi + 0x30]                   // 0x004d8c05    8b4e30
                         mov              eax, dword ptr [ecx]                          // 0x004d8c08    8b01
                         call             dword ptr [eax + 0x48]                        // 0x004d8c0a    ff5048
                         {disp32} jmp     _jmp_addr_0x004d8d12                          // 0x004d8c0d    e900010000
                         {disp8} mov      ecx, dword ptr [esi + 0x30]                   // 0x004d8c12    8b4e30
                         mov              edx, dword ptr [ecx]                          // 0x004d8c15    8b11
                         call             dword ptr [edx + 0x114]                       // 0x004d8c17    ff9214010000
                         test             eax, eax                                      // 0x004d8c1d    85c0
                         {disp32} je      _jmp_addr_0x004d8d21                          // 0x004d8c1f    0f84fc000000
                         {disp8} mov      ecx, dword ptr [esi + 0x30]                   // 0x004d8c25    8b4e30
                         mov              eax, dword ptr [ecx]                          // 0x004d8c28    8b01
                         push             ecx                                           // 0x004d8c2a    51
                         call             dword ptr [eax + 0x114]                       // 0x004d8c2b    ff9014010000
                         mov.s            ecx, eax                                      // 0x004d8c31    8bc8
                         call             _jmp_addr_0x004637e0                          // 0x004d8c33    e8a8abf8ff
                         test             eax, eax                                      // 0x004d8c38    85c0
                         {disp32} je      _jmp_addr_0x004d8d21                          // 0x004d8c3a    0f84e1000000
                         {disp8} mov      ecx, dword ptr [esi + 0x30]                   // 0x004d8c40    8b4e30
                         mov              edx, dword ptr [ecx]                          // 0x004d8c43    8b11
                         call             dword ptr [edx + 0x114]                       // 0x004d8c45    ff9214010000
                         {disp32} jmp     _jmp_addr_0x004d8d12                          // 0x004d8c4b    e9c2000000
                         {disp8} mov      eax, dword ptr [esi + 0x30]                   // 0x004d8c50    8b4630
                         push             0x0                                           // 0x004d8c53    6a00
                         push             0x009d96e0                                    // 0x004d8c55    68e0969d00
                         push             0x009c7f30                                    // 0x004d8c5a    68307f9c00
                         push             0x0                                           // 0x004d8c5f    6a00
                         push             eax                                           // 0x004d8c61    50
                         call             ___RTDynamicCast                              // 0x004d8c62    e8b2cd2e00
                         mov.s            ebx, eax                                      // 0x004d8c67    8bd8
                         mov              eax, dword ptr [ebx]                          // 0x004d8c69    8b03
                         add              esp, 0x14                                     // 0x004d8c6b    83c414
                         mov.s            ecx, ebx                                      // 0x004d8c6e    8bcb
                         call             dword ptr [eax + 0x86c]                       // 0x004d8c70    ff906c080000
                         test             eax, eax                                      // 0x004d8c76    85c0
                         {disp8} jne      _jmp_addr_0x004d8c94                          // 0x004d8c78    751a
                         push             eax                                           // 0x004d8c7a    50
                         push             0x447a0000                                    // 0x004d8c7b    6800007a44
                         add              ebx, 0x14                                     // 0x004d8c80    83c314
                         push             ebx                                           // 0x004d8c83    53
                         call             _jmp_addr_0x0053a1a0                          // 0x004d8c84    e817150600
                         add              esp, 0x0c                                     // 0x004d8c89    83c40c
                         test             eax, eax                                      // 0x004d8c8c    85c0
                         {disp32} je      _jmp_addr_0x004d8d21                          // 0x004d8c8e    0f848d000000
_jmp_addr_0x004d8c94:    test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8c94    f6400a01
                         {disp32} jne     _jmp_addr_0x004d8d21                          // 0x004d8c98    0f8583000000
                         {disp8} jmp      _jmp_addr_0x004d8d12                          // 0x004d8c9e    eb72
                         pop              edi                                           // 0x004d8ca0    5f
                         mov.s            eax, esi                                      // 0x004d8ca1    8bc6
                         pop              esi                                           // 0x004d8ca3    5e
                         pop              ebp                                           // 0x004d8ca4    5d
                         pop              ebx                                           // 0x004d8ca5    5b
                         ret              0x0004                                        // 0x004d8ca6    c20400
                         {disp8} mov      eax, dword ptr [esi + 0x30]                   // 0x004d8ca9    8b4630
                         push             0x0                                           // 0x004d8cac    6a00
                         push             0x009c8e00                                    // 0x004d8cae    68008e9c00
                         push             0x009c7f30                                    // 0x004d8cb3    68307f9c00
                         push             0x0                                           // 0x004d8cb8    6a00
                         push             eax                                           // 0x004d8cba    50
                         call             ___RTDynamicCast                              // 0x004d8cbb    e859cd2e00
                         {disp32} mov     eax, dword ptr [eax + 0x000000b8]             // 0x004d8cc0    8b80b8000000
                         add              esp, 0x14                                     // 0x004d8cc6    83c414
                         test             eax, eax                                      // 0x004d8cc9    85c0
                         {disp8} je       _jmp_addr_0x004d8d21                          // 0x004d8ccb    7454
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8ccd    f6400a01
                         {disp8} jne      _jmp_addr_0x004d8d21                          // 0x004d8cd1    754e
                         {disp8} jmp      _jmp_addr_0x004d8d12                          // 0x004d8cd3    eb3d
                         {disp8} mov      eax, dword ptr [esi + 0x30]                   // 0x004d8cd5    8b4630
                         push             0x0                                           // 0x004d8cd8    6a00
                         push             0x009dd560                                    // 0x004d8cda    6860d59d00
                         push             0x009c7f30                                    // 0x004d8cdf    68307f9c00
                         push             0x0                                           // 0x004d8ce4    6a00
                         push             eax                                           // 0x004d8ce6    50
                         call             ___RTDynamicCast                              // 0x004d8ce7    e82dcd2e00
                         add              esp, 0x14                                     // 0x004d8cec    83c414
                         test             eax, eax                                      // 0x004d8cef    85c0
                         {disp8} je       _jmp_addr_0x004d8d21                          // 0x004d8cf1    742e
                         mov              edx, dword ptr [eax]                          // 0x004d8cf3    8b10
                         mov.s            ecx, eax                                      // 0x004d8cf5    8bc8
                         call             dword ptr [edx + 0x48]                        // 0x004d8cf7    ff5248
                         test             eax, eax                                      // 0x004d8cfa    85c0
                         {disp8} je       _jmp_addr_0x004d8d21                          // 0x004d8cfc    7423
                         test             byte ptr [eax + 0x0a], 0x01                   // 0x004d8cfe    f6400a01
                         {disp8} jne      _jmp_addr_0x004d8d21                          // 0x004d8d02    751d
                         {disp8} jmp      _jmp_addr_0x004d8d12                          // 0x004d8d04    eb0c
                         {disp8} mov      ecx, dword ptr [esi + 0x30]                   // 0x004d8d06    8b4e30
                         mov              eax, dword ptr [ecx]                          // 0x004d8d09    8b01
                         call             dword ptr [eax + 0x48]                        // 0x004d8d0b    ff5048
                         test             eax, eax                                      // 0x004d8d0e    85c0
                         {disp8} je       _jmp_addr_0x004d8d21                          // 0x004d8d10    740f
_jmp_addr_0x004d8d12:    {disp32} mov     ecx, dword ptr [edi + 0x00000164]             // 0x004d8d12    8b8f64010000
                         push             eax                                           // 0x004d8d18    50
                         push             edi                                           // 0x004d8d19    57
                         call             ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004d8d1a    e8b1eeffff
                         mov.s            ebp, eax                                      // 0x004d8d1f    8be8
_jmp_addr_0x004d8d21:    {disp8} mov      ebx, dword ptr [esi + 0x14]                   // 0x004d8d21    8b5e14
                         test             ebx, ebx                                      // 0x004d8d24    85db
                         {disp8} je       _jmp_addr_0x004d8d6a                          // 0x004d8d26    7442
                         {disp8} mov      eax, dword ptr [ebx + 0x18]                   // 0x004d8d28    8b4318
                         test             eax, eax                                      // 0x004d8d2b    85c0
                         {disp8} mov      dword ptr [esp + 0x14], 0x00000000            // 0x004d8d2d    c744241400000000
                         {disp8} je       _jmp_addr_0x004d8d6a                          // 0x004d8d35    7433
_jmp_addr_0x004d8d37:    cmp              dword ptr [eax + 0x04], esi                   // 0x004d8d37    397004
                         mov              edi, dword ptr [eax]                          // 0x004d8d3a    8b38
                         {disp8} jne      _jmp_addr_0x004d8d60                          // 0x004d8d3c    7522
                         cmp              eax, dword ptr [ebx + 0x18]                   // 0x004d8d3e    3b4318
                         {disp8} jne      _jmp_addr_0x004d8d48                          // 0x004d8d41    7505
                         {disp8} mov      dword ptr [ebx + 0x18], edi                   // 0x004d8d43    897b18
                         {disp8} jmp      _jmp_addr_0x004d8d4e                          // 0x004d8d46    eb06
_jmp_addr_0x004d8d48:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x004d8d48    8b4c2414
                         mov              dword ptr [ecx], edi                          // 0x004d8d4c    8939
_jmp_addr_0x004d8d4e:    {disp8} mov      edx, dword ptr [ebx + 0x1c]                   // 0x004d8d4e    8b531c
                         dec              edx                                           // 0x004d8d51    4a
                         push             eax                                           // 0x004d8d52    50
                         {disp8} mov      dword ptr [ebx + 0x1c], edx                   // 0x004d8d53    89531c
                         call             ??3@YAXPAX@Z                                  // 0x004d8d56    e83d612d00
                         add              esp, 0x04                                     // 0x004d8d5b    83c404
                         {disp8} jmp      _jmp_addr_0x004d8d64                          // 0x004d8d5e    eb04
_jmp_addr_0x004d8d60:    {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x004d8d60    89442414
_jmp_addr_0x004d8d64:    test             edi, edi                                      // 0x004d8d64    85ff
                         mov.s            eax, edi                                      // 0x004d8d66    8bc7
                         {disp8} jne      _jmp_addr_0x004d8d37                          // 0x004d8d68    75cd
_jmp_addr_0x004d8d6a:    test             ebp, ebp                                      // 0x004d8d6a    85ed
                         {disp8} mov      dword ptr [esi + 0x14], ebp                   // 0x004d8d6c    896e14
                         {disp8} je       _jmp_addr_0x004d8da5                          // 0x004d8d6f    7434
                         {disp8} mov      eax, dword ptr [ebp + 0x18]                   // 0x004d8d71    8b4518
                         test             eax, eax                                      // 0x004d8d74    85c0
                         {disp8} je       _jmp_addr_0x004d8d89                          // 0x004d8d76    7411
_jmp_addr_0x004d8d78:    cmp              dword ptr [eax + 0x04], esi                   // 0x004d8d78    397004
                         {disp8} je       _jmp_addr_0x004d8d85                          // 0x004d8d7b    7408
                         mov              eax, dword ptr [eax]                          // 0x004d8d7d    8b00
                         test             eax, eax                                      // 0x004d8d7f    85c0
                         {disp8} jne      _jmp_addr_0x004d8d78                          // 0x004d8d81    75f5
                         {disp8} jmp      _jmp_addr_0x004d8d89                          // 0x004d8d83    eb04
_jmp_addr_0x004d8d85:    test             eax, eax                                      // 0x004d8d85    85c0
                         {disp8} jne      _jmp_addr_0x004d8da5                          // 0x004d8d87    751c
_jmp_addr_0x004d8d89:    push             0x8                                           // 0x004d8d89    6a08
                         call             ??2@YAPAXI@Z                                  // 0x004d8d8b    e85ed72e00
                         add              esp, 0x04                                     // 0x004d8d90    83c404
                         test             eax, eax                                      // 0x004d8d93    85c0
                         {disp8} je       _jmp_addr_0x004d8da5                          // 0x004d8d95    740e
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x004d8d97    8b4d18
                         {disp8} mov      dword ptr [eax + 0x04], esi                   // 0x004d8d9a    897004
                         mov              dword ptr [eax], ecx                          // 0x004d8d9d    8908
                         {disp8} mov      dword ptr [ebp + 0x18], eax                   // 0x004d8d9f    894518
                         {disp8} inc      dword ptr [ebp + 0x1c]                        // 0x004d8da2    ff451c
_jmp_addr_0x004d8da5:    pop              edi                                           // 0x004d8da5    5f
                         pop              esi                                           // 0x004d8da6    5e
                         mov.s            eax, ebp                                      // 0x004d8da7    8bc5
                         pop              ebp                                           // 0x004d8da9    5d
                         pop              ebx                                           // 0x004d8daa    5b
                         ret              0x0004                                        // 0x004d8dab    c20400

// Snippet: db, [0x004d8dae, 0x004d8db0)
.byte 0x8b, 0xff                  // 0x004d8dae

// Snippet: jmptbl, [0x004d8db0, 0x004d8dd0)
.byte 0xeb, 0x8b, 0x4d, 0x00      // 0x004d8db0
.byte 0x12, 0x8c, 0x4d, 0x00      // 0x004d8db4
.byte 0x50, 0x8c, 0x4d, 0x00      // 0x004d8db8
.byte 0xa9, 0x8c, 0x4d, 0x00      // 0x004d8dbc
.byte 0xa0, 0x8c, 0x4d, 0x00      // 0x004d8dc0
.byte 0x06, 0x8d, 0x4d, 0x00      // 0x004d8dc4
.byte 0xd5, 0x8c, 0x4d, 0x00      // 0x004d8dc8
.byte 0x21, 0x8d, 0x4d, 0x00      // 0x004d8dcc

// Snippet: ijmptbl, [0x004d8dd0, 0x004d8de5)
.byte 0x00, 0x01, 0x02, 0x00      // 0x004d8dd0
.byte 0x03, 0x04, 0x07, 0x07      // 0x004d8dd4
.byte 0x05, 0x07, 0x07, 0x07      // 0x004d8dd8
.byte 0x07, 0x07, 0x07, 0x07      // 0x004d8ddc
.byte 0x07, 0x07, 0x07, 0x07      // 0x004d8de0
.byte 0x06                        // 0x004d8de4

// Snippet: db, [0x004d8de5, 0x004d8df0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004d8de5
.byte 0x90, 0x90, 0x90, 0x90      // 0x004d8de9
.byte 0x90, 0x90, 0x90            // 0x004d8ded

