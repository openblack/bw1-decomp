.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00401140
.extern _jmp_addr_0x00428640
.extern _jmp_addr_0x00454a00
.extern _jmp_addr_0x004753f0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x004795b0
.extern _jmp_addr_0x0047daa0
.extern _jmp_addr_0x00480530
.extern _jmp_addr_0x00483ab0
.extern ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x0048d750
.extern _jmp_addr_0x004eb430
.extern _jmp_addr_0x006171a0
.extern @MorphInit__9MorphableFR7LHPointlPv@20
.extern ?SetAnimTime@Morphable@@UAEXHH@Z
.extern _jmp_addr_0x006182f0
.extern @GetAnim__9MorphableFll@16
.extern _jmp_addr_0x0068e260
.extern _jmp_addr_0x0074e2b0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ?Close@LHFile@@QAEIXZ
.extern ?CloseSegment@LHFile@@QAEIXZ
.extern _atexit
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern @Release__8LH3DMeshFv@4
.extern ?CreateDynamicShadow@LH3DComplexObject@@QAEXXZ
.extern _jmp_addr_0x0085e490
.extern ??0RPFollow@@QAE@XZ
.extern _jmp_addr_0x00863a70
.extern @Init__8RPFollowFiPFii_vPFiff_vPFi_fi@28

.globl _jmp_addr_0x0047ef40
.globl _jmp_addr_0x0047ef90
.globl _jmp_addr_0x0047f000
.globl _jmp_addr_0x0047f020
.globl _jmp_addr_0x0047f070
.globl _jmp_addr_0x0047f0c0
.globl _jmp_addr_0x0047f1c0
.globl _jmp_addr_0x0047f3a0
.globl _jmp_addr_0x0047f490
.globl ??0LHReleasedFile@@QAE@XZ  
.globl @__ct__12LH3DCreatureFP8CreatureRC7LHPointPv@20
.globl _jmp_addr_0x0047f8a0
.globl _jmp_addr_0x0047f8d0
.globl _jmp_addr_0x0047fa20
.globl _jmp_addr_0x0047fa80
.globl _jmp_addr_0x0047fac0
.globl _jmp_addr_0x0047fbf0
.globl _jmp_addr_0x00480240
.globl _jmp_addr_0x00480380

.globl _globl_ct_0x0047f110
.globl _globl_ct_0x0047f140
.globl _globl_ct_0x0047f170
.globl _globl_ct_0x0047f190
.globl _globl_ct_0x0047f450
.globl _globl_ct_0x0047f470
.globl ?SetAnimTime@CreatureFalling@@UAEXHH@Z

start_0x0047ef30_0x00480530:
// Snippet: asm, [0x0047ef30, 0x004804c8)
                         mov.s              eax, ecx                                      // 0x0047ef30    8bc1
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0047ef32    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x0047ef39    c70000000000
                         ret                                                              // 0x0047ef3f    c3
_jmp_addr_0x0047ef40:    push               ebx                                           // 0x0047ef40    53
                         push               ebp                                           // 0x0047ef41    55
                         push               esi                                           // 0x0047ef42    56
                         mov.s              esi, ecx                                      // 0x0047ef43    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0047ef45    8b06
                         xor.s              ebp, ebp                                      // 0x0047ef47    33ed
                         test               eax, eax                                      // 0x0047ef49    85c0
                         push               edi                                           // 0x0047ef4b    57
                         {disp8} je         _jmp_addr_0x0047ef86                          // 0x0047ef4c    7438
                         {disp8} mov        bl, byte ptr [esp + 0x18]                     // 0x0047ef4e    8a5c2418
_jmp_addr_0x0047ef52:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0047ef52    8b4c2414
                         cmp                dword ptr [eax + 0x04], ecx                   // 0x0047ef56    394804
                         mov                edi, dword ptr [eax]                          // 0x0047ef59    8b38
                         {disp8} jne        _jmp_addr_0x0047ef7e                          // 0x0047ef5b    7521
                         cmp                eax, dword ptr [esi]                          // 0x0047ef5d    3b06
                         {disp8} jne        _jmp_addr_0x0047ef65                          // 0x0047ef5f    7504
                         mov                dword ptr [esi], edi                          // 0x0047ef61    893e
                         {disp8} jmp        _jmp_addr_0x0047ef68                          // 0x0047ef63    eb03
_jmp_addr_0x0047ef65:    {disp8} mov        dword ptr [ebp + 0x00], edi                   // 0x0047ef65    897d00
_jmp_addr_0x0047ef68:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0047ef68    8b4e04
                         dec                ecx                                           // 0x0047ef6b    49
                         push               eax                                           // 0x0047ef6c    50
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0047ef6d    894e04
                         call               ??3@YAXPAX@Z                                  // 0x0047ef70    e823ff3200
                         add                esp, 0x04                                     // 0x0047ef75    83c404
                         test               bl, bl                                        // 0x0047ef78    84db
                         {disp8} jne        _jmp_addr_0x0047ef86                          // 0x0047ef7a    750a
                         {disp8} jmp        _jmp_addr_0x0047ef80                          // 0x0047ef7c    eb02
_jmp_addr_0x0047ef7e:    mov.s              ebp, eax                                      // 0x0047ef7e    8be8
_jmp_addr_0x0047ef80:    test               edi, edi                                      // 0x0047ef80    85ff
                         mov.s              eax, edi                                      // 0x0047ef82    8bc7
                         {disp8} jne        _jmp_addr_0x0047ef52                          // 0x0047ef84    75cc
_jmp_addr_0x0047ef86:    pop                edi                                           // 0x0047ef86    5f
                         pop                esi                                           // 0x0047ef87    5e
                         pop                ebp                                           // 0x0047ef88    5d
                         pop                ebx                                           // 0x0047ef89    5b
                         ret                0x0008                                        // 0x0047ef8a    c20800
                         nop                                                              // 0x0047ef8d    90
                         nop                                                              // 0x0047ef8e    90
                         nop                                                              // 0x0047ef8f    90
_jmp_addr_0x0047ef90:    push               ebx                                           // 0x0047ef90    53
                         push               ebp                                           // 0x0047ef91    55
                         push               esi                                           // 0x0047ef92    56
                         push               edi                                           // 0x0047ef93    57
                         mov.s              ebx, ecx                                      // 0x0047ef94    8bd9
_jmp_addr_0x0047ef96:    mov                eax, dword ptr [ebx]                          // 0x0047ef96    8b03
                         test               eax, eax                                      // 0x0047ef98    85c0
                         {disp8} je         _jmp_addr_0x0047eff7                          // 0x0047ef9a    745b
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x0047ef9c    8b7804
                         xor.s              ebp, ebp                                      // 0x0047ef9f    33ed
                         test               eax, eax                                      // 0x0047efa1    85c0
                         {disp8} je         _jmp_addr_0x0047efd1                          // 0x0047efa3    742c
_jmp_addr_0x0047efa5:    cmp                dword ptr [eax + 0x04], edi                   // 0x0047efa5    397804
                         mov                esi, dword ptr [eax]                          // 0x0047efa8    8b30
                         {disp8} jne        _jmp_addr_0x0047efc9                          // 0x0047efaa    751d
                         cmp                eax, dword ptr [ebx]                          // 0x0047efac    3b03
                         {disp8} jne        _jmp_addr_0x0047efb4                          // 0x0047efae    7504
                         mov                dword ptr [ebx], esi                          // 0x0047efb0    8933
                         {disp8} jmp        _jmp_addr_0x0047efb7                          // 0x0047efb2    eb03
_jmp_addr_0x0047efb4:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x0047efb4    897500
_jmp_addr_0x0047efb7:    {disp8} mov        edx, dword ptr [ebx + 0x04]                   // 0x0047efb7    8b5304
                         dec                edx                                           // 0x0047efba    4a
                         push               eax                                           // 0x0047efbb    50
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x0047efbc    895304
                         call               ??3@YAXPAX@Z                                  // 0x0047efbf    e8d4fe3200
                         add                esp, 0x04                                     // 0x0047efc4    83c404
                         {disp8} jmp        _jmp_addr_0x0047efcb                          // 0x0047efc7    eb02
_jmp_addr_0x0047efc9:    mov.s              ebp, eax                                      // 0x0047efc9    8be8
_jmp_addr_0x0047efcb:    test               esi, esi                                      // 0x0047efcb    85f6
                         mov.s              eax, esi                                      // 0x0047efcd    8bc6
                         {disp8} jne        _jmp_addr_0x0047efa5                          // 0x0047efcf    75d4
_jmp_addr_0x0047efd1:    test               edi, edi                                      // 0x0047efd1    85ff
                         {disp8} je         _jmp_addr_0x0047ef96                          // 0x0047efd3    74c1
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0047efd5    8b4704
                         test               eax, eax                                      // 0x0047efd8    85c0
                         {disp8} je         _jmp_addr_0x0047efec                          // 0x0047efda    7410
                         push               eax                                           // 0x0047efdc    50
                         call               ??3@YAXPAX@Z                                  // 0x0047efdd    e8b6fe3200
                         add                esp, 0x04                                     // 0x0047efe2    83c404
                         {disp8} mov        dword ptr [edi + 0x04], 0x00000000            // 0x0047efe5    c7470400000000
_jmp_addr_0x0047efec:    push               edi                                           // 0x0047efec    57
                         call               ??3@YAXPAX@Z                                  // 0x0047efed    e8a6fe3200
                         add                esp, 0x04                                     // 0x0047eff2    83c404
                         {disp8} jmp        _jmp_addr_0x0047ef96                          // 0x0047eff5    eb9f
_jmp_addr_0x0047eff7:    pop                edi                                           // 0x0047eff7    5f
                         pop                esi                                           // 0x0047eff8    5e
                         pop                ebp                                           // 0x0047eff9    5d
                         pop                ebx                                           // 0x0047effa    5b
                         ret                                                              // 0x0047effb    c3
                         nop                                                              // 0x0047effc    90
                         nop                                                              // 0x0047effd    90
                         nop                                                              // 0x0047effe    90
                         nop                                                              // 0x0047efff    90
_jmp_addr_0x0047f000:    push               esi                                           // 0x0047f000    56
                         mov.s              esi, ecx                                      // 0x0047f001    8bf1
                         call               _jmp_addr_0x004795b0                          // 0x0047f003    e8a8a5ffff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0047f008    f644240801
                         {disp8} je         _jmp_addr_0x0047f018                          // 0x0047f00d    7409
                         push               esi                                           // 0x0047f00f    56
                         call               ??3@YAXPAX@Z                                  // 0x0047f010    e883fe3200
                         add                esp, 0x04                                     // 0x0047f015    83c404
_jmp_addr_0x0047f018:    mov.s              eax, esi                                      // 0x0047f018    8bc6
                         pop                esi                                           // 0x0047f01a    5e
                         ret                0x0004                                        // 0x0047f01b    c20400
                         nop                                                              // 0x0047f01e    90
                         nop                                                              // 0x0047f01f    90
_jmp_addr_0x0047f020:    push               ebx                                           // 0x0047f020    53
                         push               ebp                                           // 0x0047f021    55
                         push               esi                                           // 0x0047f022    56
                         mov.s              esi, ecx                                      // 0x0047f023    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0047f025    8b06
                         xor.s              ebp, ebp                                      // 0x0047f027    33ed
                         test               eax, eax                                      // 0x0047f029    85c0
                         push               edi                                           // 0x0047f02b    57
                         {disp8} je         _jmp_addr_0x0047f066                          // 0x0047f02c    7438
                         {disp8} mov        bl, byte ptr [esp + 0x18]                     // 0x0047f02e    8a5c2418
_jmp_addr_0x0047f032:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0047f032    8b4c2414
                         cmp                dword ptr [eax + 0x04], ecx                   // 0x0047f036    394804
                         mov                edi, dword ptr [eax]                          // 0x0047f039    8b38
                         {disp8} jne        _jmp_addr_0x0047f05e                          // 0x0047f03b    7521
                         cmp                eax, dword ptr [esi]                          // 0x0047f03d    3b06
                         {disp8} jne        _jmp_addr_0x0047f045                          // 0x0047f03f    7504
                         mov                dword ptr [esi], edi                          // 0x0047f041    893e
                         {disp8} jmp        _jmp_addr_0x0047f048                          // 0x0047f043    eb03
_jmp_addr_0x0047f045:    {disp8} mov        dword ptr [ebp + 0x00], edi                   // 0x0047f045    897d00
_jmp_addr_0x0047f048:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0047f048    8b4e04
                         dec                ecx                                           // 0x0047f04b    49
                         push               eax                                           // 0x0047f04c    50
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0047f04d    894e04
                         call               ??3@YAXPAX@Z                                  // 0x0047f050    e843fe3200
                         add                esp, 0x04                                     // 0x0047f055    83c404
                         test               bl, bl                                        // 0x0047f058    84db
                         {disp8} jne        _jmp_addr_0x0047f066                          // 0x0047f05a    750a
                         {disp8} jmp        _jmp_addr_0x0047f060                          // 0x0047f05c    eb02
_jmp_addr_0x0047f05e:    mov.s              ebp, eax                                      // 0x0047f05e    8be8
_jmp_addr_0x0047f060:    test               edi, edi                                      // 0x0047f060    85ff
                         mov.s              eax, edi                                      // 0x0047f062    8bc7
                         {disp8} jne        _jmp_addr_0x0047f032                          // 0x0047f064    75cc
_jmp_addr_0x0047f066:    pop                edi                                           // 0x0047f066    5f
                         pop                esi                                           // 0x0047f067    5e
                         pop                ebp                                           // 0x0047f068    5d
                         pop                ebx                                           // 0x0047f069    5b
                         ret                0x0008                                        // 0x0047f06a    c20800
                         nop                                                              // 0x0047f06d    90
                         nop                                                              // 0x0047f06e    90
                         nop                                                              // 0x0047f06f    90
_jmp_addr_0x0047f070:    push               ebx                                           // 0x0047f070    53
                         push               ebp                                           // 0x0047f071    55
                         push               esi                                           // 0x0047f072    56
                         mov.s              esi, ecx                                      // 0x0047f073    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0047f075    8b06
                         xor.s              ebp, ebp                                      // 0x0047f077    33ed
                         test               eax, eax                                      // 0x0047f079    85c0
                         push               edi                                           // 0x0047f07b    57
                         {disp8} je         _jmp_addr_0x0047f0b6                          // 0x0047f07c    7438
                         {disp8} mov        bl, byte ptr [esp + 0x18]                     // 0x0047f07e    8a5c2418
_jmp_addr_0x0047f082:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0047f082    8b4c2414
                         cmp                dword ptr [eax + 0x04], ecx                   // 0x0047f086    394804
                         mov                edi, dword ptr [eax]                          // 0x0047f089    8b38
                         {disp8} jne        _jmp_addr_0x0047f0ae                          // 0x0047f08b    7521
                         cmp                eax, dword ptr [esi]                          // 0x0047f08d    3b06
                         {disp8} jne        _jmp_addr_0x0047f095                          // 0x0047f08f    7504
                         mov                dword ptr [esi], edi                          // 0x0047f091    893e
                         {disp8} jmp        _jmp_addr_0x0047f098                          // 0x0047f093    eb03
_jmp_addr_0x0047f095:    {disp8} mov        dword ptr [ebp + 0x00], edi                   // 0x0047f095    897d00
_jmp_addr_0x0047f098:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0047f098    8b4e04
                         dec                ecx                                           // 0x0047f09b    49
                         push               eax                                           // 0x0047f09c    50
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0047f09d    894e04
                         call               ??3@YAXPAX@Z                                  // 0x0047f0a0    e8f3fd3200
                         add                esp, 0x04                                     // 0x0047f0a5    83c404
                         test               bl, bl                                        // 0x0047f0a8    84db
                         {disp8} jne        _jmp_addr_0x0047f0b6                          // 0x0047f0aa    750a
                         {disp8} jmp        _jmp_addr_0x0047f0b0                          // 0x0047f0ac    eb02
_jmp_addr_0x0047f0ae:    mov.s              ebp, eax                                      // 0x0047f0ae    8be8
_jmp_addr_0x0047f0b0:    test               edi, edi                                      // 0x0047f0b0    85ff
                         mov.s              eax, edi                                      // 0x0047f0b2    8bc7
                         {disp8} jne        _jmp_addr_0x0047f082                          // 0x0047f0b4    75cc
_jmp_addr_0x0047f0b6:    pop                edi                                           // 0x0047f0b6    5f
                         pop                esi                                           // 0x0047f0b7    5e
                         pop                ebp                                           // 0x0047f0b8    5d
                         pop                ebx                                           // 0x0047f0b9    5b
                         ret                0x0008                                        // 0x0047f0ba    c20800
                         nop                                                              // 0x0047f0bd    90
                         nop                                                              // 0x0047f0be    90
                         nop                                                              // 0x0047f0bf    90
_jmp_addr_0x0047f0c0:    push               ebx                                           // 0x0047f0c0    53
                         push               ebp                                           // 0x0047f0c1    55
                         push               esi                                           // 0x0047f0c2    56
                         mov.s              esi, ecx                                      // 0x0047f0c3    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0047f0c5    8b06
                         xor.s              ebp, ebp                                      // 0x0047f0c7    33ed
                         test               eax, eax                                      // 0x0047f0c9    85c0
                         push               edi                                           // 0x0047f0cb    57
                         {disp8} je         _jmp_addr_0x0047f106                          // 0x0047f0cc    7438
                         {disp8} mov        bl, byte ptr [esp + 0x18]                     // 0x0047f0ce    8a5c2418
_jmp_addr_0x0047f0d2:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0047f0d2    8b4c2414
                         cmp                dword ptr [eax + 0x04], ecx                   // 0x0047f0d6    394804
                         mov                edi, dword ptr [eax]                          // 0x0047f0d9    8b38
                         {disp8} jne        _jmp_addr_0x0047f0fe                          // 0x0047f0db    7521
                         cmp                eax, dword ptr [esi]                          // 0x0047f0dd    3b06
                         {disp8} jne        _jmp_addr_0x0047f0e5                          // 0x0047f0df    7504
                         mov                dword ptr [esi], edi                          // 0x0047f0e1    893e
                         {disp8} jmp        _jmp_addr_0x0047f0e8                          // 0x0047f0e3    eb03
_jmp_addr_0x0047f0e5:    {disp8} mov        dword ptr [ebp + 0x00], edi                   // 0x0047f0e5    897d00
_jmp_addr_0x0047f0e8:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0047f0e8    8b4e04
                         dec                ecx                                           // 0x0047f0eb    49
                         push               eax                                           // 0x0047f0ec    50
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0047f0ed    894e04
                         call               ??3@YAXPAX@Z                                  // 0x0047f0f0    e8a3fd3200
                         add                esp, 0x04                                     // 0x0047f0f5    83c404
                         test               bl, bl                                        // 0x0047f0f8    84db
                         {disp8} jne        _jmp_addr_0x0047f106                          // 0x0047f0fa    750a
                         {disp8} jmp        _jmp_addr_0x0047f100                          // 0x0047f0fc    eb02
_jmp_addr_0x0047f0fe:    mov.s              ebp, eax                                      // 0x0047f0fe    8be8
_jmp_addr_0x0047f100:    test               edi, edi                                      // 0x0047f100    85ff
                         mov.s              eax, edi                                      // 0x0047f102    8bc7
                         {disp8} jne        _jmp_addr_0x0047f0d2                          // 0x0047f104    75cc
_jmp_addr_0x0047f106:    pop                edi                                           // 0x0047f106    5f
                         pop                esi                                           // 0x0047f107    5e
                         pop                ebp                                           // 0x0047f108    5d
                         pop                ebx                                           // 0x0047f109    5b
                         ret                0x0008                                        // 0x0047f10a    c20800
                         nop                                                              // 0x0047f10d    90
                         nop                                                              // 0x0047f10e    90
                         nop                                                              // 0x0047f10f    90
_globl_ct_0x0047f110:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0047f110    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0047f116    b001
                         test               al, cl                                        // 0x0047f118    84c8
                         {disp8} jne        _jmp_addr_0x0047f124                          // 0x0047f11a    7508
                         or.s               cl, al                                        // 0x0047f11c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0047f11e    880d34c9fa00
_jmp_addr_0x0047f124:    {disp32} jmp       _jmp_addr_0x0047f130                          // 0x0047f124    e907000000
                         nop                                                              // 0x0047f129    90
                         nop                                                              // 0x0047f12a    90
                         nop                                                              // 0x0047f12b    90
                         nop                                                              // 0x0047f12c    90
                         nop                                                              // 0x0047f12d    90
                         nop                                                              // 0x0047f12e    90
                         nop                                                              // 0x0047f12f    90
_jmp_addr_0x0047f130:    push               0x00407870                                    // 0x0047f130    6870784000
                         call               _atexit                                       // 0x0047f135    e857663400
                         pop                ecx                                           // 0x0047f13a    59
                         ret                                                              // 0x0047f13b    c3
                         nop                                                              // 0x0047f13c    90
                         nop                                                              // 0x0047f13d    90
                         nop                                                              // 0x0047f13e    90
                         nop                                                              // 0x0047f13f    90
_globl_ct_0x0047f140:    {disp32} jmp       _jmp_addr_0x0047f150                          // 0x0047f140    e90b000000
                         nop                                                              // 0x0047f145    90
                         nop                                                              // 0x0047f146    90
                         nop                                                              // 0x0047f147    90
                         nop                                                              // 0x0047f148    90
                         nop                                                              // 0x0047f149    90
                         nop                                                              // 0x0047f14a    90
                         nop                                                              // 0x0047f14b    90
                         nop                                                              // 0x0047f14c    90
                         nop                                                              // 0x0047f14d    90
                         nop                                                              // 0x0047f14e    90
                         nop                                                              // 0x0047f14f    90
_jmp_addr_0x0047f150:    {disp32} fld       dword ptr [rdata_bytes + 0x26078]             // 0x0047f150    d90578f08c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26074]             // 0x0047f156    d80d74f08c00
                         {disp32} fstp      dword ptr [data_bytes + 0x29e1fc]             // 0x0047f15c    d91dfc41c600
                         ret                                                              // 0x0047f162    c3
                         nop                                                              // 0x0047f163    90
                         nop                                                              // 0x0047f164    90
                         nop                                                              // 0x0047f165    90
                         nop                                                              // 0x0047f166    90
                         nop                                                              // 0x0047f167    90
                         nop                                                              // 0x0047f168    90
                         nop                                                              // 0x0047f169    90
                         nop                                                              // 0x0047f16a    90
                         nop                                                              // 0x0047f16b    90
                         nop                                                              // 0x0047f16c    90
                         nop                                                              // 0x0047f16d    90
                         nop                                                              // 0x0047f16e    90
                         nop                                                              // 0x0047f16f    90
_globl_ct_0x0047f170:    {disp32} jmp       _jmp_addr_0x0047f180                          // 0x0047f170    e90b000000
                         nop                                                              // 0x0047f175    90
                         nop                                                              // 0x0047f176    90
                         nop                                                              // 0x0047f177    90
                         nop                                                              // 0x0047f178    90
                         nop                                                              // 0x0047f179    90
                         nop                                                              // 0x0047f17a    90
                         nop                                                              // 0x0047f17b    90
                         nop                                                              // 0x0047f17c    90
                         nop                                                              // 0x0047f17d    90
                         nop                                                              // 0x0047f17e    90
                         nop                                                              // 0x0047f17f    90
_jmp_addr_0x0047f180:    {disp32} mov       dword ptr [data_bytes + 0x29e1f8], 0xffffffff // 0x0047f180    c705f841c600ffffffff
                         ret                                                              // 0x0047f18a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0047f18b    e8e926f8ff
_globl_ct_0x0047f190:    {disp32} jmp       _jmp_addr_0x0047f1a0                          // 0x0047f190    e90b000000
                         nop                                                              // 0x0047f195    90
                         nop                                                              // 0x0047f196    90
                         nop                                                              // 0x0047f197    90
                         nop                                                              // 0x0047f198    90
                         nop                                                              // 0x0047f199    90
                         nop                                                              // 0x0047f19a    90
                         nop                                                              // 0x0047f19b    90
                         nop                                                              // 0x0047f19c    90
                         nop                                                              // 0x0047f19d    90
                         nop                                                              // 0x0047f19e    90
                         nop                                                              // 0x0047f19f    90
_jmp_addr_0x0047f1a0:    {disp32} fld       dword ptr [rdata_bytes + 0x26094]             // 0x0047f1a0    d90594f08c00
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x0047f1a6    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x29e1f4]             // 0x0047f1ac    d91df441c600
                         ret                                                              // 0x0047f1b2    c3
                         nop                                                              // 0x0047f1b3    90
                         nop                                                              // 0x0047f1b4    90
                         nop                                                              // 0x0047f1b5    90
                         nop                                                              // 0x0047f1b6    90
                         nop                                                              // 0x0047f1b7    90
                         nop                                                              // 0x0047f1b8    90
                         nop                                                              // 0x0047f1b9    90
                         nop                                                              // 0x0047f1ba    90
                         nop                                                              // 0x0047f1bb    90
                         nop                                                              // 0x0047f1bc    90
                         nop                                                              // 0x0047f1bd    90
                         nop                                                              // 0x0047f1be    90
                         nop                                                              // 0x0047f1bf    90
_jmp_addr_0x0047f1c0:    {disp32} mov       eax, dword ptr [ecx + 0x000049a0]             // 0x0047f1c0    8b81a0490000
                         cmp                eax, 0x00000089                               // 0x0047f1c6    3d89000000
                         {disp8} jl         _jmp_addr_0x0047f1e1                          // 0x0047f1cb    7c14
                         cmp                eax, 0x0000008c                               // 0x0047f1cd    3d8c000000
                         {disp8} jg         _jmp_addr_0x0047f1e1                          // 0x0047f1d2    7f0d
                         {disp32} fld       dword ptr [data_bytes + 0xa6ec]               // 0x0047f1d4    d905ec069d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c844]             // 0x0047f1da    d80d44588c00
                         ret                                                              // 0x0047f1e0    c3
_jmp_addr_0x0047f1e1:    {disp32} fld       dword ptr [data_bytes + 0xa6ec]               // 0x0047f1e1    d905ec069d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebdc]             // 0x0047f1e7    d80ddc7b8c00
                         ret                                                              // 0x0047f1ed    c3
                         nop                                                              // 0x0047f1ee    90
                         nop                                                              // 0x0047f1ef    90
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0047f1f0    8b4c2404
                         test               ecx, ecx                                      // 0x0047f1f4    85c9
                         {disp8} je         _jmp_addr_0x0047f20f                          // 0x0047f1f6    7417
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0047f1f8    8b442408
                         test               eax, eax                                      // 0x0047f1fc    85c0
                         {disp8} je         _jmp_addr_0x0047f20a                          // 0x0047f1fe    740a
                         cmp                eax, 0x03                                     // 0x0047f200    83f803
                         {disp8} jne        _jmp_addr_0x0047f20f                          // 0x0047f203    750a
                         {disp32} jmp       _jmp_addr_0x004753f0                          // 0x0047f205    e9e661ffff
_jmp_addr_0x0047f20a:    {disp32} jmp       _jmp_addr_0x004753f0                          // 0x0047f20a    e9e161ffff
_jmp_addr_0x0047f20f:    ret                                                              // 0x0047f20f    c3
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e1b0]        // 0x0047f210    8b15b041c600
                         cmp                edx, 0x10                                     // 0x0047f216    83fa10
                         push               esi                                           // 0x0047f219    56
                         {disp8} jge        _jmp_addr_0x0047f257                          // 0x0047f21a    7d3b
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0047f21c    8b74240c
                         xor.s              eax, eax                                      // 0x0047f220    33c0
                         test               edx, edx                                      // 0x0047f222    85d2
                         {disp8} jle        _jmp_addr_0x0047f237                          // 0x0047f224    7e11
                         mov                ecx, 0x00c641b4                               // 0x0047f226    b9b441c600
_jmp_addr_0x0047f22b:    cmp                dword ptr [ecx], esi                          // 0x0047f22b    3931
                         {disp8} je         _jmp_addr_0x0047f257                          // 0x0047f22d    7428
                         inc                eax                                           // 0x0047f22f    40
                         add                ecx, 0x4                                      // 0x0047f230    83c104
                         cmp.s              eax, edx                                      // 0x0047f233    3bc2
                         {disp8} jl         _jmp_addr_0x0047f22b                          // 0x0047f235    7cf4
_jmp_addr_0x0047f237:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0047f237    8b4c2408
                         push               esi                                           // 0x0047f23b    56
                         call               _jmp_addr_0x0047daa0                          // 0x0047f23c    e85fe8ffff
                         test               eax, eax                                      // 0x0047f241    85c0
                         {disp8} je         _jmp_addr_0x0047f257                          // 0x0047f243    7412
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e1b0]        // 0x0047f245    a1b041c600
                         {disp32} mov       dword ptr [eax * 0x4 + 0x00c641b4], esi       // 0x0047f24a    893485b441c600
                         inc                eax                                           // 0x0047f251    40
                         {disp32} mov       dword ptr [data_bytes + 0x29e1b0], eax        // 0x0047f252    a3b041c600
_jmp_addr_0x0047f257:    pop                esi                                           // 0x0047f257    5e
                         ret                                                              // 0x0047f258    c3
                         nop                                                              // 0x0047f259    90
                         nop                                                              // 0x0047f25a    90
                         nop                                                              // 0x0047f25b    90
                         nop                                                              // 0x0047f25c    90
                         nop                                                              // 0x0047f25d    90
                         nop                                                              // 0x0047f25e    90
                         nop                                                              // 0x0047f25f    90
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0047f260    8b4c2404
                         test               ecx, ecx                                      // 0x0047f264    85c9
                         {disp8} je         _jmp_addr_0x0047f27e                          // 0x0047f266    7416
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0047f268    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0047f26c    8b542408
                         push               eax                                           // 0x0047f270    50
                         push               edx                                           // 0x0047f271    52
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047f272    e8d985ffff
                         mov.s              ecx, eax                                      // 0x0047f277    8bc8
                         call               _jmp_addr_0x0047f300                          // 0x0047f279    e882000000
_jmp_addr_0x0047f27e:    ret                                                              // 0x0047f27e    c3
                         nop                                                              // 0x0047f27f    90
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0047f280    8b4c2404
                         test               ecx, ecx                                      // 0x0047f284    85c9
                         {disp8} je         _jmp_addr_0x0047f294                          // 0x0047f286    740c
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047f288    e8c385ffff
                         mov.s              ecx, eax                                      // 0x0047f28d    8bc8
                         {disp32} jmp       _jmp_addr_0x0047f2a0                          // 0x0047f28f    e90c000000
_jmp_addr_0x0047f294:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0047f294    d90598a38a00
                         ret                                                              // 0x0047f29a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0047f29b    e8d925f8ff
_jmp_addr_0x0047f2a0:    {disp32} mov       eax, dword ptr [ecx + 0x00005190]             // 0x0047f2a0    8b8190510000
                         cmp                eax, 0x04                                     // 0x0047f2a6    83f804
                         {disp8} jne        _jmp_addr_0x0047f2b2                          // 0x0047f2a9    7507
                         {disp32} fld       dword ptr [rdata_bytes + 0x33f4]              // 0x0047f2ab    d905f4c38a00
                         ret                                                              // 0x0047f2b1    c3
_jmp_addr_0x0047f2b2:    cmp                eax, 0x05                                     // 0x0047f2b2    83f805
                         {disp8} jne        _jmp_addr_0x0047f2f4                          // 0x0047f2b5    753d
                         {disp32} mov       eax, dword ptr [ecx + 0x00005220]             // 0x0047f2b7    8b8120520000
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x0047f2bd    d94010
                         add                eax, 0x10                                     // 0x0047f2c0    83c010
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0047f2c3    d94004
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0047f2c6    d94008
                         {disp32} mov       eax, dword ptr [ecx + 0x00005198]             // 0x0047f2c9    8b8198510000
                         fld                st(0)                                         // 0x0047f2cf    d9c0
                         fmul               st, st(1)                                     // 0x0047f2d1    d8c9
                         fld                st(2)                                         // 0x0047f2d3    d9c2
                         fmul               st, st(3)                                     // 0x0047f2d5    d8cb
                         faddp              st(1), st                                     // 0x0047f2d7    dec1
                         fld                st(3)                                         // 0x0047f2d9    d9c3
                         fmul               st, st(4)                                     // 0x0047f2db    d8cc
                         faddp              st(1), st                                     // 0x0047f2dd    dec1
                         fsqrt                                                            // 0x0047f2df    d9fa
                         fstp               st(3)                                         // 0x0047f2e1    dddb
                         fstp               st(0)                                         // 0x0047f2e3    ddd8
                         fstp               st(0)                                         // 0x0047f2e5    ddd8
                         {disp32} fmul      dword ptr [ecx + 0x00000094]                  // 0x0047f2e7    d88994000000
                         {disp32} fsub      dword ptr [eax + 0x00064038]                  // 0x0047f2ed    d8a038400600
                         ret                                                              // 0x0047f2f3    c3
_jmp_addr_0x0047f2f4:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0047f2f4    d90598a38a00
                         ret                                                              // 0x0047f2fa    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0047f2fb    e87925f8ff
_jmp_addr_0x0047f300:    sub                esp, 0x0c                                     // 0x0047f300    83ec0c
                         push               esi                                           // 0x0047f303    56
                         mov.s              esi, ecx                                      // 0x0047f304    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005190]             // 0x0047f306    8b8690510000
                         sub                eax, 0x00                                     // 0x0047f30c    83e800
                         {disp8} je         _jmp_addr_0x0047f327                          // 0x0047f30f    7416
                         sub                eax, 0x02                                     // 0x0047f311    83e802
                         {disp8} jne        _jmp_addr_0x0047f375                          // 0x0047f314    755f
                         {disp32} mov       dword ptr [esi + 0x00005190], 0x00000003      // 0x0047f316    c7869051000003000000
                         pop                esi                                           // 0x0047f320    5e
                         add                esp, 0x0c                                     // 0x0047f321    83c40c
                         ret                0x0008                                        // 0x0047f324    c20800
_jmp_addr_0x0047f327:    {disp32} mov       eax, dword ptr [esi + 0x00005198]             // 0x0047f327    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064040]                  // 0x0047f32d    d98040400600
                         {disp8} mov        ecx, dword ptr [esi + 0x7c]                   // 0x0047f333    8b4e7c
                         fld                st(0)                                         // 0x0047f336    d9c0
                         {disp8} lea        eax, dword ptr [esi + 0x78]                   // 0x0047f338    8d4678
                         fsin                                                             // 0x0047f33b    d9fe
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0047f33d    8d542404
                         push               edx                                           // 0x0047f341    52
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0047f342    894c240c
                         push               eax                                           // 0x0047f346    50
                         mov.s              ecx, esi                                      // 0x0047f347    8bce
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0047f349    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0047f34d    d95c240c
                         fcos                                                             // 0x0047f351    d9ff
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0047f353    d84c2420
                         fchs                                                             // 0x0047f357    d9e0
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0047f359    d944240c
                         fadd               dword ptr [eax]                               // 0x0047f35d    d800
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0047f35f    d95c240c
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x0047f363    d84008
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0047f366    d95c2414
                         call               _jmp_addr_0x00483ab0                          // 0x0047f36a    e841470000
                         {disp32} mov       dword ptr [esi + 0x00005190], eax             // 0x0047f36f    898690510000
_jmp_addr_0x0047f375:    pop                esi                                           // 0x0047f375    5e
                         add                esp, 0x0c                                     // 0x0047f376    83c40c
                         ret                0x0008                                        // 0x0047f379    c20800
                         nop                                                              // 0x0047f37c    90
                         nop                                                              // 0x0047f37d    90
                         nop                                                              // 0x0047f37e    90
                         nop                                                              // 0x0047f37f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e208]        // 0x0047f380    a10842c600
                         inc                eax                                           // 0x0047f385    40
                         cmp                eax, 0x03                                     // 0x0047f386    83f803
                         {disp32} mov       dword ptr [data_bytes + 0x29e208], eax        // 0x0047f389    a30842c600
                         {disp8} jne        _jmp_addr_0x0047f39a                          // 0x0047f38e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x29e208], 0x00000000 // 0x0047f390    c7050842c60000000000
_jmp_addr_0x0047f39a:    ret                                                              // 0x0047f39a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0047f39b    e8d924f8ff
_jmp_addr_0x0047f3a0:    sub                esp, 0x0c                                     // 0x0047f3a0    83ec0c
                         push               ebx                                           // 0x0047f3a3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0047f3a4    8b5c2414
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x0047f3a8    8b431c
                         push               esi                                           // 0x0047f3ab    56
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x0047f3ac    8b742420
                         push               edi                                           // 0x0047f3b0    57
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                   // 0x0047f3b1    8d7b14
                         mov.s              ecx, edi                                      // 0x0047f3b4    8bcf
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0047f3b6    8944241c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0047f3ba    e8d13c3800
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0047f3bf    d844241c
                         xor.s              ecx, ecx                                      // 0x0047f3c3    33c9
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x0047f3c5    d95e04
                         fild               dword ptr [edi]                               // 0x0047f3c8    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0047f3ca    d80da4a38a00
                         fstp               dword ptr [esi]                               // 0x0047f3d0    d91e
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x0047f3d2    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0047f3d5    d80da4a38a00
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0047f3db    d95e08
                         {disp8} mov        cx, word ptr [ebx + 0x5a]                     // 0x0047f3de    668b4b5a
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0047f3e2    894c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x0047f3e6    db44241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x0047f3ea    d80d1cb48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x0047f3f0    d80d1cc48a00
                         {disp8} fst        dword ptr [esp + 0x1c]                        // 0x0047f3f6    d954241c
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x0047f3fa    d81d2cb28a00
                         fnstsw             ax                                            // 0x0047f400    dfe0
                         test               ah, 0x41                                      // 0x0047f402    f6c441
                         {disp8} jne        _jmp_addr_0x0047f448                          // 0x0047f405    7541
                         {disp8} mov        bx, word ptr [ebx + 0x5c]                     // 0x0047f407    668b5b5c
                         push               ebx                                           // 0x0047f40b    53
                         call               _jmp_addr_0x0074e2b0                          // 0x0047f40c    e89fee2c00
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0047f411    d9442420
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0047f415    d84c2424
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x0047f419    8b5604
                         add                esp, 0x04                                     // 0x0047f41c    83c404
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x0047f41f    895604
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0047f422    d95c241c
                         fld                st(0)                                         // 0x0047f426    d9c0
                         fsin                                                             // 0x0047f428    d9fe
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0047f42a    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0047f42e    d95c240c
                         fcos                                                             // 0x0047f432    d9ff
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0047f434    d84c241c
                         fchs                                                             // 0x0047f438    d9e0
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0047f43a    d944240c
                         fadd               dword ptr [esi]                               // 0x0047f43e    d806
                         fstp               dword ptr [esi]                               // 0x0047f440    d91e
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0047f442    d84608
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0047f445    d95e08
_jmp_addr_0x0047f448:    pop                edi                                           // 0x0047f448    5f
                         pop                esi                                           // 0x0047f449    5e
                         pop                ebx                                           // 0x0047f44a    5b
                         add                esp, 0x0c                                     // 0x0047f44b    83c40c
                         ret                                                              // 0x0047f44e    c3
                         nop                                                              // 0x0047f44f    90
_globl_ct_0x0047f450:    {disp32} jmp       _jmp_addr_0x0047f460                          // 0x0047f450    e90b000000
                         nop                                                              // 0x0047f455    90
                         nop                                                              // 0x0047f456    90
                         nop                                                              // 0x0047f457    90
                         nop                                                              // 0x0047f458    90
                         nop                                                              // 0x0047f459    90
                         nop                                                              // 0x0047f45a    90
                         nop                                                              // 0x0047f45b    90
                         nop                                                              // 0x0047f45c    90
                         nop                                                              // 0x0047f45d    90
                         nop                                                              // 0x0047f45e    90
                         nop                                                              // 0x0047f45f    90
_jmp_addr_0x0047f460:    ret                                                              // 0x0047f460    c3
                         nop                                                              // 0x0047f461    90
                         nop                                                              // 0x0047f462    90
                         nop                                                              // 0x0047f463    90
                         nop                                                              // 0x0047f464    90
                         nop                                                              // 0x0047f465    90
                         nop                                                              // 0x0047f466    90
                         nop                                                              // 0x0047f467    90
                         nop                                                              // 0x0047f468    90
                         nop                                                              // 0x0047f469    90
                         nop                                                              // 0x0047f46a    90
                         nop                                                              // 0x0047f46b    90
                         nop                                                              // 0x0047f46c    90
                         nop                                                              // 0x0047f46d    90
                         nop                                                              // 0x0047f46e    90
                         nop                                                              // 0x0047f46f    90
_globl_ct_0x0047f470:    {disp32} jmp       _jmp_addr_0x0047f480                          // 0x0047f470    e90b000000
                         nop                                                              // 0x0047f475    90
                         nop                                                              // 0x0047f476    90
                         nop                                                              // 0x0047f477    90
                         nop                                                              // 0x0047f478    90
                         nop                                                              // 0x0047f479    90
                         nop                                                              // 0x0047f47a    90
                         nop                                                              // 0x0047f47b    90
                         nop                                                              // 0x0047f47c    90
                         nop                                                              // 0x0047f47d    90
                         nop                                                              // 0x0047f47e    90
                         nop                                                              // 0x0047f47f    90
_jmp_addr_0x0047f480:    ret                                                              // 0x0047f480    c3
                         nop                                                              // 0x0047f481    90
                         nop                                                              // 0x0047f482    90
                         nop                                                              // 0x0047f483    90
                         nop                                                              // 0x0047f484    90
                         nop                                                              // 0x0047f485    90
                         nop                                                              // 0x0047f486    90
                         nop                                                              // 0x0047f487    90
                         nop                                                              // 0x0047f488    90
                         nop                                                              // 0x0047f489    90
                         nop                                                              // 0x0047f48a    90
                         nop                                                              // 0x0047f48b    90
                         nop                                                              // 0x0047f48c    90
                         nop                                                              // 0x0047f48d    90
                         nop                                                              // 0x0047f48e    90
                         nop                                                              // 0x0047f48f    90
_jmp_addr_0x0047f490:    push               ebx                                           // 0x0047f490    53
                         mov.s              ebx, ecx                                      // 0x0047f491    8bd9
                         push               edi                                           // 0x0047f493    57
                         {disp8} lea        ecx, dword ptr [ebx + 0x0c]                   // 0x0047f494    8d4b0c
                         call               ??0LHReleasedFile@@QAE@XZ                     // 0x0047f497    e834020000
                         push               0x0046d5e0                                    // 0x0047f49c    68e0d54600
                         push               0x8                                           // 0x0047f4a1    6a08
                         push               0x20                                          // 0x0047f4a3    6a20
                         {disp32} lea       eax, dword ptr [ebx + 0x000000d4]             // 0x0047f4a5    8d83d4000000
                         push               eax                                           // 0x0047f4ab    50
                         call               _jmp_addr_0x00401140                          // 0x0047f4ac    e88f1cf8ff
                         push               0x006170e0                                    // 0x0047f4b1    68e0706100
                         push               0x6                                           // 0x0047f4b6    6a06
                         push               0x00000ae0                                    // 0x0047f4b8    68e00a0000
                         {disp32} lea       ecx, dword ptr [ebx + 0x000001d4]             // 0x0047f4bd    8d8bd4010000
                         push               ecx                                           // 0x0047f4c3    51
                         call               _jmp_addr_0x00401140                          // 0x0047f4c4    e8771cf8ff
                         push               0x000001d1                                    // 0x0047f4c9    68d1010000
                         xor.s              edi, edi                                      // 0x0047f4ce    33ff
                         push               0x009d1094                                    // 0x0047f4d0    6894109d00
                         push               0x000640c0                                    // 0x0047f4d5    68c0400600
                         mov                dword ptr [ebx], 0x008cf0e0                   // 0x0047f4da    c703e0f08c00
                         {disp32} mov       dword ptr [ebx + 0x000057b4], edi             // 0x0047f4e0    89bbb4570000
                         {disp32} mov       dword ptr [ebx + 0x00004834], edi             // 0x0047f4e6    89bb34480000
                         call               ___nw__FUl                                    // 0x0047f4ec    e89fc23500
                         add                esp, 0x0c                                     // 0x0047f4f1    83c40c
                         cmp.s              eax, edi                                      // 0x0047f4f4    3bc7
                         {disp8} je         _jmp_addr_0x0047f501                          // 0x0047f4f6    7409
                         mov.s              ecx, eax                                      // 0x0047f4f8    8bc8
                         call               ??0RPFollow@@QAE@XZ                           // 0x0047f4fa    e8e1443e00
                         {disp8} jmp        _jmp_addr_0x0047f503                          // 0x0047f4ff    eb02
_jmp_addr_0x0047f501:    xor.s              eax, eax                                      // 0x0047f501    33c0
_jmp_addr_0x0047f503:    push               0x10                                          // 0x0047f503    6a10
                         push               0x0047f280                                    // 0x0047f505    6880f24700
                         push               0x0047f260                                    // 0x0047f50a    6860f24700
                         push               0x0047f1f0                                    // 0x0047f50f    68f0f14700
                         push               edi                                           // 0x0047f514    57
                         mov.s              ecx, eax                                      // 0x0047f515    8bc8
                         {disp32} mov       dword ptr [ebx + 0x00005198], eax             // 0x0047f517    898398510000
                         {disp32} mov       dword ptr [ebx + 0x0000571c], 0x00000010      // 0x0047f51d    c7831c57000010000000
                         call               @Init__8RPFollowFiPFii_vPFiff_vPFi_fi@28      // 0x0047f527    e894453e00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0047f52c    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0047f530    8b442410
                         push               edx                                           // 0x0047f534    52
                         push               eax                                           // 0x0047f535    50
                         mov.s              ecx, ebx                                      // 0x0047f536    8bcb
                         call               _jmp_addr_0x0047fc20                          // 0x0047f538    e8e3060000
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000482c]             // 0x0047f53d    8b8b2c480000
                         call               ?CreateDynamicShadow@LH3DComplexObject@@QAEXXZ// 0x0047f543    e8d8ca3800
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000482c]             // 0x0047f548    8b8b2c480000
                         mov                edx, dword ptr [ecx]                          // 0x0047f54e    8b11
                         call               dword ptr [edx + 0x1b8]                       // 0x0047f550    ff92b8010000
                         test               eax, eax                                      // 0x0047f556    85c0
                         {disp8} je         _jmp_addr_0x0047f56b                          // 0x0047f558    7411
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000482c]             // 0x0047f55a    8b8b2c480000
                         mov                eax, dword ptr [ecx]                          // 0x0047f560    8b01
                         call               dword ptr [eax + 0x1b8]                       // 0x0047f562    ff90b8010000
                         {disp8} mov        dword ptr [eax + 0x3c], edi                   // 0x0047f568    89783c
_jmp_addr_0x0047f56b:    push               0x000001da                                    // 0x0047f56b    68da010000
                         push               0x009d1094                                    // 0x0047f570    6894109d00
                         push               0x00002008                                    // 0x0047f575    6808200000
                         call               ___nw__FUl                                    // 0x0047f57a    e811c23500
                         add                esp, 0x0c                                     // 0x0047f57f    83c40c
                         cmp.s              eax, edi                                      // 0x0047f582    3bc7
                         {disp8} je         _jmp_addr_0x0047f58d                          // 0x0047f584    7407
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x0047f586    897804
                         mov                dword ptr [eax], edi                          // 0x0047f589    8938
                         mov.s              edi, eax                                      // 0x0047f58b    8bf8
_jmp_addr_0x0047f58d:    {disp32} mov       dword ptr [ebx + 0x00005184], edi             // 0x0047f58d    89bb84510000
                         push               ebp                                           // 0x0047f593    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x0047f594    8b6c2410
                         push               esi                                           // 0x0047f598    56
                         {disp32} mov       esi, dword ptr [ebp + 0x00005184]             // 0x0047f599    8bb584510000
                         mov                ecx, 0x00000802                               // 0x0047f59f    b902080000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047f5a4    f3a5
                         or                 ecx, 0xffffffff                               // 0x0047f5a6    83c9ff
                         xor.s              eax, eax                                      // 0x0047f5a9    33c0
                         {disp32} lea       edx, dword ptr [ebp + 0x00005754]             // 0x0047f5ab    8d9554570000
                         {disp32} mov       dword ptr [ebx + 0x00005220], eax             // 0x0047f5b1    898320520000
                         {disp32} mov       dword ptr [ebx + 0x00005288], eax             // 0x0047f5b7    898388520000
                         {disp32} mov       dword ptr [ebx + 0x00005274], eax             // 0x0047f5bd    898374520000
                         {disp32} mov       dword ptr [ebx + 0x000057a0], 0x00000001      // 0x0047f5c3    c783a057000001000000
                         mov.s              edi, edx                                      // 0x0047f5cd    8bfa
                         repne scasb                                                      // 0x0047f5cf    f2ae
                         not                ecx                                           // 0x0047f5d1    f7d1
                         sub.s              edi, ecx                                      // 0x0047f5d3    2bf9
                         mov.s              eax, ecx                                      // 0x0047f5d5    8bc1
                         {disp32} lea       esi, dword ptr [ebx + 0x00005754]             // 0x0047f5d7    8db354570000
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x0047f5dd    8974241c
                         shr                ecx, 2                                        // 0x0047f5e1    c1e902
                         mov.s              esi, edi                                      // 0x0047f5e4    8bf7
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x0047f5e6    8b7c241c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047f5ea    f3a5
                         mov.s              ecx, eax                                      // 0x0047f5ec    8bc8
                         and                ecx, 0x03                                     // 0x0047f5ee    83e103
                         push               0x0                                           // 0x0047f5f1    6a00
                         rep movsb                                                        // 0x0047f5f3    f3a4
                         push               edx                                           // 0x0047f5f5    52
                         mov.s              ecx, ebx                                      // 0x0047f5f6    8bcb
                         call               _jmp_addr_0x004eb430                          // 0x0047f5f8    e833be0600
                         push               ecx                                           // 0x0047f5fd    51
                         {disp32} fld       dword ptr [ebp + 0x00000090]                  // 0x0047f5fe    d98590000000
                         mov.s              ecx, ebx                                      // 0x0047f604    8bcb
                         fstp               dword ptr [esp]                               // 0x0047f606    d91c24
                         call               _jmp_addr_0x00480530                          // 0x0047f609    e8220f0000
                         {disp32} fld       dword ptr [ebp + 0x000000a4]                  // 0x0047f60e    d985a4000000
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]              // 0x0047f614    d81578b68a00
                         fnstsw             ax                                            // 0x0047f61a    dfe0
                         test               ah, 0x41                                      // 0x0047f61c    f6c441
                         {disp8} jne        _jmp_addr_0x0047f638                          // 0x0047f61f    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0047f621    d81590a38a00
                         fnstsw             ax                                            // 0x0047f627    dfe0
                         test               ah, 0x01                                      // 0x0047f629    f6c401
                         {disp8} jne        _jmp_addr_0x0047f640                          // 0x0047f62c    7512
                         fstp               st(0)                                         // 0x0047f62e    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0047f630    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0047f640                          // 0x0047f636    eb08
_jmp_addr_0x0047f638:    fstp               st(0)                                         // 0x0047f638    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x0047f63a    d90578b68a00
_jmp_addr_0x0047f640:    {disp32} fstp      dword ptr [ebx + 0x000000a4]                  // 0x0047f640    d99ba4000000
                         {disp32} fld       dword ptr [ebp + 0x000000ac]                  // 0x0047f646    d985ac000000
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]              // 0x0047f64c    d81578b68a00
                         fnstsw             ax                                            // 0x0047f652    dfe0
                         test               ah, 0x41                                      // 0x0047f654    f6c441
                         {disp8} jne        _jmp_addr_0x0047f670                          // 0x0047f657    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0047f659    d81590a38a00
                         fnstsw             ax                                            // 0x0047f65f    dfe0
                         test               ah, 0x01                                      // 0x0047f661    f6c401
                         {disp8} jne        _jmp_addr_0x0047f678                          // 0x0047f664    7512
                         fstp               st(0)                                         // 0x0047f666    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0047f668    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0047f678                          // 0x0047f66e    eb08
_jmp_addr_0x0047f670:    fstp               st(0)                                         // 0x0047f670    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x0047f672    d90578b68a00
_jmp_addr_0x0047f678:    {disp32} fstp      dword ptr [ebx + 0x000000ac]                  // 0x0047f678    d99bac000000
                         pop                esi                                           // 0x0047f67e    5e
                         {disp32} fld       dword ptr [ebp + 0x0000009c]                  // 0x0047f67f    d9859c000000
                         pop                ebp                                           // 0x0047f685    5d
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]              // 0x0047f686    d81578b68a00
                         fnstsw             ax                                            // 0x0047f68c    dfe0
                         test               ah, 0x41                                      // 0x0047f68e    f6c441
                         {disp8} jne        _jmp_addr_0x0047f6aa                          // 0x0047f691    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0047f693    d81590a38a00
                         fnstsw             ax                                            // 0x0047f699    dfe0
                         test               ah, 0x01                                      // 0x0047f69b    f6c401
                         {disp8} jne        _jmp_addr_0x0047f6b2                          // 0x0047f69e    7512
                         fstp               st(0)                                         // 0x0047f6a0    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0047f6a2    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0047f6b2                          // 0x0047f6a8    eb08
_jmp_addr_0x0047f6aa:    fstp               st(0)                                         // 0x0047f6aa    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x0047f6ac    d90578b68a00
_jmp_addr_0x0047f6b2:    pop                edi                                           // 0x0047f6b2    5f
                         {disp32} fstp      dword ptr [ebx + 0x0000009c]                  // 0x0047f6b3    d99b9c000000
                         {disp32} mov       dword ptr [ebx + 0x00004834], 0x00000000      // 0x0047f6b9    c7833448000000000000
                         mov.s              eax, ebx                                      // 0x0047f6c3    8bc3
                         pop                ebx                                           // 0x0047f6c5    5b
                         ret                0x000c                                        // 0x0047f6c6    c20c00
                         nop                                                              // 0x0047f6c9    90
                         nop                                                              // 0x0047f6ca    90
                         nop                                                              // 0x0047f6cb    90
                         nop                                                              // 0x0047f6cc    90
                         nop                                                              // 0x0047f6cd    90
                         nop                                                              // 0x0047f6ce    90
                         nop                                                              // 0x0047f6cf    90
??0LHReleasedFile@@QAE@XZ:
                                mov.s              edx, ecx                                      // 0x0047f6d0    8bd1
                         push               esi                                           // 0x0047f6d2    56
                         xor.s              esi, esi                                      // 0x0047f6d3    33f6
                         {disp8} mov        dword ptr [edx + 0x08], esi                   // 0x0047f6d5    897208
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x0047f6d8    897204
                         {disp8} mov        dword ptr [edx + 0x38], esi                   // 0x0047f6db    897238
                         {disp8} mov        dword ptr [edx + 0x3c], esi                   // 0x0047f6de    89723c
                         push               edi                                           // 0x0047f6e1    57
                         {disp8} lea        edi, dword ptr [edx + 0x14]                   // 0x0047f6e2    8d7a14
                         xor.s              eax, eax                                      // 0x0047f6e5    33c0
                         mov                ecx, 0x00000008                               // 0x0047f6e7    b908000000
                         rep stosd                                                        // 0x0047f6ec    f3ab
                         stosb                                                            // 0x0047f6ee    aa
                         pop                edi                                           // 0x0047f6ef    5f
                         {disp8} mov        dword ptr [edx + 0x68], esi                   // 0x0047f6f0    897268
                         {disp8} mov        dword ptr [edx + 0x0c], esi                   // 0x0047f6f3    89720c
                         {disp8} mov        dword ptr [edx + 0x10], esi                   // 0x0047f6f6    897210
                         {disp8} mov        dword ptr [edx + 0x40], esi                   // 0x0047f6f9    897240
                         {disp8} mov        dword ptr [edx + 0x44], esi                   // 0x0047f6fc    897244
                         {disp8} mov        dword ptr [edx + 0x48], esi                   // 0x0047f6ff    897248
                         {disp8} mov        dword ptr [edx + 0x54], esi                   // 0x0047f702    897254
                         {disp8} mov        dword ptr [edx + 0x58], esi                   // 0x0047f705    897258
                         {disp8} mov        dword ptr [edx + 0x5c], esi                   // 0x0047f708    89725c
                         {disp8} mov        dword ptr [edx + 0x60], esi                   // 0x0047f70b    897260
                         mov                dword ptr [edx], 0x008c4d0c                   // 0x0047f70e    c7020c4d8c00
                         mov.s              eax, edx                                      // 0x0047f714    8bc2
                         pop                esi                                           // 0x0047f716    5e
                         ret                                                              // 0x0047f717    c3
                         nop                                                              // 0x0047f718    90
                         nop                                                              // 0x0047f719    90
                         nop                                                              // 0x0047f71a    90
                         nop                                                              // 0x0047f71b    90
                         nop                                                              // 0x0047f71c    90
                         nop                                                              // 0x0047f71d    90
                         nop                                                              // 0x0047f71e    90
                         nop                                                              // 0x0047f71f    90
                         sub                esp, 0x0c                                     // 0x0047f720    83ec0c
                         push               esi                                           // 0x0047f723    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0047f724    8b742414
                         fld                dword ptr [esi]                               // 0x0047f728    d906
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0047f72a    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0047f730    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0047f736    e8c51c3200
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x0047f73b    d94608
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0047f73e    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0047f744    89442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0047f748    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0047f74e    e8ad1c3200
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0047f753    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0047f757    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0047f75b    c744240c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0047f763    e828393800
                         pop                esi                                           // 0x0047f768    5e
                         add                esp, 0x0c                                     // 0x0047f769    83c40c
                         ret                0x0004                                        // 0x0047f76c    c20400
                         nop                                                              // 0x0047f76f    90
@__ct__12LH3DCreatureFP8CreatureRC7LHPointPv@20:    push               ebx                                           // 0x0047f770    53
                         push               esi                                           // 0x0047f771    56
                         mov.s              esi, ecx                                      // 0x0047f772    8bf1
                         push               edi                                           // 0x0047f774    57
                         {disp8} lea        ecx, dword ptr [esi + 0x0c]                   // 0x0047f775    8d4e0c
                         call               ??0LHReleasedFile@@QAE@XZ                     // 0x0047f778    e853ffffff
                         push               0x0046d5e0                                    // 0x0047f77d    68e0d54600
                         push               0x8                                           // 0x0047f782    6a08
                         push               0x20                                          // 0x0047f784    6a20
                         {disp32} lea       eax, dword ptr [esi + 0x000000d4]             // 0x0047f786    8d86d4000000
                         push               eax                                           // 0x0047f78c    50
                         call               _jmp_addr_0x00401140                          // 0x0047f78d    e8ae19f8ff
                         push               0x006170e0                                    // 0x0047f792    68e0706100
                         push               0x6                                           // 0x0047f797    6a06
                         push               0x00000ae0                                    // 0x0047f799    68e00a0000
                         {disp32} lea       ecx, dword ptr [esi + 0x000001d4]             // 0x0047f79e    8d8ed4010000
                         push               ecx                                           // 0x0047f7a4    51
                         call               _jmp_addr_0x00401140                          // 0x0047f7a5    e89619f8ff
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0047f7aa    8b7c2410
                         push               0x000001f6                                    // 0x0047f7ae    68f6010000
                         push               0x009d1094                                    // 0x0047f7b3    6894109d00
                         xor.s              ebx, ebx                                      // 0x0047f7b8    33db
                         push               0x000640c0                                    // 0x0047f7ba    68c0400600
                         mov                dword ptr [esi], 0x008cf0e0                   // 0x0047f7bf    c706e0f08c00
                         {disp32} mov       dword ptr [esi + 0x000057b4], ebx             // 0x0047f7c5    899eb4570000
                         {disp32} mov       dword ptr [esi + 0x00004834], edi             // 0x0047f7cb    89be34480000
                         call               ___nw__FUl                                    // 0x0047f7d1    e8babf3500
                         add                esp, 0x0c                                     // 0x0047f7d6    83c40c
                         cmp.s              eax, ebx                                      // 0x0047f7d9    3bc3
                         {disp8} je         _jmp_addr_0x0047f7e6                          // 0x0047f7db    7409
                         mov.s              ecx, eax                                      // 0x0047f7dd    8bc8
                         call               ??0RPFollow@@QAE@XZ                           // 0x0047f7df    e8fc413e00
                         {disp8} jmp        _jmp_addr_0x0047f7e8                          // 0x0047f7e4    eb02
_jmp_addr_0x0047f7e6:    xor.s              eax, eax                                      // 0x0047f7e6    33c0
_jmp_addr_0x0047f7e8:    push               0x10                                          // 0x0047f7e8    6a10
                         push               0x0047f280                                    // 0x0047f7ea    6880f24700
                         push               0x0047f260                                    // 0x0047f7ef    6860f24700
                         push               0x0047f1f0                                    // 0x0047f7f4    68f0f14700
                         push               edi                                           // 0x0047f7f9    57
                         mov.s              ecx, eax                                      // 0x0047f7fa    8bc8
                         {disp32} mov       dword ptr [esi + 0x00005198], eax             // 0x0047f7fc    898698510000
                         {disp32} mov       dword ptr [esi + 0x0000571c], 0x00000010      // 0x0047f802    c7861c57000010000000
                         call               @Init__8RPFollowFiPFii_vPFiff_vPFi_fi@28      // 0x0047f80c    e8af423e00
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0047f811    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0047f815    8b442414
                         push               edx                                           // 0x0047f819    52
                         push               eax                                           // 0x0047f81a    50
                         mov.s              ecx, esi                                      // 0x0047f81b    8bce
                         call               _jmp_addr_0x0047fc20                          // 0x0047f81d    e8fe030000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0047f822    8b8e2c480000
                         call               ?CreateDynamicShadow@LH3DComplexObject@@QAEXXZ// 0x0047f828    e8f3c73800
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0047f82d    8b8e2c480000
                         mov                edx, dword ptr [ecx]                          // 0x0047f833    8b11
                         call               dword ptr [edx + 0x1b8]                       // 0x0047f835    ff92b8010000
                         test               eax, eax                                      // 0x0047f83b    85c0
                         {disp8} je         _jmp_addr_0x0047f850                          // 0x0047f83d    7411
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0047f83f    8b8e2c480000
                         mov                eax, dword ptr [ecx]                          // 0x0047f845    8b01
                         call               dword ptr [eax + 0x1b8]                       // 0x0047f847    ff90b8010000
                         {disp8} mov        dword ptr [eax + 0x3c], ebx                   // 0x0047f84d    89583c
_jmp_addr_0x0047f850:    push               0x000001ff                                    // 0x0047f850    68ff010000
                         push               0x009d1094                                    // 0x0047f855    6894109d00
                         push               0x00002008                                    // 0x0047f85a    6808200000
                         call               ___nw__FUl                                    // 0x0047f85f    e82cbf3500
                         add                esp, 0x0c                                     // 0x0047f864    83c40c
                         cmp.s              eax, ebx                                      // 0x0047f867    3bc3
                         {disp8} je         _jmp_addr_0x0047f872                          // 0x0047f869    7407
                         {disp8} mov        dword ptr [eax + 0x04], ebx                   // 0x0047f86b    895804
                         mov                dword ptr [eax], ebx                          // 0x0047f86e    8918
                         {disp8} jmp        _jmp_addr_0x0047f874                          // 0x0047f870    eb02
_jmp_addr_0x0047f872:    xor.s              eax, eax                                      // 0x0047f872    33c0
_jmp_addr_0x0047f874:    {disp32} mov       dword ptr [esi + 0x00005184], eax             // 0x0047f874    898684510000
                         pop                edi                                           // 0x0047f87a    5f
                         {disp32} mov       dword ptr [esi + 0x00005220], ebx             // 0x0047f87b    899e20520000
                         {disp32} mov       dword ptr [esi + 0x00005288], ebx             // 0x0047f881    899e88520000
                         {disp32} mov       dword ptr [esi + 0x00005274], ebx             // 0x0047f887    899e74520000
                         {disp32} mov       dword ptr [esi + 0x000057a0], ebx             // 0x0047f88d    899ea0570000
                         mov.s              eax, esi                                      // 0x0047f893    8bc6
                         pop                esi                                           // 0x0047f895    5e
                         pop                ebx                                           // 0x0047f896    5b
                         ret                0x000c                                        // 0x0047f897    c20c00
                         call               dword ptr [__imp__sendto@4]                   // 0x0047f89a    ff15fc988a00
_jmp_addr_0x0047f8a0:    sub                esp, 0x08                                     // 0x0047f8a0    83ec08
                         {disp32} mov       eax, dword ptr [ecx + 0x00005184]             // 0x0047f8a3    8b8184510000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0047f8a9    8b4804
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x0047f8ac    894c2400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0047f8b0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x0047f8b8    df6c2400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2610c]             // 0x0047f8bc    d80d0cf18c00
                         add                esp, 0x08                                     // 0x0047f8c2    83c408
                         ret                                                              // 0x0047f8c5    c3
                         nop                                                              // 0x0047f8c6    90
                         nop                                                              // 0x0047f8c7    90
                         nop                                                              // 0x0047f8c8    90
                         nop                                                              // 0x0047f8c9    90
                         nop                                                              // 0x0047f8ca    90
                         nop                                                              // 0x0047f8cb    90
                         nop                                                              // 0x0047f8cc    90
                         nop                                                              // 0x0047f8cd    90
                         nop                                                              // 0x0047f8ce    90
                         nop                                                              // 0x0047f8cf    90
_jmp_addr_0x0047f8d0:    push               esi                                           // 0x0047f8d0    56
                         mov.s              esi, ecx                                      // 0x0047f8d1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005274]             // 0x0047f8d3    8b8674520000
                         push               edi                                           // 0x0047f8d9    57
                         xor.s              edi, edi                                      // 0x0047f8da    33ff
                         cmp.s              eax, edi                                      // 0x0047f8dc    3bc7
                         {disp32} jne       _jmp_addr_0x0047f9e7                          // 0x0047f8de    0f8503010000
                         {disp32} mov       dword ptr [esi + 0x00005280], edi             // 0x0047f8e4    89be80520000
                         {disp32} mov       dword ptr [esi + 0x0000527c], edi             // 0x0047f8ea    89be7c520000
                         {disp32} mov       dword ptr [esi + 0x00005278], edi             // 0x0047f8f0    89be78520000
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ         // 0x0047f8f6    e8b5490000
                         {disp32} mov       ecx, dword ptr [esi + 0x000047b8]             // 0x0047f8fb    8b8eb8470000
                         xor.s              edx, edx                                      // 0x0047f901    33d2
                         cmp.s              ecx, edi                                      // 0x0047f903    3bcf
                         {disp8} jle        _jmp_addr_0x0047f947                          // 0x0047f905    7e40
                         push               ebx                                           // 0x0047f907    53
                         {disp8} lea        ecx, dword ptr [eax + 0x2c]                   // 0x0047f908    8d482c
_jmp_addr_0x0047f90b:    {disp8} fld        dword ptr [ecx + -0x08]                       // 0x0047f90b    d941f8
                         inc                edx                                           // 0x0047f90e    42
                         {disp32} fadd      dword ptr [esi + 0x00005278]                  // 0x0047f90f    d88678520000
                         add                ecx, 0x30                                     // 0x0047f915    83c130
                         {disp32} fstp      dword ptr [esi + 0x00005278]                  // 0x0047f918    d99e78520000
                         {disp8} fld        dword ptr [ecx + -0x34]                       // 0x0047f91e    d941cc
                         {disp32} fadd      dword ptr [esi + 0x0000527c]                  // 0x0047f921    d8867c520000
                         {disp32} fstp      dword ptr [esi + 0x0000527c]                  // 0x0047f927    d99e7c520000
                         {disp32} fld       dword ptr [esi + 0x00005280]                  // 0x0047f92d    d98680520000
                         {disp8} fadd       dword ptr [ecx + -0x30]                       // 0x0047f933    d841d0
                         {disp32} fstp      dword ptr [esi + 0x00005280]                  // 0x0047f936    d99e80520000
                         {disp32} mov       ebx, dword ptr [esi + 0x000047b8]             // 0x0047f93c    8b9eb8470000
                         cmp.s              edx, ebx                                      // 0x0047f942    3bd3
                         {disp8} jl         _jmp_addr_0x0047f90b                          // 0x0047f944    7cc5
                         pop                ebx                                           // 0x0047f946    5b
_jmp_addr_0x0047f947:    {disp32} fild      dword ptr [esi + 0x000047b8]                  // 0x0047f947    db86b8470000
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0047f94d    d83d90a38a00
                         fld                st(0)                                         // 0x0047f953    d9c0
                         {disp32} fmul      dword ptr [esi + 0x00005278]                  // 0x0047f955    d88e78520000
                         {disp32} fstp      dword ptr [esi + 0x00005278]                  // 0x0047f95b    d99e78520000
                         fld                st(0)                                         // 0x0047f961    d9c0
                         {disp32} fmul      dword ptr [esi + 0x0000527c]                  // 0x0047f963    d88e7c520000
                         {disp32} fstp      dword ptr [esi + 0x0000527c]                  // 0x0047f969    d99e7c520000
                         {disp32} fmul      dword ptr [esi + 0x00005280]                  // 0x0047f96f    d88e80520000
                         {disp32} fstp      dword ptr [esi + 0x00005280]                  // 0x0047f975    d99e80520000
                         {disp32} mov       edx, dword ptr [esi + 0x000047b8]             // 0x0047f97b    8b96b8470000
                         cmp.s              edx, edi                                      // 0x0047f981    3bd7
                         {disp32} mov       dword ptr [esi + 0x00005284], edi             // 0x0047f983    89be84520000
                         {disp8} jle        _jmp_addr_0x0047f9dd                          // 0x0047f989    7e52
                         {disp8} lea        ecx, dword ptr [eax + 0x2c]                   // 0x0047f98b    8d482c
_jmp_addr_0x0047f98e:    {disp8} fld        dword ptr [ecx + -0x08]                       // 0x0047f98e    d941f8
                         {disp32} fsub      dword ptr [esi + 0x00005278]                  // 0x0047f991    d8a678520000
                         {disp8} fld        dword ptr [ecx + -0x04]                       // 0x0047f997    d941fc
                         {disp32} fsub      dword ptr [esi + 0x0000527c]                  // 0x0047f99a    d8a67c520000
                         fld                dword ptr [ecx]                               // 0x0047f9a0    d901
                         {disp32} fsub      dword ptr [esi + 0x00005280]                  // 0x0047f9a2    d8a680520000
                         fld                st(0)                                         // 0x0047f9a8    d9c0
                         fmul               st, st(1)                                     // 0x0047f9aa    d8c9
                         fld                st(2)                                         // 0x0047f9ac    d9c2
                         fmul               st, st(3)                                     // 0x0047f9ae    d8cb
                         faddp              st(1), st                                     // 0x0047f9b0    dec1
                         fld                st(3)                                         // 0x0047f9b2    d9c3
                         fmul               st, st(4)                                     // 0x0047f9b4    d8cc
                         faddp              st(1), st                                     // 0x0047f9b6    dec1
                         fsqrt                                                            // 0x0047f9b8    d9fa
                         fstp               st(3)                                         // 0x0047f9ba    dddb
                         fstp               st(0)                                         // 0x0047f9bc    ddd8
                         fstp               st(0)                                         // 0x0047f9be    ddd8
                         {disp32} fcom      dword ptr [esi + 0x00005284]                  // 0x0047f9c0    d89684520000
                         fnstsw             ax                                            // 0x0047f9c6    dfe0
                         test               ah, 0x41                                      // 0x0047f9c8    f6c441
                         {disp8} jne        _jmp_addr_0x0047f9d5                          // 0x0047f9cb    7508
                         {disp32} fstp      dword ptr [esi + 0x00005284]                  // 0x0047f9cd    d99e84520000
                         {disp8} jmp        _jmp_addr_0x0047f9d7                          // 0x0047f9d3    eb02
_jmp_addr_0x0047f9d5:    fstp               st(0)                                         // 0x0047f9d5    ddd8
_jmp_addr_0x0047f9d7:    add                ecx, 0x30                                     // 0x0047f9d7    83c130
                         dec                edx                                           // 0x0047f9da    4a
                         {disp8} jne        _jmp_addr_0x0047f98e                          // 0x0047f9db    75b1
_jmp_addr_0x0047f9dd:    {disp32} mov       dword ptr [esi + 0x00005274], 0x00000001      // 0x0047f9dd    c7867452000001000000
_jmp_addr_0x0047f9e7:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0047f9e7    8b4c240c
                         {disp32} lea       eax, dword ptr [esi + 0x00005278]             // 0x0047f9eb    8d8678520000
                         mov                edx, dword ptr [eax]                          // 0x0047f9f1    8b10
                         mov                dword ptr [ecx], edx                          // 0x0047f9f3    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0047f9f5    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0047f9f8    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0047f9fb    8b4008
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0047f9fe    8b542410
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0047fa02    894108
                         {disp32} mov       ecx, dword ptr [esi + 0x00005284]             // 0x0047fa05    8b8e84520000
                         pop                edi                                           // 0x0047fa0b    5f
                         mov                dword ptr [edx], ecx                          // 0x0047fa0c    890a
                         pop                esi                                           // 0x0047fa0e    5e
                         ret                0x0008                                        // 0x0047fa0f    c20800
                         nop                                                              // 0x0047fa12    90
                         nop                                                              // 0x0047fa13    90
                         nop                                                              // 0x0047fa14    90
                         nop                                                              // 0x0047fa15    90
                         nop                                                              // 0x0047fa16    90
                         nop                                                              // 0x0047fa17    90
                         nop                                                              // 0x0047fa18    90
                         nop                                                              // 0x0047fa19    90
                         nop                                                              // 0x0047fa1a    90
                         nop                                                              // 0x0047fa1b    90
                         nop                                                              // 0x0047fa1c    90
                         nop                                                              // 0x0047fa1d    90
                         nop                                                              // 0x0047fa1e    90
                         nop                                                              // 0x0047fa1f    90
_jmp_addr_0x0047fa20:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047fa20    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0047fa24    d81d98a38a00
                         fnstsw             ax                                            // 0x0047fa2a    dfe0
                         test               ah, 0x41                                      // 0x0047fa2c    f6c441
                         {disp8} jne        _jmp_addr_0x0047fa50                          // 0x0047fa2f    751f
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047fa31    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0047fa35    d81d90a38a00
                         fnstsw             ax                                            // 0x0047fa3b    dfe0
                         test               ah, 0x01                                      // 0x0047fa3d    f6c401
                         {disp8} je         _jmp_addr_0x0047fa48                          // 0x0047fa40    7406
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047fa42    d9442404
                         {disp8} jmp        _jmp_addr_0x0047fa56                          // 0x0047fa46    eb0e
_jmp_addr_0x0047fa48:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0047fa48    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0047fa56                          // 0x0047fa4e    eb06
_jmp_addr_0x0047fa50:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0047fa50    d90598a38a00
_jmp_addr_0x0047fa56:    {disp32} mov       eax, dword ptr [ecx + 0x00005198]             // 0x0047fa56    8b8198510000
                         {disp32} fst       dword ptr [ecx + 0x0000483c]                  // 0x0047fa5c    d9913c480000
                         {disp32} fmul      dword ptr [ecx + 0x00004848]                  // 0x0047fa62    d88948480000
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                   // 0x0047fa68    d80d30b28a00
                         {disp32} fstp      dword ptr [eax + 0x0006403c]                  // 0x0047fa6e    d9983c400600
                         ret                0x0004                                        // 0x0047fa74    c20400
                         nop                                                              // 0x0047fa77    90
                         nop                                                              // 0x0047fa78    90
                         nop                                                              // 0x0047fa79    90
                         nop                                                              // 0x0047fa7a    90
                         nop                                                              // 0x0047fa7b    90
                         nop                                                              // 0x0047fa7c    90
                         nop                                                              // 0x0047fa7d    90
                         nop                                                              // 0x0047fa7e    90
                         nop                                                              // 0x0047fa7f    90
_jmp_addr_0x0047fa80:    {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x0047fa80    d98190000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26114]             // 0x0047fa86    d80d14f18c00
                         {disp32} fld       dword ptr [ecx + 0x000000ac]                  // 0x0047fa8c    d981ac000000
                         {disp32} fadd      dword ptr [ecx + 0x000000a4]                  // 0x0047fa92    d881a4000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26110]             // 0x0047fa98    d80d10f18c00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0047fa9e    d80590a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x0047faa4    d80d1cb48a00
                         fmul               st, st(1)                                     // 0x0047faaa    d8c9
                         fmul               st, st(1)                                     // 0x0047faac    d8c9
                         fmulp              st(1), st                                     // 0x0047faae    dec9
                         ret                                                              // 0x0047fab0    c3
                         nop                                                              // 0x0047fab1    90
                         nop                                                              // 0x0047fab2    90
                         nop                                                              // 0x0047fab3    90
                         nop                                                              // 0x0047fab4    90
                         nop                                                              // 0x0047fab5    90
                         nop                                                              // 0x0047fab6    90
                         nop                                                              // 0x0047fab7    90
                         nop                                                              // 0x0047fab8    90
                         nop                                                              // 0x0047fab9    90
                         nop                                                              // 0x0047faba    90
                         nop                                                              // 0x0047fabb    90
                         nop                                                              // 0x0047fabc    90
                         nop                                                              // 0x0047fabd    90
                         nop                                                              // 0x0047fabe    90
                         nop                                                              // 0x0047fabf    90
_jmp_addr_0x0047fac0:    push               ecx                                           // 0x0047fac0    51
                         push               edi                                           // 0x0047fac1    57
                         mov.s              edi, ecx                                      // 0x0047fac2    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x0047fac4    8b8794490000
                         cmp                eax, 0x02                                     // 0x0047faca    83f802
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047facd    0f8411010000
                         cmp                eax, 0x03                                     // 0x0047fad3    83f803
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047fad6    0f8408010000
                         cmp                eax, 0x04                                     // 0x0047fadc    83f804
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047fadf    0f84ff000000
                         cmp                eax, 0x23                                     // 0x0047fae5    83f823
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047fae8    0f84f6000000
                         cmp                eax, 0x1e                                     // 0x0047faee    83f81e
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047faf1    0f84ed000000
                         cmp                eax, 0x1f                                     // 0x0047faf7    83f81f
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047fafa    0f84e4000000
                         cmp                eax, 0x24                                     // 0x0047fb00    83f824
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047fb03    0f84db000000
                         cmp                eax, 0x01                                     // 0x0047fb09    83f801
                         {disp8} jne        _jmp_addr_0x0047fb26                          // 0x0047fb0c    7518
                         {disp32} mov       eax, dword ptr [edi + 0x00005190]             // 0x0047fb0e    8b8790510000
                         cmp                eax, 0x04                                     // 0x0047fb14    83f804
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047fb17    0f84c7000000
                         cmp                eax, 0x05                                     // 0x0047fb1d    83f805
                         {disp32} je        _jmp_addr_0x0047fbe4                          // 0x0047fb20    0f84be000000
_jmp_addr_0x0047fb26:    {disp32} fld       dword ptr [edi + 0x00000090]                  // 0x0047fb26    d98790000000
                         mov                eax, dword ptr [edi]                          // 0x0047fb2c    8b07
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26118]             // 0x0047fb2e    d80d18f18c00
                         push               esi                                           // 0x0047fb34    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0047fb35    8b742410
                         push               esi                                           // 0x0047fb39    56
                         mov.s              ecx, edi                                      // 0x0047fb3a    8bcf
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0047fb3c    d95c240c
                         call               dword ptr [eax + 0x28]                        // 0x0047fb40    ff5028
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x0047fb43    d94604
                         fsub               st, st(1)                                     // 0x0047fb46    d8e1
                         {disp32} lea       esi, dword ptr [edi + 0x0000487c]             // 0x0047fb48    8db77c480000
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x0047fb4e    d85c2408
                         fnstsw             ax                                            // 0x0047fb52    dfe0
                         fstp               st(0)                                         // 0x0047fb54    ddd8
                         test               ah, 0x41                                      // 0x0047fb56    f6c441
                         {disp8} je         _jmp_addr_0x0047fb61                          // 0x0047fb59    7406
                         {disp32} lea       esi, dword ptr [edi + 0x00004870]             // 0x0047fb5b    8db770480000
_jmp_addr_0x0047fb61:    mov.s              ecx, edi                                      // 0x0047fb61    8bcf
                         call               _jmp_addr_0x0047fa80                          // 0x0047fb63    e818ffffff
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0047fb68    d80db4a38a00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0047fb6e    8b442414
                         {disp32} fdivr     dword ptr [edi + 0x000048b8]                  // 0x0047fb72    d8bfb8480000
                         fld                st(0)                                         // 0x0047fb78    d9c0
                         fmul               dword ptr [eax]                               // 0x0047fb7a    d808
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x0047fb7c    c7460400000000
                         fadd               dword ptr [esi]                               // 0x0047fb83    d806
                         fstp               dword ptr [esi]                               // 0x0047fb85    d91e
                         mov                ecx, dword ptr [esi]                          // 0x0047fb87    8b0e
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0047fb89    894c2410
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0047fb8d    d84808
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0047fb90    d84608
                         {disp8} fst        dword ptr [esi + 0x08]                        // 0x0047fb93    d95608
                         fld                st(0)                                         // 0x0047fb96    d9c0
                         fmulp              st(1), st                                     // 0x0047fb98    dec9
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0047fb9a    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0047fb9e    d84c2410
                         faddp              st(1), st                                     // 0x0047fba2    dec1
                         fsqrt                                                            // 0x0047fba4    d9fa
                         {disp32} fcom      dword ptr [rdata_bytes + 0x19c70]             // 0x0047fba6    d815702c8c00
                         fnstsw             ax                                            // 0x0047fbac    dfe0
                         test               ah, 0x41                                      // 0x0047fbae    f6c441
                         {disp8} jne        _jmp_addr_0x0047fbda                          // 0x0047fbb1    7527
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x19c70]             // 0x0047fbb3    d83d702c8c00
                         fld                st(0)                                         // 0x0047fbb9    d9c0
                         fmul               dword ptr [esi]                               // 0x0047fbbb    d80e
                         fstp               dword ptr [esi]                               // 0x0047fbbd    d91e
                         fld                st(0)                                         // 0x0047fbbf    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0047fbc1    d84e04
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x0047fbc4    d95e04
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0047fbc7    d84e08
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0047fbca    d95e08
                         pop                esi                                           // 0x0047fbcd    5e
                         {disp32} mov       byte ptr [edi + 0x000048ac], 0x01             // 0x0047fbce    c687ac48000001
                         pop                edi                                           // 0x0047fbd5    5f
                         pop                ecx                                           // 0x0047fbd6    59
                         ret                0x0008                                        // 0x0047fbd7    c20800
_jmp_addr_0x0047fbda:    fstp               st(0)                                         // 0x0047fbda    ddd8
                         {disp32} mov       byte ptr [edi + 0x000048ac], 0x01             // 0x0047fbdc    c687ac48000001
                         pop                esi                                           // 0x0047fbe3    5e
_jmp_addr_0x0047fbe4:    pop                edi                                           // 0x0047fbe4    5f
                         pop                ecx                                           // 0x0047fbe5    59
                         ret                0x0008                                        // 0x0047fbe6    c20800
                         nop                                                              // 0x0047fbe9    90
                         nop                                                              // 0x0047fbea    90
                         nop                                                              // 0x0047fbeb    90
                         nop                                                              // 0x0047fbec    90
                         nop                                                              // 0x0047fbed    90
                         nop                                                              // 0x0047fbee    90
                         nop                                                              // 0x0047fbef    90
_jmp_addr_0x0047fbf0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047fbf0    d9442404
                         {disp32} fcomp     dword ptr [__real@3e4ccccd]                   // 0x0047fbf4    d81d44b28a00
                         fnstsw             ax                                            // 0x0047fbfa    dfe0
                         test               ah, 0x01                                      // 0x0047fbfc    f6c401
                         {disp8} je         _jmp_addr_0x0047fc0e                          // 0x0047fbff    740d
                         {disp32} mov       dword ptr [ecx + 0x000048b0], 0x00000000      // 0x0047fc01    c781b048000000000000
                         ret                0x0004                                        // 0x0047fc0b    c20400
_jmp_addr_0x0047fc0e:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0047fc0e    8b442404
                         {disp32} mov       dword ptr [ecx + 0x000048b0], eax             // 0x0047fc12    8981b0480000
                         ret                0x0004                                        // 0x0047fc18    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0047fc1b    e8591cf8ff
_jmp_addr_0x0047fc20:    push               ebx                                           // 0x0047fc20    53
                         push               ebp                                           // 0x0047fc21    55
                         xor.s              ebx, ebx                                      // 0x0047fc22    33db
                         push               esi                                           // 0x0047fc24    56
                         mov.s              esi, ecx                                      // 0x0047fc25    8bf1
                         {disp32} mov       dword ptr [esi + 0x0000519c], ebx             // 0x0047fc27    899e9c510000
                         mov                al, -0x01                                     // 0x0047fc2d    b0ff
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a7], al          // 0x0047fc2f    a2a741c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e1ab], al          // 0x0047fc34    a2ab41c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e1af], al          // 0x0047fc39    a2af41c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e19b], al          // 0x0047fc3e    a29b41c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e19f], al          // 0x0047fc43    a29f41c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a3], al          // 0x0047fc48    a2a341c600
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0047fc4d    8b442414
                         push               edi                                           // 0x0047fc51    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0047fc52    8b7c2414
                         mov                cl, 0x14                                      // 0x0047fc56    b114
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a4], cl          // 0x0047fc58    880da441c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a9], cl          // 0x0047fc5e    880da941c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a8], cl          // 0x0047fc64    880da841c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a6], -0x6a       // 0x0047fc6a    c605a641c60096
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a5], bl          // 0x0047fc71    881da541c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e1aa], 0x78        // 0x0047fc77    c605aa41c60078
                         {disp32} mov       byte ptr [data_bytes + 0x29e1ae], 0x50        // 0x0047fc7e    c605ae41c60050
                         {disp32} mov       byte ptr [data_bytes + 0x29e1ad], 0x28        // 0x0047fc85    c605ad41c60028
                         {disp32} mov       byte ptr [data_bytes + 0x29e1ac], bl          // 0x0047fc8c    881dac41c600
                         {disp32} mov       byte ptr [data_bytes + 0x29e19a], -0x4d       // 0x0047fc92    c6059a41c600b3
                         {disp32} mov       byte ptr [data_bytes + 0x29e199], -0x5a       // 0x0047fc99    c6059941c600a6
                         {disp32} mov       byte ptr [data_bytes + 0x29e198], 0x5f        // 0x0047fca0    c6059841c6005f
                         {disp32} mov       byte ptr [data_bytes + 0x29e19e], 0x74        // 0x0047fca7    c6059e41c60074
                         {disp32} mov       byte ptr [data_bytes + 0x29e19d], 0x59        // 0x0047fcae    c6059d41c60059
                         {disp32} mov       byte ptr [data_bytes + 0x29e19c], 0x7c        // 0x0047fcb5    c6059c41c6007c
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a2], 0x46        // 0x0047fcbc    c605a241c60046
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a1], 0x3b        // 0x0047fcc3    c605a141c6003b
                         {disp32} mov       byte ptr [data_bytes + 0x29e1a0], 0x4d        // 0x0047fcca    c605a041c6004d
                         {disp32} mov       dword ptr [esi + 0x00004a90], ebx             // 0x0047fcd1    899e904a0000
                         push               eax                                           // 0x0047fcd7    50
                         {disp32} mov       dword ptr [esi + 0x000049a8], 0x3f000000      // 0x0047fcd8    c786a84900000000003f
                         {disp32} mov       dword ptr [esi + 0x000049a4], ebx             // 0x0047fce2    899ea4490000
                         push               ebx                                           // 0x0047fce8    53
                         {disp32} mov       dword ptr [esi + 0x00004a94], ebx             // 0x0047fce9    899e944a0000
                         push               edi                                           // 0x0047fcef    57
                         mov.s              ecx, esi                                      // 0x0047fcf0    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x29e204], ebx        // 0x0047fcf2    891d0442c600
                         call               @MorphInit__9MorphableFR7LHPointlPv@20        // 0x0047fcf8    e813761900
                         push               edi                                           // 0x0047fcfd    57
                         mov.s              ecx, esi                                      // 0x0047fcfe    8bce
                         call               _jmp_addr_0x006182f0                          // 0x0047fd00    e8eb851900
                         {disp32} mov       dword ptr [esi + 0x000057b0], ebx             // 0x0047fd05    899eb0570000
                         {disp32} mov       dword ptr [esi + 0x00004838], ebx             // 0x0047fd0b    899e38480000
                         {disp32} mov       dword ptr [esi + 0x00004854], ebx             // 0x0047fd11    899e54480000
                         {disp32} mov       dword ptr [esi + 0x000048c8], ebx             // 0x0047fd17    899ec8480000
                         {disp32} mov       dword ptr [esi + 0x000048c4], ebx             // 0x0047fd1d    899ec4480000
                         {disp32} mov       dword ptr [esi + 0x000048c0], ebx             // 0x0047fd23    899ec0480000
                         {disp32} mov       dword ptr [esi + 0x000048d0], ebx             // 0x0047fd29    899ed0480000
                         {disp32} mov       dword ptr [esi + 0x000048cc], ebx             // 0x0047fd2f    899ecc480000
                         {disp32} mov       dword ptr [esi + 0x00004904], ebx             // 0x0047fd35    899e04490000
                         {disp32} mov       dword ptr [esi + 0x00004988], ebx             // 0x0047fd3b    899e88490000
                         {disp32} mov       dword ptr [esi + 0x000051e4], ebx             // 0x0047fd41    899ee4510000
                         {disp32} mov       dword ptr [esi + 0x00004860], ebx             // 0x0047fd47    899e60480000
                         {disp32} mov       dword ptr [esi + 0x00004864], ebx             // 0x0047fd4d    899e64480000
                         {disp32} mov       dword ptr [esi + 0x00004868], ebx             // 0x0047fd53    899e68480000
                         {disp32} mov       dword ptr [esi + 0x0000486c], ebx             // 0x0047fd59    899e6c480000
                         {disp32} fld       dword ptr [rdata_bytes + 0x260a8]             // 0x0047fd5f    d905a8f08c00
                         call               _jmp_addr_0x007a1400                          // 0x0047fd65    e896163200
                         {disp32} mov       dword ptr [esi + 0x00004ab8], eax             // 0x0047fd6a    8986b84a0000
                         {disp32} mov       dword ptr [esi + 0x00004abc], 0x0000000c      // 0x0047fd70    c786bc4a00000c000000
                         {disp32} mov       dword ptr [esi + 0x00004b30], ebx             // 0x0047fd7a    899e304b0000
                         {disp32} mov       dword ptr [esi + 0x00004ac0], ebx             // 0x0047fd80    899ec04a0000
                         {disp32} mov       dword ptr [esi + 0x00005188], ebx             // 0x0047fd86    899e88510000
                         {disp32} mov       dword ptr [esi + 0x0000499c], ebx             // 0x0047fd8c    899e9c490000
                         {disp32} mov       dword ptr [esi + 0x00004994], ebx             // 0x0047fd92    899e94490000
                         {disp32} mov       dword ptr [esi + 0x0000579c], ebx             // 0x0047fd98    899e9c570000
                         {disp32} mov       dword ptr [esi + 0x00005044], ebx             // 0x0047fd9e    899e44500000
                         {disp32} mov       dword ptr [esi + 0x00005430], ebx             // 0x0047fda4    899e30540000
                         {disp32} mov       dword ptr [esi + 0x0000545c], ebx             // 0x0047fdaa    899e5c540000
                         {disp32} mov       dword ptr [esi + 0x00005464], ebx             // 0x0047fdb0    899e64540000
                         {disp32} mov       dword ptr [esi + 0x00004ab0], ebx             // 0x0047fdb6    899eb04a0000
                         mov                ebp, 0x3f800000                               // 0x0047fdbc    bd0000803f
                         {disp32} mov       dword ptr [esi + 0x00004ab4], ebx             // 0x0047fdc1    899eb44a0000
                         {disp32} mov       dword ptr [esi + 0x0000008c], ebp             // 0x0047fdc7    89ae8c000000
                         mov                edx, dword ptr [esi]                          // 0x0047fdcd    8b16
                         push               ebp                                           // 0x0047fdcf    55
                         mov.s              ecx, esi                                      // 0x0047fdd0    8bce
                         call               dword ptr [edx + 8]                           // 0x0047fdd2    ff5208
                         push               0x3f19999a                                    // 0x0047fdd5    689a99193f
                         mov.s              ecx, esi                                      // 0x0047fdda    8bce
                         call               _jmp_addr_0x0047fa20                          // 0x0047fddc    e83ffcffff
                         {disp32} mov       dword ptr [esi + 0x000051bc], ebx             // 0x0047fde1    899ebc510000
                         {disp32} mov       dword ptr [esi + 0x000051c0], ebx             // 0x0047fde7    899ec0510000
                         {disp32} mov       dword ptr [esi + 0x000051d8], ebx             // 0x0047fded    899ed8510000
                         {disp32} mov       dword ptr [esi + 0x000051b8], ebx             // 0x0047fdf3    899eb8510000
                         {disp32} mov       dword ptr [esi + 0x000051cc], ebx             // 0x0047fdf9    899ecc510000
                         {disp32} mov       dword ptr [esi + 0x000051c8], ebx             // 0x0047fdff    899ec8510000
                         {disp32} mov       dword ptr [esi + 0x000051c4], ebx             // 0x0047fe05    899ec4510000
                         or                 eax, -0x1                                     // 0x0047fe0b    83c8ff
                         {disp32} mov       dword ptr [esi + 0x000051d0], eax             // 0x0047fe0e    8986d0510000
                         {disp32} mov       dword ptr [esi + 0x000051d4], eax             // 0x0047fe14    8986d4510000
                         {disp32} mov       dword ptr [esi + 0x00005474], ebp             // 0x0047fe1a    89ae74540000
                         {disp32} mov       dword ptr [esi + 0x00005174], ebx             // 0x0047fe20    899e74510000
                         {disp32} mov       dword ptr [esi + 0x00005178], ebx             // 0x0047fe26    899e78510000
                         {disp32} mov       dword ptr [esi + 0x0000517c], ebx             // 0x0047fe2c    899e7c510000
                         {disp32} mov       dword ptr [esi + 0x00005180], ebx             // 0x0047fe32    899e80510000
                         {disp32} mov       dword ptr [esi + 0x00005190], ebx             // 0x0047fe38    899e90510000
                         {disp32} mov       dword ptr [esi + 0x0000522c], ebx             // 0x0047fe3e    899e2c520000
                         {disp32} mov       dword ptr [esi + 0x00005230], ebx             // 0x0047fe44    899e30520000
                         {disp32} mov       dword ptr [esi + 0x00005234], ebx             // 0x0047fe4a    899e34520000
                         {disp32} mov       dword ptr [esi + 0x00005238], ebx             // 0x0047fe50    899e38520000
                         {disp32} mov       dword ptr [esi + 0x0000523c], ebx             // 0x0047fe56    899e3c520000
                         {disp32} mov       dword ptr [esi + 0x00005240], ebx             // 0x0047fe5c    899e40520000
                         {disp32} mov       dword ptr [esi + 0x000051f0], ebx             // 0x0047fe62    899ef0510000
                         {disp32} mov       dword ptr [esi + 0x000051f4], ebx             // 0x0047fe68    899ef4510000
                         {disp32} mov       dword ptr [esi + 0x000049ac], ebx             // 0x0047fe6e    899eac490000
                         {disp32} mov       dword ptr [esi + 0x000049b0], ebx             // 0x0047fe74    899eb0490000
                         {disp32} mov       dword ptr [esi + 0x000049b4], ebx             // 0x0047fe7a    899eb4490000
                         {disp32} mov       dword ptr [esi + 0x000049b8], ebx             // 0x0047fe80    899eb8490000
                         {disp32} lea       eax, dword ptr [esi + 0x00004874]             // 0x0047fe86    8d8674480000
                         mov                ecx, 0x00000002                               // 0x0047fe8c    b902000000
_jmp_addr_0x0047fe91:    {disp8} mov        dword ptr [eax + 0x04], ebx                   // 0x0047fe91    895804
                         mov                dword ptr [eax], ebx                          // 0x0047fe94    8918
                         {disp8} mov        dword ptr [eax + -0x04], ebx                  // 0x0047fe96    8958fc
                         {disp8} mov        dword ptr [eax + 0x1c], ebx                   // 0x0047fe99    89581c
                         {disp8} mov        dword ptr [eax + 0x18], ebx                   // 0x0047fe9c    895818
                         {disp8} mov        dword ptr [eax + 0x14], ebx                   // 0x0047fe9f    895814
                         add                eax, 0x0c                                     // 0x0047fea2    83c00c
                         dec                ecx                                           // 0x0047fea5    49
                         {disp8} jne        _jmp_addr_0x0047fe91                          // 0x0047fea6    75e9
                         {disp32} mov       byte ptr [esi + 0x000048ac], bl               // 0x0047fea8    889eac480000
                         {disp32} mov       dword ptr [esi + 0x000048b0], ebx             // 0x0047feae    899eb0480000
                         {disp32} mov       dword ptr [esi + 0x000048a8], ebx             // 0x0047feb4    899ea8480000
                         {disp32} mov       dword ptr [esi + 0x000048a4], ebx             // 0x0047feba    899ea4480000
                         {disp32} mov       dword ptr [esi + 0x000048a0], ebx             // 0x0047fec0    899ea0480000
                         {disp32} mov       dword ptr [esi + 0x00004938], ebx             // 0x0047fec6    899e38490000
                         {disp32} mov       dword ptr [esi + 0x00004934], ebx             // 0x0047fecc    899e34490000
                         {disp32} mov       dword ptr [esi + 0x00004930], ebx             // 0x0047fed2    899e30490000
                         {disp32} mov       dword ptr [esi + 0x00004944], ebx             // 0x0047fed8    899e44490000
                         {disp32} mov       dword ptr [esi + 0x00004940], ebx             // 0x0047fede    899e40490000
                         {disp32} mov       dword ptr [esi + 0x0000493c], ebx             // 0x0047fee4    899e3c490000
                         {disp32} mov       dword ptr [esi + 0x00004950], ebx             // 0x0047feea    899e50490000
                         {disp32} mov       dword ptr [esi + 0x0000494c], ebx             // 0x0047fef0    899e4c490000
                         {disp32} mov       dword ptr [esi + 0x00004948], ebx             // 0x0047fef6    899e48490000
                         {disp32} mov       dword ptr [esi + 0x0000495c], ebx             // 0x0047fefc    899e5c490000
                         {disp32} mov       dword ptr [esi + 0x00004958], ebx             // 0x0047ff02    899e58490000
                         {disp32} mov       dword ptr [esi + 0x00004954], ebx             // 0x0047ff08    899e54490000
                         {disp32} mov       dword ptr [esi + 0x000051dc], ebx             // 0x0047ff0e    899edc510000
                         {disp32} mov       dword ptr [esi + 0x00004a40], ebx             // 0x0047ff14    899e404a0000
                         {disp32} mov       dword ptr [esi + 0x00004964], ebx             // 0x0047ff1a    899e64490000
                         {disp32} mov       dword ptr [esi + 0x00004a84], ebx             // 0x0047ff20    899e844a0000
                         {disp32} mov       dword ptr [esi + 0x00004a34], ebx             // 0x0047ff26    899e344a0000
                         {disp32} mov       dword ptr [esi + 0x00004908], ebx             // 0x0047ff2c    899e08490000
                         {disp32} mov       dword ptr [esi + 0x00004960], ebx             // 0x0047ff32    899e60490000
                         {disp32} mov       dword ptr [esi + 0x00004a38], ebx             // 0x0047ff38    899e384a0000
                         {disp32} mov       dword ptr [esi + 0x00004a3c], ebx             // 0x0047ff3e    899e3c4a0000
                         {disp32} mov       dword ptr [esi + 0x00004a8c], ebx             // 0x0047ff44    899e8c4a0000
                         {disp32} mov       dword ptr [esi + 0x00004a80], ebx             // 0x0047ff4a    899e804a0000
                         {disp32} mov       dword ptr [esi + 0x00004a88], ebx             // 0x0047ff50    899e884a0000
                         {disp32} mov       dword ptr [esi + 0x0000518c], ebx             // 0x0047ff56    899e8c510000
                         mov                eax, 0x00000001                               // 0x0047ff5c    b801000000
                         {disp32} mov       dword ptr [esi + 0x000051e8], eax             // 0x0047ff61    8986e8510000
                         {disp32} lea       edi, dword ptr [esi + 0x000051f8]             // 0x0047ff67    8dbef8510000
                         mov                ecx, 0x00000007                               // 0x0047ff6d    b907000000
                         rep stosd                                                        // 0x0047ff72    f3ab
                         {disp32} mov       dword ptr [esi + 0x00005214], ebx             // 0x0047ff74    899e14520000
                         {disp32} mov       dword ptr [esi + 0x00005218], ebx             // 0x0047ff7a    899e18520000
                         {disp32} mov       dword ptr [esi + 0x00004840], ebx             // 0x0047ff80    899e40480000
                         {disp32} mov       dword ptr [esi + 0x00004914], ebx             // 0x0047ff86    899e14490000
                         {disp32} mov       dword ptr [esi + 0x00004910], ebx             // 0x0047ff8c    899e10490000
                         {disp32} mov       dword ptr [esi + 0x0000490c], ebx             // 0x0047ff92    899e0c490000
                         {disp32} mov       dword ptr [esi + 0x00004920], ebx             // 0x0047ff98    899e20490000
                         {disp32} mov       dword ptr [esi + 0x0000491c], ebx             // 0x0047ff9e    899e1c490000
                         {disp32} mov       dword ptr [esi + 0x00004918], ebx             // 0x0047ffa4    899e18490000
                         {disp32} lea       eax, dword ptr [esi + 0x00005108]             // 0x0047ffaa    8d8608510000
                         {disp32} lea       ecx, dword ptr [esi + 0x00004ec8]             // 0x0047ffb0    8d8ec84e0000
                         mov                edx, 0x0000000c                               // 0x0047ffb6    ba0c000000
_jmp_addr_0x0047ffbb:    {disp8} mov        dword ptr [ecx + 0x04], ebx                   // 0x0047ffbb    895904
                         mov                dword ptr [ecx], ebx                          // 0x0047ffbe    8919
                         {disp8} mov        dword ptr [ecx + -0x04], ebx                  // 0x0047ffc0    8959fc
                         {disp8} mov        dword ptr [eax + -0x30], ebx                  // 0x0047ffc3    8958d0
                         mov                dword ptr [eax], ebx                          // 0x0047ffc6    8918
                         {disp8} mov        dword ptr [eax + 0x30], ebx                   // 0x0047ffc8    895830
                         add                eax, 0x04                                     // 0x0047ffcb    83c004
                         add                ecx, 0xc                                      // 0x0047ffce    83c10c
                         dec                edx                                           // 0x0047ffd1    4a
                         {disp8} jne        _jmp_addr_0x0047ffbb                          // 0x0047ffd2    75e7
                         {disp32} mov       dword ptr [esi + 0x0000497c], ebx             // 0x0047ffd4    899e7c490000
                         {disp32} mov       dword ptr [esi + 0x0000496c], ebx             // 0x0047ffda    899e6c490000
                         {disp32} mov       dword ptr [esi + 0x00004974], ebx             // 0x0047ffe0    899e74490000
                         {disp32} mov       dword ptr [esi + 0x00004978], ebx             // 0x0047ffe6    899e78490000
                         {disp32} mov       dword ptr [esi + 0x00004968], ebx             // 0x0047ffec    899e68490000
                         {disp32} mov       dword ptr [esi + 0x00004970], ebx             // 0x0047fff2    899e70490000
                         {disp32} mov       word ptr [esi + 0x00004984], bx               // 0x0047fff8    66899e84490000
                         {disp32} mov       dword ptr [esi + 0x00004998], ebx             // 0x0047ffff    899e98490000
                         {disp32} mov       dword ptr [esi + 0x000049a0], ebx             // 0x00480005    899ea0490000
                         xor.s              edx, edx                                      // 0x0048000b    33d2
                         {disp32} lea       ecx, dword ptr [esi + 0x00005528]             // 0x0048000d    8d8e28550000
                         {disp32} lea       eax, dword ptr [esi + 0x00005584]             // 0x00480013    8d8684550000
_jmp_addr_0x00480019:    cmp                edx, 0x02                                     // 0x00480019    83fa02
                         {disp8} mov        dword ptr [ecx + -0x10], ebx                  // 0x0048001c    8959f0
                         mov                dword ptr [ecx], ebx                          // 0x0048001f    8919
                         {disp8} jge        _jmp_addr_0x0048008e                          // 0x00480021    7d6b
                         {disp8} mov        dword ptr [eax + -0x48], ebx                  // 0x00480023    8958b8
                         {disp8} mov        dword ptr [eax + -0x4c], ebx                  // 0x00480026    8958b4
                         {disp8} mov        dword ptr [eax + -0x30], ebx                  // 0x00480029    8958d0
                         {disp8} mov        dword ptr [eax + -0x34], ebx                  // 0x0048002c    8958cc
                         {disp8} mov        dword ptr [eax + -0x38], ebx                  // 0x0048002f    8958c8
                         {disp8} mov        dword ptr [eax + -0x20], ebx                  // 0x00480032    8958e0
                         {disp8} mov        dword ptr [eax + -0x24], ebx                  // 0x00480035    8958dc
                         {disp8} mov        dword ptr [eax + -0x3c], ebx                  // 0x00480038    8958c4
                         {disp8} mov        dword ptr [eax + -0x28], ebx                  // 0x0048003b    8958d8
                         {disp8} mov        dword ptr [eax + -0x40], ebx                  // 0x0048003e    8958c0
                         {disp8} mov        dword ptr [eax + -0x2c], ebx                  // 0x00480041    8958d4
                         {disp8} mov        dword ptr [eax + -0x44], ebx                  // 0x00480044    8958bc
                         {disp8} mov        dword ptr [eax + -0x18], ebx                  // 0x00480047    8958e8
                         {disp8} mov        dword ptr [eax + -0x1c], ebx                  // 0x0048004a    8958e4
                         mov                dword ptr [eax], ebx                          // 0x0048004d    8918
                         {disp8} mov        dword ptr [eax + -0x04], ebx                  // 0x0048004f    8958fc
                         {disp8} mov        dword ptr [eax + -0x08], ebx                  // 0x00480052    8958f8
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x00480055    895810
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x00480058    89580c
                         {disp8} mov        dword ptr [eax + -0x0c], ebx                  // 0x0048005b    8958f4
                         {disp8} mov        dword ptr [eax + 0x08], ebx                   // 0x0048005e    895808
                         {disp8} mov        dword ptr [eax + -0x10], ebx                  // 0x00480061    8958f0
                         {disp8} mov        dword ptr [eax + 0x04], ebx                   // 0x00480064    895804
                         {disp8} mov        dword ptr [eax + -0x14], ebx                  // 0x00480067    8958ec
                         {disp8} mov        dword ptr [eax + 0x18], ebp                   // 0x0048006a    896818
                         {disp8} mov        dword ptr [eax + 0x14], ebp                   // 0x0048006d    896814
                         {disp8} mov        dword ptr [eax + 0x30], ebp                   // 0x00480070    896830
                         {disp8} mov        dword ptr [eax + 0x2c], ebx                   // 0x00480073    89582c
                         {disp8} mov        dword ptr [eax + 0x28], ebx                   // 0x00480076    895828
                         {disp8} mov        dword ptr [eax + 0x40], ebx                   // 0x00480079    895840
                         {disp8} mov        dword ptr [eax + 0x3c], ebx                   // 0x0048007c    89583c
                         {disp8} mov        dword ptr [eax + 0x24], ebx                   // 0x0048007f    895824
                         {disp8} mov        dword ptr [eax + 0x38], ebx                   // 0x00480082    895838
                         {disp8} mov        dword ptr [eax + 0x20], ebx                   // 0x00480085    895820
                         {disp8} mov        dword ptr [eax + 0x34], ebx                   // 0x00480088    895834
                         {disp8} mov        dword ptr [eax + 0x1c], ebx                   // 0x0048008b    89581c
_jmp_addr_0x0048008e:    cmp                edx, 0x03                                     // 0x0048008e    83fa03
                         {disp8} jge        _jmp_addr_0x004800a5                          // 0x00480091    7d12
                         {disp32} mov       dword ptr [ecx + 0x00000130], ebx             // 0x00480093    899930010000
                         {disp32} mov       dword ptr [ecx + 0x0000013c], ebx             // 0x00480099    89993c010000
                         {disp32} mov       dword ptr [ecx + 0x00000148], ebx             // 0x0048009f    899948010000
_jmp_addr_0x004800a5:    inc                edx                                           // 0x004800a5    42
                         add                ecx, 0x4                                      // 0x004800a6    83c104
                         add                eax, 0x00000090                               // 0x004800a9    0590000000
                         cmp                edx, 0x04                                     // 0x004800ae    83fa04
                         {disp32} jl        _jmp_addr_0x00480019                          // 0x004800b1    0f8c62ffffff
                         {disp32} lea       eax, dword ptr [esi + 0x000056fc]             // 0x004800b7    8d86fc560000
                         mov                ecx, 0x00000008                               // 0x004800bd    b908000000
_jmp_addr_0x004800c2:    {disp8} mov        dword ptr [eax + -0x60], ebx                  // 0x004800c2    8958a0
                         mov                dword ptr [eax], 0x3f000000                   // 0x004800c5    c7000000003f
                         {disp8} mov        dword ptr [eax + -0x40], ebx                  // 0x004800cb    8958c0
                         {disp8} mov        dword ptr [eax + -0x20], ebx                  // 0x004800ce    8958e0
                         add                eax, 0x04                                     // 0x004800d1    83c004
                         dec                ecx                                           // 0x004800d4    49
                         {disp8} jne        _jmp_addr_0x004800c2                          // 0x004800d5    75eb
                         {disp32} mov       dword ptr [esi + 0x00005460], 0x00000002      // 0x004800d7    c7866054000002000000
                         {disp32} mov       dword ptr [esi + 0x000057a4], ebx             // 0x004800e1    899ea4570000
                         {disp32} mov       dword ptr [esi + 0x000057a8], ebx             // 0x004800e7    899ea8570000
                         {disp32} mov       dword ptr [esi + 0x000057ac], ebx             // 0x004800ed    899eac570000
                         {disp32} mov       dword ptr [esi + 0x00005468], 0x000003e8      // 0x004800f3    c78668540000e8030000
                         {disp32} mov       dword ptr [esi + 0x0000546c], 0x00001388      // 0x004800fd    c7866c54000088130000
                         {disp32} mov       dword ptr [esi + 0x00005470], ebx             // 0x00480107    899e70540000
                         {disp32} mov       dword ptr [esi + 0x00005170], ebx             // 0x0048010d    899e70510000
                         {disp32} mov       dword ptr [esi + 0x0000516c], ebx             // 0x00480113    899e6c510000
                         {disp32} mov       dword ptr [esi + 0x00005168], ebx             // 0x00480119    899e68510000
                         {disp32} mov       dword ptr [esi + 0x000051e0], ebx             // 0x0048011f    899ee0510000
                         {disp32} mov       dword ptr [esi + 0x000051b4], ebx             // 0x00480125    899eb4510000
                         {disp32} mov       dword ptr [esi + 0x00004900], ebx             // 0x0048012b    899e00490000
                         {disp32} mov       dword ptr [esi + 0x000048fc], ebx             // 0x00480131    899efc480000
                         {disp32} mov       dword ptr [esi + 0x000048f8], ebx             // 0x00480137    899ef8480000
                         {disp32} mov       dword ptr [esi + 0x000048f0], ebx             // 0x0048013d    899ef0480000
                         {disp32} mov       dword ptr [esi + 0x000048ec], ebx             // 0x00480143    899eec480000
                         {disp32} mov       dword ptr [esi + 0x000048e8], ebx             // 0x00480149    899ee8480000
                         {disp32} mov       dword ptr [esi + 0x000048e0], ebx             // 0x0048014f    899ee0480000
                         {disp32} mov       dword ptr [esi + 0x000048dc], ebx             // 0x00480155    899edc480000
                         {disp32} mov       dword ptr [esi + 0x000048d8], ebx             // 0x0048015b    899ed8480000
                         {disp32} mov       dword ptr [esi + 0x000048f4], ebp             // 0x00480161    89aef4480000
                         {disp32} mov       dword ptr [esi + 0x000048e4], ebp             // 0x00480167    89aee4480000
                         {disp32} mov       dword ptr [esi + 0x000048d4], ebp             // 0x0048016d    89aed4480000
                         {disp32} mov       dword ptr [esi + 0x0000528c], ebx             // 0x00480173    899e8c520000
                         {disp32} mov       dword ptr [esi + 0x000052a4], ebx             // 0x00480179    899ea4520000
                         xor.s              eax, eax                                      // 0x0048017f    33c0
                         {disp32} mov       dword ptr [esi + 0x00005290], eax             // 0x00480181    898690520000
                         {disp32} mov       dword ptr [esi + 0x00005294], eax             // 0x00480187    898694520000
                         {disp32} mov       dword ptr [esi + 0x00005298], eax             // 0x0048018d    898698520000
                         {disp32} mov       dword ptr [esi + 0x0000529c], eax             // 0x00480193    89869c520000
                         {disp32} mov       dword ptr [esi + 0x000052a0], eax             // 0x00480199    8986a0520000
                         mov                eax, 0x00002ee0                               // 0x0048019f    b8e02e0000
                         {disp32} lea       edi, dword ptr [esi + 0x000053e8]             // 0x004801a4    8dbee8530000
                         mov                ecx, 0x00000008                               // 0x004801aa    b908000000
                         rep stosd                                                        // 0x004801af    f3ab
                         {disp32} mov       dword ptr [esi + 0x0000526c], ebx             // 0x004801b1    899e6c520000
                         {disp32} mov       dword ptr [esi + 0x00005270], ebx             // 0x004801b7    899e70520000
                         {disp32} mov       dword ptr [esi + 0x00005798], ebx             // 0x004801bd    899e98570000
                         {disp32} mov       dword ptr [esi + 0x00005268], ebx             // 0x004801c3    899e68520000
                         {disp32} mov       dword ptr [esi + 0x00005730], ebx             // 0x004801c9    899e30570000
                         {disp32} mov       dword ptr [esi + 0x00005738], ebx             // 0x004801cf    899e38570000
                         {disp32} mov       dword ptr [esi + 0x00005734], ebx             // 0x004801d5    899e34570000
                         mov.s              ecx, esi                                      // 0x004801db    8bce
                         {disp32} mov       dword ptr [esi + 0x0000485c], 0x423c7edd      // 0x004801dd    c7865c480000dd7e3c42
                         call               _jmp_addr_0x0048d750                          // 0x004801e7    e864d50000
                         {disp32} mov       dword ptr [esi + 0x000051ec], ebx             // 0x004801ec    899eec510000
                         {disp32} mov       dword ptr [esi + 0x00005744], ebx             // 0x004801f2    899e44570000
                         {disp32} mov       dword ptr [esi + 0x00005740], ebx             // 0x004801f8    899e40570000
                         {disp32} mov       dword ptr [esi + 0x0000573c], ebx             // 0x004801fe    899e3c570000
                         {disp32} mov       dword ptr [esi + 0x00005750], ebx             // 0x00480204    899e50570000
                         {disp32} mov       dword ptr [esi + 0x0000574c], ebx             // 0x0048020a    899e4c570000
                         {disp32} mov       dword ptr [esi + 0x00005748], ebx             // 0x00480210    899e48570000
                         {disp32} mov       dword ptr [esi + 0x00005794], 0x00000001      // 0x00480216    c7869457000001000000
                         {disp32} mov       dword ptr [esi + 0x00004aac], ebp             // 0x00480220    89aeac4a0000
                         pop                edi                                           // 0x00480226    5f
                         {disp32} mov       dword ptr [esi + 0x00004aa8], ebp             // 0x00480227    89aea84a0000
                         pop                esi                                           // 0x0048022d    5e
                         pop                ebp                                           // 0x0048022e    5d
                         pop                ebx                                           // 0x0048022f    5b
                         ret                0x0008                                        // 0x00480230    c20800
                         nop                                                              // 0x00480233    90
                         nop                                                              // 0x00480234    90
                         nop                                                              // 0x00480235    90
                         nop                                                              // 0x00480236    90
                         nop                                                              // 0x00480237    90
                         nop                                                              // 0x00480238    90
                         nop                                                              // 0x00480239    90
                         nop                                                              // 0x0048023a    90
                         nop                                                              // 0x0048023b    90
                         nop                                                              // 0x0048023c    90
                         nop                                                              // 0x0048023d    90
                         nop                                                              // 0x0048023e    90
                         nop                                                              // 0x0048023f    90
_jmp_addr_0x00480240:    push               esi                                           // 0x00480240    56
                         mov.s              esi, ecx                                      // 0x00480241    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000057b4]             // 0x00480243    8b86b4570000
                         test               eax, eax                                      // 0x00480249    85c0
                         mov                dword ptr [esi], 0x008cf0e0                   // 0x0048024b    c706e0f08c00
                         {disp8} je         _jmp_addr_0x00480266                          // 0x00480251    7413
                         push               eax                                           // 0x00480253    50
                         call               _jmp_addr_0x00454a00                          // 0x00480254    e8a747fdff
                         add                esp, 0x04                                     // 0x00480259    83c404
                         {disp32} mov       dword ptr [esi + 0x000057b4], 0x00000000      // 0x0048025c    c786b457000000000000
_jmp_addr_0x00480266:    {disp32} mov       eax, dword ptr [esi + 0x00005174]             // 0x00480266    8b8674510000
                         test               eax, eax                                      // 0x0048026c    85c0
                         {disp8} je         _jmp_addr_0x00480279                          // 0x0048026e    7409
                         push               eax                                           // 0x00480270    50
                         call               ??3@YAXPAX@Z                                  // 0x00480271    e822ec3200
                         add                esp, 0x04                                     // 0x00480276    83c404
_jmp_addr_0x00480279:    {disp32} mov       eax, dword ptr [esi + 0x00005178]             // 0x00480279    8b8678510000
                         test               eax, eax                                      // 0x0048027f    85c0
                         {disp8} je         _jmp_addr_0x0048028c                          // 0x00480281    7409
                         push               eax                                           // 0x00480283    50
                         call               ??3@YAXPAX@Z                                  // 0x00480284    e80fec3200
                         add                esp, 0x04                                     // 0x00480289    83c404
_jmp_addr_0x0048028c:    {disp32} mov       eax, dword ptr [esi + 0x0000517c]             // 0x0048028c    8b867c510000
                         test               eax, eax                                      // 0x00480292    85c0
                         {disp8} je         _jmp_addr_0x0048029f                          // 0x00480294    7409
                         push               eax                                           // 0x00480296    50
                         call               ??3@YAXPAX@Z                                  // 0x00480297    e8fceb3200
                         add                esp, 0x04                                     // 0x0048029c    83c404
_jmp_addr_0x0048029f:    {disp32} mov       eax, dword ptr [esi + 0x00005180]             // 0x0048029f    8b8680510000
                         test               eax, eax                                      // 0x004802a5    85c0
                         {disp8} je         _jmp_addr_0x004802b2                          // 0x004802a7    7409
                         push               eax                                           // 0x004802a9    50
                         call               ??3@YAXPAX@Z                                  // 0x004802aa    e8e9eb3200
                         add                esp, 0x04                                     // 0x004802af    83c404
_jmp_addr_0x004802b2:    {disp32} mov       eax, dword ptr [esi + 0x000051f0]             // 0x004802b2    8b86f0510000
                         test               eax, eax                                      // 0x004802b8    85c0
                         {disp8} je         _jmp_addr_0x004802c5                          // 0x004802ba    7409
                         push               eax                                           // 0x004802bc    50
                         call               ??3@YAXPAX@Z                                  // 0x004802bd    e8d6eb3200
                         add                esp, 0x04                                     // 0x004802c2    83c404
_jmp_addr_0x004802c5:    {disp32} mov       ecx, dword ptr [esi + 0x000051f4]             // 0x004802c5    8b8ef4510000
                         test               ecx, ecx                                      // 0x004802cb    85c9
                         {disp8} je         _jmp_addr_0x004802d4                          // 0x004802cd    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x004802cf    e82c6a3800
_jmp_addr_0x004802d4:    {disp32} mov       eax, dword ptr [esi + 0x000057a4]             // 0x004802d4    8b86a4570000
                         test               eax, eax                                      // 0x004802da    85c0
                         {disp8} je         _jmp_addr_0x004802e7                          // 0x004802dc    7409
                         push               eax                                           // 0x004802de    50
                         call               ??3@YAXPAX@Z                                  // 0x004802df    e8b4eb3200
                         add                esp, 0x04                                     // 0x004802e4    83c404
_jmp_addr_0x004802e7:    {disp32} mov       eax, dword ptr [esi + 0x00005184]             // 0x004802e7    8b8684510000
                         push               edi                                           // 0x004802ed    57
                         push               eax                                           // 0x004802ee    50
                         call               ??3@YAXPAX@Z                                  // 0x004802ef    e8a4eb3200
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x004802f4    8b4618
                         add                esp, 0x04                                     // 0x004802f7    83c404
                         test               eax, eax                                      // 0x004802fa    85c0
                         {disp8} je         _jmp_addr_0x0048030f                          // 0x004802fc    7411
                         {disp8} lea        edi, dword ptr [esi + 0x0c]                   // 0x004802fe    8d7e0c
                         mov.s              ecx, edi                                      // 0x00480301    8bcf
                         call               ?CloseSegment@LHFile@@QAEIXZ                  // 0x00480303    e848dc3300
                         mov.s              ecx, edi                                      // 0x00480308    8bcf
                         call               ?Close@LHFile@@QAEIXZ                         // 0x0048030a    e8b1d83300
_jmp_addr_0x0048030f:    {disp32} mov       ecx, dword ptr [_global]                      // 0x0048030f    8b0d203bcd00
                         test               ecx, ecx                                      // 0x00480315    85c9
                         {disp8} je         _jmp_addr_0x00480325                          // 0x00480317    740c
                         {disp32} mov       edx, dword ptr [esi + 0x00005288]             // 0x00480319    8b9688520000
                         push               edx                                           // 0x0048031f    52
                         call               _jmp_addr_0x00428640                          // 0x00480320    e81b83faff
_jmp_addr_0x00480325:    {disp32} mov       edi, dword ptr [esi + 0x00005198]             // 0x00480325    8bbe98510000
                         test               edi, edi                                      // 0x0048032b    85ff
                         {disp8} je         _jmp_addr_0x0048033f                          // 0x0048032d    7410
                         mov.s              ecx, edi                                      // 0x0048032f    8bcf
                         call               _jmp_addr_0x00863a70                          // 0x00480331    e83a373e00
                         push               edi                                           // 0x00480336    57
                         call               ??3@YAXPAX@Z                                  // 0x00480337    e85ceb3200
                         add                esp, 0x04                                     // 0x0048033c    83c404
_jmp_addr_0x0048033f:    {disp32} mov       edi, dword ptr [esi + 0x00005220]             // 0x0048033f    8bbe20520000
                         test               edi, edi                                      // 0x00480345    85ff
                         {disp8} je         _jmp_addr_0x00480359                          // 0x00480347    7410
                         mov.s              ecx, edi                                      // 0x00480349    8bcf
                         call               _jmp_addr_0x0085e490                          // 0x0048034b    e840e13d00
                         push               edi                                           // 0x00480350    57
                         call               ??3@YAXPAX@Z                                  // 0x00480351    e842eb3200
                         add                esp, 0x04                                     // 0x00480356    83c404
_jmp_addr_0x00480359:    {disp32} mov       ecx, dword ptr [esi + 0x000057b0]             // 0x00480359    8b8eb0570000
                         test               ecx, ecx                                      // 0x0048035f    85c9
                         pop                edi                                           // 0x00480361    5f
                         {disp8} je         _jmp_addr_0x00480369                          // 0x00480362    7405
                         call               _jmp_addr_0x0068e260                          // 0x00480364    e8f7de2000
_jmp_addr_0x00480369:    mov.s              ecx, esi                                      // 0x00480369    8bce
                         call               _jmp_addr_0x006171a0                          // 0x0048036b    e8306e1900
                         pop                esi                                           // 0x00480370    5e
                         ret                                                              // 0x00480371    c3
                         nop                                                              // 0x00480372    90
                         nop                                                              // 0x00480373    90
                         nop                                                              // 0x00480374    90
                         nop                                                              // 0x00480375    90
                         nop                                                              // 0x00480376    90
                         nop                                                              // 0x00480377    90
                         nop                                                              // 0x00480378    90
                         nop                                                              // 0x00480379    90
                         nop                                                              // 0x0048037a    90
                         nop                                                              // 0x0048037b    90
                         nop                                                              // 0x0048037c    90
                         nop                                                              // 0x0048037d    90
                         nop                                                              // 0x0048037e    90
                         nop                                                              // 0x0048037f    90
_jmp_addr_0x00480380:    {disp32} fld       dword ptr [ecx + 0x00004aa8]                  // 0x00480380    d981a84a0000
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00480386    d8642404
                         {disp32} fstp      dword ptr [ecx + 0x00004aa8]                  // 0x0048038a    d999a84a0000
                         ret                0x0004                                        // 0x00480390    c20400
                         nop                                                              // 0x00480393    90
                         nop                                                              // 0x00480394    90
                         nop                                                              // 0x00480395    90
                         nop                                                              // 0x00480396    90
                         nop                                                              // 0x00480397    90
                         nop                                                              // 0x00480398    90
                         nop                                                              // 0x00480399    90
                         nop                                                              // 0x0048039a    90
                         nop                                                              // 0x0048039b    90
                         nop                                                              // 0x0048039c    90
                         nop                                                              // 0x0048039d    90
                         nop                                                              // 0x0048039e    90
                         nop                                                              // 0x0048039f    90
                         push               esi                                           // 0x004803a0    56
                         push               0x1                                           // 0x004803a1    6a01
                         mov.s              esi, ecx                                      // 0x004803a3    8bf1
                         push               0x6a                                          // 0x004803a5    6a6a
                         call               @GetAnim__9MorphableFll@16                    // 0x004803a7    e8a4921900
                         push               0x1e                                          // 0x004803ac    6a1e
                         mov.s              ecx, esi                                      // 0x004803ae    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], 0x0000006a      // 0x004803b0    c786a04900006a000000
                         call               _jmp_addr_0x00484ec0                          // 0x004803ba    e8014b0000
                         pop                esi                                           // 0x004803bf    5e
                         ret                                                              // 0x004803c0    c3
                         nop                                                              // 0x004803c1    90
                         nop                                                              // 0x004803c2    90
                         nop                                                              // 0x004803c3    90
                         nop                                                              // 0x004803c4    90
                         nop                                                              // 0x004803c5    90
                         nop                                                              // 0x004803c6    90
                         nop                                                              // 0x004803c7    90
                         nop                                                              // 0x004803c8    90
                         nop                                                              // 0x004803c9    90
                         nop                                                              // 0x004803ca    90
                         nop                                                              // 0x004803cb    90
                         nop                                                              // 0x004803cc    90
                         nop                                                              // 0x004803cd    90
                         nop                                                              // 0x004803ce    90
                         nop                                                              // 0x004803cf    90
?SetAnimTime@CreatureFalling@@UAEXHH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004803d0    8b442404
                         push               esi                                           // 0x004803d4    56
                         mov.s              esi, ecx                                      // 0x004803d5    8bf1
                         {disp8} lea        ecx, dword ptr [eax + -0x51]                  // 0x004803d7    8d48af
                         cmp                ecx, 0x42                                     // 0x004803da    83f942
                         push               edi                                           // 0x004803dd    57
                         {disp32} ja        _jmp_addr_0x004804b6                          // 0x004803de    0f87d2000000
                         xor.s              edx, edx                                      // 0x004803e4    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x004804e4]               // 0x004803e6    8a91e4044800
                         jmp                dword ptr [edx*4 + 0x4804c8]                  // 0x004803ec    ff2495c8044800
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x004803f3    8b7c2410
                         push               edi                                           // 0x004803f7    57
                         push               0x51                                          // 0x004803f8    6a51
                         mov.s              ecx, esi                                      // 0x004803fa    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x004803fc    e8af7a1900
                         push               edi                                           // 0x00480401    57
                         push               0x52                                          // 0x00480402    6a52
                         mov.s              ecx, esi                                      // 0x00480404    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x00480406    e8a57a1900
                         push               edi                                           // 0x0048040b    57
                         push               0x53                                          // 0x0048040c    6a53
                         mov.s              ecx, esi                                      // 0x0048040e    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x00480410    e89b7a1900
                         push               edi                                           // 0x00480415    57
                         push               0x54                                          // 0x00480416    6a54
                         mov.s              ecx, esi                                      // 0x00480418    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x0048041a    e8917a1900
                         pop                edi                                           // 0x0048041f    5f
                         pop                esi                                           // 0x00480420    5e
                         ret                0x0008                                        // 0x00480421    c20800
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00480424    8b7c2410
                         push               edi                                           // 0x00480428    57
                         push               0x5b                                          // 0x00480429    6a5b
                         mov.s              ecx, esi                                      // 0x0048042b    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x0048042d    e87e7a1900
                         push               edi                                           // 0x00480432    57
                         push               0x5c                                          // 0x00480433    6a5c
                         mov.s              ecx, esi                                      // 0x00480435    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x00480437    e8747a1900
                         pop                edi                                           // 0x0048043c    5f
                         pop                esi                                           // 0x0048043d    5e
                         ret                0x0008                                        // 0x0048043e    c20800
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00480441    8b7c2410
                         push               edi                                           // 0x00480445    57
                         push               0x71                                          // 0x00480446    6a71
                         mov.s              ecx, esi                                      // 0x00480448    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x0048044a    e8617a1900
                         push               edi                                           // 0x0048044f    57
                         push               0x72                                          // 0x00480450    6a72
                         mov.s              ecx, esi                                      // 0x00480452    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x00480454    e8577a1900
                         push               edi                                           // 0x00480459    57
                         push               0x73                                          // 0x0048045a    6a73
                         mov.s              ecx, esi                                      // 0x0048045c    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x0048045e    e84d7a1900
                         push               edi                                           // 0x00480463    57
                         push               0x74                                          // 0x00480464    6a74
                         mov.s              ecx, esi                                      // 0x00480466    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x00480468    e8437a1900
                         pop                edi                                           // 0x0048046d    5f
                         pop                esi                                           // 0x0048046e    5e
                         ret                0x0008                                        // 0x0048046f    c20800
                         push               ebx                                           // 0x00480472    53
                         push               ebp                                           // 0x00480473    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x00480474    8b6c2418
                         xor.s              edi, edi                                      // 0x00480478    33ff
                         {disp32} lea       ebx, dword ptr [esi + 0x000051f8]             // 0x0048047a    8d9ef8510000
_jmp_addr_0x00480480:    mov                eax, dword ptr [ebx]                          // 0x00480480    8b03
                         imul               eax, ebp                                      // 0x00480482    0fafc5
                         push               eax                                           // 0x00480485    50
                         {disp32} lea       ecx, dword ptr [edi + 0x00000093]             // 0x00480486    8d8f93000000
                         push               ecx                                           // 0x0048048c    51
                         mov.s              ecx, esi                                      // 0x0048048d    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x0048048f    e81c7a1900
                         inc                edi                                           // 0x00480494    47
                         add                ebx, 0x04                                     // 0x00480495    83c304
                         cmp                edi, 0x07                                     // 0x00480498    83ff07
                         {disp8} jl         _jmp_addr_0x00480480                          // 0x0048049b    7ce3
                         pop                ebp                                           // 0x0048049d    5d
                         pop                ebx                                           // 0x0048049e    5b
                         pop                edi                                           // 0x0048049f    5f
                         pop                esi                                           // 0x004804a0    5e
                         ret                0x0008                                        // 0x004804a1    c20800
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004804a4    8b542410
                         push               edx                                           // 0x004804a8    52
                         push               eax                                           // 0x004804a9    50
                         mov.s              ecx, esi                                      // 0x004804aa    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x004804ac    e8ff791900
                         pop                edi                                           // 0x004804b1    5f
                         pop                esi                                           // 0x004804b2    5e
                         ret                0x0008                                        // 0x004804b3    c20800
_jmp_addr_0x004804b6:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004804b6    8b4c2410
                         push               ecx                                           // 0x004804ba    51
                         push               eax                                           // 0x004804bb    50
                         mov.s              ecx, esi                                      // 0x004804bc    8bce
                         call               ?SetAnimTime@Morphable@@UAEXHH@Z              // 0x004804be    e8ed791900
                         pop                edi                                           // 0x004804c3    5f
                         pop                esi                                           // 0x004804c4    5e
                         ret                0x0008                                        // 0x004804c5    c20800

// Snippet: jmptbl, [0x004804c8, 0x004804e4)
.byte 0xf3, 0x03, 0x48, 0x00      // 0x004804c8
.byte 0x24, 0x04, 0x48, 0x00      // 0x004804cc
.byte 0xb6, 0x04, 0x48, 0x00      // 0x004804d0
.byte 0xa4, 0x04, 0x48, 0x00      // 0x004804d4
.byte 0x41, 0x04, 0x48, 0x00      // 0x004804d8
.byte 0x72, 0x04, 0x48, 0x00      // 0x004804dc
.byte 0xb6, 0x04, 0x48, 0x00      // 0x004804e0

// Snippet: ijmptbl, [0x004804e4, 0x00480527)
.byte 0x00, 0x00, 0x00, 0x00      // 0x004804e4
.byte 0x06, 0x06, 0x06, 0x06      // 0x004804e8
.byte 0x06, 0x06, 0x01, 0x01      // 0x004804ec
.byte 0x06, 0x06, 0x02, 0x03      // 0x004804f0
.byte 0x03, 0x06, 0x06, 0x06      // 0x004804f4
.byte 0x06, 0x06, 0x06, 0x06      // 0x004804f8
.byte 0x06, 0x06, 0x06, 0x06      // 0x004804fc
.byte 0x06, 0x06, 0x06, 0x06      // 0x00480500
.byte 0x04, 0x04, 0x04, 0x04      // 0x00480504
.byte 0x06, 0x06, 0x06, 0x06      // 0x00480508
.byte 0x06, 0x06, 0x06, 0x06      // 0x0048050c
.byte 0x06, 0x06, 0x06, 0x06      // 0x00480510
.byte 0x06, 0x06, 0x06, 0x06      // 0x00480514
.byte 0x06, 0x06, 0x06, 0x06      // 0x00480518
.byte 0x06, 0x06, 0x06, 0x06      // 0x0048051c
.byte 0x06, 0x06, 0x06, 0x06      // 0x00480520
.byte 0x06, 0x06, 0x05            // 0x00480524

// Snippet: db, [0x00480527, 0x00480530)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00480527
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048052b
.byte 0x90                        // 0x0048052f

