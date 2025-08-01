.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl ?FUN_004056f0@PlannedAbode@@QAE_NH@Z
.globl ?Create@Windmill@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z
.globl _jmp_addr_0x00405980
.globl _jmp_addr_0x004059d0
.globl _jmp_addr_0x004059f0
.globl _jmp_addr_0x00405b70
.globl _jmp_addr_0x00405fa0
.globl _jmp_addr_0x00405fb0
.globl _jmp_addr_0x00405fc0
.globl ?Create@PlannedAbode@@SAPAV1@PAVAbode@@@Z
.globl ?Init@PlannedAbode@@QAEXPAVTown@@@Z
.globl _GetInfoFromText__10GAbodeInfoFPc
.globl _Find__10GAbodeInfoF10TRIBE_TYPE12ABODE_NUMBER
.globl ?CreateNoInit@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z
.globl ??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z
.globl ?Create@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z
.globl ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ
.globl ??_GPlannedAbode@@QAEXXZ
.globl ?ToBeDeleted@PlannedAbode@@UAEXH@Z
.globl ?GetTown@PlannedAbode@@QAEPAVTown@@XZ
.globl ?GetDebugText@PlannedAbode@@QAEPADXZ
.globl ?Load@PlannedAbode@@QAEIAAVGGameOSFile@@@Z
.globl ?Save@PlannedAbode@@QAEIAAVGGameOSFile@@@Z
.globl ?GetSaveType@PlannedAbode@@UAEIXZ
.globl ?CreatePlanned@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z
.globl ?CreatePlannedNoFixedCheck@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z
.globl ?GetTribeType@Abode@@QAE?AW4TRIBE_TYPE@@XZ
.globl ?GetPlayer@Abode@@UAEPAVGPlayer@@XZ
.globl ?ReduceLife@Abode@@UAEXMPAVGPlayer@@@Z
.globl ?IncreaseLife@Abode@@UAEXM@Z
.globl ?SaveObject@Abode@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z
.globl ?IsCivic@Abode@@UAE_NXZ
.globl ?GetTribe@Abode@@UAEPAUGTribeInfo@@XZ

?Create@Windmill@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z:
                         push               esi                                           // 0x00405890    56
                         push               0x000005c4                                    // 0x00405891    68c4050000
                         push               0x009c7fbc                                    // 0x00405896    68bc7f9c00
                         push               0x000000c4                                    // 0x0040589b    68c4000000
                         call               ___nw__4BaseFUl                               // 0x004058a0    e84b0e0300
                         mov.s              esi, eax                                      // 0x004058a5    8bf0
                         add                esp, 0x0c                                     // 0x004058a7    83c40c
                         test               esi, esi                                      // 0x004058aa    85f6
                         {disp8} je         _jmp_addr_0x004058ed                          // 0x004058ac    743f
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x004058ae    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004058b2    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x004058b6    8b542418
                         push               edi                                           // 0x004058ba    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004058bb    8b7c240c
                         push               eax                                           // 0x004058bf    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x004058c0    8b44241c
                         push               ecx                                           // 0x004058c4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004058c5    8b4c241c
                         push               edx                                           // 0x004058c9    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x004058ca    8b54241c
                         push               eax                                           // 0x004058ce    50
                         push               ecx                                           // 0x004058cf    51
                         push               edx                                           // 0x004058d0    52
                         push               edi                                           // 0x004058d1    57
                         mov.s              ecx, esi                                      // 0x004058d2    8bce
                         call               ??0Abode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z                          // 0x004058d4    e877baffff
                         push               edi                                           // 0x004058d9    57
                         mov.s              ecx, esi                                      // 0x004058da    8bce
                         mov                dword ptr [esi], 0x008aa8e4                   // 0x004058dc    c706e4a88a00
                         call               dword ptr [rdata_bytes + 0x1f3c]              // 0x004058e2    ff153caf8a00
                         pop                edi                                           // 0x004058e8    5f
                         mov.s              eax, esi                                      // 0x004058e9    8bc6
                         pop                esi                                           // 0x004058eb    5e
                         ret                                                              // 0x004058ec    c3
_jmp_addr_0x004058ed:    xor.s              eax, eax                                      // 0x004058ed    33c0
                         pop                esi                                           // 0x004058ef    5e
                         ret                                                              // 0x004058f0    c3
                         nop                                                              // 0x004058f1    90
                         nop                                                              // 0x004058f2    90
                         nop                                                              // 0x004058f3    90
                         nop                                                              // 0x004058f4    90
                         nop                                                              // 0x004058f5    90
                         nop                                                              // 0x004058f6    90
                         nop                                                              // 0x004058f7    90
                         nop                                                              // 0x004058f8    90
                         nop                                                              // 0x004058f9    90
                         nop                                                              // 0x004058fa    90
                         nop                                                              // 0x004058fb    90
                         nop                                                              // 0x004058fc    90
                         nop                                                              // 0x004058fd    90
                         nop                                                              // 0x004058fe    90
                         nop                                                              // 0x004058ff    90

_jmp_addr_0x00405900:
                         mov                eax, 0x000000f8                               // 0x00405900    b8f8000000
                         ret                                                              // 0x00405905    c3
                         nop                                                              // 0x00405906    90
                         nop                                                              // 0x00405907    90
                         nop                                                              // 0x00405908    90
                         nop                                                              // 0x00405909    90
                         nop                                                              // 0x0040590a    90
                         nop                                                              // 0x0040590b    90
                         nop                                                              // 0x0040590c    90
                         nop                                                              // 0x0040590d    90
                         nop                                                              // 0x0040590e    90
                         nop                                                              // 0x0040590f    90
                         mov                eax, 0x009c8048                               // 0x00405910    b848809c00
                         ret                                                              // 0x00405915    c3
                         nop                                                              // 0x00405916    90
                         nop                                                              // 0x00405917    90
                         nop                                                              // 0x00405918    90
                         nop                                                              // 0x00405919    90
                         nop                                                              // 0x0040591a    90
                         nop                                                              // 0x0040591b    90
                         nop                                                              // 0x0040591c    90
                         nop                                                              // 0x0040591d    90
                         nop                                                              // 0x0040591e    90
                         nop                                                              // 0x0040591f    90

_jmp_addr_0x00405920:
                         push               esi                                           // 0x00405920    56
                         mov.s              esi, ecx                                      // 0x00405921    8bf1
                         call               ??1Abode@@UAE@XZ                              // 0x00405923    e838d2ffff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00405928    f644240801
                         {disp8} je         _jmp_addr_0x0040593d                          // 0x0040592d    740e
                         push               0x000000c4                                    // 0x0040592f    68c4000000
                         push               esi                                           // 0x00405934    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x00405935    e836100300
                         add                esp, 0x08                                     // 0x0040593a    83c408
_jmp_addr_0x0040593d:    mov.s              eax, esi                                      // 0x0040593d    8bc6
                         pop                esi                                           // 0x0040593f    5e
                         ret                0x0004                                        // 0x00405940    c20400
                         nop                                                              // 0x00405943    90
                         nop                                                              // 0x00405944    90
                         nop                                                              // 0x00405945    90
                         nop                                                              // 0x00405946    90
                         nop                                                              // 0x00405947    90
                         nop                                                              // 0x00405948    90
                         nop                                                              // 0x00405949    90
                         nop                                                              // 0x0040594a    90
                         nop                                                              // 0x0040594b    90
                         nop                                                              // 0x0040594c    90
                         nop                                                              // 0x0040594d    90
                         nop                                                              // 0x0040594e    90
                         nop                                                              // 0x0040594f    90
_jmp_addr_0x00405950:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00405950    8b442404
                         push               esi                                           // 0x00405954    56
                         mov.s              esi, ecx                                      // 0x00405955    8bf1
                         push               eax                                           // 0x00405957    50
                         call               ?CallVirtualFunctionsForCreation@Abode@@UAEXABUMapCoords@@@Z  // 0x00405958    e8a3d8ffff
                         test               byte ptr [esi + 0x0a], 0x01                   // 0x0040595d    f6460a01
                         {disp8} jne        _jmp_addr_0x0040597c                          // 0x00405961    7519
                         push               0x0                                           // 0x00405963    6a00
                         push               0x1                                           // 0x00405965    6a01
                         push               0x1                                           // 0x00405967    6a01
                         push               0x0                                           // 0x00405969    6a00
                         push               -0x1                                          // 0x0040596b    6aff
                         push               0x2                                           // 0x0040596d    6a02
                         push               0x0                                           // 0x0040596f    6a00
                         push               0xd                                           // 0x00405971    6a0d
                         push               esi                                           // 0x00405973    56
                         call               _Create__8SoundTagFP16GameThingWithPosUlbUlUlii19AUDIO_SFX_BANK_TYPEi                          // 0x00405974    e8c78e3100
                         add                esp, 0x24                                     // 0x00405979    83c424
_jmp_addr_0x0040597c:    pop                esi                                           // 0x0040597c    5e
                         ret                0x0004                                        // 0x0040597d    c20400

_jmp_addr_0x00405980:
                         push               esi                                           // 0x00405980    56
                         xor.s              ecx, ecx                                      // 0x00405981    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x00405983    e8485b4000
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00405988    8b1534fee900
                         {disp32} mov       dword ptr [data_bytes + 0x286c70], eax        // 0x0040598e    a370ccc400
                         mov                esi, dword ptr [edx]                          // 0x00405993    8b32
                         mov                ecx, 0x00000085                               // 0x00405995    b985000000
                         cmp.s              esi, ecx                                      // 0x0040599a    3bf1
                         {disp8} jg         _jmp_addr_0x004059a0                          // 0x0040599c    7f02
                         xor.s              ecx, ecx                                      // 0x0040599e    33c9
_jmp_addr_0x004059a0:    {disp8} mov        edx, dword ptr [edx + ecx * 0x4 + 0x04]       // 0x004059a0    8b548a04
                         mov                esi, dword ptr [eax]                          // 0x004059a4    8b30
                         push               0x0                                           // 0x004059a6    6a00
                         push               0x0                                           // 0x004059a8    6a00
                         mov.s              ecx, eax                                      // 0x004059aa    8bc8
                         call               dword ptr [esi + 0xf4]                        // 0x004059ac    ff96f4000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286c70]        // 0x004059b2    8b0d70ccc400
                         mov                eax, dword ptr [ecx]                          // 0x004059b8    8b01
                         mov                edx, 0x00000001                               // 0x004059ba    ba01000000
                         pop                esi                                           // 0x004059bf    5e
                         {disp8} jmp        dword ptr [eax + 0x58]                        // 0x004059c0    ff6058
                         nop                                                              // 0x004059c3    90
                         nop                                                              // 0x004059c4    90
                         nop                                                              // 0x004059c5    90
                         nop                                                              // 0x004059c6    90
                         nop                                                              // 0x004059c7    90
                         nop                                                              // 0x004059c8    90
                         nop                                                              // 0x004059c9    90
                         nop                                                              // 0x004059ca    90
                         nop                                                              // 0x004059cb    90
                         nop                                                              // 0x004059cc    90
                         nop                                                              // 0x004059cd    90
                         nop                                                              // 0x004059ce    90
                         nop                                                              // 0x004059cf    90

_jmp_addr_0x004059d0:
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286c70]        // 0x004059d0    8b0d70ccc400
                         test               ecx, ecx                                      // 0x004059d6    85c9
                         {disp8} je         _jmp_addr_0x004059e9                          // 0x004059d8    740f
                         mov                eax, dword ptr [ecx]                          // 0x004059da    8b01
                         call               dword ptr [eax + 4]                           // 0x004059dc    ff5004
                         {disp32} mov       dword ptr [data_bytes + 0x286c70], 0x00000000 // 0x004059df    c70570ccc40000000000
_jmp_addr_0x004059e9:    ret                                                              // 0x004059e9    c3
                         call               dword ptr [__imp__RegSetValueExA@4]           // 0x004059ea    ff1514908a00

_jmp_addr_0x004059f0:
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]             // 0x004059f0    db05c09eea00
                         {disp32} fld       dword ptr [data_bytes + 0x286c78]             // 0x004059f6    d90578ccc400
                         fcos                                                             // 0x004059fc    d9ff
                         fabs                                                             // 0x004059fe    d9e1
                         {disp32} fmul      qword ptr [rdata_bytes + 0x2220]              // 0x00405a00    dc0d20b28a00
                         fld                st(1)                                         // 0x00405a06    d9c1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2218]              // 0x00405a08    d80d18b28a00
                         faddp              st(1), st                                     // 0x00405a0e    dec1
                         {disp32} fsubr     dword ptr [data_bytes + 0x286c74]             // 0x00405a10    d82d74ccc400
                         {disp32} fstp      dword ptr [data_bytes + 0x286c74]             // 0x00405a16    d91d74ccc400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2214]              // 0x00405a1c    d80d14b28a00
                         {disp32} fadd      dword ptr [data_bytes + 0x286c78]             // 0x00405a22    d80578ccc400
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2210]              // 0x00405a28    d81510b28a00
                         {disp32} fst       dword ptr [data_bytes + 0x286c78]             // 0x00405a2e    d91578ccc400
                         fnstsw             ax                                            // 0x00405a34    dfe0
                         test               ah, 0x41                                      // 0x00405a36    f6c441
                         {disp8} jne        _jmp_addr_0x00405a55                          // 0x00405a39    751a
_jmp_addr_0x00405a3b:    {disp32} fsub      dword ptr [rdata_bytes + 0x2210]              // 0x00405a3b    d82510b28a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2210]              // 0x00405a41    d81510b28a00
                         fnstsw             ax                                            // 0x00405a47    dfe0
                         test               ah, 0x41                                      // 0x00405a49    f6c441
                         {disp8} je         _jmp_addr_0x00405a3b                          // 0x00405a4c    74ed
                         {disp32} fstp      dword ptr [data_bytes + 0x286c78]             // 0x00405a4e    d91d78ccc400
                         ret                                                              // 0x00405a54    c3
_jmp_addr_0x00405a55:    fstp               st(0)                                         // 0x00405a55    ddd8
                         ret                                                              // 0x00405a57    c3
                         nop                                                              // 0x00405a58    90
                         nop                                                              // 0x00405a59    90
                         nop                                                              // 0x00405a5a    90
                         nop                                                              // 0x00405a5b    90
                         nop                                                              // 0x00405a5c    90
                         nop                                                              // 0x00405a5d    90
                         nop                                                              // 0x00405a5e    90
                         nop                                                              // 0x00405a5f    90
_jmp_addr_0x00405a60:    {disp32} lea       eax, dword ptr [ecx + 0x00000128]             // 0x00405a60    8d8128010000
                         ret                                                              // 0x00405a66    c3
                         nop                                                              // 0x00405a67    90
                         nop                                                              // 0x00405a68    90
                         nop                                                              // 0x00405a69    90
                         nop                                                              // 0x00405a6a    90
                         nop                                                              // 0x00405a6b    90
                         nop                                                              // 0x00405a6c    90
                         nop                                                              // 0x00405a6d    90
                         nop                                                              // 0x00405a6e    90
                         nop                                                              // 0x00405a6f    90
_GetInfoFromText__10GAbodeInfoFPc:    sub                esp, 0x08                                     // 0x00405a70    83ec08
                         push               ebx                                           // 0x00405a73    53
                         push               ebp                                           // 0x00405a74    55
                         push               esi                                           // 0x00405a75    56
                         push               edi                                           // 0x00405a76    57
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00405a77    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x10], OFFSET _AbodeInfos    // 0x00405a7f    c744241090c6c300
                         mov                ebp, 0x00da57b8                               // 0x00405a87    bdb857da00
_jmp_addr_0x00405a8c:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00405a8c    8b4500
                         {disp32} mov       edx, dword ptr [eax * 0x4 + 0x00c22fdc]       // 0x00405a8f    8b1485dc2fc200
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00405a96    8b5c241c
                         or                 ecx, 0xffffffff                               // 0x00405a9a    83c9ff
                         xor.s              eax, eax                                      // 0x00405a9d    33c0
                         mov.s              edi, edx                                      // 0x00405a9f    8bfa
                         repne scasb                                                      // 0x00405aa1    f2ae
                         not                ecx                                           // 0x00405aa3    f7d1
                         dec                ecx                                           // 0x00405aa5    49
                         mov.s              edi, ecx                                      // 0x00405aa6    8bf9
                         push               edi                                           // 0x00405aa8    57
                         push               edx                                           // 0x00405aa9    52
                         push               ebx                                           // 0x00405aaa    53
                         call               _jmp_addr_0x007da710                          // 0x00405aab    e8604c3d00
                         add                esp, 0x0c                                     // 0x00405ab0    83c40c
                         test               eax, eax                                      // 0x00405ab3    85c0
                         {disp8} jne        _jmp_addr_0x00405ae8                          // 0x00405ab5    7531
                         cmp                byte ptr [edi + ebx * 0x1], 0x5f              // 0x00405ab7    803c1f5f
                         {disp8} jne        _jmp_addr_0x00405ae8                          // 0x00405abb    752b
                         {disp8} lea        ebx, dword ptr [edi + ebx * 0x1 + 0x01]       // 0x00405abd    8d5c1f01
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00405ac1    8b7c2410
                         xor.s              esi, esi                                      // 0x00405ac5    33f6
_jmp_addr_0x00405ac7:    mov.s              ecx, edi                                      // 0x00405ac7    8bcf
                         call               _jmp_addr_0x00405a60                          // 0x00405ac9    e892ffffff
                         push               eax                                           // 0x00405ace    50
                         push               ebx                                           // 0x00405acf    53
                         call               __strcmpi                                     // 0x00405ad0    e80b123c00
                         add                esp, 0x08                                     // 0x00405ad5    83c408
                         test               eax, eax                                      // 0x00405ad8    85c0
                         {disp8} je         _jmp_addr_0x00405b15                          // 0x00405ada    7439
                         inc                esi                                           // 0x00405adc    46
                         add                edi, 0x000001c8                               // 0x00405add    81c7c8010000
                         cmp                esi, 0x10                                     // 0x00405ae3    83fe10
                         .byte              0x72, 0xdf// {disp8} jb _jmp_addr_0x00405ac7  // 0x00405ae6    72df
_jmp_addr_0x00405ae8:    {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00405ae8    8b742414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00405aec    8b4c2410
                         inc                esi                                           // 0x00405af0    46
                         add                ebp, 0x1c                                     // 0x00405af1    83c51c
                         add                ecx, 0x00001c80                               // 0x00405af4    81c1801c0000
                         cmp                ebp, 0x00da58b4                               // 0x00405afa    81fdb458da00
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x00405b00    89742414
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00405b04    894c2410
                         .byte              0x72, 0x82// {disp8} jb _jmp_addr_0x00405a8c  // 0x00405b08    7282
                         pop                edi                                           // 0x00405b0a    5f
                         pop                esi                                           // 0x00405b0b    5e
                         pop                ebp                                           // 0x00405b0c    5d
                         or                 eax, -0x1                                     // 0x00405b0d    83c8ff
                         pop                ebx                                           // 0x00405b10    5b
                         add                esp, 0x08                                     // 0x00405b11    83c408
                         ret                                                              // 0x00405b14    c3
_jmp_addr_0x00405b15:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00405b15    8b442414
                         pop                edi                                           // 0x00405b19    5f
                         shl                eax, 4                                        // 0x00405b1a    c1e004
                         add.s              eax, esi                                      // 0x00405b1d    03c6
                         pop                esi                                           // 0x00405b1f    5e
                         pop                ebp                                           // 0x00405b20    5d
                         pop                ebx                                           // 0x00405b21    5b
                         add                esp, 0x08                                     // 0x00405b22    83c408
                         ret                                                              // 0x00405b25    c3
                         nop                                                              // 0x00405b26    90
                         nop                                                              // 0x00405b27    90
                         nop                                                              // 0x00405b28    90
                         nop                                                              // 0x00405b29    90
                         nop                                                              // 0x00405b2a    90
                         nop                                                              // 0x00405b2b    90
                         nop                                                              // 0x00405b2c    90
                         nop                                                              // 0x00405b2d    90
                         nop                                                              // 0x00405b2e    90
                         nop                                                              // 0x00405b2f    90
_Find__10GAbodeInfoF10TRIBE_TYPE12ABODE_NUMBER:    push               esi                                           // 0x00405b30    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00405b31    8b742408
                         push               edi                                           // 0x00405b35    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00405b36    8b7c2410
                         mov                eax, OFFSET _AbodeInfos                       // 0x00405b3a    b890c6c300
                         mov                ecx, 0x00c3c7e8                               // 0x00405b3f    b9e8c7c300
_jmp_addr_0x00405b44:    mov                edx, dword ptr [ecx]                          // 0x00405b44    8b11
                         cmp.s              edx, esi                                      // 0x00405b46    3bd6
                         {disp8} je         _jmp_addr_0x00405b4f                          // 0x00405b48    7405
                         cmp                edx, -0x01                                    // 0x00405b4a    83faff
                         {disp8} jne        _jmp_addr_0x00405b54                          // 0x00405b4d    7505
_jmp_addr_0x00405b4f:    cmp                dword ptr [ecx + -0x34], edi                  // 0x00405b4f    3979cc
                         {disp8} je         _jmp_addr_0x00405b69                          // 0x00405b52    7415
_jmp_addr_0x00405b54:    add                ecx, 0x000001c8                               // 0x00405b54    81c1c8010000
                         add                eax, 0x000001c8                               // 0x00405b5a    05c8010000
                         cmp                ecx, 0x00c4cdc0                               // 0x00405b5f    81f9c0cdc400
                         .byte              0x72, 0xdd// {disp8} jb _jmp_addr_0x00405b44  // 0x00405b65    72dd
                         xor.s              eax, eax                                      // 0x00405b67    33c0
_jmp_addr_0x00405b69:    pop                edi                                           // 0x00405b69    5f
                         pop                esi                                           // 0x00405b6a    5e
                         ret                                                              // 0x00405b6b    c3
                         nop                                                              // 0x00405b6c    90
                         nop                                                              // 0x00405b6d    90
                         nop                                                              // 0x00405b6e    90
                         nop                                                              // 0x00405b6f    90

_jmp_addr_0x00405b70:
                         mov                eax, dword ptr [ecx]                          // 0x00405b70    8b01
                         push               esi                                           // 0x00405b72    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]                   // 0x00405b73    8b7128
                         push               edi                                           // 0x00405b76    57
                         call               dword ptr [eax + 0x928]                       // 0x00405b77    ff9028090000
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x00405b7d    8b4810
                         {disp32} mov       edi, dword ptr [ecx * 0x4 + 0x00c22fdc]       // 0x00405b80    8b3c8ddc2fc200
                         mov.s              ecx, esi                                      // 0x00405b87    8bce
                         call               _jmp_addr_0x00405a60                          // 0x00405b89    e8d2feffff
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00405b8e    8b74240c
                         push               eax                                           // 0x00405b92    50
                         push               edi                                           // 0x00405b93    57
                         push               0x009c8054                                    // 0x00405b94    6854809c00
                         push               esi                                           // 0x00405b99    56
                         call               _sprintf                                      // 0x00405b9a    e833fc3b00
                         add                esp, 0x10                                     // 0x00405b9f    83c410
                         pop                edi                                           // 0x00405ba2    5f
                         mov.s              eax, esi                                      // 0x00405ba3    8bc6
                         pop                esi                                           // 0x00405ba5    5e
                         ret                0x0004                                        // 0x00405ba6    c20400
                         nop                                                              // 0x00405ba9    90
                         nop                                                              // 0x00405baa    90
                         nop                                                              // 0x00405bab    90
                         nop                                                              // 0x00405bac    90
                         nop                                                              // 0x00405bad    90
                         nop                                                              // 0x00405bae    90
                         nop                                                              // 0x00405baf    90

?SaveObject@Abode@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z:
                         sub                esp, 0x00000278                               // 0x00405bb0    81ec78020000
                         push               ebp                                           // 0x00405bb6    55
                         push               esi                                           // 0x00405bb7    56
                         mov.s              esi, ecx                                      // 0x00405bb8    8bf1
                         call               _jmp_addr_0x0056fef0                          // 0x00405bba    e831a31600
                         mov.s              ebp, eax                                      // 0x00405bbf    8be8
                         test               ebp, ebp                                      // 0x00405bc1    85ed
                         {disp32} je        _jmp_addr_0x00405d68                          // 0x00405bc3    0f849f010000
                         push               ebx                                           // 0x00405bc9    53
                         {disp32} mov       ebx, dword ptr [esp + 0x0000028c]             // 0x00405bca    8b9c248c020000
                         test               ebx, ebx                                      // 0x00405bd1    85db
                         push               edi                                           // 0x00405bd3    57
                         {disp8} je         _jmp_addr_0x00405be6                          // 0x00405bd4    7410
                         push               ebx                                           // 0x00405bd6    53
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00405bd7    8d442428
                         push               eax                                           // 0x00405bdb    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00405bdc    8d4e14
                         call               _jmp_addr_0x006055c0                          // 0x00405bdf    e8dcf91f00
                         {disp8} jmp        _jmp_addr_0x00405be9                          // 0x00405be4    eb03
_jmp_addr_0x00405be6:    {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00405be6    8d4614
_jmp_addr_0x00405be9:    mov                ecx, dword ptr [eax]                          // 0x00405be9    8b08
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00405beb    894c2418
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00405bef    8b5004
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00405bf2    8954241c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00405bf6    8b4008
                         mov                edx, dword ptr [esi]                          // 0x00405bf9    8b16
                         mov.s              ecx, esi                                      // 0x00405bfb    8bce
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00405bfd    89442420
                         call               dword ptr [edx + 0x48]                        // 0x00405c01    ff5248
                         test               eax, eax                                      // 0x00405c04    85c0
                         {disp8} je         _jmp_addr_0x00405c1b                          // 0x00405c06    7413
                         test               ebx, ebx                                      // 0x00405c08    85db
                         {disp8} jne        _jmp_addr_0x00405c1b                          // 0x00405c0a    750f
                         mov                eax, dword ptr [esi]                          // 0x00405c0c    8b06
                         mov.s              ecx, esi                                      // 0x00405c0e    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405c10    ff5048
                         {disp32} mov       edi, dword ptr [eax + 0x000005b4]             // 0x00405c13    8bb8b4050000
                         {disp8} jmp        _jmp_addr_0x00405c1e                          // 0x00405c19    eb03
_jmp_addr_0x00405c1b:    or                 edi, 0xffffffff                               // 0x00405c1b    83cfff
_jmp_addr_0x00405c1e:    test               byte ptr [esi + 0x58], 0x02                   // 0x00405c1e    f6465802
                         mov                edx, dword ptr [esi]                          // 0x00405c22    8b16
                         mov.s              ecx, esi                                      // 0x00405c24    8bce
                         {disp8} je         _jmp_addr_0x00405ca1                          // 0x00405c26    7479
                         call               dword ptr [edx + 0x120]                       // 0x00405c28    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00405c2e    d95c2414
                         mov                eax, dword ptr [esi]                          // 0x00405c32    8b06
                         mov.s              ecx, esi                                      // 0x00405c34    8bce
                         call               dword ptr [eax + 0x508]                       // 0x00405c36    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405c3c    d95c2410
                         mov                edx, dword ptr [esi]                          // 0x00405c40    8b16
                         push               0x1                                           // 0x00405c42    6a01
                         mov.s              ecx, esi                                      // 0x00405c44    8bce
                         call               dword ptr [edx + 0x98]                        // 0x00405c46    ff9298000000
                         push               eax                                           // 0x00405c4c    50
                         mov                eax, dword ptr [esi]                          // 0x00405c4d    8b06
                         push               0x0                                           // 0x00405c4f    6a00
                         mov.s              ecx, esi                                      // 0x00405c51    8bce
                         call               dword ptr [eax + 0x98]                        // 0x00405c53    ff9098000000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405c59    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2228]              // 0x00405c5d    d80d28b28a00
                         push               eax                                           // 0x00405c63    50
                         call               _jmp_addr_0x007a1400                          // 0x00405c64    e897b73900
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405c69    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2228]              // 0x00405c6d    d80d28b28a00
                         push               eax                                           // 0x00405c73    50
                         call               _jmp_addr_0x007a1400                          // 0x00405c74    e887b73900
                         push               eax                                           // 0x00405c79    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000108]             // 0x00405c7a    8d8c2408010000
                         push               ecx                                           // 0x00405c81    51
                         mov.s              ecx, esi                                      // 0x00405c82    8bce
                         call               _jmp_addr_0x00405b70                          // 0x00405c84    e8e7feffff
                         push               eax                                           // 0x00405c89    50
                         {disp32} lea       edx, dword ptr [esp + 0x000001d4]             // 0x00405c8a    8d9424d4010000
                         push               edx                                           // 0x00405c91    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00405c92    8d4c2430
                         call               _jmp_addr_0x00602880                          // 0x00405c96    e8e5cb1f00
                         push               eax                                           // 0x00405c9b    50
                         push               edi                                           // 0x00405c9c    57
                         push               0x8                                           // 0x00405c9d    6a08
                         {disp8} jmp        _jmp_addr_0x00405d18                          // 0x00405c9f    eb77
_jmp_addr_0x00405ca1:    call               dword ptr [edx + 0x120]                       // 0x00405ca1    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405ca7    d95c2410
                         mov                eax, dword ptr [esi]                          // 0x00405cab    8b06
                         mov.s              ecx, esi                                      // 0x00405cad    8bce
                         call               dword ptr [eax + 0x508]                       // 0x00405caf    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00405cb5    d95c2414
                         mov                edx, dword ptr [esi]                          // 0x00405cb9    8b16
                         push               0x1                                           // 0x00405cbb    6a01
                         mov.s              ecx, esi                                      // 0x00405cbd    8bce
                         call               dword ptr [edx + 0x98]                        // 0x00405cbf    ff9298000000
                         push               eax                                           // 0x00405cc5    50
                         mov                eax, dword ptr [esi]                          // 0x00405cc6    8b06
                         push               0x0                                           // 0x00405cc8    6a00
                         mov.s              ecx, esi                                      // 0x00405cca    8bce
                         call               dword ptr [eax + 0x98]                        // 0x00405ccc    ff9098000000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00405cd2    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2228]              // 0x00405cd6    d80d28b28a00
                         push               eax                                           // 0x00405cdc    50
                         call               _jmp_addr_0x007a1400                          // 0x00405cdd    e81eb73900
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00405ce2    d944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2228]              // 0x00405ce6    d80d28b28a00
                         push               eax                                           // 0x00405cec    50
                         call               _jmp_addr_0x007a1400                          // 0x00405ced    e80eb73900
                         push               eax                                           // 0x00405cf2    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000108]             // 0x00405cf3    8d8c2408010000
                         push               ecx                                           // 0x00405cfa    51
                         mov.s              ecx, esi                                      // 0x00405cfb    8bce
                         call               _jmp_addr_0x00405b70                          // 0x00405cfd    e86efeffff
                         push               eax                                           // 0x00405d02    50
                         {disp32} lea       edx, dword ptr [esp + 0x000001d4]             // 0x00405d03    8d9424d4010000
                         push               edx                                           // 0x00405d0a    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00405d0b    8d4c2430
                         call               _jmp_addr_0x00602880                          // 0x00405d0f    e86ccb1f00
                         push               eax                                           // 0x00405d14    50
                         push               edi                                           // 0x00405d15    57
                         push               0x7                                           // 0x00405d16    6a07
_jmp_addr_0x00405d18:    call               _jmp_addr_0x00715130                          // 0x00405d18    e813f43000
                         add                esp, 0x04                                     // 0x00405d1d    83c404
                         push               eax                                           // 0x00405d20    50
                         {disp8} lea        eax, dword ptr [esp + 0x50]                   // 0x00405d21    8d442450
                         push               eax                                           // 0x00405d25    50
                         call               _sprintf                                      // 0x00405d26    e8a7fa3b00
                         or                 ecx, 0xffffffff                               // 0x00405d2b    83c9ff
                         xor.s              eax, eax                                      // 0x00405d2e    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x54]                   // 0x00405d30    8d7c2454
                         repne scasb                                                      // 0x00405d34    f2ae
                         {disp32} mov       edi, dword ptr [esp + 0x000002b0]             // 0x00405d36    8bbc24b0020000
                         not                ecx                                           // 0x00405d3d    f7d1
                         dec                ecx                                           // 0x00405d3f    49
                         push               ecx                                           // 0x00405d40    51
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x00405d41    8d4c2458
                         push               ecx                                           // 0x00405d45    51
                         push               edi                                           // 0x00405d46    57
                         push               esi                                           // 0x00405d47    56
                         call               _jmp_addr_0x00719610                          // 0x00405d48    e8c3383100
                         add                esp, 0x34                                     // 0x00405d4d    83c434
                         push               ebx                                           // 0x00405d50    53
                         push               edi                                           // 0x00405d51    57
                         mov.s              ecx, esi                                      // 0x00405d52    8bce
                         call               ?SaveObject@MultiMapFixed@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z                          // 0x00405d54    e8b7911200
                         pop                edi                                           // 0x00405d59    5f
                         pop                ebx                                           // 0x00405d5a    5b
                         pop                esi                                           // 0x00405d5b    5e
                         mov.s              eax, ebp                                      // 0x00405d5c    8bc5
                         pop                ebp                                           // 0x00405d5e    5d
                         add                esp, 0x00000278                               // 0x00405d5f    81c478020000
                         ret                0x0008                                        // 0x00405d65    c20800
_jmp_addr_0x00405d68:    pop                esi                                           // 0x00405d68    5e
                         mov.s              eax, ebp                                      // 0x00405d69    8bc5
                         pop                ebp                                           // 0x00405d6b    5d
                         add                esp, 0x00000278                               // 0x00405d6c    81c478020000
                         ret                0x0008                                        // 0x00405d72    c20800
                         nop                                                              // 0x00405d75    90
                         nop                                                              // 0x00405d76    90
                         nop                                                              // 0x00405d77    90
                         nop                                                              // 0x00405d78    90
                         nop                                                              // 0x00405d79    90
                         nop                                                              // 0x00405d7a    90
                         nop                                                              // 0x00405d7b    90
                         nop                                                              // 0x00405d7c    90
                         nop                                                              // 0x00405d7d    90
                         nop                                                              // 0x00405d7e    90
                         nop                                                              // 0x00405d7f    90
_jmp_addr_0x00405d80:    mov                eax, 0x00000001                               // 0x00405d80    b801000000
                         ret                                                              // 0x00405d85    c3
                         nop                                                              // 0x00405d86    90
                         nop                                                              // 0x00405d87    90
                         nop                                                              // 0x00405d88    90
                         nop                                                              // 0x00405d89    90
                         nop                                                              // 0x00405d8a    90
                         nop                                                              // 0x00405d8b    90
                         nop                                                              // 0x00405d8c    90
                         nop                                                              // 0x00405d8d    90
                         nop                                                              // 0x00405d8e    90
                         nop                                                              // 0x00405d8f    90

?ReduceLife@Abode@@UAEXMPAVGPlayer@@@Z:
                         push               ecx                                           // 0x00405d90    51
                         push               ebx                                           // 0x00405d91    53
                         push               ebp                                           // 0x00405d92    55
                         push               esi                                           // 0x00405d93    56
                         mov.s              esi, ecx                                      // 0x00405d94    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405d96    8b06
                         call               dword ptr [eax + 0x11c]                       // 0x00405d98    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00405d9e    d95c240c
                         mov                edx, dword ptr [esi]                          // 0x00405da2    8b16
                         mov.s              ecx, esi                                      // 0x00405da4    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405da6    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x00405dac    d85c240c
                         fnstsw             ax                                            // 0x00405db0    dfe0
                         test               ah, 0x01                                      // 0x00405db2    f6c401
                         {disp8} je         _jmp_addr_0x00405dbe                          // 0x00405db5    7407
                         mov                ebp, 0x00000001                               // 0x00405db7    bd01000000
                         {disp8} jmp        _jmp_addr_0x00405dc0                          // 0x00405dbc    eb02
_jmp_addr_0x00405dbe:    xor.s              ebp, ebp                                      // 0x00405dbe    33ed
_jmp_addr_0x00405dc0:    {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00405dc0    8b5c2418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00405dc4    8b442414
                         push               ebx                                           // 0x00405dc8    53
                         push               eax                                           // 0x00405dc9    50
                         mov.s              ecx, esi                                      // 0x00405dca    8bce
                         call               ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z// 0x00405dcc    e80f981200
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00405dd1    d9542418
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00405dd5    d81d90a38a00
                         fnstsw             ax                                            // 0x00405ddb    dfe0
                         test               ah, 0x01                                      // 0x00405ddd    f6c401
                         {disp32} je        _jmp_addr_0x00405ec5                          // 0x00405de0    0f84df000000
                         push               edi                                           // 0x00405de6    57
                         {disp32} mov       edi, dword ptr [esi + 0x000000a0]             // 0x00405de7    8bbea0000000
                         test               edi, edi                                      // 0x00405ded    85ff
                         {disp8} je         _jmp_addr_0x00405e02                          // 0x00405def    7411
_jmp_addr_0x00405df1:    mov.s              ecx, edi                                      // 0x00405df1    8bcf
                         call               _jmp_addr_0x00752b80                          // 0x00405df3    e888cd3400
                         {disp32} mov       edi, dword ptr [edi + 0x000000e4]             // 0x00405df8    8bbfe4000000
                         test               edi, edi                                      // 0x00405dfe    85ff
                         {disp8} jne        _jmp_addr_0x00405df1                          // 0x00405e00    75ef
_jmp_addr_0x00405e02:    test               ebp, ebp                                      // 0x00405e02    85ed
                         pop                edi                                           // 0x00405e04    5f
                         {disp8} je         _jmp_addr_0x00405e45                          // 0x00405e05    743e
                         mov                edx, dword ptr [esi]                          // 0x00405e07    8b16
                         mov.s              ecx, esi                                      // 0x00405e09    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405e0b    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x18]                        // 0x00405e11    d85c2418
                         fnstsw             ax                                            // 0x00405e15    dfe0
                         test               ah, 0x01                                      // 0x00405e17    f6c401
                         {disp8} jne        _jmp_addr_0x00405e45                          // 0x00405e1a    7529
                         mov                eax, dword ptr [esi]                          // 0x00405e1c    8b06
                         push               ebx                                           // 0x00405e1e    53
                         mov.s              ecx, esi                                      // 0x00405e1f    8bce
                         call               dword ptr [eax + 0x918]                       // 0x00405e21    ff9018090000
                         mov                edx, dword ptr [esi]                          // 0x00405e27    8b16
                         mov.s              ecx, esi                                      // 0x00405e29    8bce
                         call               dword ptr [edx + 0x920]                       // 0x00405e2b    ff9220090000
                         test               eax, eax                                      // 0x00405e31    85c0
                         {disp8} je         _jmp_addr_0x00405e5e                          // 0x00405e33    7429
                         mov                eax, dword ptr [esi]                          // 0x00405e35    8b06
                         mov.s              ecx, esi                                      // 0x00405e37    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405e39    ff5048
                         mov.s              ecx, eax                                      // 0x00405e3c    8bc8
                         call               ?SetInStateOfEmergency@Town@@QAEXXZ           // 0x00405e3e    e85d1b3400
                         {disp8} jmp        _jmp_addr_0x00405e5e                          // 0x00405e43    eb19
_jmp_addr_0x00405e45:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00405e45    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00405e49    d81d90a38a00
                         fnstsw             ax                                            // 0x00405e4f    dfe0
                         test               ah, 0x01                                      // 0x00405e51    f6c401
                         {disp8} jne        _jmp_addr_0x00405e5e                          // 0x00405e54    7508
                         push               ebx                                           // 0x00405e56    53
                         mov.s              ecx, esi                                      // 0x00405e57    8bce
                         call               _jmp_addr_0x004073f0                          // 0x00405e59    e892150000
_jmp_addr_0x00405e5e:    {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e5e    8b4674
                         test               eax, eax                                      // 0x00405e61    85c0
                         {disp8} jne        _jmp_addr_0x00405e86                          // 0x00405e63    7521
                         mov                edx, dword ptr [esi]                          // 0x00405e65    8b16
                         mov.s              ecx, esi                                      // 0x00405e67    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405e69    ff5248
                         test               eax, eax                                      // 0x00405e6c    85c0
                         {disp8} je         _jmp_addr_0x00405e7f                          // 0x00405e6e    740f
                         mov                eax, dword ptr [esi]                          // 0x00405e70    8b06
                         push               esi                                           // 0x00405e72    56
                         mov.s              ecx, esi                                      // 0x00405e73    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405e75    ff5048
                         mov.s              ecx, eax                                      // 0x00405e78    8bc8
                         call               _jmp_addr_0x0073b8e0                          // 0x00405e7a    e8615a3300
_jmp_addr_0x00405e7f:    {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e7f    8b4674
                         test               eax, eax                                      // 0x00405e82    85c0
                         {disp8} je         _jmp_addr_0x00405ead                          // 0x00405e84    7427
_jmp_addr_0x00405e86:    mov                edx, dword ptr [esi]                          // 0x00405e86    8b16
                         mov.s              ecx, esi                                      // 0x00405e88    8bce
                         call               dword ptr [edx + 0x890]                       // 0x00405e8a    ff9290080000
                         test               eax, eax                                      // 0x00405e90    85c0
                         {disp8} je         _jmp_addr_0x00405ead                          // 0x00405e92    7419
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405e94    d9442418
                         {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e98    8b4674
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2230]              // 0x00405e9b    d80d30b28a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0x222c]              // 0x00405ea1    d8252cb28a00
                         {disp32} fstp      dword ptr [eax + 0x00000640]                  // 0x00405ea7    d99840060000
_jmp_addr_0x00405ead:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405ead    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00405eb1    d81d98a38a00
                         fnstsw             ax                                            // 0x00405eb7    dfe0
                         test               ah, 0x40                                      // 0x00405eb9    f6c440
                         {disp8} je         _jmp_addr_0x00405ec5                          // 0x00405ebc    7407
                         mov.s              ecx, esi                                      // 0x00405ebe    8bce
                         call               _jmp_addr_0x00405d80                          // 0x00405ec0    e8bbfeffff
_jmp_addr_0x00405ec5:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405ec5    d9442418
                         pop                esi                                           // 0x00405ec9    5e
                         pop                ebp                                           // 0x00405eca    5d
                         pop                ebx                                           // 0x00405ecb    5b
                         pop                ecx                                           // 0x00405ecc    59
                         ret                0x0008                                        // 0x00405ecd    c20800

?IncreaseLife@Abode@@UAEXM@Z:
                         push               ecx                                           // 0x00405ed0    51
                         push               esi                                           // 0x00405ed1    56
                         mov.s              esi, ecx                                      // 0x00405ed2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405ed4    8b06
                         push               edi                                           // 0x00405ed6    57
                         call               dword ptr [eax + 0x11c]                       // 0x00405ed7    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00405edd    d95c2408
                         mov                edx, dword ptr [esi]                          // 0x00405ee1    8b16
                         mov.s              ecx, esi                                      // 0x00405ee3    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405ee5    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x00405eeb    d85c2408
                         fnstsw             ax                                            // 0x00405eef    dfe0
                         test               ah, 0x01                                      // 0x00405ef1    f6c401
                         {disp8} jne        _jmp_addr_0x00405efd                          // 0x00405ef4    7507
                         mov                edi, 0x00000001                               // 0x00405ef6    bf01000000
                         {disp8} jmp        _jmp_addr_0x00405eff                          // 0x00405efb    eb02
_jmp_addr_0x00405efd:    xor.s              edi, edi                                      // 0x00405efd    33ff
_jmp_addr_0x00405eff:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00405eff    8b442410
                         push               eax                                           // 0x00405f03    50
                         mov.s              ecx, esi                                      // 0x00405f04    8bce
                         call               ?IncreaseLife@Object@@UAEXM@Z                 // 0x00405f06    e865192300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405f0b    d95c2410
                         test               edi, edi                                      // 0x00405f0f    85ff
                         {disp8} je         _jmp_addr_0x00405f32                          // 0x00405f11    741f
                         mov                edx, dword ptr [esi]                          // 0x00405f13    8b16
                         mov.s              ecx, esi                                      // 0x00405f15    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405f17    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00405f1d    d85c2410
                         fnstsw             ax                                            // 0x00405f21    dfe0
                         test               ah, 0x01                                      // 0x00405f23    f6c401
                         {disp8} je         _jmp_addr_0x00405f32                          // 0x00405f26    740a
                         mov                eax, dword ptr [esi]                          // 0x00405f28    8b06
                         mov.s              ecx, esi                                      // 0x00405f2a    8bce
                         call               dword ptr [eax + 0x91c]                       // 0x00405f2c    ff901c090000
_jmp_addr_0x00405f32:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00405f32    d9442410
                         pop                edi                                           // 0x00405f36    5f
                         pop                esi                                           // 0x00405f37    5e
                         pop                ecx                                           // 0x00405f38    59
                         ret                0x0004                                        // 0x00405f39    c20400
                         nop                                                              // 0x00405f3c    90
                         nop                                                              // 0x00405f3d    90
                         nop                                                              // 0x00405f3e    90
                         nop                                                              // 0x00405f3f    90

?GetTribeType@Abode@@QAE?AW4TRIBE_TYPE@@XZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000098]             // 0x00405f40    8b8198000000
                         {disp32} mov       eax, dword ptr [eax + 0x000005b8]             // 0x00405f46    8b80b8050000
                         ret                                                              // 0x00405f4c    c3
                         nop                                                              // 0x00405f4d    90
                         nop                                                              // 0x00405f4e    90
                         nop                                                              // 0x00405f4f    90

?GetTribe@Abode@@UAEPAUGTribeInfo@@XZ:
                         push               esi                                           // 0x00405f50    56
                         mov.s              esi, ecx                                      // 0x00405f51    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405f53    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00405f55    ff5048
                         test               eax, eax                                      // 0x00405f58    85c0
                         {disp8} je         _jmp_addr_0x00405f6c                          // 0x00405f5a    7410
                         mov                edx, dword ptr [esi]                          // 0x00405f5c    8b16
                         mov.s              ecx, esi                                      // 0x00405f5e    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405f60    ff5248
                         mov.s              ecx, eax                                      // 0x00405f63    8bc8
                         call               ?GetTribe@Town@@QBEPAVGTribeInfo@@XZ          // 0x00405f65    e8d6683300
                         pop                esi                                           // 0x00405f6a    5e
                         ret                                                              // 0x00405f6b    c3
_jmp_addr_0x00405f6c:    xor.s              eax, eax                                      // 0x00405f6c    33c0
                         pop                esi                                           // 0x00405f6e    5e
                         ret                                                              // 0x00405f6f    c3

?GetPlayer@Abode@@UAEPAVGPlayer@@XZ:
                         push               esi                                           // 0x00405f70    56
                         mov.s              esi, ecx                                      // 0x00405f71    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405f73    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00405f75    ff5048
                         test               eax, eax                                      // 0x00405f78    85c0
                         {disp8} je         _jmp_addr_0x00405f8c                          // 0x00405f7a    7410
                         mov                edx, dword ptr [esi]                          // 0x00405f7c    8b16
                         mov.s              ecx, esi                                      // 0x00405f7e    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405f80    ff5248
                         mov                edx, dword ptr [eax]                          // 0x00405f83    8b10
                         mov.s              ecx, eax                                      // 0x00405f85    8bc8
                         call               dword ptr [edx + 0x1c]                        // 0x00405f87    ff521c
                         pop                esi                                           // 0x00405f8a    5e
                         ret                                                              // 0x00405f8b    c3
_jmp_addr_0x00405f8c:    mov.s              ecx, esi                                      // 0x00405f8c    8bce
                         call               ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ       // 0x00405f8e    e89da11600
                         pop                esi                                           // 0x00405f93    5e
                         ret                                                              // 0x00405f94    c3
                         nop                                                              // 0x00405f95    90
                         nop                                                              // 0x00405f96    90
                         nop                                                              // 0x00405f97    90
                         nop                                                              // 0x00405f98    90
                         nop                                                              // 0x00405f99    90
                         nop                                                              // 0x00405f9a    90
                         nop                                                              // 0x00405f9b    90
                         nop                                                              // 0x00405f9c    90
                         nop                                                              // 0x00405f9d    90
                         nop                                                              // 0x00405f9e    90
                         nop                                                              // 0x00405f9f    90

_jmp_addr_0x00405fa0:
                         {disp32} inc       byte ptr [ecx + 0x000000b6]                   // 0x00405fa0    fe81b6000000
                         ret                                                              // 0x00405fa6    c3
                         nop                                                              // 0x00405fa7    90
                         nop                                                              // 0x00405fa8    90
                         nop                                                              // 0x00405fa9    90
                         nop                                                              // 0x00405faa    90
                         nop                                                              // 0x00405fab    90
                         nop                                                              // 0x00405fac    90
                         nop                                                              // 0x00405fad    90
                         nop                                                              // 0x00405fae    90
                         nop                                                              // 0x00405faf    90

_jmp_addr_0x00405fb0:
                         dec                byte ptr [ecx + 0x000000b6]                   // 0x00405fb0    fe89b6000000
                         ret                                                              // 0x00405fb6    c3
                         nop                                                              // 0x00405fb7    90
                         nop                                                              // 0x00405fb8    90
                         nop                                                              // 0x00405fb9    90
                         nop                                                              // 0x00405fba    90
                         nop                                                              // 0x00405fbb    90
                         nop                                                              // 0x00405fbc    90
                         nop                                                              // 0x00405fbd    90
                         nop                                                              // 0x00405fbe    90
                         nop                                                              // 0x00405fbf    90

_jmp_addr_0x00405fc0:
                         {disp8} mov        dl, byte ptr [ecx + 0x7c]                     // 0x00405fc0    8a517c
                         mov                eax, 0x00000001                               // 0x00405fc3    b801000000
                         test               al, dl                                        // 0x00405fc8    84d0
                         {disp8} je         _jmp_addr_0x00405feb                          // 0x00405fca    741f
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00405fcc    8b542404
                         add                ecx, 0x00000080                               // 0x00405fd0    81c180000000
                         push               esi                                           // 0x00405fd6    56
                         mov                esi, dword ptr [ecx]                          // 0x00405fd7    8b31
                         mov                dword ptr [edx], esi                          // 0x00405fd9    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x00405fdb    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x00405fde    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00405fe1    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x00405fe4    894a08
                         pop                esi                                           // 0x00405fe7    5e
                         ret                0x0004                                        // 0x00405fe8    c20400
_jmp_addr_0x00405feb:    xor.s              eax, eax                                      // 0x00405feb    33c0
                         ret                0x0004                                        // 0x00405fed    c20400

?IsCivic@Abode@@UAE_NXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00405ff0    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000120]             // 0x00405ff3    8b8020010000
                         cmp                eax, 0x00000100                               // 0x00405ff9    3d00010000
                         {disp8} jg         _jmp_addr_0x00406019                          // 0x00405ffe    7f19
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406000    743b
                         add                eax, -0x14                                    // 0x00406002    83c0ec
                         cmp                eax, 0x70                                     // 0x00406005    83f870
                         {disp8} ja         _jmp_addr_0x0040603a                          // 0x00406008    7730
                         xor.s              ecx, ecx                                      // 0x0040600a    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0040604c]               // 0x0040600c    8a884c604000
                         jmp                dword ptr [ecx*4 + 0x406044]                  // 0x00406012    ff248d44604000
_jmp_addr_0x00406019:    cmp                eax, 0x00001004                               // 0x00406019    3d04100000
                         {disp8} jg         _jmp_addr_0x00406033                          // 0x0040601e    7f13
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406020    741b
                         cmp                eax, 0x00000204                               // 0x00406022    3d04020000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406027    7414
                         cmp                eax, 0x00000404                               // 0x00406029    3d04040000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x0040602e    740d
                         xor.s              eax, eax                                      // 0x00406030    33c0
                         ret                                                              // 0x00406032    c3
_jmp_addr_0x00406033:    cmp                eax, 0x00002004                               // 0x00406033    3d04200000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406038    7403
_jmp_addr_0x0040603a:    xor.s              eax, eax                                      // 0x0040603a    33c0
                         ret                                                              // 0x0040603c    c3
_jmp_addr_0x0040603d:    mov                eax, 0x00000001                               // 0x0040603d    b801000000
                         ret                                                              // 0x00406042    c3
                         nop                                                              // 0x00406043    90

// Snippet: jmptbl, [0x00406044, 0x0040604c)
.byte 0x3d, 0x60, 0x40, 0x00      // 0x00406044
.byte 0x3a, 0x60, 0x40, 0x00      // 0x00406048

// Snippet: ijmptbl, [0x0040604c, 0x004060bd)
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040604c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406050
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406054
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406058
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040605c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406060
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406064
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406068
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040606c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406070
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406074
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406078
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040607c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406080
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406084
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406088
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040608c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406090
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406094
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406098
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040609c
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a0
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a4
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a8
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060ac
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b0
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b4
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b8
.byte 0x00                        // 0x004060bc

// Snippet: db, [0x004060bd, 0x004060c0)
.byte 0x90, 0x90, 0x90            // 0x004060bd

