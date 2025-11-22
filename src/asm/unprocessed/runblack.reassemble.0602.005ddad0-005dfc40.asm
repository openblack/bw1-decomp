.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x00555880
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005e1020
.extern _jmp_addr_0x005e15b0
.extern _jmp_addr_0x005e1860
.extern _jmp_addr_0x005e1950
.extern ?GetX@MapCell@@QBEIXZ
.extern ?GetZ@MapCell@@QBEIXZ
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern _jmp_addr_0x0064a9f0
.extern _jmp_addr_0x0078ea20
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _LHFileLength__FPcPUl
.extern _LHLoadData__FPcPvUlPUl
.extern _jmp_addr_0x007bd030
.extern _atexit
.extern _sprintf
.extern __unlink
.extern _fopen
.extern _fclose
.extern _fwrite
.extern ___nw__FUl
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Release__8LH3DMeshFv@4
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _jmp_addr_0x00827f20
.extern _jmp_addr_0x008282e0
.extern _jmp_addr_0x00828300
.extern _jmp_addr_0x00828760
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern _jmp_addr_0x00838430
.extern _jmp_addr_0x00838af0
.extern _jmp_addr_0x00838eb0
.extern _jmp_addr_0x00839190
.extern _jmp_addr_0x00839900
.extern _jmp_addr_0x00839970
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z

.globl _jmp_addr_0x005ddae0
.globl _jmp_addr_0x005ddc00
.globl _jmp_addr_0x005ddc90
.globl @Remove__9GameBlockFP6Object@12
.globl ?Remove@GameBlock@@SAXPAVObject@@PAUMapCell@@@Z
.globl @Insert__9GameBlockFP6Object@12
.globl _jmp_addr_0x005dded0
.globl _jmp_addr_0x005de010
.globl _jmp_addr_0x005de1e0
.globl _jmp_addr_0x005de2f0
.globl _jmp_addr_0x005de490
.globl _jmp_addr_0x005de5e0
.globl _jmp_addr_0x005de860
.globl _jmp_addr_0x005de8b0
.globl _jmp_addr_0x005de8c0
.globl _jmp_addr_0x005dea60
.globl _jmp_addr_0x005def00
.globl _jmp_addr_0x005df1b0
.globl _jmp_addr_0x005df310
.globl _jmp_addr_0x005df640
.globl _jmp_addr_0x005df9c0

.globl _globl_ct_0x005ddaf0
.globl _globl_ct_0x005ddb20
.globl _globl_ct_0x005ddf10
.globl _globl_ct_0x005ddf40
.globl _globl_ct_0x005ddf60
.globl _globl_ct_0x005ddf90
.globl _globl_ct_0x005df190
.globl _globl_ct_0x005df5e0
.globl _globl_ct_0x005df610

start_0x005ddad0_0x005dfc40:
// Snippet: asm, [0x005ddad0, 0x005dfc1f)
                         mov                ecx, 0x00d18880                               // 0x005ddad0    b98088d100
                         jmp                dword ptr [rdata_bytes + 0x4b0]               // 0x005ddad5    ff25b0948a00
                         nop                                                              // 0x005ddadb    90
                         nop                                                              // 0x005ddadc    90
                         nop                                                              // 0x005ddadd    90
                         nop                                                              // 0x005ddade    90
                         nop                                                              // 0x005ddadf    90
_jmp_addr_0x005ddae0:    mov.s              eax, ecx                                      // 0x005ddae0    8bc1
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x005ddae2    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x005ddae9    c70000000000
                         ret                                                              // 0x005ddaef    c3
_globl_ct_0x005ddaf0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005ddaf0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005ddaf6    b001
                         test               al, cl                                        // 0x005ddaf8    84c8
                         {disp8} jne        _jmp_addr_0x005ddb04                          // 0x005ddafa    7508
                         or.s               cl, al                                        // 0x005ddafc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005ddafe    880d34c9fa00
_jmp_addr_0x005ddb04:    {disp32} jmp       _jmp_addr_0x005ddb10                          // 0x005ddb04    e907000000
                         nop                                                              // 0x005ddb09    90
                         nop                                                              // 0x005ddb0a    90
                         nop                                                              // 0x005ddb0b    90
                         nop                                                              // 0x005ddb0c    90
                         nop                                                              // 0x005ddb0d    90
                         nop                                                              // 0x005ddb0e    90
                         nop                                                              // 0x005ddb0f    90
_jmp_addr_0x005ddb10:    push               0x00407870                                    // 0x005ddb10    6870784000
                         call               _atexit                                       // 0x005ddb15    e8777c1e00
                         pop                ecx                                           // 0x005ddb1a    59
                         ret                                                              // 0x005ddb1b    c3
                         nop                                                              // 0x005ddb1c    90
                         nop                                                              // 0x005ddb1d    90
                         nop                                                              // 0x005ddb1e    90
                         nop                                                              // 0x005ddb1f    90
_globl_ct_0x005ddb20:    call               _jmp_addr_0x005ddb30                          // 0x005ddb20    e80b000000
                         {disp32} jmp       _jmp_addr_0x005ddb40                          // 0x005ddb25    e916000000
                         nop                                                              // 0x005ddb2a    90
                         nop                                                              // 0x005ddb2b    90
                         nop                                                              // 0x005ddb2c    90
                         nop                                                              // 0x005ddb2d    90
                         nop                                                              // 0x005ddb2e    90
                         nop                                                              // 0x005ddb2f    90
_jmp_addr_0x005ddb30:    mov                ecx, 0x00d199e0                               // 0x005ddb30    b9e099d100
                         {disp32} jmp       _jmp_addr_0x005ddb80                          // 0x005ddb35    e946000000
                         nop                                                              // 0x005ddb3a    90
                         nop                                                              // 0x005ddb3b    90
                         nop                                                              // 0x005ddb3c    90
                         nop                                                              // 0x005ddb3d    90
                         nop                                                              // 0x005ddb3e    90
                         nop                                                              // 0x005ddb3f    90
_jmp_addr_0x005ddb40:    push               0x005ddb50                                    // 0x005ddb40    6850db5d00
                         call               _atexit                                       // 0x005ddb45    e8477c1e00
                         pop                ecx                                           // 0x005ddb4a    59
                         ret                                                              // 0x005ddb4b    c3
                         nop                                                              // 0x005ddb4c    90
                         nop                                                              // 0x005ddb4d    90
                         nop                                                              // 0x005ddb4e    90
                         nop                                                              // 0x005ddb4f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3539d8]          // 0x005ddb50    8a0dd899d100
                         mov                al, 0x01                                      // 0x005ddb56    b001
                         test               al, cl                                        // 0x005ddb58    84c8
                         {disp8} jne        _jmp_addr_0x005ddb6e                          // 0x005ddb5a    7512
                         or.s               cl, al                                        // 0x005ddb5c    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x3539d8], cl          // 0x005ddb5e    880dd899d100
                         mov                ecx, 0x00d199e0                               // 0x005ddb64    b9e099d100
                         {disp32} jmp       _jmp_addr_0x005ddbd0                          // 0x005ddb69    e962000000
_jmp_addr_0x005ddb6e:    ret                                                              // 0x005ddb6e    c3
                         nop                                                              // 0x005ddb6f    90
_jmp_addr_0x005ddb70:    xor.s              eax, eax                                      // 0x005ddb70    33c0
                         mov                dword ptr [ecx], eax                          // 0x005ddb72    8901
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x005ddb74    89410c
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x005ddb77    894110
                         ret                                                              // 0x005ddb7a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005ddb7b    e8793ce2ff
_jmp_addr_0x005ddb80:    push               esi                                           // 0x005ddb80    56
                         mov.s              esi, ecx                                      // 0x005ddb81    8bf1
                         push               0x28                                          // 0x005ddb83    6a28
                         mov                dword ptr [esi], 0x00000000                   // 0x005ddb85    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x0000000a            // 0x005ddb8b    c746040a000000
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005ddb92    e849512600
                         mov.s              edx, eax                                      // 0x005ddb97    8bd0
                         add                esp, 0x04                                     // 0x005ddb99    83c404
                         test               edx, edx                                      // 0x005ddb9c    85d2
                         {disp8} je         _jmp_addr_0x005ddbad                          // 0x005ddb9e    740d
                         push               edi                                           // 0x005ddba0    57
                         mov                ecx, 0x0000000a                               // 0x005ddba1    b90a000000
                         xor.s              eax, eax                                      // 0x005ddba6    33c0
                         mov.s              edi, edx                                      // 0x005ddba8    8bfa
                         rep stosd                                                        // 0x005ddbaa    f3ab
                         pop                edi                                           // 0x005ddbac    5f
_jmp_addr_0x005ddbad:    {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x005ddbad    895608
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000000            // 0x005ddbb0    c7460c00000000
                         {disp8} mov        dword ptr [esi + 0x10], 0x00000000            // 0x005ddbb7    c7461000000000
                         mov.s              eax, esi                                      // 0x005ddbbe    8bc6
                         pop                esi                                           // 0x005ddbc0    5e
                         ret                                                              // 0x005ddbc1    c3
                         nop                                                              // 0x005ddbc2    90
                         nop                                                              // 0x005ddbc3    90
                         nop                                                              // 0x005ddbc4    90
                         nop                                                              // 0x005ddbc5    90
                         nop                                                              // 0x005ddbc6    90
                         nop                                                              // 0x005ddbc7    90
                         nop                                                              // 0x005ddbc8    90
                         nop                                                              // 0x005ddbc9    90
                         nop                                                              // 0x005ddbca    90
                         nop                                                              // 0x005ddbcb    90
                         nop                                                              // 0x005ddbcc    90
                         nop                                                              // 0x005ddbcd    90
                         nop                                                              // 0x005ddbce    90
                         nop                                                              // 0x005ddbcf    90
_jmp_addr_0x005ddbd0:    push               esi                                           // 0x005ddbd0    56
                         mov.s              esi, ecx                                      // 0x005ddbd1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x005ddbd3    8b4608
                         push               edi                                           // 0x005ddbd6    57
                         xor.s              edi, edi                                      // 0x005ddbd7    33ff
                         cmp.s              eax, edi                                      // 0x005ddbd9    3bc7
                         {disp8} je         _jmp_addr_0x005ddbe9                          // 0x005ddbdb    740c
                         push               eax                                           // 0x005ddbdd    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005ddbde    e87d512600
                         add                esp, 0x04                                     // 0x005ddbe3    83c404
                         {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x005ddbe6    897e08
_jmp_addr_0x005ddbe9:    mov                dword ptr [esi], edi                          // 0x005ddbe9    893e
                         {disp8} mov        dword ptr [esi + 0x04], edi                   // 0x005ddbeb    897e04
                         {disp8} mov        dword ptr [esi + 0x0c], edi                   // 0x005ddbee    897e0c
                         {disp8} mov        dword ptr [esi + 0x10], edi                   // 0x005ddbf1    897e10
                         pop                edi                                           // 0x005ddbf4    5f
                         pop                esi                                           // 0x005ddbf5    5e
                         ret                                                              // 0x005ddbf6    c3
                         nop                                                              // 0x005ddbf7    90
                         nop                                                              // 0x005ddbf8    90
                         nop                                                              // 0x005ddbf9    90
                         nop                                                              // 0x005ddbfa    90
                         nop                                                              // 0x005ddbfb    90
                         nop                                                              // 0x005ddbfc    90
                         nop                                                              // 0x005ddbfd    90
                         nop                                                              // 0x005ddbfe    90
                         nop                                                              // 0x005ddbff    90
_jmp_addr_0x005ddc00:    push               ebx                                           // 0x005ddc00    53
                         push               ebp                                           // 0x005ddc01    55
                         push               esi                                           // 0x005ddc02    56
                         push               edi                                           // 0x005ddc03    57
                         mov                ecx, 0x00d199e0                               // 0x005ddc04    b9e099d100
                         call               _jmp_addr_0x005ddb70                          // 0x005ddc09    e862ffffff
                         mov                ebp, OFFSET ?g_index_block@LH3DIsland@@3PAY0CA@EA                               // 0x005ddc0e    bd64c9e900
                         mov                ebx, OFFSET _GameBlock_ARRAY_00d189d8         // 0x005ddc13    bbd889d100
_jmp_addr_0x005ddc18:    xor.s              esi, esi                                      // 0x005ddc18    33f6
                         mov.s              edi, ebx                                      // 0x005ddc1a    8bfb
_jmp_addr_0x005ddc1c:    cmp                ebx, OFFSET _GameBlock_ARRAY_00d189d8         // 0x005ddc1c    81fbd889d100
                         mov                dword ptr [edi], 0x00000000                   // 0x005ddc22    c70700000000
                         {disp8} jl         _jmp_addr_0x005ddc71                          // 0x005ddc28    7c47
                         cmp                ebx, 0x00d19958                               // 0x005ddc2a    81fb5899d100
                         {disp8} jg         _jmp_addr_0x005ddc71                          // 0x005ddc30    7f3f
                         test               esi, esi                                      // 0x005ddc32    85f6
                         {disp8} jl         _jmp_addr_0x005ddc71                          // 0x005ddc34    7c3b
                         cmp                esi, 0x1f                                     // 0x005ddc36    83fe1f
                         {disp8} jg         _jmp_addr_0x005ddc71                          // 0x005ddc39    7f36
                         xor.s              eax, eax                                      // 0x005ddc3b    33c0
                         mov                al, byte ptr [esi + ebp * 0x1]                // 0x005ddc3d    8a042e
                         test               eax, eax                                      // 0x005ddc40    85c0
                         {disp8} je         _jmp_addr_0x005ddc71                          // 0x005ddc42    742d
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x005ddc44    8b0c8564c5e900
                         test               ecx, ecx                                      // 0x005ddc4b    85c9
                         {disp8} je         _jmp_addr_0x005ddc71                          // 0x005ddc4d    7422
                         push               0x46                                          // 0x005ddc4f    6a46
                         push               0x00bf2ad4                                    // 0x005ddc51    68d42abf00
                         push               0x14                                          // 0x005ddc56    6a14
                         call               ___nw__FUl                                    // 0x005ddc58    e833db1f00
                         add                esp, 0x0c                                     // 0x005ddc5d    83c40c
                         test               eax, eax                                      // 0x005ddc60    85c0
                         {disp8} je         _jmp_addr_0x005ddc6d                          // 0x005ddc62    7409
                         mov.s              ecx, eax                                      // 0x005ddc64    8bc8
                         call               _jmp_addr_0x005ddb80                          // 0x005ddc66    e815ffffff
                         {disp8} jmp        _jmp_addr_0x005ddc6f                          // 0x005ddc6b    eb02
_jmp_addr_0x005ddc6d:    xor.s              eax, eax                                      // 0x005ddc6d    33c0
_jmp_addr_0x005ddc6f:    mov                dword ptr [edi], eax                          // 0x005ddc6f    8907
_jmp_addr_0x005ddc71:    inc                esi                                           // 0x005ddc71    46
                         add                edi, 0x04                                     // 0x005ddc72    83c704
                         cmp                esi, 0x20                                     // 0x005ddc75    83fe20
                         {disp8} jl         _jmp_addr_0x005ddc1c                          // 0x005ddc78    7ca2
                         add                ebx, 0x00000080                               // 0x005ddc7a    81c380000000
                         add                ebp, 0x20                                     // 0x005ddc80    83c520
                         cmp                ebx, 0x00d199d8                               // 0x005ddc83    81fbd899d100
                         {disp8} jl         _jmp_addr_0x005ddc18                          // 0x005ddc89    7c8d
                         pop                edi                                           // 0x005ddc8b    5f
                         pop                esi                                           // 0x005ddc8c    5e
                         pop                ebp                                           // 0x005ddc8d    5d
                         pop                ebx                                           // 0x005ddc8e    5b
                         ret                                                              // 0x005ddc8f    c3
_jmp_addr_0x005ddc90:    push               ebx                                           // 0x005ddc90    53
                         push               esi                                           // 0x005ddc91    56
                         push               edi                                           // 0x005ddc92    57
                         mov                ecx, 0x00d199e0                               // 0x005ddc93    b9e099d100
                         call               _jmp_addr_0x005ddb70                          // 0x005ddc98    e8d3feffff
                         mov                esi, OFFSET _GameBlock_ARRAY_00d189d8         // 0x005ddc9d    bed889d100
_jmp_addr_0x005ddca2:    mov                ebx, 0x00000020                               // 0x005ddca2    bb20000000
_jmp_addr_0x005ddca7:    mov                edi, dword ptr [esi]                          // 0x005ddca7    8b3e
                         test               edi, edi                                      // 0x005ddca9    85ff
                         {disp8} je         _jmp_addr_0x005ddcbd                          // 0x005ddcab    7410
                         mov.s              ecx, edi                                      // 0x005ddcad    8bcf
                         call               _jmp_addr_0x005ddbd0                          // 0x005ddcaf    e81cffffff
                         push               edi                                           // 0x005ddcb4    57
                         call               ??3@YAXPAX@Z                                  // 0x005ddcb5    e8de111d00
                         add                esp, 0x04                                     // 0x005ddcba    83c404
_jmp_addr_0x005ddcbd:    mov                dword ptr [esi], 0x00000000                   // 0x005ddcbd    c70600000000
                         add                esi, 0x04                                     // 0x005ddcc3    83c604
                         dec                ebx                                           // 0x005ddcc6    4b
                         {disp8} jne        _jmp_addr_0x005ddca7                          // 0x005ddcc7    75de
                         cmp                esi, 0x00d199d8                               // 0x005ddcc9    81fed899d100
                         {disp8} jl         _jmp_addr_0x005ddca2                          // 0x005ddccf    7cd1
                         pop                edi                                           // 0x005ddcd1    5f
                         pop                esi                                           // 0x005ddcd2    5e
                         pop                ebx                                           // 0x005ddcd3    5b
                         ret                                                              // 0x005ddcd4    c3
                         nop                                                              // 0x005ddcd5    90
                         nop                                                              // 0x005ddcd6    90
                         nop                                                              // 0x005ddcd7    90
                         nop                                                              // 0x005ddcd8    90
                         nop                                                              // 0x005ddcd9    90
                         nop                                                              // 0x005ddcda    90
                         nop                                                              // 0x005ddcdb    90
                         nop                                                              // 0x005ddcdc    90
                         nop                                                              // 0x005ddcdd    90
                         nop                                                              // 0x005ddcde    90
                         nop                                                              // 0x005ddcdf    90
@Remove__9GameBlockFP6Object@12:    push               ebx                                           // 0x005ddce0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x005ddce1    8b5c2408
                         test               ebx, ebx                                      // 0x005ddce5    85db
                         push               esi                                           // 0x005ddce7    56
                         push               edi                                           // 0x005ddce8    57
                         {disp8} je         _jmp_addr_0x005ddd40                          // 0x005ddce9    7455
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005ddceb    8b7c2414
                         test               edi, edi                                      // 0x005ddcef    85ff
                         {disp8} je         _jmp_addr_0x005ddd40                          // 0x005ddcf1    744d
                         mov.s              ecx, edi                                      // 0x005ddcf3    8bcf
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x005ddcf5    e8863e0200
                         mov.s              esi, eax                                      // 0x005ddcfa    8bf0
                         mov.s              ecx, edi                                      // 0x005ddcfc    8bcf
                         shr                esi, 4                                        // 0x005ddcfe    c1ee04
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x005ddd01    e89a3e0200
                         shr                eax, 4                                        // 0x005ddd06    c1e804
                         test               esi, esi                                      // 0x005ddd09    85f6
                         {disp8} jl         _jmp_addr_0x005ddd2b                          // 0x005ddd0b    7c1e
                         cmp                esi, 0x1f                                     // 0x005ddd0d    83fe1f
                         {disp8} jg         _jmp_addr_0x005ddd2b                          // 0x005ddd10    7f19
                         test               eax, eax                                      // 0x005ddd12    85c0
                         {disp8} jl         _jmp_addr_0x005ddd2b                          // 0x005ddd14    7c15
                         cmp                eax, 0x1f                                     // 0x005ddd16    83f81f
                         {disp8} jg         _jmp_addr_0x005ddd2b                          // 0x005ddd19    7f10
                         shl                esi, 5                                        // 0x005ddd1b    c1e605
                         add.s              esi, eax                                      // 0x005ddd1e    03f0
                         {disp32} mov       ecx, dword ptr [esi * 0x4 + _GameBlock_ARRAY_00d189d8]       // 0x005ddd20    8b0cb5d889d100
                         test               ecx, ecx                                      // 0x005ddd27    85c9
                         {disp8} jne        _jmp_addr_0x005ddd3a                          // 0x005ddd29    750f
_jmp_addr_0x005ddd2b:    push               ebx                                           // 0x005ddd2b    53
                         mov                ecx, 0x00d199e0                               // 0x005ddd2c    b9e099d100
                         call               @Insert__9GameBlockFP6Object@12               // 0x005ddd31    e88a000000
                         pop                edi                                           // 0x005ddd36    5f
                         pop                esi                                           // 0x005ddd37    5e
                         pop                ebx                                           // 0x005ddd38    5b
                         ret                                                              // 0x005ddd39    c3
_jmp_addr_0x005ddd3a:    push               ebx                                           // 0x005ddd3a    53
                         call               @Insert__9GameBlockFP6Object@12               // 0x005ddd3b    e880000000
_jmp_addr_0x005ddd40:    pop                edi                                           // 0x005ddd40    5f
                         pop                esi                                           // 0x005ddd41    5e
                         pop                ebx                                           // 0x005ddd42    5b
                         ret                                                              // 0x005ddd43    c3
                         nop                                                              // 0x005ddd44    90
                         nop                                                              // 0x005ddd45    90
                         nop                                                              // 0x005ddd46    90
                         nop                                                              // 0x005ddd47    90
                         nop                                                              // 0x005ddd48    90
                         nop                                                              // 0x005ddd49    90
                         nop                                                              // 0x005ddd4a    90
                         nop                                                              // 0x005ddd4b    90
                         nop                                                              // 0x005ddd4c    90
                         nop                                                              // 0x005ddd4d    90
                         nop                                                              // 0x005ddd4e    90
                         nop                                                              // 0x005ddd4f    90
?Remove@GameBlock@@SAXPAVObject@@PAUMapCell@@@Z:
                                          push               ebx                                           // 0x005ddd50    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x005ddd51    8b5c2408
                         test               ebx, ebx                                      // 0x005ddd55    85db
                         push               esi                                           // 0x005ddd57    56
                         push               edi                                           // 0x005ddd58    57
                         {disp8} je         _jmp_addr_0x005dddb0                          // 0x005ddd59    7455
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005ddd5b    8b7c2414
                         test               edi, edi                                      // 0x005ddd5f    85ff
                         {disp8} je         _jmp_addr_0x005dddb0                          // 0x005ddd61    744d
                         mov.s              ecx, edi                                      // 0x005ddd63    8bcf
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x005ddd65    e8163e0200
                         mov.s              esi, eax                                      // 0x005ddd6a    8bf0
                         mov.s              ecx, edi                                      // 0x005ddd6c    8bcf
                         shr                esi, 4                                        // 0x005ddd6e    c1ee04
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x005ddd71    e82a3e0200
                         shr                eax, 4                                        // 0x005ddd76    c1e804
                         test               esi, esi                                      // 0x005ddd79    85f6
                         {disp8} jl         _jmp_addr_0x005ddd9b                          // 0x005ddd7b    7c1e
                         cmp                esi, 0x1f                                     // 0x005ddd7d    83fe1f
                         {disp8} jg         _jmp_addr_0x005ddd9b                          // 0x005ddd80    7f19
                         test               eax, eax                                      // 0x005ddd82    85c0
                         {disp8} jl         _jmp_addr_0x005ddd9b                          // 0x005ddd84    7c15
                         cmp                eax, 0x1f                                     // 0x005ddd86    83f81f
                         {disp8} jg         _jmp_addr_0x005ddd9b                          // 0x005ddd89    7f10
                         shl                esi, 5                                        // 0x005ddd8b    c1e605
                         add.s              esi, eax                                      // 0x005ddd8e    03f0
                         {disp32} mov       ecx, dword ptr [esi * 0x4 + _GameBlock_ARRAY_00d189d8]       // 0x005ddd90    8b0cb5d889d100
                         test               ecx, ecx                                      // 0x005ddd97    85c9
                         {disp8} jne        _jmp_addr_0x005dddaa                          // 0x005ddd99    750f
_jmp_addr_0x005ddd9b:    push               ebx                                           // 0x005ddd9b    53
                         mov                ecx, 0x00d199e0                               // 0x005ddd9c    b9e099d100
                         call               _jmp_addr_0x005dde60                          // 0x005ddda1    e8ba000000
                         pop                edi                                           // 0x005ddda6    5f
                         pop                esi                                           // 0x005ddda7    5e
                         pop                ebx                                           // 0x005ddda8    5b
                         ret                                                              // 0x005ddda9    c3
_jmp_addr_0x005dddaa:    push               ebx                                           // 0x005dddaa    53
                         call               _jmp_addr_0x005dde60                          // 0x005dddab    e8b0000000
_jmp_addr_0x005dddb0:    pop                edi                                           // 0x005dddb0    5f
                         pop                esi                                           // 0x005dddb1    5e
                         pop                ebx                                           // 0x005dddb2    5b
                         ret                                                              // 0x005dddb3    c3
                         nop                                                              // 0x005dddb4    90
                         nop                                                              // 0x005dddb5    90
                         nop                                                              // 0x005dddb6    90
                         nop                                                              // 0x005dddb7    90
                         nop                                                              // 0x005dddb8    90
                         nop                                                              // 0x005dddb9    90
                         nop                                                              // 0x005dddba    90
                         nop                                                              // 0x005dddbb    90
                         nop                                                              // 0x005dddbc    90
                         nop                                                              // 0x005dddbd    90
                         nop                                                              // 0x005dddbe    90
                         nop                                                              // 0x005dddbf    90
@Insert__9GameBlockFP6Object@12:    push               ecx                                           // 0x005dddc0    51
                         push               ebx                                           // 0x005dddc1    53
                         mov.s              ebx, ecx                                      // 0x005dddc2    8bd9
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005dddc4    8b4c240c
                         cmp                dword ptr [ebx + 0x0c], ecx                   // 0x005dddc8    394b0c
                         {disp8} mov        dword ptr [ebx + 0x10], 0x00000000            // 0x005dddcb    c7431000000000
                         {disp8} je         _jmp_addr_0x005dde52                          // 0x005dddd2    747e
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x005dddd4    8b4304
                         cmp                dword ptr [ebx], eax                          // 0x005dddd7    3903
                         {disp8} jne        _jmp_addr_0x005dde45                          // 0x005dddd9    756a
                         push               ebp                                           // 0x005ddddb    55
                         push               esi                                           // 0x005ddddc    56
                         add                eax, 0x14                                     // 0x005ddddd    83c014
                         {disp32} lea       esi, dword ptr [eax * 0x4 + 0x00000000]       // 0x005ddde0    8d348500000000
                         push               edi                                           // 0x005ddde7    57
                         push               esi                                           // 0x005ddde8    56
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005ddde9    89442414
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005ddded    e8ee4e2600
                         mov.s              ebp, eax                                      // 0x005dddf2    8be8
                         add                esp, 0x04                                     // 0x005dddf4    83c404
                         test               ebp, ebp                                      // 0x005dddf7    85ed
                         {disp8} je         _jmp_addr_0x005dde0f                          // 0x005dddf9    7414
                         mov.s              ecx, esi                                      // 0x005dddfb    8bce
                         mov.s              edx, ecx                                      // 0x005dddfd    8bd1
                         shr                ecx, 2                                        // 0x005dddff    c1e902
                         xor.s              eax, eax                                      // 0x005dde02    33c0
                         mov.s              edi, ebp                                      // 0x005dde04    8bfd
                         rep stosd                                                        // 0x005dde06    f3ab
                         mov.s              ecx, edx                                      // 0x005dde08    8bca
                         and                ecx, 0x03                                     // 0x005dde0a    83e103
                         rep stosb                                                        // 0x005dde0d    f3aa
_jmp_addr_0x005dde0f:    {disp8} mov        ecx, dword ptr [ebx + 0x04]                   // 0x005dde0f    8b4b04
                         {disp8} mov        esi, dword ptr [ebx + 0x08]                   // 0x005dde12    8b7308
                         shl                ecx, 2                                        // 0x005dde15    c1e102
                         mov.s              eax, ecx                                      // 0x005dde18    8bc1
                         shr                ecx, 2                                        // 0x005dde1a    c1e902
                         mov.s              edi, ebp                                      // 0x005dde1d    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005dde1f    f3a5
                         mov.s              ecx, eax                                      // 0x005dde21    8bc8
                         and                ecx, 0x03                                     // 0x005dde23    83e103
                         rep movsb                                                        // 0x005dde26    f3a4
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x005dde28    8b4b08
                         push               ecx                                           // 0x005dde2b    51
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005dde2c    e82f4f2600
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x005dde31    8b542414
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005dde35    8b4c241c
                         add                esp, 0x04                                     // 0x005dde39    83c404
                         pop                edi                                           // 0x005dde3c    5f
                         pop                esi                                           // 0x005dde3d    5e
                         {disp8} mov        dword ptr [ebx + 0x08], ebp                   // 0x005dde3e    896b08
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x005dde41    895304
                         pop                ebp                                           // 0x005dde44    5d
_jmp_addr_0x005dde45:    mov                eax, dword ptr [ebx]                          // 0x005dde45    8b03
                         {disp8} mov        edx, dword ptr [ebx + 0x08]                   // 0x005dde47    8b5308
                         mov                dword ptr [edx + eax * 0x4], ecx              // 0x005dde4a    890c82
                         inc                dword ptr [ebx]                               // 0x005dde4d    ff03
                         {disp8} mov        dword ptr [ebx + 0x0c], ecx                   // 0x005dde4f    894b0c
_jmp_addr_0x005dde52:    pop                ebx                                           // 0x005dde52    5b
                         pop                ecx                                           // 0x005dde53    59
                         ret                0x0004                                        // 0x005dde54    c20400
                         nop                                                              // 0x005dde57    90
                         nop                                                              // 0x005dde58    90
                         nop                                                              // 0x005dde59    90
                         nop                                                              // 0x005dde5a    90
                         nop                                                              // 0x005dde5b    90
                         nop                                                              // 0x005dde5c    90
                         nop                                                              // 0x005dde5d    90
                         nop                                                              // 0x005dde5e    90
                         nop                                                              // 0x005dde5f    90
_jmp_addr_0x005dde60:    {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x005dde60    8b5110
                         push               ebx                                           // 0x005dde63    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x005dde64    8b5c2408
                         xor.s              eax, eax                                      // 0x005dde68    33c0
                         cmp.s              edx, ebx                                      // 0x005dde6a    3bd3
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x005dde6c    89410c
                         {disp8} je         _jmp_addr_0x005ddec0                          // 0x005dde6f    744f
                         mov                edx, dword ptr [ecx]                          // 0x005dde71    8b11
                         cmp                edx, 0x01                                     // 0x005dde73    83fa01
                         push               edi                                           // 0x005dde76    57
                         {disp8} jne        _jmp_addr_0x005dde8b                          // 0x005dde77    7512
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x005dde79    8b5108
                         mov                dword ptr [edx], eax                          // 0x005dde7c    8902
                         mov                eax, dword ptr [ecx]                          // 0x005dde7e    8b01
                         dec                eax                                           // 0x005dde80    48
                         pop                edi                                           // 0x005dde81    5f
                         {disp8} mov        dword ptr [ecx + 0x10], ebx                   // 0x005dde82    895910
                         mov                dword ptr [ecx], eax                          // 0x005dde85    8901
                         pop                ebx                                           // 0x005dde87    5b
                         ret                0x0004                                        // 0x005dde88    c20400
_jmp_addr_0x005dde8b:    or                 edi, 0xffffffff                               // 0x005dde8b    83cfff
                         cmp.s              edx, eax                                      // 0x005dde8e    3bd0
                         push               esi                                           // 0x005dde90    56
                         {disp8} jle        _jmp_addr_0x005ddea6                          // 0x005dde91    7e13
                         {disp8} mov        esi, dword ptr [ecx + 0x08]                   // 0x005dde93    8b7108
_jmp_addr_0x005dde96:    cmp                dword ptr [esi], ebx                          // 0x005dde96    391e
                         {disp8} je         _jmp_addr_0x005ddea4                          // 0x005dde98    740a
                         inc                eax                                           // 0x005dde9a    40
                         add                esi, 0x04                                     // 0x005dde9b    83c604
                         cmp.s              eax, edx                                      // 0x005dde9e    3bc2
                         {disp8} jl         _jmp_addr_0x005dde96                          // 0x005ddea0    7cf4
                         {disp8} jmp        _jmp_addr_0x005ddea6                          // 0x005ddea2    eb02
_jmp_addr_0x005ddea4:    mov.s              edi, eax                                      // 0x005ddea4    8bf8
_jmp_addr_0x005ddea6:    dec                edx                                           // 0x005ddea6    4a
                         cmp                edi, -0x01                                    // 0x005ddea7    83ffff
                         pop                esi                                           // 0x005ddeaa    5e
                         {disp8} je         _jmp_addr_0x005ddeba                          // 0x005ddeab    740d
                         cmp.s              edi, edx                                      // 0x005ddead    3bfa
                         {disp8} je         _jmp_addr_0x005ddeba                          // 0x005ddeaf    7409
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x005ddeb1    8b4108
                         mov                edx, dword ptr [eax + edx * 0x4]              // 0x005ddeb4    8b1490
                         mov                dword ptr [eax + edi * 0x4], edx              // 0x005ddeb7    8914b8
_jmp_addr_0x005ddeba:    dec                dword ptr [ecx]                               // 0x005ddeba    ff09
                         {disp8} mov        dword ptr [ecx + 0x10], ebx                   // 0x005ddebc    895910
                         pop                edi                                           // 0x005ddebf    5f
_jmp_addr_0x005ddec0:    pop                ebx                                           // 0x005ddec0    5b
                         ret                0x0004                                        // 0x005ddec1    c20400
                         nop                                                              // 0x005ddec4    90
                         nop                                                              // 0x005ddec5    90
                         nop                                                              // 0x005ddec6    90
                         nop                                                              // 0x005ddec7    90
                         nop                                                              // 0x005ddec8    90
                         nop                                                              // 0x005ddec9    90
                         nop                                                              // 0x005ddeca    90
                         nop                                                              // 0x005ddecb    90
                         nop                                                              // 0x005ddecc    90
                         nop                                                              // 0x005ddecd    90
                         nop                                                              // 0x005ddece    90
                         nop                                                              // 0x005ddecf    90
_jmp_addr_0x005dded0:    push               esi                                           // 0x005dded0    56
                         push               edi                                           // 0x005dded1    57
                         mov                ecx, 0x00d199e0                               // 0x005dded2    b9e099d100
                         call               _jmp_addr_0x005ddb70                          // 0x005dded7    e894fcffff
                         mov                esi, OFFSET _GameBlock_ARRAY_00d189d8         // 0x005ddedc    bed889d100
_jmp_addr_0x005ddee1:    mov                edi, 0x00000020                               // 0x005ddee1    bf20000000
_jmp_addr_0x005ddee6:    mov                ecx, dword ptr [esi]                          // 0x005ddee6    8b0e
                         test               ecx, ecx                                      // 0x005ddee8    85c9
                         {disp8} je         _jmp_addr_0x005ddef1                          // 0x005ddeea    7405
                         call               _jmp_addr_0x005ddb70                          // 0x005ddeec    e87ffcffff
_jmp_addr_0x005ddef1:    add                esi, 0x04                                     // 0x005ddef1    83c604
                         dec                edi                                           // 0x005ddef4    4f
                         {disp8} jne        _jmp_addr_0x005ddee6                          // 0x005ddef5    75ef
                         cmp                esi, 0x00d199d8                               // 0x005ddef7    81fed899d100
                         {disp8} jl         _jmp_addr_0x005ddee1                          // 0x005ddefd    7ce2
                         pop                edi                                           // 0x005ddeff    5f
                         pop                esi                                           // 0x005ddf00    5e
                         ret                                                              // 0x005ddf01    c3
                         nop                                                              // 0x005ddf02    90
                         nop                                                              // 0x005ddf03    90
                         nop                                                              // 0x005ddf04    90
                         nop                                                              // 0x005ddf05    90
                         nop                                                              // 0x005ddf06    90
                         nop                                                              // 0x005ddf07    90
                         nop                                                              // 0x005ddf08    90
                         nop                                                              // 0x005ddf09    90
                         nop                                                              // 0x005ddf0a    90
                         nop                                                              // 0x005ddf0b    90
                         nop                                                              // 0x005ddf0c    90
                         nop                                                              // 0x005ddf0d    90
                         nop                                                              // 0x005ddf0e    90
                         nop                                                              // 0x005ddf0f    90
_globl_ct_0x005ddf10:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005ddf10    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005ddf16    b001
                         test               al, cl                                        // 0x005ddf18    84c8
                         {disp8} jne        _jmp_addr_0x005ddf24                          // 0x005ddf1a    7508
                         or.s               cl, al                                        // 0x005ddf1c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005ddf1e    880d34c9fa00
_jmp_addr_0x005ddf24:    {disp32} jmp       _jmp_addr_0x005ddf30                          // 0x005ddf24    e907000000
                         nop                                                              // 0x005ddf29    90
                         nop                                                              // 0x005ddf2a    90
                         nop                                                              // 0x005ddf2b    90
                         nop                                                              // 0x005ddf2c    90
                         nop                                                              // 0x005ddf2d    90
                         nop                                                              // 0x005ddf2e    90
                         nop                                                              // 0x005ddf2f    90
_jmp_addr_0x005ddf30:    push               0x00407870                                    // 0x005ddf30    6870784000
                         call               _atexit                                       // 0x005ddf35    e857781e00
                         pop                ecx                                           // 0x005ddf3a    59
                         ret                                                              // 0x005ddf3b    c3
                         nop                                                              // 0x005ddf3c    90
                         nop                                                              // 0x005ddf3d    90
                         nop                                                              // 0x005ddf3e    90
                         nop                                                              // 0x005ddf3f    90
_globl_ct_0x005ddf40:    {disp32} jmp       _jmp_addr_0x005ddf50                          // 0x005ddf40    e90b000000
                         nop                                                              // 0x005ddf45    90
                         nop                                                              // 0x005ddf46    90
                         nop                                                              // 0x005ddf47    90
                         nop                                                              // 0x005ddf48    90
                         nop                                                              // 0x005ddf49    90
                         nop                                                              // 0x005ddf4a    90
                         nop                                                              // 0x005ddf4b    90
                         nop                                                              // 0x005ddf4c    90
                         nop                                                              // 0x005ddf4d    90
                         nop                                                              // 0x005ddf4e    90
                         nop                                                              // 0x005ddf4f    90
_jmp_addr_0x005ddf50:    {disp32} mov       dword ptr [data_bytes + 0x353c2c], 0xffffffff // 0x005ddf50    c7052c9cd100ffffffff
                         ret                                                              // 0x005ddf5a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005ddf5b    e89938e2ff
_globl_ct_0x005ddf60:    {disp32} jmp       _jmp_addr_0x005ddf70                          // 0x005ddf60    e90b000000
                         nop                                                              // 0x005ddf65    90
                         nop                                                              // 0x005ddf66    90
                         nop                                                              // 0x005ddf67    90
                         nop                                                              // 0x005ddf68    90
                         nop                                                              // 0x005ddf69    90
                         nop                                                              // 0x005ddf6a    90
                         nop                                                              // 0x005ddf6b    90
                         nop                                                              // 0x005ddf6c    90
                         nop                                                              // 0x005ddf6d    90
                         nop                                                              // 0x005ddf6e    90
                         nop                                                              // 0x005ddf6f    90
_jmp_addr_0x005ddf70:    {disp32} fld       dword ptr [rdata_bytes + 0x82208]             // 0x005ddf70    d90508b29200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82204]             // 0x005ddf76    d80d04b29200
                         {disp32} fstp      dword ptr [data_bytes + 0x353c28]             // 0x005ddf7c    d91d289cd100
                         ret                                                              // 0x005ddf82    c3
                         nop                                                              // 0x005ddf83    90
                         nop                                                              // 0x005ddf84    90
                         nop                                                              // 0x005ddf85    90
                         nop                                                              // 0x005ddf86    90
                         nop                                                              // 0x005ddf87    90
                         nop                                                              // 0x005ddf88    90
                         nop                                                              // 0x005ddf89    90
                         nop                                                              // 0x005ddf8a    90
                         nop                                                              // 0x005ddf8b    90
                         nop                                                              // 0x005ddf8c    90
                         nop                                                              // 0x005ddf8d    90
                         nop                                                              // 0x005ddf8e    90
                         nop                                                              // 0x005ddf8f    90
_globl_ct_0x005ddf90:    call               _jmp_addr_0x005ddfa0                          // 0x005ddf90    e80b000000
                         {disp32} jmp       _jmp_addr_0x005ddfc0                          // 0x005ddf95    e926000000
                         nop                                                              // 0x005ddf9a    90
                         nop                                                              // 0x005ddf9b    90
                         nop                                                              // 0x005ddf9c    90
                         nop                                                              // 0x005ddf9d    90
                         nop                                                              // 0x005ddf9e    90
                         nop                                                              // 0x005ddf9f    90
_jmp_addr_0x005ddfa0:    push               edi                                           // 0x005ddfa0    57
                         mov                ecx, 0x00000040                               // 0x005ddfa1    b940000000
                         xor.s              eax, eax                                      // 0x005ddfa6    33c0
                         mov                edi, 0x00d19b28                               // 0x005ddfa8    bf289bd100
                         rep stosd                                                        // 0x005ddfad    f3ab
                         pop                edi                                           // 0x005ddfaf    5f
                         ret                                                              // 0x005ddfb0    c3
                         nop                                                              // 0x005ddfb1    90
                         nop                                                              // 0x005ddfb2    90
                         nop                                                              // 0x005ddfb3    90
                         nop                                                              // 0x005ddfb4    90
                         nop                                                              // 0x005ddfb5    90
                         nop                                                              // 0x005ddfb6    90
                         nop                                                              // 0x005ddfb7    90
                         nop                                                              // 0x005ddfb8    90
                         nop                                                              // 0x005ddfb9    90
                         nop                                                              // 0x005ddfba    90
                         nop                                                              // 0x005ddfbb    90
                         nop                                                              // 0x005ddfbc    90
                         nop                                                              // 0x005ddfbd    90
                         nop                                                              // 0x005ddfbe    90
                         nop                                                              // 0x005ddfbf    90
_jmp_addr_0x005ddfc0:    push               0x005ddfd0                                    // 0x005ddfc0    68d0df5d00
                         call               _atexit                                       // 0x005ddfc5    e8c7771e00
                         pop                ecx                                           // 0x005ddfca    59
                         ret                                                              // 0x005ddfcb    c3
                         nop                                                              // 0x005ddfcc    90
                         nop                                                              // 0x005ddfcd    90
                         nop                                                              // 0x005ddfce    90
                         nop                                                              // 0x005ddfcf    90
                         push               ebx                                           // 0x005ddfd0    53
                         push               ebp                                           // 0x005ddfd1    55
                         push               esi                                           // 0x005ddfd2    56
                         push               edi                                           // 0x005ddfd3    57
                         mov                ebx, 0x00d19c28                               // 0x005ddfd4    bb289cd100
                         mov                ebp, 0x00000008                               // 0x005ddfd9    bd08000000
_jmp_addr_0x005ddfde:    sub                ebx, 0x20                                     // 0x005ddfde    83eb20
                         mov.s              esi, ebx                                      // 0x005ddfe1    8bf3
                         mov                edi, 0x00000008                               // 0x005ddfe3    bf08000000
_jmp_addr_0x005ddfe8:    mov                eax, dword ptr [esi]                          // 0x005ddfe8    8b06
                         test               eax, eax                                      // 0x005ddfea    85c0
                         {disp8} je         _jmp_addr_0x005ddffd                          // 0x005ddfec    740f
                         push               eax                                           // 0x005ddfee    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005ddfef    e86c4d2600
                         add                esp, 0x04                                     // 0x005ddff4    83c404
                         mov                dword ptr [esi], 0x00000000                   // 0x005ddff7    c70600000000
_jmp_addr_0x005ddffd:    add                esi, 0x04                                     // 0x005ddffd    83c604
                         dec                edi                                           // 0x005de000    4f
                         {disp8} jne        _jmp_addr_0x005ddfe8                          // 0x005de001    75e5
                         dec                ebp                                           // 0x005de003    4d
                         {disp8} jne        _jmp_addr_0x005ddfde                          // 0x005de004    75d8
                         pop                edi                                           // 0x005de006    5f
                         pop                esi                                           // 0x005de007    5e
                         pop                ebp                                           // 0x005de008    5d
                         pop                ebx                                           // 0x005de009    5b
                         ret                                                              // 0x005de00a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005de00b    e8e937e2ff
_jmp_addr_0x005de010:    sub                esp, 0x50                                     // 0x005de010    83ec50
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x005de013    8b442454
                         push               ebx                                           // 0x005de017    53
                         push               ebp                                           // 0x005de018    55
                         push               esi                                           // 0x005de019    56
                         xor.s              ebx, ebx                                      // 0x005de01a    33db
                         {disp32} lea       ebp, dword ptr [eax + 0x00001170]             // 0x005de01c    8da870110000
                         push               edi                                           // 0x005de022    57
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x005de023    895c2410
                         xor.s              edi, edi                                      // 0x005de027    33ff
                         mov.s              esi, ebp                                      // 0x005de029    8bf5
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000008            // 0x005de02b    c744246408000000
_jmp_addr_0x005de033:    xor.s              eax, eax                                      // 0x005de033    33c0
                         mov                al, byte ptr [esi]                            // 0x005de035    8a06
                         mov.s              cl, al                                        // 0x005de037    8ac8
                         and                cl, -0x10                                     // 0x005de039    80e1f0
                         cmp                cl, -0x80                                     // 0x005de03c    80f980
                         {disp8} jae        _jmp_addr_0x005de060                          // 0x005de03f    731f
                         and                eax, 0x0f                                     // 0x005de041    83e00f
                         cmp                dword ptr [eax * 0x4 + 0x00d19c48], ebx       // 0x005de044    391c85489cd100
                         {disp8} je         _jmp_addr_0x005de060                          // 0x005de04b    7413
                         mov                edx, 0x00000001                               // 0x005de04d    ba01000000
                         mov.s              ecx, eax                                      // 0x005de052    8bc8
                         shl                edx, cl                                       // 0x005de054    d3e2
                         test               edi, edx                                      // 0x005de056    85d7
                         {disp8} jne        _jmp_addr_0x005de05e                          // 0x005de058    7504
                         {disp8} inc        dword ptr [esp + 0x10]                        // 0x005de05a    ff442410
_jmp_addr_0x005de05e:    or.s               edi, edx                                      // 0x005de05e    0bfa
_jmp_addr_0x005de060:    {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x005de060    8b442464
                         add                esi, 0x04                                     // 0x005de064    83c604
                         dec                eax                                           // 0x005de067    48
                         {disp8} mov        dword ptr [esp + 0x64], eax                   // 0x005de068    89442464
                         {disp8} jne        _jmp_addr_0x005de033                          // 0x005de06c    75c5
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x005de06e    8b7c2410
                         shl                edi, 0xb                                      // 0x005de072    c1e70b
                         add                edi, 0x28                                     // 0x005de075    83c728
                         push               edi                                           // 0x005de078    57
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de079    e8624c2600
                         {disp8} mov        dl, byte ptr [esp + 0x14]                     // 0x005de07e    8a542414
                         mov.s              esi, eax                                      // 0x005de082    8bf0
                         add                esp, 0x04                                     // 0x005de084    83c404
                         mov                dword ptr [esi], edi                          // 0x005de087    893e
                         {disp8} lea        eax, dword ptr [esi + 0x28]                   // 0x005de089    8d4628
                         xor.s              edi, edi                                      // 0x005de08c    33ff
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                   // 0x005de08e    8d4e08
                         {disp8} mov        byte ptr [esi + 0x04], dl                     // 0x005de091    885604
                         {disp8} mov        byte ptr [esi + 0x05], bl                     // 0x005de094    885e05
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005de097    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x005de09b    895c2414
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x005de09f    895c2420
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x005de0a3    895c2424
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x005de0a7    895c2428
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x005de0ab    895c242c
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x005de0af    895c2430
                         {disp8} mov        dword ptr [esp + 0x34], ebx                   // 0x005de0b3    895c2434
                         {disp8} mov        dword ptr [esp + 0x38], ebx                   // 0x005de0b7    895c2438
                         {disp8} mov        dword ptr [esp + 0x3c], ebx                   // 0x005de0bb    895c243c
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x005de0bf    895c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebx                   // 0x005de0c3    895c2444
                         {disp8} mov        dword ptr [esp + 0x48], ebx                   // 0x005de0c7    895c2448
                         {disp8} mov        dword ptr [esp + 0x4c], ebx                   // 0x005de0cb    895c244c
                         {disp8} mov        dword ptr [esp + 0x50], ebx                   // 0x005de0cf    895c2450
                         {disp8} mov        dword ptr [esp + 0x54], ebx                   // 0x005de0d3    895c2454
                         {disp8} mov        dword ptr [esp + 0x58], ebx                   // 0x005de0d7    895c2458
                         {disp8} mov        dword ptr [esp + 0x5c], ebx                   // 0x005de0db    895c245c
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x005de0df    897c2418
                         {disp8} mov        dword ptr [esp + 0x64], ecx                   // 0x005de0e3    894c2464
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x005de0e7    896c241c
_jmp_addr_0x005de0eb:    xor.s              edx, edx                                      // 0x005de0eb    33d2
                         {disp8} mov        dl, byte ptr [ebp + 0x00]                     // 0x005de0ed    8a5500
                         mov.s              al, dl                                        // 0x005de0f0    8ac2
                         and                al, -0x10                                     // 0x005de0f2    24f0
                         cmp                al, -0x80                                     // 0x005de0f4    3c80
                         {disp8} jae        _jmp_addr_0x005de170                          // 0x005de0f6    7378
                         and                edx, 0x0f                                     // 0x005de0f8    83e20f
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00d19c48]       // 0x005de0fb    8b0495489cd100
                         cmp.s              eax, ebx                                      // 0x005de102    3bc3
                         {disp32} lea       ebp, dword ptr [edx * 0x4 + 0x00d19c48]       // 0x005de104    8d2c95489cd100
                         {disp8} je         _jmp_addr_0x005de170                          // 0x005de10b    7463
                         mov.s              ecx, edi                                      // 0x005de10d    8bcf
                         mov                al, 0x01                                      // 0x005de10f    b001
                         shl                al, cl                                        // 0x005de111    d2e0
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x005de113    8a4e05
                         mov                edi, 0x00000001                               // 0x005de116    bf01000000
                         or.s               cl, al                                        // 0x005de11b    0ac8
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005de11d    8b442414
                         {disp8} mov        byte ptr [esi + 0x05], cl                     // 0x005de121    884e05
                         mov.s              ecx, edx                                      // 0x005de124    8bca
                         shl                edi, cl                                       // 0x005de126    d3e7
                         test               edi, eax                                      // 0x005de128    85c7
                         {disp8} jne        _jmp_addr_0x005de158                          // 0x005de12a    752c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005de12c    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x005de130    8b4c2464
                         sub.s              eax, esi                                      // 0x005de134    2bc6
                         mov                dword ptr [ecx], eax                          // 0x005de136    8901
                         {disp8} mov        dword ptr [esp + edx * 0x4 + 0x20], eax       // 0x005de138    89449420
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x005de13c    8b5500
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x005de13f    8b6c2410
                         push               edx                                           // 0x005de143    52
                         push               ebp                                           // 0x005de144    55
                         mov.s              ecx, esi                                      // 0x005de145    8bce
                         call               _jmp_addr_0x005de1a0                          // 0x005de147    e854000000
                         add                ebp, 0x00000800                               // 0x005de14c    81c500080000
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x005de152    896c2410
                         {disp8} jmp        _jmp_addr_0x005de162                          // 0x005de156    eb0a
_jmp_addr_0x005de158:    {disp8} mov        eax, dword ptr [esp + edx * 0x4 + 0x20]       // 0x005de158    8b449420
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x005de15c    8b4c2464
                         mov                dword ptr [ecx], eax                          // 0x005de160    8901
_jmp_addr_0x005de162:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005de162    8b442414
                         or.s               eax, edi                                      // 0x005de166    0bc7
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x005de168    8b7c2418
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005de16c    89442414
_jmp_addr_0x005de170:    {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x005de170    8b6c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x005de174    8b4c2464
                         inc                edi                                           // 0x005de178    47
                         add                ebp, 0x04                                     // 0x005de179    83c504
                         add                ecx, 0x4                                      // 0x005de17c    83c104
                         cmp                edi, 0x08                                     // 0x005de17f    83ff08
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x005de182    897c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x005de186    896c241c
                         {disp8} mov        dword ptr [esp + 0x64], ecx                   // 0x005de18a    894c2464
                         {disp32} jl        _jmp_addr_0x005de0eb                          // 0x005de18e    0f8c57ffffff
                         pop                edi                                           // 0x005de194    5f
                         mov.s              eax, esi                                      // 0x005de195    8bc6
                         pop                esi                                           // 0x005de197    5e
                         pop                ebp                                           // 0x005de198    5d
                         pop                ebx                                           // 0x005de199    5b
                         add                esp, 0x50                                     // 0x005de19a    83c450
                         ret                                                              // 0x005de19d    c3
                         nop                                                              // 0x005de19e    90
                         nop                                                              // 0x005de19f    90
_jmp_addr_0x005de1a0:    push               esi                                           // 0x005de1a0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x005de1a1    8b742408
                         test               esi, esi                                      // 0x005de1a5    85f6
                         {disp8} je         _jmp_addr_0x005de1ce                          // 0x005de1a7    7425
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005de1a9    8b44240c
                         test               eax, eax                                      // 0x005de1ad    85c0
                         {disp8} je         _jmp_addr_0x005de1ce                          // 0x005de1af    741d
                         push               edi                                           // 0x005de1b1    57
                         mov                edi, 0x00000800                               // 0x005de1b2    bf00080000
_jmp_addr_0x005de1b7:    {disp8} mov        cl, byte ptr [eax + 0x01]                     // 0x005de1b7    8a4801
                         mov                dl, byte ptr [eax]                            // 0x005de1ba    8a10
                         and                cl, -0x10                                     // 0x005de1bc    80e1f0
                         shr                dl, 4                                         // 0x005de1bf    c0ea04
                         or.s               cl, dl                                        // 0x005de1c2    0aca
                         mov                byte ptr [esi], cl                            // 0x005de1c4    880e
                         inc                esi                                           // 0x005de1c6    46
                         add                eax, 0x02                                     // 0x005de1c7    83c002
                         dec                edi                                           // 0x005de1ca    4f
                         {disp8} jne        _jmp_addr_0x005de1b7                          // 0x005de1cb    75ea
                         pop                edi                                           // 0x005de1cd    5f
_jmp_addr_0x005de1ce:    pop                esi                                           // 0x005de1ce    5e
                         ret                0x0008                                        // 0x005de1cf    c20800
                         nop                                                              // 0x005de1d2    90
                         nop                                                              // 0x005de1d3    90
                         nop                                                              // 0x005de1d4    90
                         nop                                                              // 0x005de1d5    90
                         nop                                                              // 0x005de1d6    90
                         nop                                                              // 0x005de1d7    90
                         nop                                                              // 0x005de1d8    90
                         nop                                                              // 0x005de1d9    90
                         nop                                                              // 0x005de1da    90
                         nop                                                              // 0x005de1db    90
                         nop                                                              // 0x005de1dc    90
                         nop                                                              // 0x005de1dd    90
                         nop                                                              // 0x005de1de    90
                         nop                                                              // 0x005de1df    90
_jmp_addr_0x005de1e0:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005de1e0    8b44240c
                         sub                esp, 0x14                                     // 0x005de1e4    83ec14
                         test               eax, eax                                      // 0x005de1e7    85c0
                         {disp32} je        _jmp_addr_0x005de2e1                          // 0x005de1e9    0f84f2000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517470]        // 0x005de1ef    a170d4ed00
                         xor.s              ecx, ecx                                      // 0x005de1f4    33c9
                         test               eax, eax                                      // 0x005de1f6    85c0
                         setne              cl                                            // 0x005de1f8    0f95c1
                         push               ebx                                           // 0x005de1fb    53
                         neg                eax                                           // 0x005de1fc    f7d8
                         push               ebp                                           // 0x005de1fe    55
                         sbb.s              eax, eax                                      // 0x005de1ff    1bc0
                         push               esi                                           // 0x005de201    56
                         and                eax, 0xffffff80                               // 0x005de202    83e080
                         push               edi                                           // 0x005de205    57
                         add                eax, 0x00000100                               // 0x005de206    0500010000
                         push               0x00010000                                    // 0x005de20b    6800000100
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x005de210    894c2414
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005de214    8944241c
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de218    e8c34a2600
                         mov.s              ebp, eax                                      // 0x005de21d    8be8
                         push               0x00030000                                    // 0x005de21f    6800000300
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x005de224    896c2424
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de228    e8b34a2600
                         add                esp, 0x08                                     // 0x005de22d    83c408
                         xor.s              edi, edi                                      // 0x005de230    33ff
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005de232    89442420
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x005de236    897c2414
                         {disp8} lea        edx, dword ptr [eax + 0x02]                   // 0x005de23a    8d5002
_jmp_addr_0x005de23d:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005de23d    8b4c2410
                         sar                edi, cl                                       // 0x005de241    d3ff
                         xor.s              esi, esi                                      // 0x005de243    33f6
                         imul               edi, dword ptr [esp + 0x18]                   // 0x005de245    0faf7c2418
_jmp_addr_0x005de24a:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005de24a    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005de24e    8b442428
                         mov.s              ebx, esi                                      // 0x005de252    8bde
                         sar                ebx, cl                                       // 0x005de254    d3fb
                         mov                ecx, dword ptr [eax]                          // 0x005de256    8b08
                         xor.s              eax, eax                                      // 0x005de258    33c0
                         add                edx, 0x03                                     // 0x005de25a    83c203
                         add.s              ebx, edi                                      // 0x005de25d    03df
                         mov                ax, word ptr [ecx + ebx * 0x2]                // 0x005de25f    668b0459
                         mov.s              ecx, eax                                      // 0x005de263    8bc8
                         shr                ecx, 8                                        // 0x005de265    c1e908
                         and                cl, -0x10                                     // 0x005de268    80e1f0
                         {disp8} mov        byte ptr [ebp + 0x00], cl                     // 0x005de26b    884d00
                         mov.s              ecx, eax                                      // 0x005de26e    8bc8
                         shr                ecx, 4                                        // 0x005de270    c1e904
                         and                cl, -0x10                                     // 0x005de273    80e1f0
                         {disp8} mov        byte ptr [edx + -0x05], cl                    // 0x005de276    884afb
                         mov.s              cl, al                                        // 0x005de279    8ac8
                         and                cl, -0x10                                     // 0x005de27b    80e1f0
                         shl                al, 4                                         // 0x005de27e    c0e004
                         {disp8} mov        byte ptr [edx + -0x04], cl                    // 0x005de281    884afc
                         {disp8} mov        byte ptr [edx + -0x03], al                    // 0x005de284    8842fd
                         inc                esi                                           // 0x005de287    46
                         inc                ebp                                           // 0x005de288    45
                         cmp                esi, 0x00000100                               // 0x005de289    81fe00010000
                         {disp8} jl         _jmp_addr_0x005de24a                          // 0x005de28f    7cb9
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005de291    8b7c2414
                         inc                edi                                           // 0x005de295    47
                         cmp                edi, 0x00000100                               // 0x005de296    81ff00010000
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x005de29c    897c2414
                         {disp8} jl         _jmp_addr_0x005de23d                          // 0x005de2a0    7c9b
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x005de2a2    8b74241c
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x005de2a6    8b54242c
                         push               0x0                                           // 0x005de2aa    6a00
                         push               0x00010000                                    // 0x005de2ac    6800000100
                         push               esi                                           // 0x005de2b1    56
                         push               edx                                           // 0x005de2b2    52
                         call               _jmp_addr_0x007bd030                          // 0x005de2b3    e878ed1d00
                         {disp8} mov        edi, dword ptr [esp + 0x30]                   // 0x005de2b8    8b7c2430
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x005de2bc    8b442440
                         push               0x0                                           // 0x005de2c0    6a00
                         push               0x00030000                                    // 0x005de2c2    6800000300
                         push               edi                                           // 0x005de2c7    57
                         push               eax                                           // 0x005de2c8    50
                         call               _jmp_addr_0x007bd030                          // 0x005de2c9    e862ed1d00
                         push               esi                                           // 0x005de2ce    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005de2cf    e88c4a2600
                         push               edi                                           // 0x005de2d4    57
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005de2d5    e8864a2600
                         add                esp, 0x28                                     // 0x005de2da    83c428
                         pop                edi                                           // 0x005de2dd    5f
                         pop                esi                                           // 0x005de2de    5e
                         pop                ebp                                           // 0x005de2df    5d
                         pop                ebx                                           // 0x005de2e0    5b
_jmp_addr_0x005de2e1:    add                esp, 0x14                                     // 0x005de2e1    83c414
                         ret                                                              // 0x005de2e4    c3
                         nop                                                              // 0x005de2e5    90
                         nop                                                              // 0x005de2e6    90
                         nop                                                              // 0x005de2e7    90
                         nop                                                              // 0x005de2e8    90
                         nop                                                              // 0x005de2e9    90
                         nop                                                              // 0x005de2ea    90
                         nop                                                              // 0x005de2eb    90
                         nop                                                              // 0x005de2ec    90
                         nop                                                              // 0x005de2ed    90
                         nop                                                              // 0x005de2ee    90
                         nop                                                              // 0x005de2ef    90
_jmp_addr_0x005de2f0:    {disp32} mov       eax, dword ptr [data_bytes + 0x353c3c]        // 0x005de2f0    a13c9cd100
                         test               eax, eax                                      // 0x005de2f5    85c0
                         {disp32} jne       _jmp_addr_0x005de451                          // 0x005de2f7    0f8554010000
                         push               esi                                           // 0x005de2fd    56
                         push               edi                                           // 0x005de2fe    57
                         push               0x00030000                                    // 0x005de2ff    6800000300
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de304    e8d7492600
                         mov.s              esi, eax                                      // 0x005de309    8bf0
                         add                esp, 0x04                                     // 0x005de30b    83c404
                         test               esi, esi                                      // 0x005de30e    85f6
                         {disp8} je         _jmp_addr_0x005de31d                          // 0x005de310    740b
                         mov                ecx, 0x0000c000                               // 0x005de312    b900c00000
                         xor.s              eax, eax                                      // 0x005de317    33c0
                         mov.s              edi, esi                                      // 0x005de319    8bfe
                         rep stosd                                                        // 0x005de31b    f3ab
_jmp_addr_0x005de31d:    push               0x0                                           // 0x005de31d    6a00
                         push               0x00030000                                    // 0x005de31f    6800000300
                         push               esi                                           // 0x005de324    56
                         push               0x00bf3214                                    // 0x005de325    681432bf00
                         call               _jmp_addr_0x007bd030                          // 0x005de32a    e801ed1d00
                         push               esi                                           // 0x005de32f    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005de330    e82b4a2600
                         push               0x00010000                                    // 0x005de335    6800000100
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de33a    e8a1492600
                         mov.s              esi, eax                                      // 0x005de33f    8bf0
                         add                esp, 0x18                                     // 0x005de341    83c418
                         test               esi, esi                                      // 0x005de344    85f6
                         {disp8} je         _jmp_addr_0x005de353                          // 0x005de346    740b
                         mov                ecx, 0x00004000                               // 0x005de348    b900400000
                         xor.s              eax, eax                                      // 0x005de34d    33c0
                         mov.s              edi, esi                                      // 0x005de34f    8bfe
                         rep stosd                                                        // 0x005de351    f3ab
_jmp_addr_0x005de353:    push               0x0                                           // 0x005de353    6a00
                         push               0x00010000                                    // 0x005de355    6800000100
                         push               esi                                           // 0x005de35a    56
                         push               0x00bf31f0                                    // 0x005de35b    68f031bf00
                         call               _jmp_addr_0x007bd030                          // 0x005de360    e8cbec1d00
                         push               esi                                           // 0x005de365    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005de366    e8f5492600
                         push               0x00030000                                    // 0x005de36b    6800000300
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de370    e86b492600
                         mov.s              esi, eax                                      // 0x005de375    8bf0
                         add                esp, 0x18                                     // 0x005de377    83c418
                         test               esi, esi                                      // 0x005de37a    85f6
                         {disp8} je         _jmp_addr_0x005de389                          // 0x005de37c    740b
                         mov                ecx, 0x0000c000                               // 0x005de37e    b900c00000
                         xor.s              eax, eax                                      // 0x005de383    33c0
                         mov.s              edi, esi                                      // 0x005de385    8bfe
                         rep stosd                                                        // 0x005de387    f3ab
_jmp_addr_0x005de389:    push               0x0                                           // 0x005de389    6a00
                         push               0x00030000                                    // 0x005de38b    6800000300
                         push               esi                                           // 0x005de390    56
                         push               0x00bf31c8                                    // 0x005de391    68c831bf00
                         call               _LHLoadData__FPcPvUlPUl                       // 0x005de396    e855ea1d00
                         push               0x0                                           // 0x005de39b    6a00
                         push               0x00030000                                    // 0x005de39d    6800000300
                         push               esi                                           // 0x005de3a2    56
                         push               0x00bf31a8                                    // 0x005de3a3    68a831bf00
                         call               _jmp_addr_0x007bd030                          // 0x005de3a8    e883ec1d00
                         push               esi                                           // 0x005de3ad    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005de3ae    e8ad492600
                         push               0x00010000                                    // 0x005de3b3    6800000100
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de3b8    e823492600
                         mov.s              esi, eax                                      // 0x005de3bd    8bf0
                         add                esp, 0x28                                     // 0x005de3bf    83c428
                         test               esi, esi                                      // 0x005de3c2    85f6
                         {disp8} je         _jmp_addr_0x005de3d1                          // 0x005de3c4    740b
                         mov                ecx, 0x00004000                               // 0x005de3c6    b900400000
                         xor.s              eax, eax                                      // 0x005de3cb    33c0
                         mov.s              edi, esi                                      // 0x005de3cd    8bfe
                         rep stosd                                                        // 0x005de3cf    f3ab
_jmp_addr_0x005de3d1:    push               0x0                                           // 0x005de3d1    6a00
                         push               0x00010000                                    // 0x005de3d3    6800000100
                         push               esi                                           // 0x005de3d8    56
                         push               0x00bf3180                                    // 0x005de3d9    688031bf00
                         call               _LHLoadData__FPcPvUlPUl                       // 0x005de3de    e80dea1d00
                         push               0x0                                           // 0x005de3e3    6a00
                         push               0x00010000                                    // 0x005de3e5    6800000100
                         push               esi                                           // 0x005de3ea    56
                         push               0x00bf3160                                    // 0x005de3eb    686031bf00
                         call               _jmp_addr_0x007bd030                          // 0x005de3f0    e83bec1d00
                         push               esi                                           // 0x005de3f5    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005de3f6    e865492600
                         push               0x0                                           // 0x005de3fb    6a00
                         push               0x0                                           // 0x005de3fd    6a00
                         push               0x41                                          // 0x005de3ff    6a41
                         push               0x00bf3214                                    // 0x005de401    681432bf00
                         {disp32} mov       dword ptr [data_bytes + 0x353c44], 0x00000000 // 0x005de406    c705449cd10000000000
                         call               _jmp_addr_0x008379e0                          // 0x005de410    e8cb952500
                         push               0x0                                           // 0x005de415    6a00
                         push               0x0                                           // 0x005de417    6a00
                         push               0x41                                          // 0x005de419    6a41
                         push               0x00bf31a8                                    // 0x005de41b    68a831bf00
                         {disp32} mov       dword ptr [data_bytes + 0x353c3c], eax        // 0x005de420    a33c9cd100
                         call               _jmp_addr_0x008379e0                          // 0x005de425    e8b6952500
                         add                esp, 0x44                                     // 0x005de42a    83c444
                         push               0x0                                           // 0x005de42d    6a00
                         push               0x0                                           // 0x005de42f    6a00
                         push               0x41                                          // 0x005de431    6a41
                         push               0x00bf31c8                                    // 0x005de433    68c831bf00
                         {disp32} mov       dword ptr [data_bytes + 0x353c38], eax        // 0x005de438    a3389cd100
                         call               _jmp_addr_0x008379e0                          // 0x005de43d    e89e952500
                         add                esp, 0x10                                     // 0x005de442    83c410
                         {disp32} mov       dword ptr [data_bytes + 0x353c40], eax        // 0x005de445    a3409cd100
                         call               _jmp_addr_0x005de5e0                          // 0x005de44a    e891010000
                         pop                edi                                           // 0x005de44f    5f
                         pop                esi                                           // 0x005de450    5e
_jmp_addr_0x005de451:    ret                                                              // 0x005de451    c3
                         nop                                                              // 0x005de452    90
                         nop                                                              // 0x005de453    90
                         nop                                                              // 0x005de454    90
                         nop                                                              // 0x005de455    90
                         nop                                                              // 0x005de456    90
                         nop                                                              // 0x005de457    90
                         nop                                                              // 0x005de458    90
                         nop                                                              // 0x005de459    90
                         nop                                                              // 0x005de45a    90
                         nop                                                              // 0x005de45b    90
                         nop                                                              // 0x005de45c    90
                         nop                                                              // 0x005de45d    90
                         nop                                                              // 0x005de45e    90
                         nop                                                              // 0x005de45f    90
_jmp_addr_0x005de460:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005de460    8b442404
                         and                eax, 0x03                                     // 0x005de464    83e003
                         shl                eax, 6                                        // 0x005de467    c1e006
                         ret                                                              // 0x005de46a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005de46b    e88933e2ff
_jmp_addr_0x005de470:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005de470    8b442404
                         cdq                                                              // 0x005de474    99
                         and                edx, 0x03                                     // 0x005de475    83e203
                         add.s              eax, edx                                      // 0x005de478    03c2
                         sar                eax, 2                                        // 0x005de47a    c1f802
                         shl                eax, 6                                        // 0x005de47d    c1e006
                         ret                                                              // 0x005de480    c3
                         nop                                                              // 0x005de481    90
                         nop                                                              // 0x005de482    90
                         nop                                                              // 0x005de483    90
                         nop                                                              // 0x005de484    90
                         nop                                                              // 0x005de485    90
                         nop                                                              // 0x005de486    90
                         nop                                                              // 0x005de487    90
                         nop                                                              // 0x005de488    90
                         nop                                                              // 0x005de489    90
                         nop                                                              // 0x005de48a    90
                         nop                                                              // 0x005de48b    90
                         nop                                                              // 0x005de48c    90
                         nop                                                              // 0x005de48d    90
                         nop                                                              // 0x005de48e    90
                         nop                                                              // 0x005de48f    90
_jmp_addr_0x005de490:    sub                esp, 0x00000434                               // 0x005de490    81ec34040000
                         push               ebx                                           // 0x005de496    53
                         push               ebp                                           // 0x005de497    55
                         xor.s              ebp, ebp                                      // 0x005de498    33ed
                         push               esi                                           // 0x005de49a    56
                         push               edi                                           // 0x005de49b    57
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x005de49c    896c2410
                         xor.s              eax, eax                                      // 0x005de4a0    33c0
                         {disp8} lea        ecx, dword ptr [esp + 0x45]                   // 0x005de4a2    8d4c2445
_jmp_addr_0x005de4a6:    {disp8} mov        byte ptr [ecx + -0x01], al                    // 0x005de4a6    8841ff
                         mov                byte ptr [ecx], al                            // 0x005de4a9    8801
                         {disp8} mov        byte ptr [ecx + 0x01], al                     // 0x005de4ab    884101
                         {disp8} mov        byte ptr [ecx + 0x02], 0x00                   // 0x005de4ae    c6410200
                         inc                eax                                           // 0x005de4b2    40
                         add                ecx, 0x4                                      // 0x005de4b3    83c104
                         cmp                eax, 0x00000100                               // 0x005de4b6    3d00010000
                         {disp8} jl         _jmp_addr_0x005de4a6                          // 0x005de4bb    7ce9
                         xor.s              eax, eax                                      // 0x005de4bd    33c0
                         mov                ecx, 0x0000000a                               // 0x005de4bf    b90a000000
                         {disp8} lea        edi, dword ptr [esp + 0x1c]                   // 0x005de4c4    8d7c241c
                         rep stosd                                                        // 0x005de4c8    f3ab
                         mov                eax, 0x00000040                               // 0x005de4ca    b840000000
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005de4cf    89442420
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005de4d3    89442424
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf078]        // 0x005de4d7    a17850e800
                         push               eax                                           // 0x005de4dc    50
                         {disp8} mov        word ptr [esp + 0x2e], 0x0008                 // 0x005de4dd    66c744242e0800
                         {disp8} mov        word ptr [esp + 0x2c], 0x0001                 // 0x005de4e4    66c744242c0100
                         {disp8} mov        dword ptr [esp + 0x30], ebp                   // 0x005de4eb    896c2430
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000028            // 0x005de4ef    c744242028000000
                         call               dword ptr [__imp__GetWindowDC@4]              // 0x005de4f7    ff15b4978a00
                         push               ebp                                           // 0x005de4fd    55
                         push               ebp                                           // 0x005de4fe    55
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x005de4ff    8d4c2418
                         push               ecx                                           // 0x005de503    51
                         push               ebp                                           // 0x005de504    55
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x005de505    8d54242c
                         push               edx                                           // 0x005de509    52
                         push               eax                                           // 0x005de50a    50
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x005de50b    89442430
                         call               dword ptr [__imp__CreateDIBSection@4]         // 0x005de50f    ff1568908a00
                         {disp32} mov       esi, dword ptr [__imp__CreateCompatibleDC@4]  // 0x005de515    8b3564908a00
                         mov.s              ebx, eax                                      // 0x005de51b    8bd8
                         push               ebp                                           // 0x005de51d    55
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x005de51e    895c2418
                         call               esi                                           // 0x005de522    ffd6
                         push               ebp                                           // 0x005de524    55
                         mov.s              edi, eax                                      // 0x005de525    8bf8
                         call               esi                                           // 0x005de527    ffd6
                         test               ebx, ebx                                      // 0x005de529    85db
                         mov.s              ebp, eax                                      // 0x005de52b    8be8
                         {disp8} je         _jmp_addr_0x005de596                          // 0x005de52d    7467
                         test               edi, edi                                      // 0x005de52f    85ff
                         {disp8} je         _jmp_addr_0x005de596                          // 0x005de531    7463
                         test               ebp, ebp                                      // 0x005de533    85ed
                         {disp8} je         _jmp_addr_0x005de596                          // 0x005de535    745f
                         {disp32} mov       esi, dword ptr [__imp__SelectObject@4]        // 0x005de537    8b3570908a00
                         push               ebx                                           // 0x005de53d    53
                         push               edi                                           // 0x005de53e    57
                         call               esi                                           // 0x005de53f    ffd6
                         {disp32} mov       eax, dword ptr [esp + 0x00000448]             // 0x005de541    8b842448040000
                         push               eax                                           // 0x005de548    50
                         push               ebp                                           // 0x005de549    55
                         call               esi                                           // 0x005de54a    ffd6
                         push               0x00cc0020                                    // 0x005de54c    682000cc00
                         push               0x0                                           // 0x005de551    6a00
                         push               0x0                                           // 0x005de553    6a00
                         push               ebp                                           // 0x005de555    55
                         push               0x40                                          // 0x005de556    6a40
                         push               0x40                                          // 0x005de558    6a40
                         push               0x0                                           // 0x005de55a    6a00
                         push               0x0                                           // 0x005de55c    6a00
                         push               edi                                           // 0x005de55e    57
                         call               dword ptr [__imp__BitBlt@4]                   // 0x005de55f    ff1560908a00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005de565    8b4c2410
                         {disp32} mov       esi, dword ptr [esp + 0x0000044c]             // 0x005de569    8bb4244c040000
                         add                ecx, 0x00000fc0                               // 0x005de570    81c1c00f0000
                         mov                edx, 0x00000040                               // 0x005de576    ba40000000
_jmp_addr_0x005de57b:    xor.s              eax, eax                                      // 0x005de57b    33c0
_jmp_addr_0x005de57d:    mov                bl, byte ptr [ecx + eax * 0x1]                // 0x005de57d    8a1c01
                         mov                byte ptr [esi + eax * 0x1], bl                // 0x005de580    881c06
                         inc                eax                                           // 0x005de583    40
                         cmp                eax, 0x40                                     // 0x005de584    83f840
                         {disp8} jl         _jmp_addr_0x005de57d                          // 0x005de587    7cf4
                         sub                ecx, 0x40                                     // 0x005de589    83e940
                         add                esi, 0x40                                     // 0x005de58c    83c640
                         dec                edx                                           // 0x005de58f    4a
                         {disp8} jne        _jmp_addr_0x005de57b                          // 0x005de590    75e9
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x005de592    8b5c2414
_jmp_addr_0x005de596:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005de596    8b442418
                         test               eax, eax                                      // 0x005de59a    85c0
                         {disp8} je         _jmp_addr_0x005de5ac                          // 0x005de59c    740e
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf078]        // 0x005de59e    8b157850e800
                         push               eax                                           // 0x005de5a4    50
                         push               edx                                           // 0x005de5a5    52
                         call               dword ptr [__imp__ReleaseDC@4]                // 0x005de5a6    ff15c8978a00
_jmp_addr_0x005de5ac:    test               edi, edi                                      // 0x005de5ac    85ff
                         {disp32} mov       esi, dword ptr [__imp__DeleteDC@4]            // 0x005de5ae    8b3574908a00
                         {disp8} je         _jmp_addr_0x005de5b9                          // 0x005de5b4    7403
                         push               edi                                           // 0x005de5b6    57
                         call               esi                                           // 0x005de5b7    ffd6
_jmp_addr_0x005de5b9:    test               ebp, ebp                                      // 0x005de5b9    85ed
                         {disp8} je         _jmp_addr_0x005de5c0                          // 0x005de5bb    7403
                         push               ebp                                           // 0x005de5bd    55
                         call               esi                                           // 0x005de5be    ffd6
_jmp_addr_0x005de5c0:    test               ebx, ebx                                      // 0x005de5c0    85db
                         {disp8} je         _jmp_addr_0x005de5cb                          // 0x005de5c2    7407
                         push               ebx                                           // 0x005de5c4    53
                         call               dword ptr [__imp__DeleteObject@4]             // 0x005de5c5    ff156c908a00
_jmp_addr_0x005de5cb:    pop                edi                                           // 0x005de5cb    5f
                         pop                esi                                           // 0x005de5cc    5e
                         pop                ebp                                           // 0x005de5cd    5d
                         pop                ebx                                           // 0x005de5ce    5b
                         add                esp, 0x00000434                               // 0x005de5cf    81c434040000
                         ret                                                              // 0x005de5d5    c3
                         nop                                                              // 0x005de5d6    90
                         nop                                                              // 0x005de5d7    90
                         nop                                                              // 0x005de5d8    90
                         nop                                                              // 0x005de5d9    90
                         nop                                                              // 0x005de5da    90
                         nop                                                              // 0x005de5db    90
                         nop                                                              // 0x005de5dc    90
                         nop                                                              // 0x005de5dd    90
                         nop                                                              // 0x005de5de    90
                         nop                                                              // 0x005de5df    90
_jmp_addr_0x005de5e0:    sub                esp, 0x00000318                               // 0x005de5e0    81ec18030000
                         push               ebx                                           // 0x005de5e6    53
                         push               ebp                                           // 0x005de5e7    55
                         push               esi                                           // 0x005de5e8    56
                         push               edi                                           // 0x005de5e9    57
                         call               _jmp_addr_0x005de8b0                          // 0x005de5ea    e8c1020000
                         xor.s              ebp, ebp                                      // 0x005de5ef    33ed
                         mov                ebx, 0x00d19c48                               // 0x005de5f1    bb489cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353c44], ebp        // 0x005de5f6    892d449cd100
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x005de5fc    895c2414
_jmp_addr_0x005de600:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005de600    8b0d5c19d000
                         {disp32} lea       eax, dword ptr [esp + 0x00000128]             // 0x005de606    8d842428010000
                         push               eax                                           // 0x005de60d    50
                         add                ecx, 0x00250310                               // 0x005de60e    81c110032500
                         call               _jmp_addr_0x0078ea20                          // 0x005de614    e807041b00
                         {disp8} lea        eax, dword ptr [ebp + 0x01]                   // 0x005de619    8d4501
                         push               eax                                           // 0x005de61c    50
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x005de61d    8d54242c
                         push               0x00bf3238                                    // 0x005de621    683832bf00
                         push               edx                                           // 0x005de626    52
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x005de627    89442430
                         call               _sprintf                                      // 0x005de62b    e8a2711e00
                         or                 ecx, 0xffffffff                               // 0x005de630    83c9ff
                         xor.s              eax, eax                                      // 0x005de633    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x34]                   // 0x005de635    8d7c2434
                         repne scasb                                                      // 0x005de639    f2ae
                         not                ecx                                           // 0x005de63b    f7d1
                         sub.s              edi, ecx                                      // 0x005de63d    2bf9
                         mov.s              esi, edi                                      // 0x005de63f    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x00000134]             // 0x005de641    8d942434010000
                         mov.s              edi, edx                                      // 0x005de648    8bfa
                         mov.s              edx, ecx                                      // 0x005de64a    8bd1
                         or                 ecx, 0xffffffff                               // 0x005de64c    83c9ff
                         repne scasb                                                      // 0x005de64f    f2ae
                         mov.s              ecx, edx                                      // 0x005de651    8bca
                         shr                ecx, 2                                        // 0x005de653    c1e902
                         dec                edi                                           // 0x005de656    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005de657    f3a5
                         mov.s              ecx, edx                                      // 0x005de659    8bca
                         and                ecx, 0x03                                     // 0x005de65b    83e103
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x005de65e    8d44242c
                         rep movsb                                                        // 0x005de662    f3a4
                         push               eax                                           // 0x005de664    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000138]             // 0x005de665    8d8c2438010000
                         push               ecx                                           // 0x005de66c    51
                         call               _LHFileLength__FPcPUl                         // 0x005de66d    e8eee21d00
                         add                esp, 0x14                                     // 0x005de672    83c414
                         test               eax, eax                                      // 0x005de675    85c0
                         {disp32} jne       _jmp_addr_0x005de830                          // 0x005de677    0f85b3010000
                         cmp                dword ptr [esp + 0x20], 0x00001000            // 0x005de67d    817c242000100000
                         {disp32} jb        _jmp_addr_0x005de830                          // 0x005de685    0f82a5010000
                         push               0x10                                          // 0x005de68b    6a10
                         push               0x0                                           // 0x005de68d    6a00
                         push               0x0                                           // 0x005de68f    6a00
                         push               0x0                                           // 0x005de691    6a00
                         {disp32} lea       edx, dword ptr [esp + 0x00000138]             // 0x005de693    8d942438010000
                         push               edx                                           // 0x005de69a    52
                         push               0x0                                           // 0x005de69b    6a00
                         call               dword ptr [__imp__LoadImageA@4]               // 0x005de69d    ff15c4978a00
                         mov.s              esi, eax                                      // 0x005de6a3    8bf0
                         test               esi, esi                                      // 0x005de6a5    85f6
                         {disp32} je        _jmp_addr_0x005de830                          // 0x005de6a7    0f8483010000
                         cmp                dword ptr [ebx], 0x00                         // 0x005de6ad    833b00
                         {disp8} jne        _jmp_addr_0x005de6e5                          // 0x005de6b0    7533
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005de6b2    8b442420
                         push               eax                                           // 0x005de6b6    50
                         mov.s              edi, eax                                      // 0x005de6b7    8bf8
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de6b9    e822462600
                         mov.s              edx, eax                                      // 0x005de6be    8bd0
                         add                esp, 0x04                                     // 0x005de6c0    83c404
                         test               edx, edx                                      // 0x005de6c3    85d2
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x005de6c5    89542410
                         {disp8} je         _jmp_addr_0x005de6e3                          // 0x005de6c9    7418
                         mov.s              ecx, edi                                      // 0x005de6cb    8bcf
                         mov.s              edi, edx                                      // 0x005de6cd    8bfa
                         mov.s              edx, ecx                                      // 0x005de6cf    8bd1
                         shr                ecx, 2                                        // 0x005de6d1    c1e902
                         xor.s              eax, eax                                      // 0x005de6d4    33c0
                         rep stosd                                                        // 0x005de6d6    f3ab
                         mov.s              ecx, edx                                      // 0x005de6d8    8bca
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005de6da    8b542410
                         and                ecx, 0x03                                     // 0x005de6de    83e103
                         rep stosb                                                        // 0x005de6e1    f3aa
_jmp_addr_0x005de6e3:    mov                dword ptr [ebx], edx                          // 0x005de6e3    8913
_jmp_addr_0x005de6e5:    mov                eax, dword ptr [ebx]                          // 0x005de6e5    8b03
                         push               eax                                           // 0x005de6e7    50
                         push               esi                                           // 0x005de6e8    56
                         call               _jmp_addr_0x005de490                          // 0x005de6e9    e8a2fdffff
                         add                esp, 0x08                                     // 0x005de6ee    83c408
                         push               esi                                           // 0x005de6f1    56
                         call               dword ptr [__imp__DeleteObject@4]             // 0x005de6f2    ff156c908a00
                         push               ebp                                           // 0x005de6f8    55
                         call               _jmp_addr_0x005de460                          // 0x005de6f9    e862fdffff
                         mov.s              ebx, eax                                      // 0x005de6fe    8bd8
                         push               ebp                                           // 0x005de700    55
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x005de701    895c2420
                         call               _jmp_addr_0x005de470                          // 0x005de705    e866fdffff
                         push               0x00010000                                    // 0x005de70a    6800000100
                         mov.s              esi, eax                                      // 0x005de70f    8bf0
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de711    e8ca452600
                         push               0x0                                           // 0x005de716    6a00
                         mov.s              ebp, eax                                      // 0x005de718    8be8
                         push               0x00010000                                    // 0x005de71a    6800000100
                         push               ebp                                           // 0x005de71f    55
                         push               0x00bf3160                                    // 0x005de720    686031bf00
                         call               _LHLoadData__FPcPvUlPUl                       // 0x005de725    e8c6e61d00
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x005de72a    8b4c2430
                         mov                edx, dword ptr [ecx]                          // 0x005de72e    8b11
                         {disp8} lea        edi, dword ptr [esi + 0x40]                   // 0x005de730    8d7e40
                         add                esp, 0x1c                                     // 0x005de733    83c41c
                         cmp.s              esi, edi                                      // 0x005de736    3bf7
                         {disp8} jge        _jmp_addr_0x005de780                          // 0x005de738    7d46
                         {disp8} lea        eax, dword ptr [ebx + 0x40]                   // 0x005de73a    8d4340
                         mov.s              ecx, esi                                      // 0x005de73d    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005de73f    8944241c
                         shl                ecx, 8                                        // 0x005de743    c1e108
                         mov.s              eax, edi                                      // 0x005de746    8bc7
                         add.s              ecx, ebp                                      // 0x005de748    03cd
                         sub.s              eax, esi                                      // 0x005de74a    2bc6
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005de74c    89442410
_jmp_addr_0x005de750:    mov.s              eax, ebx                                      // 0x005de750    8bc3
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x005de752    8b5c241c
                         cmp                dword ptr [esp + 0x18], ebx                   // 0x005de756    395c2418
                         {disp8} jge        _jmp_addr_0x005de76b                          // 0x005de75a    7d0f
_jmp_addr_0x005de75c:    mov                bl, byte ptr [edx]                            // 0x005de75c    8a1a
                         mov                byte ptr [ecx + eax * 0x1], bl                // 0x005de75e    881c01
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x005de761    8b5c241c
                         inc                eax                                           // 0x005de765    40
                         inc                edx                                           // 0x005de766    42
                         cmp.s              eax, ebx                                      // 0x005de767    3bc3
                         {disp8} jl         _jmp_addr_0x005de75c                          // 0x005de769    7cf1
_jmp_addr_0x005de76b:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005de76b    8b442410
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x005de76f    8b5c2418
                         add                ecx, 0x00000100                               // 0x005de773    81c100010000
                         dec                eax                                           // 0x005de779    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005de77a    89442410
                         {disp8} jne        _jmp_addr_0x005de750                          // 0x005de77e    75d0
_jmp_addr_0x005de780:    push               0x0                                           // 0x005de780    6a00
                         push               0x00010000                                    // 0x005de782    6800000100
                         push               ebp                                           // 0x005de787    55
                         push               0x00bf3160                                    // 0x005de788    686031bf00
                         call               _jmp_addr_0x007bd030                          // 0x005de78d    e89ee81d00
                         push               ebp                                           // 0x005de792    55
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005de793    e8c8452600
                         push               0x00030000                                    // 0x005de798    6800000300
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005de79d    e83e452600
                         push               0x0                                           // 0x005de7a2    6a00
                         mov.s              ebp, eax                                      // 0x005de7a4    8be8
                         push               0x00030000                                    // 0x005de7a6    6800000300
                         push               ebp                                           // 0x005de7ab    55
                         push               0x00bf31a8                                    // 0x005de7ac    68a831bf00
                         call               _LHLoadData__FPcPvUlPUl                       // 0x005de7b1    e83ae61d00
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x005de7b6    8b4c243c
                         mov                ecx, dword ptr [ecx]                          // 0x005de7ba    8b09
                         add                esp, 0x28                                     // 0x005de7bc    83c428
                         cmp.s              esi, edi                                      // 0x005de7bf    3bf7
                         {disp8} jge        _jmp_addr_0x005de806                          // 0x005de7c1    7d43
                         mov.s              eax, esi                                      // 0x005de7c3    8bc6
                         shl                eax, 8                                        // 0x005de7c5    c1e008
                         add.s              eax, ebx                                      // 0x005de7c8    03c3
                         {disp8} lea        edx, dword ptr [ebp + eax * 0x2 + 0x00]       // 0x005de7ca    8d544500
                         {disp8} lea        eax, dword ptr [eax + edx * 0x1 + 0x02]       // 0x005de7ce    8d441002
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005de7d2    89442410
                         sub.s              edi, esi                                      // 0x005de7d6    2bfe
_jmp_addr_0x005de7d8:    {disp8} lea        esi, dword ptr [ebx + 0x40]                   // 0x005de7d8    8d7340
                         cmp.s              ebx, esi                                      // 0x005de7db    3bde
                         {disp8} jge        _jmp_addr_0x005de7f6                          // 0x005de7dd    7d17
                         sub.s              esi, ebx                                      // 0x005de7df    2bf3
_jmp_addr_0x005de7e1:    mov                dl, byte ptr [ecx]                            // 0x005de7e1    8a11
                         {disp8} mov        byte ptr [eax + -0x02], dl                    // 0x005de7e3    8850fe
                         mov                dl, byte ptr [ecx]                            // 0x005de7e6    8a11
                         {disp8} mov        byte ptr [eax + -0x01], dl                    // 0x005de7e8    8850ff
                         mov                dl, byte ptr [ecx]                            // 0x005de7eb    8a11
                         mov                byte ptr [eax], dl                            // 0x005de7ed    8810
                         add                eax, 0x03                                     // 0x005de7ef    83c003
                         inc                ecx                                           // 0x005de7f2    41
                         dec                esi                                           // 0x005de7f3    4e
                         {disp8} jne        _jmp_addr_0x005de7e1                          // 0x005de7f4    75eb
_jmp_addr_0x005de7f6:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005de7f6    8b442410
                         add                eax, 0x00000300                               // 0x005de7fa    0500030000
                         dec                edi                                           // 0x005de7ff    4f
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005de800    89442410
                         {disp8} jne        _jmp_addr_0x005de7d8                          // 0x005de804    75d2
_jmp_addr_0x005de806:    push               0x0                                           // 0x005de806    6a00
                         push               0x00030000                                    // 0x005de808    6800000300
                         push               ebp                                           // 0x005de80d    55
                         push               0x00bf31a8                                    // 0x005de80e    68a831bf00
                         call               _jmp_addr_0x007bd030                          // 0x005de813    e818e81d00
                         push               ebp                                           // 0x005de818    55
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x005de819    e842452600
                         {disp32} mov       eax, dword ptr [data_bytes + 0x353c44]        // 0x005de81e    a1449cd100
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                   // 0x005de823    8b5c2428
                         add                esp, 0x14                                     // 0x005de827    83c414
                         inc                eax                                           // 0x005de82a    40
                         {disp32} mov       dword ptr [data_bytes + 0x353c44], eax        // 0x005de82b    a3449cd100
_jmp_addr_0x005de830:    {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x005de830    8b6c2424
                         add                ebx, 0x04                                     // 0x005de834    83c304
                         cmp                ebx, 0x00d19c88                               // 0x005de837    81fb889cd100
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x005de83d    895c2414
                         {disp32} jl        _jmp_addr_0x005de600                          // 0x005de841    0f8cb9fdffff
                         pop                edi                                           // 0x005de847    5f
                         pop                esi                                           // 0x005de848    5e
                         pop                ebp                                           // 0x005de849    5d
                         pop                ebx                                           // 0x005de84a    5b
                         add                esp, 0x00000318                               // 0x005de84b    81c418030000
                         ret                                                              // 0x005de851    c3
                         nop                                                              // 0x005de852    90
                         nop                                                              // 0x005de853    90
                         nop                                                              // 0x005de854    90
                         nop                                                              // 0x005de855    90
                         nop                                                              // 0x005de856    90
                         nop                                                              // 0x005de857    90
                         nop                                                              // 0x005de858    90
                         nop                                                              // 0x005de859    90
                         nop                                                              // 0x005de85a    90
                         nop                                                              // 0x005de85b    90
                         nop                                                              // 0x005de85c    90
                         nop                                                              // 0x005de85d    90
                         nop                                                              // 0x005de85e    90
                         nop                                                              // 0x005de85f    90
_jmp_addr_0x005de860:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c3c]        // 0x005de860    8b0d3c9cd100
                         test               ecx, ecx                                      // 0x005de866    85c9
                         {disp8} je         _jmp_addr_0x005de879                          // 0x005de868    740f
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x005de86a    e8d1942500
                         {disp32} mov       dword ptr [data_bytes + 0x353c3c], 0x00000000 // 0x005de86f    c7053c9cd10000000000
_jmp_addr_0x005de879:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c38]        // 0x005de879    8b0d389cd100
                         test               ecx, ecx                                      // 0x005de87f    85c9
                         {disp8} je         _jmp_addr_0x005de892                          // 0x005de881    740f
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x005de883    e8b8942500
                         {disp32} mov       dword ptr [data_bytes + 0x353c38], 0x00000000 // 0x005de888    c705389cd10000000000
_jmp_addr_0x005de892:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c40]        // 0x005de892    8b0d409cd100
                         test               ecx, ecx                                      // 0x005de898    85c9
                         {disp8} je         _jmp_addr_0x005de8ab                          // 0x005de89a    740f
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x005de89c    e89f942500
                         {disp32} mov       dword ptr [data_bytes + 0x353c40], 0x00000000 // 0x005de8a1    c705409cd10000000000
_jmp_addr_0x005de8ab:    ret                                                              // 0x005de8ab    c3
                         nop                                                              // 0x005de8ac    90
                         nop                                                              // 0x005de8ad    90
                         nop                                                              // 0x005de8ae    90
                         nop                                                              // 0x005de8af    90
_jmp_addr_0x005de8b0:    ret                                                              // 0x005de8b0    c3
                         nop                                                              // 0x005de8b1    90
                         nop                                                              // 0x005de8b2    90
                         nop                                                              // 0x005de8b3    90
                         nop                                                              // 0x005de8b4    90
                         nop                                                              // 0x005de8b5    90
                         nop                                                              // 0x005de8b6    90
                         nop                                                              // 0x005de8b7    90
                         nop                                                              // 0x005de8b8    90
                         nop                                                              // 0x005de8b9    90
                         nop                                                              // 0x005de8ba    90
                         nop                                                              // 0x005de8bb    90
                         nop                                                              // 0x005de8bc    90
                         nop                                                              // 0x005de8bd    90
                         nop                                                              // 0x005de8be    90
                         nop                                                              // 0x005de8bf    90
_jmp_addr_0x005de8c0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005de8c0    8b442408
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00d19c48]       // 0x005de8c4    8b0485489cd100
                         test               eax, eax                                      // 0x005de8cb    85c0
                         {disp8} je         _jmp_addr_0x005de8f2                          // 0x005de8cd    7423
                         push               esi                                           // 0x005de8cf    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x005de8d0    8b742408
                         push               edi                                           // 0x005de8d4    57
                         mov                edi, 0x00000800                               // 0x005de8d5    bf00080000
_jmp_addr_0x005de8da:    {disp8} mov        cl, byte ptr [eax + 0x01]                     // 0x005de8da    8a4801
                         mov                dl, byte ptr [eax]                            // 0x005de8dd    8a10
                         and                cl, -0x10                                     // 0x005de8df    80e1f0
                         shr                dl, 4                                         // 0x005de8e2    c0ea04
                         or.s               cl, dl                                        // 0x005de8e5    0aca
                         mov                byte ptr [esi], cl                            // 0x005de8e7    880e
                         inc                esi                                           // 0x005de8e9    46
                         add                eax, 0x02                                     // 0x005de8ea    83c002
                         dec                edi                                           // 0x005de8ed    4f
                         {disp8} jne        _jmp_addr_0x005de8da                          // 0x005de8ee    75ea
                         pop                edi                                           // 0x005de8f0    5f
                         pop                esi                                           // 0x005de8f1    5e
_jmp_addr_0x005de8f2:    ret                                                              // 0x005de8f2    c3
                         nop                                                              // 0x005de8f3    90
                         nop                                                              // 0x005de8f4    90
                         nop                                                              // 0x005de8f5    90
                         nop                                                              // 0x005de8f6    90
                         nop                                                              // 0x005de8f7    90
                         nop                                                              // 0x005de8f8    90
                         nop                                                              // 0x005de8f9    90
                         nop                                                              // 0x005de8fa    90
                         nop                                                              // 0x005de8fb    90
                         nop                                                              // 0x005de8fc    90
                         nop                                                              // 0x005de8fd    90
                         nop                                                              // 0x005de8fe    90
                         nop                                                              // 0x005de8ff    90
_jmp_addr_0x005de900:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x005de900    8b4c2408
                         mov.s              eax, ecx                                      // 0x005de904    8bc1
                         and                eax, 0xfffffffc                               // 0x005de906    83e0fc
                         push               ebx                                           // 0x005de909    53
                         push               ebp                                           // 0x005de90a    55
                         shl                eax, 6                                        // 0x005de90b    c1e006
                         and                ecx, 0x03                                     // 0x005de90e    83e103
                         push               esi                                           // 0x005de911    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x005de912    8b742418
                         add.s              eax, ecx                                      // 0x005de916    03c1
                         shl                eax, 6                                        // 0x005de918    c1e006
                         push               edi                                           // 0x005de91b    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005de91c    8b7c2414
                         lea                ebp, dword ptr [eax + eax * 0x1]              // 0x005de920    8d2c00
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000040            // 0x005de923    c744241840000000
_jmp_addr_0x005de92b:    xor.s              ecx, ecx                                      // 0x005de92b    33c9
                         mov.s              edx, ebp                                      // 0x005de92d    8bd5
_jmp_addr_0x005de92f:    test               cl, 0x01                                      // 0x005de92f    f6c101
                         mov                al, byte ptr [esi]                            // 0x005de932    8a06
                         {disp8} je         _jmp_addr_0x005de940                          // 0x005de934    740a
                         shr                al, 4                                         // 0x005de936    c0e804
                         movzx              ax, al                                        // 0x005de939    660fb6c0
                         inc                esi                                           // 0x005de93d    46
                         {disp8} jmp        _jmp_addr_0x005de946                          // 0x005de93e    eb06
_jmp_addr_0x005de940:    and                al, 0x0f                                      // 0x005de940    240f
                         movzx              ax, al                                        // 0x005de942    660fb6c0
_jmp_addr_0x005de946:    mov.s              ebx, eax                                      // 0x005de946    8bd8
                         shl                ebx, 4                                        // 0x005de948    c1e304
                         or.s               ebx, eax                                      // 0x005de94b    0bd8
                         shl                ebx, 4                                        // 0x005de94d    c1e304
                         or.s               ebx, eax                                      // 0x005de950    0bd8
                         shl                ebx, 4                                        // 0x005de952    c1e304
                         or.s               ebx, eax                                      // 0x005de955    0bd8
                         mov                eax, dword ptr [edi]                          // 0x005de957    8b07
                         mov                word ptr [eax + edx * 0x1], bx                // 0x005de959    66891c10
                         inc                ecx                                           // 0x005de95d    41
                         add                edx, 0x02                                     // 0x005de95e    83c202
                         cmp                ecx, 0x40                                     // 0x005de961    83f940
                         {disp8} jl         _jmp_addr_0x005de92f                          // 0x005de964    7cc9
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005de966    8b442418
                         add                ebp, 0x00000200                               // 0x005de96a    81c500020000
                         dec                eax                                           // 0x005de970    48
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005de971    89442418
                         {disp8} jne        _jmp_addr_0x005de92b                          // 0x005de975    75b4
                         pop                edi                                           // 0x005de977    5f
                         pop                esi                                           // 0x005de978    5e
                         pop                ebp                                           // 0x005de979    5d
                         pop                ebx                                           // 0x005de97a    5b
                         ret                                                              // 0x005de97b    c3
                         nop                                                              // 0x005de97c    90
                         nop                                                              // 0x005de97d    90
                         nop                                                              // 0x005de97e    90
                         nop                                                              // 0x005de97f    90
_jmp_addr_0x005de980:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005de980    8b442408
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x005de984    8b4004
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517470]        // 0x005de987    8b0d70d4ed00
                         cdq                                                              // 0x005de98d    99
                         sub                esp, 0x08                                     // 0x005de98e    83ec08
                         neg                ecx                                           // 0x005de991    f7d9
                         sbb.s              ecx, ecx                                      // 0x005de993    1bc9
                         sub.s              eax, edx                                      // 0x005de995    2bc2
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005de997    8b54240c
                         push               ebx                                           // 0x005de99b    53
                         mov.s              ebx, eax                                      // 0x005de99c    8bd8
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x005de99e    8b4204
                         cdq                                                              // 0x005de9a1    99
                         sub.s              eax, edx                                      // 0x005de9a2    2bc2
                         push               ebp                                           // 0x005de9a4    55
                         mov.s              ebp, eax                                      // 0x005de9a5    8be8
                         push               esi                                           // 0x005de9a7    56
                         push               edi                                           // 0x005de9a8    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x005de9a9    8b7c2424
                         mov.s              eax, edi                                      // 0x005de9ad    8bc7
                         and                eax, 0xfffffffc                               // 0x005de9af    83e0fc
                         and                ecx, 0xffffffe0                               // 0x005de9b2    83e1e0
                         add                ecx, 0x40                                     // 0x005de9b5    83c140
                         imul               eax, ecx                                      // 0x005de9b8    0fafc1
                         cdq                                                              // 0x005de9bb    99
                         and                edx, 0x03                                     // 0x005de9bc    83e203
                         add.s              eax, edx                                      // 0x005de9bf    03c2
                         mov.s              esi, eax                                      // 0x005de9c1    8bf0
                         and                edi, 0x03                                     // 0x005de9c3    83e703
                         sar                esi, 2                                        // 0x005de9c6    c1fe02
                         imul               edi, ecx                                      // 0x005de9c9    0faff9
                         sar                ebx, 1                                        // 0x005de9cc    d1fb
                         imul               esi, ebx                                      // 0x005de9ce    0faff3
                         add.s              esi, edi                                      // 0x005de9d1    03f7
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x005de9d3    8b7c2428
                         mov.s              eax, edi                                      // 0x005de9d7    8bc7
                         and                eax, 0xfffffffc                               // 0x005de9d9    83e0fc
                         imul               eax, ecx                                      // 0x005de9dc    0fafc1
                         cdq                                                              // 0x005de9df    99
                         and                edx, 0x03                                     // 0x005de9e0    83e203
                         add.s              eax, edx                                      // 0x005de9e3    03c2
                         sar                eax, 2                                        // 0x005de9e5    c1f802
                         sar                ebp, 1                                        // 0x005de9e8    d1fd
                         and                edi, 0x03                                     // 0x005de9ea    83e703
                         imul               eax, ebp                                      // 0x005de9ed    0fafc5
                         imul               edi, ecx                                      // 0x005de9f0    0faff9
                         add.s              eax, edi                                      // 0x005de9f3    03c7
                         test               ecx, ecx                                      // 0x005de9f5    85c9
                         {disp8} jle        _jmp_addr_0x005dea58                          // 0x005de9f7    7e5f
                         lea                edx, dword ptr [ebx + ebx * 0x1]              // 0x005de9f9    8d141b
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x005de9fc    89542414
                         {disp8} lea        edx, dword ptr [ebp + ebp * 0x1 + 0x00]       // 0x005dea00    8d542d00
                         add.s              esi, esi                                      // 0x005dea04    03f6
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x005dea06    89542410
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x005dea0a    89742424
                         lea                edi, dword ptr [eax + eax * 0x1]              // 0x005dea0e    8d3c00
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x005dea11    894c2428
_jmp_addr_0x005dea15:    mov.s              eax, esi                                      // 0x005dea15    8bc6
                         mov.s              edx, edi                                      // 0x005dea17    8bd7
                         mov.s              esi, ecx                                      // 0x005dea19    8bf1
_jmp_addr_0x005dea1b:    {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x005dea1b    8b5c2420
                         mov                ebx, dword ptr [ebx]                          // 0x005dea1f    8b1b
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x005dea21    8b6c241c
                         mov                bx, word ptr [ebx + eax * 0x1]                // 0x005dea25    668b1c03
                         {disp8} mov        ebp, dword ptr [ebp + 0x00]                   // 0x005dea29    8b6d00
                         mov                word ptr [edx + ebp * 0x1], bx                // 0x005dea2c    66891c2a
                         add                eax, 0x02                                     // 0x005dea30    83c002
                         add                edx, 0x02                                     // 0x005dea33    83c202
                         dec                esi                                           // 0x005dea36    4e
                         {disp8} jne        _jmp_addr_0x005dea1b                          // 0x005dea37    75e2
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x005dea39    8b742410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x005dea3d    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005dea41    8b442428
                         add.s              edi, esi                                      // 0x005dea45    03fe
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x005dea47    8b742424
                         add.s              esi, edx                                      // 0x005dea4b    03f2
                         dec                eax                                           // 0x005dea4d    48
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x005dea4e    89742424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x005dea52    89442428
                         {disp8} jne        _jmp_addr_0x005dea15                          // 0x005dea56    75bd
_jmp_addr_0x005dea58:    pop                edi                                           // 0x005dea58    5f
                         pop                esi                                           // 0x005dea59    5e
                         pop                ebp                                           // 0x005dea5a    5d
                         pop                ebx                                           // 0x005dea5b    5b
                         add                esp, 0x08                                     // 0x005dea5c    83c408
                         ret                                                              // 0x005dea5f    c3
_jmp_addr_0x005dea60:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005dea60    8b442410
                         sub                esp, 0x00000838                               // 0x005dea64    81ec38080000
                         test               eax, eax                                      // 0x005dea6a    85c0
                         {disp8} je         _jmp_addr_0x005dea79                          // 0x005dea6c    740b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x353c38]        // 0x005dea6e    a1389cd100
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005dea73    89442414
                         {disp8} jmp        _jmp_addr_0x005dea83                          // 0x005dea77    eb0a
_jmp_addr_0x005dea79:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c40]        // 0x005dea79    8b0d409cd100
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x005dea7f    894c2414
_jmp_addr_0x005dea83:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005dea83    8b4c2414
                         push               ebx                                           // 0x005dea87    53
                         push               ebp                                           // 0x005dea88    55
                         push               esi                                           // 0x005dea89    56
                         push               edi                                           // 0x005dea8a    57
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x005dea8b    8d542438
                         push               edx                                           // 0x005dea8f    52
                         call               _jmp_addr_0x00838af0                          // 0x005dea90    e85ba02500
                         {disp32} mov       esi, dword ptr [esp + 0x0000084c]             // 0x005dea95    8bb4244c080000
                         test               esi, esi                                      // 0x005dea9c    85f6
                         {disp32} je        _jmp_addr_0x005dee62                          // 0x005dea9e    0f84be030000
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x005deaa4    8b442438
                         test               eax, eax                                      // 0x005deaa8    85c0
                         {disp32} je        _jmp_addr_0x005dee62                          // 0x005deaaa    0f84b2030000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c3c]        // 0x005deab0    8b0d3c9cd100
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x005deab6    8d442428
                         push               eax                                           // 0x005deaba    50
                         call               _jmp_addr_0x00838af0                          // 0x005deabb    e830a02500
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005deac0    8b442428
                         test               eax, eax                                      // 0x005deac4    85c0
                         {disp32} je        _jmp_addr_0x005dee4e                          // 0x005deac6    0f8482030000
                         test               byte ptr [esi + 0x00000824], 0x02             // 0x005deacc    f6862408000002
                         {disp8} je         _jmp_addr_0x005deaf7                          // 0x005dead3    7422
                         {disp32} lea       eax, dword ptr [esi + 0x00000828]             // 0x005dead5    8d8628080000
                         test               eax, eax                                      // 0x005deadb    85c0
                         {disp8} je         _jmp_addr_0x005deaf7                          // 0x005deadd    7418
                         {disp32} mov       ebx, dword ptr [esp + 0x00000854]             // 0x005deadf    8b9c2454080000
                         push               eax                                           // 0x005deae6    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x005deae7    8d4c242c
                         push               ebx                                           // 0x005deaeb    53
                         push               ecx                                           // 0x005deaec    51
                         call               _jmp_addr_0x005de900                          // 0x005deaed    e80efeffff
                         add                esp, 0x0c                                     // 0x005deaf2    83c40c
                         {disp8} jmp        _jmp_addr_0x005deb1f                          // 0x005deaf5    eb28
_jmp_addr_0x005deaf7:    {disp32} mov       edx, dword ptr [esp + 0x00000854]             // 0x005deaf7    8b942454080000
                         {disp32} mov       eax, dword ptr [esi + 0x00000804]             // 0x005deafe    8b8604080000
                         push               edx                                           // 0x005deb04    52
                         push               eax                                           // 0x005deb05    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x005deb06    8d4c2440
                         push               ecx                                           // 0x005deb0a    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x005deb0b    8d542434
                         push               edx                                           // 0x005deb0f    52
                         call               _jmp_addr_0x005de980                          // 0x005deb10    e86bfeffff
                         {disp32} mov       ebx, dword ptr [esp + 0x00000864]             // 0x005deb15    8b9c2464080000
                         add                esp, 0x10                                     // 0x005deb1c    83c410
_jmp_addr_0x005deb1f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005deb1f    8b0d5c19d000
                         push               ebx                                           // 0x005deb25    53
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x005deb26    e8851ef7ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005deb2b    8b0d5c19d000
                         mov.s              esi, eax                                      // 0x005deb31    8bf0
                         {disp32} mov       eax, dword ptr [ecx + 0x00250538]             // 0x005deb33    8b8138052500
                         test               eax, eax                                      // 0x005deb39    85c0
                         {disp32} je        _jmp_addr_0x005dece4                          // 0x005deb3b    0f84a3010000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x005deb41    e83a44f7ff
                         test               eax, eax                                      // 0x005deb46    85c0
                         {disp32} je        _jmp_addr_0x005dece4                          // 0x005deb48    0f8496010000
                         test               esi, esi                                      // 0x005deb4e    85f6
                         {disp32} je        _jmp_addr_0x005dece4                          // 0x005deb50    0f848e010000
                         {disp32} mov       eax, dword ptr [esi + 0x000000f4]             // 0x005deb56    8b86f4000000
                         test               eax, eax                                      // 0x005deb5c    85c0
                         {disp32} je        _jmp_addr_0x005dece4                          // 0x005deb5e    0f8480010000
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x005deb64    8b480c
                         test               ecx, ecx                                      // 0x005deb67    85c9
                         {disp32} je        _jmp_addr_0x005dece4                          // 0x005deb69    0f8475010000
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x005deb6f    8b4818
                         test               ecx, ecx                                      // 0x005deb72    85c9
                         {disp32} je        _jmp_addr_0x005dece4                          // 0x005deb74    0f846a010000
                         {disp32} lea       eax, dword ptr [esp + 0x00000448]             // 0x005deb7a    8d842448040000
                         push               eax                                           // 0x005deb81    50
                         push               0x000003ff                                    // 0x005deb82    68ff030000
                         call               dword ptr [__imp__GetTempPathA@4]             // 0x005deb87    ff159c918a00
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x005deb8d    8d4c2448
                         push               ecx                                           // 0x005deb91    51
                         push               0x0                                           // 0x005deb92    6a00
                         push               0x00bf3264                                    // 0x005deb94    686432bf00
                         {disp32} lea       edx, dword ptr [esp + 0x00000454]             // 0x005deb99    8d942454040000
                         push               edx                                           // 0x005deba0    52
                         call               dword ptr [__imp__GetTempFileNameA@4]         // 0x005deba1    ff1564918a00
                         {disp32} mov       esi, dword ptr [esi + 0x000000f4]             // 0x005deba7    8bb6f4000000
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x005debad    8b4618
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x005debb0    8b4e0c
                         push               0x0                                           // 0x005debb3    6a00
                         push               eax                                           // 0x005debb5    50
                         push               ecx                                           // 0x005debb6    51
                         {disp8} lea        edx, dword ptr [esp + 0x54]                   // 0x005debb7    8d542454
                         push               edx                                           // 0x005debbb    52
                         call               _jmp_addr_0x007bd030                          // 0x005debbc    e86fe41d00
                         add                esp, 0x10                                     // 0x005debc1    83c410
                         push               0x10                                          // 0x005debc4    6a10
                         push               0x0                                           // 0x005debc6    6a00
                         push               0x0                                           // 0x005debc8    6a00
                         push               0x0                                           // 0x005debca    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x58]                   // 0x005debcc    8d442458
                         push               eax                                           // 0x005debd0    50
                         push               0x0                                           // 0x005debd1    6a00
                         call               dword ptr [__imp__LoadImageA@4]               // 0x005debd3    ff15c4978a00
                         mov.s              esi, eax                                      // 0x005debd9    8bf0
                         test               esi, esi                                      // 0x005debdb    85f6
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x005debdd    8974241c
                         {disp32} je        _jmp_addr_0x005decd7                          // 0x005debe1    0f84f0000000
                         push               0x000001e2                                    // 0x005debe7    68e2010000
                         push               0x00bf3248                                    // 0x005debec    684832bf00
                         push               0x00001000                                    // 0x005debf1    6800100000
                         call               ___nw__FUl                                    // 0x005debf6    e895cb1f00
                         mov.s              edi, eax                                      // 0x005debfb    8bf8
                         push               edi                                           // 0x005debfd    57
                         push               esi                                           // 0x005debfe    56
                         {disp8} mov        dword ptr [esp + 0x2c], edi                   // 0x005debff    897c242c
                         call               _jmp_addr_0x005de490                          // 0x005dec03    e888f8ffff
                         {disp32} mov       esi, dword ptr [data_bytes + 0x517470]        // 0x005dec08    8b3570d4ed00
                         add                esp, 0x14                                     // 0x005dec0e    83c414
                         neg                esi                                           // 0x005dec11    f7de
                         sbb.s              esi, esi                                      // 0x005dec13    1bf6
                         and                esi, 0xffffffe0                               // 0x005dec15    83e6e0
                         add                esi, 0x40                                     // 0x005dec18    83c640
                         mov.s              eax, ebx                                      // 0x005dec1b    8bc3
                         and                eax, 0xfffffffc                               // 0x005dec1d    83e0fc
                         imul               eax, esi                                      // 0x005dec20    0fafc6
                         cdq                                                              // 0x005dec23    99
                         and                edx, 0x03                                     // 0x005dec24    83e203
                         add.s              eax, edx                                      // 0x005dec27    03c2
                         mov.s              ebp, eax                                      // 0x005dec29    8be8
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x005dec2b    8b44242c
                         cdq                                                              // 0x005dec2f    99
                         sub.s              eax, edx                                      // 0x005dec30    2bc2
                         sar                ebp, 2                                        // 0x005dec32    c1fd02
                         sar                eax, 1                                        // 0x005dec35    d1f8
                         mov.s              ecx, ebx                                      // 0x005dec37    8bcb
                         imul               ebp, eax                                      // 0x005dec39    0fafe8
                         and                ecx, 0x03                                     // 0x005dec3c    83e103
                         imul               ecx, esi                                      // 0x005dec3f    0fafce
                         xor.s              eax, eax                                      // 0x005dec42    33c0
                         add.s              ebp, ecx                                      // 0x005dec44    03e9
                         cmp.s              esi, eax                                      // 0x005dec46    3bf0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005dec48    89442410
                         {disp8} jle        _jmp_addr_0x005decc3                          // 0x005dec4c    7e75
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005dec4e    89442414
_jmp_addr_0x005dec52:    cdq                                                              // 0x005dec52    99
                         idiv               esi                                           // 0x005dec53    f7fe
                         xor.s              edi, edi                                      // 0x005dec55    33ff
                         mov.s              ebx, eax                                      // 0x005dec57    8bd8
                         shl                ebx, 6                                        // 0x005dec59    c1e306
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x005dec5c    895c2420
                         xor.s              ecx, ecx                                      // 0x005dec60    33c9
                         {disp8} jmp        _jmp_addr_0x005dec68                          // 0x005dec62    eb04
_jmp_addr_0x005dec64:    {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x005dec64    8b5c2420
_jmp_addr_0x005dec68:    mov.s              eax, ecx                                      // 0x005dec68    8bc1
                         cdq                                                              // 0x005dec6a    99
                         idiv               esi                                           // 0x005dec6b    f7fe
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005dec6d    8b542418
                         add                ecx, 0x40                                     // 0x005dec71    83c140
                         add.s              eax, ebx                                      // 0x005dec74    03c3
                         xor.s              ebx, ebx                                      // 0x005dec76    33db
                         mov                bh, byte ptr [eax + edx * 0x1]                // 0x005dec78    8a3c10
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005dec7b    8b442410
                         imul               eax, dword ptr [esp + 0x2c]                   // 0x005dec7f    0faf44242c
                         cdq                                                              // 0x005dec84    99
                         sub.s              eax, edx                                      // 0x005dec85    2bc2
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x005dec87    8b542428
                         sar                eax, 1                                        // 0x005dec8b    d1f8
                         add.s              eax, edi                                      // 0x005dec8d    03c7
                         or                 ebx, 0xfff                                    // 0x005dec8f    81cbff0f0000
                         add.s              eax, ebp                                      // 0x005dec95    03c5
                         inc                edi                                           // 0x005dec97    47
                         cmp.s              edi, esi                                      // 0x005dec98    3bfe
                         mov                word ptr [edx + eax * 0x2], bx                // 0x005dec9a    66891c42
                         {disp8} jl         _jmp_addr_0x005dec64                          // 0x005dec9e    7cc4
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005deca0    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005deca4    8b442414
                         inc                ecx                                           // 0x005deca8    41
                         add                eax, 0x40                                     // 0x005deca9    83c040
                         cmp.s              ecx, esi                                      // 0x005decac    3bce
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005decae    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005decb2    89442414
                         {disp8} jl         _jmp_addr_0x005dec52                          // 0x005decb6    7c9a
                         {disp32} mov       ebx, dword ptr [esp + 0x00000854]             // 0x005decb8    8b9c2454080000
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x005decbf    8b7c2418
_jmp_addr_0x005decc3:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005decc3    8b44241c
                         push               eax                                           // 0x005decc7    50
                         call               dword ptr [__imp__DeleteObject@4]             // 0x005decc8    ff156c908a00
                         push               edi                                           // 0x005decce    57
                         call               ??3@YAXPAX@Z                                  // 0x005deccf    e8c4011d00
                         add                esp, 0x04                                     // 0x005decd4    83c404
_jmp_addr_0x005decd7:    {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x005decd7    8d4c2448
                         push               ecx                                           // 0x005decdb    51
                         call               __unlink                                      // 0x005decdc    e8487f1e00
                         add                esp, 0x04                                     // 0x005dece1    83c404
_jmp_addr_0x005dece4:    {disp32} mov       eax, dword ptr [esp + 0x0000085c]             // 0x005dece4    8b84245c080000
                         test               eax, eax                                      // 0x005deceb    85c0
                         {disp32} je        _jmp_addr_0x005dee11                          // 0x005deced    0f841e010000
                         push               0x009ce5dc                                    // 0x005decf3    68dce59c00
                         push               eax                                           // 0x005decf8    50
                         call               _fopen                                        // 0x005decf9    e81f811e00
                         add                esp, 0x08                                     // 0x005decfe    83c408
                         test               eax, eax                                      // 0x005ded01    85c0
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005ded03    89442420
                         {disp32} je        _jmp_addr_0x005dee11                          // 0x005ded07    0f8404010000
                         {disp32} mov       esi, dword ptr [data_bytes + 0x517470]        // 0x005ded0d    8b3570d4ed00
                         neg                esi                                           // 0x005ded13    f7de
                         sbb.s              esi, esi                                      // 0x005ded15    1bf6
                         mov.s              eax, ebx                                      // 0x005ded17    8bc3
                         and                eax, 0xfffffffc                               // 0x005ded19    83e0fc
                         and                esi, 0xffffffe0                               // 0x005ded1c    83e6e0
                         add                esi, 0x40                                     // 0x005ded1f    83c640
                         imul               eax, esi                                      // 0x005ded22    0fafc6
                         cdq                                                              // 0x005ded25    99
                         and                edx, 0x03                                     // 0x005ded26    83e203
                         add.s              eax, edx                                      // 0x005ded29    03c2
                         mov.s              edi, eax                                      // 0x005ded2b    8bf8
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x005ded2d    8b44242c
                         cdq                                                              // 0x005ded31    99
                         sub.s              eax, edx                                      // 0x005ded32    2bc2
                         sar                edi, 2                                        // 0x005ded34    c1ff02
                         sar                eax, 1                                        // 0x005ded37    d1f8
                         and                ebx, 0x03                                     // 0x005ded39    83e303
                         imul               edi, eax                                      // 0x005ded3c    0faff8
                         imul               ebx, esi                                      // 0x005ded3f    0fafde
                         add.s              edi, ebx                                      // 0x005ded42    03fb
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x005ded44    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000040            // 0x005ded4c    c744241440000000
_jmp_addr_0x005ded54:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ded54    8b442410
                         cdq                                                              // 0x005ded58    99
                         and                edx, 0x3f                                     // 0x005ded59    83e23f
                         add.s              eax, edx                                      // 0x005ded5c    03c2
                         mov.s              ebx, eax                                      // 0x005ded5e    8bd8
                         sar                ebx, 6                                        // 0x005ded60    c1fb06
                         xor.s              ebp, ebp                                      // 0x005ded63    33ed
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000040            // 0x005ded65    c744241840000000
_jmp_addr_0x005ded6d:    mov.s              eax, ebx                                      // 0x005ded6d    8bc3
                         imul               eax, dword ptr [esp + 0x2c]                   // 0x005ded6f    0faf44242c
                         cdq                                                              // 0x005ded74    99
                         sub.s              eax, edx                                      // 0x005ded75    2bc2
                         mov.s              ecx, eax                                      // 0x005ded77    8bc8
                         mov.s              eax, ebp                                      // 0x005ded79    8bc5
                         cdq                                                              // 0x005ded7b    99
                         and                edx, 0x3f                                     // 0x005ded7c    83e23f
                         add.s              eax, edx                                      // 0x005ded7f    03c2
                         sar                ecx, 1                                        // 0x005ded81    d1f9
                         sar                eax, 6                                        // 0x005ded83    c1f806
                         mov.s              edx, edi                                      // 0x005ded86    8bd7
                         add.s              edx, ecx                                      // 0x005ded88    03d1
                         add.s              eax, edx                                      // 0x005ded8a    03c2
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x005ded8c    8b542428
                         xor.s              ecx, ecx                                      // 0x005ded90    33c9
                         mov                cx, word ptr [edx + eax * 0x2]                // 0x005ded92    668b0c42
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x005ded96    8b542420
                         push               edx                                           // 0x005ded9a    52
                         push               0x1                                           // 0x005ded9b    6a01
                         push               0x1                                           // 0x005ded9d    6a01
                         mov.s              eax, ecx                                      // 0x005ded9f    8bc1
                         shr                eax, 0xc                                      // 0x005deda1    c1e80c
                         mov.s              ecx, eax                                      // 0x005deda4    8bc8
                         shl                ecx, 4                                        // 0x005deda6    c1e104
                         add.s              ecx, eax                                      // 0x005deda9    03c8
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x005dedab    8d442428
                         push               eax                                           // 0x005dedaf    50
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x005dedb0    894c242c
                         call               _fwrite                                       // 0x005dedb4    e8e9871e00
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005dedb9    8b442428
                         add                esp, 0x10                                     // 0x005dedbd    83c410
                         add.s              ebp, esi                                      // 0x005dedc0    03ee
                         dec                eax                                           // 0x005dedc2    48
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005dedc3    89442418
                         {disp8} jne        _jmp_addr_0x005ded6d                          // 0x005dedc7    75a4
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005dedc9    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005dedcd    8b442414
                         add.s              ecx, esi                                      // 0x005dedd1    03ce
                         dec                eax                                           // 0x005dedd3    48
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005dedd4    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005dedd8    89442414
                         {disp32} jne       _jmp_addr_0x005ded54                          // 0x005deddc    0f8572ffffff
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x005dede2    8b742420
                         {disp32} mov       ecx, dword ptr [esp + 0x0000084c]             // 0x005dede6    8b8c244c080000
                         push               esi                                           // 0x005deded    56
                         push               0x00000200                                    // 0x005dedee    6800020000
                         add                ecx, 0x00000200                               // 0x005dedf3    81c100020000
                         push               0x1                                           // 0x005dedf9    6a01
                         push               ecx                                           // 0x005dedfb    51
                         call               _fwrite                                       // 0x005dedfc    e8a1871e00
                         push               esi                                           // 0x005dee01    56
                         call               _fclose                                       // 0x005dee02    e829801e00
                         {disp32} mov       ebx, dword ptr [esp + 0x00000868]             // 0x005dee07    8b9c2468080000
                         add                esp, 0x14                                     // 0x005dee0e    83c414
_jmp_addr_0x005dee11:    push               0x00bf3214                                    // 0x005dee11    681432bf00
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x005dee16    8d54242c
                         push               0x00bf31f0                                    // 0x005dee1a    68f031bf00
                         push               edx                                           // 0x005dee1f    52
                         call               _jmp_addr_0x005de1e0                          // 0x005dee20    e8bbf3ffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c3c]        // 0x005dee25    8b0d3c9cd100
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x005dee2b    8b7104
                         add                esp, 0x0c                                     // 0x005dee2e    83c40c
                         test               esi, esi                                      // 0x005dee31    85f6
                         {disp8} je         _jmp_addr_0x005dee55                          // 0x005dee33    7420
                         call               _jmp_addr_0x00838430                          // 0x005dee35    e8f6952500
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x005dee3a    c7460400000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c3c]        // 0x005dee41    8b0d3c9cd100
                         call               _jmp_addr_0x00838eb0                          // 0x005dee47    e864a02500
                         {disp8} jmp        _jmp_addr_0x005dee69                          // 0x005dee4c    eb1b
_jmp_addr_0x005dee4e:    {disp32} mov       ebx, dword ptr [esp + 0x00000854]             // 0x005dee4e    8b9c2454080000
_jmp_addr_0x005dee55:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c3c]        // 0x005dee55    8b0d3c9cd100
                         call               _jmp_addr_0x00838eb0                          // 0x005dee5b    e850a02500
                         {disp8} jmp        _jmp_addr_0x005dee69                          // 0x005dee60    eb07
_jmp_addr_0x005dee62:    {disp32} mov       ebx, dword ptr [esp + 0x00000854]             // 0x005dee62    8b9c2454080000
_jmp_addr_0x005dee69:    {disp32} mov       ebp, dword ptr [esp + 0x00000850]             // 0x005dee69    8bac2450080000
                         test               ebp, ebp                                      // 0x005dee70    85ed
                         {disp8} je         _jmp_addr_0x005deee4                          // 0x005dee72    7470
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x005dee74    8b442438
                         test               eax, eax                                      // 0x005dee78    85c0
                         {disp8} je         _jmp_addr_0x005deee4                          // 0x005dee7a    7468
                         {disp32} mov       edi, dword ptr [ebp + 0x00001190]             // 0x005dee7c    8bbd90110000
                         test               edi, edi                                      // 0x005dee82    85ff
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x005dee84    897c241c
                         {disp8} je         _jmp_addr_0x005deee4                          // 0x005dee88    745a
                         xor.s              esi, esi                                      // 0x005dee8a    33f6
                         add                ebp, 0x00001170                               // 0x005dee8c    81c570110000
                         add                edi, 0x08                                     // 0x005dee92    83c708
_jmp_addr_0x005dee95:    {disp8} mov        al, byte ptr [ebp + 0x00]                     // 0x005dee95    8a4500
                         mov.s              cl, al                                        // 0x005dee98    8ac8
                         and                cl, -0x10                                     // 0x005dee9a    80e1f0
                         cmp                cl, -0x80                                     // 0x005dee9d    80f980
                         {disp8} jae        _jmp_addr_0x005deed8                          // 0x005deea0    7336
                         mov.s              ecx, esi                                      // 0x005deea2    8bce
                         mov                edx, 0x00000001                               // 0x005deea4    ba01000000
                         shl                edx, cl                                       // 0x005deea9    d3e2
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005deeab    8b4c241c
                         test               byte ptr [ecx + 0x05], dl                     // 0x005deeaf    845105
                         {disp8} je         _jmp_addr_0x005deec5                          // 0x005deeb2    7411
                         mov                eax, dword ptr [edi]                          // 0x005deeb4    8b07
                         add.s              eax, ecx                                      // 0x005deeb6    03c1
                         push               eax                                           // 0x005deeb8    50
                         push               esi                                           // 0x005deeb9    56
                         push               ebx                                           // 0x005deeba    53
                         call               _jmp_addr_0x005df570                          // 0x005deebb    e8b0060000
                         add                esp, 0x0c                                     // 0x005deec0    83c40c
                         {disp8} jmp        _jmp_addr_0x005deed8                          // 0x005deec3    eb13
_jmp_addr_0x005deec5:    {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x005deec5    8d4c2438
                         push               ecx                                           // 0x005deec9    51
                         push               esi                                           // 0x005deeca    56
                         and                eax, 0x0f                                     // 0x005deecb    83e00f
                         push               eax                                           // 0x005deece    50
                         push               ebx                                           // 0x005deecf    53
                         call               _jmp_addr_0x005df4a0                          // 0x005deed0    e8cb050000
                         add                esp, 0x10                                     // 0x005deed5    83c410
_jmp_addr_0x005deed8:    inc                esi                                           // 0x005deed8    46
                         add                edi, 0x04                                     // 0x005deed9    83c704
                         add                ebp, 0x04                                     // 0x005deedc    83c504
                         cmp                esi, 0x08                                     // 0x005deedf    83fe08
                         {disp8} jl         _jmp_addr_0x005dee95                          // 0x005deee2    7cb1
_jmp_addr_0x005deee4:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005deee4    8b4c2424
                         call               _jmp_addr_0x00838eb0                          // 0x005deee8    e8c39f2500
                         pop                edi                                           // 0x005deeed    5f
                         pop                esi                                           // 0x005deeee    5e
                         pop                ebp                                           // 0x005deeef    5d
                         pop                ebx                                           // 0x005deef0    5b
                         add                esp, 0x00000838                               // 0x005deef1    81c438080000
                         ret                                                              // 0x005deef7    c3
                         nop                                                              // 0x005deef8    90
                         nop                                                              // 0x005deef9    90
                         nop                                                              // 0x005deefa    90
                         nop                                                              // 0x005deefb    90
                         nop                                                              // 0x005deefc    90
                         nop                                                              // 0x005deefd    90
                         nop                                                              // 0x005deefe    90
                         nop                                                              // 0x005deeff    90
_jmp_addr_0x005def00:    sub                esp, 0x00000104                               // 0x005def00    81ec04010000
                         push               ebx                                           // 0x005def06    53
                         push               ebp                                           // 0x005def07    55
                         push               esi                                           // 0x005def08    56
                         push               edi                                           // 0x005def09    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x005def0a    8d442414
                         push               eax                                           // 0x005def0e    50
                         push               0x000000ef                                    // 0x005def0f    68ef000000
                         call               dword ptr [__imp__GetTempPathA@4]             // 0x005def14    ff159c918a00
                         or                 ecx, 0xffffffff                               // 0x005def1a    83c9ff
                         xor.s              eax, eax                                      // 0x005def1d    33c0
                         mov                edi, 0x00bf3288                               // 0x005def1f    bf8832bf00
                         repne scasb                                                      // 0x005def24    f2ae
                         not                ecx                                           // 0x005def26    f7d1
                         sub.s              edi, ecx                                      // 0x005def28    2bf9
                         mov.s              ebx, ecx                                      // 0x005def2a    8bd9
                         or                 ecx, 0xffffffff                               // 0x005def2c    83c9ff
                         mov.s              esi, edi                                      // 0x005def2f    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005def31    8d542414
                         mov.s              edi, edx                                      // 0x005def35    8bfa
                         repne scasb                                                      // 0x005def37    f2ae
                         mov.s              ecx, ebx                                      // 0x005def39    8bcb
                         shr                ecx, 2                                        // 0x005def3b    c1e902
                         dec                edi                                           // 0x005def3e    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005def3f    f3a5
                         mov.s              ecx, ebx                                      // 0x005def41    8bcb
                         and                ecx, 0x03                                     // 0x005def43    83e103
                         rep movsb                                                        // 0x005def46    f3a4
                         xor.s              ebp, ebp                                      // 0x005def48    33ed
_jmp_addr_0x005def4a:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005def4a    8b0d5c19d000
                         push               ebp                                           // 0x005def50    55
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x005def51    e85a1af7ff
                         test               eax, eax                                      // 0x005def56    85c0
                         {disp8} je         _jmp_addr_0x005defa7                          // 0x005def58    744d
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005def5a    8b0d5c19d000
                         push               ebp                                           // 0x005def60    55
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x005def61    e84a1af7ff
                         cmp                dword ptr [eax + 0x000008e0], 0x02            // 0x005def66    83b8e008000002
                         {disp8} jne        _jmp_addr_0x005defa7                          // 0x005def6d    7538
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005def6f    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a08]             // 0x005def74    8b80085a2000
                         cmp                eax, 0x03                                     // 0x005def7a    83f803
                         {disp8} lea        ecx, dword ptr [ebp + -0x01]                  // 0x005def7d    8d4dff
                         {disp8} jne        _jmp_addr_0x005def89                          // 0x005def80    7507
                         cmp                ebp, 0x01                                     // 0x005def82    83fd01
                         {disp8} jne        _jmp_addr_0x005def89                          // 0x005def85    7502
                         mov.s              ecx, ebp                                      // 0x005def87    8bcd
_jmp_addr_0x005def89:    cmp                eax, 0x05                                     // 0x005def89    83f805
                         {disp8} jne        _jmp_addr_0x005def98                          // 0x005def8c    750a
                         cmp                ebp, 0x01                                     // 0x005def8e    83fd01
                         {disp8} jne        _jmp_addr_0x005def98                          // 0x005def91    7505
                         mov                ecx, 0x00000002                               // 0x005def93    b902000000
_jmp_addr_0x005def98:    push               ecx                                           // 0x005def98    51
                         push               ebp                                           // 0x005def99    55
                         call               _jmp_addr_0x005e15b0                          // 0x005def9a    e811260000
                         add                esp, 0x08                                     // 0x005def9f    83c408
                         {disp32} jmp       _jmp_addr_0x005df15b                          // 0x005defa2    e9b4010000
_jmp_addr_0x005defa7:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005defa7    8b0d5c19d000
                         push               ebp                                           // 0x005defad    55
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x005defae    e8fd19f7ff
                         mov.s              ecx, eax                                      // 0x005defb3    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x005defb5    e836ba0600
                         test               eax, eax                                      // 0x005defba    85c0
                         {disp32} je        _jmp_addr_0x005df15b                          // 0x005defbc    0f8499010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005defc2    8b0d5c19d000
                         push               ebp                                           // 0x005defc8    55
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x005defc9    e8e219f7ff
                         mov.s              ecx, eax                                      // 0x005defce    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x005defd0    e81bba0600
                         mov.s              ecx, eax                                      // 0x005defd5    8bc8
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                          // 0x005defd7    e8d4d8ffff
                         {disp32} mov       eax, dword ptr [eax + 0x000001bc]             // 0x005defdc    8b80bc010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005defe2    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00205b80]             // 0x005defe8    8b89805b2000
                         push               eax                                           // 0x005defee    50
                         call               dword ptr [rdata_bytes + 0x63c]               // 0x005defef    ff153c968a00
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005deff5    8b0d5c19d000
                         mov.s              esi, eax                                      // 0x005deffb    8bf0
                         xor.s              eax, eax                                      // 0x005deffd    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x005defff    8a81595a2000
                         xor.s              ebx, ebx                                      // 0x005df005    33db
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005df007    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x005df00a    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005df00d    8d0450
                         shl                eax, 5                                        // 0x005df010    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x005df013    8d4c0818
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x005df017    e874b70600
                         cmp.s              ebp, eax                                      // 0x005df01c    3be8
                         {disp32} jne       _jmp_addr_0x005df0f4                          // 0x005df01e    0f85d0000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005df024    8b0d5c19d000
                         push               ebp                                           // 0x005df02a    55
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x005df02b    e88019f7ff
                         mov.s              ecx, eax                                      // 0x005df030    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x005df032    e8b9b90600
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005df037    8b0d5c19d000
                         mov.s              edi, eax                                      // 0x005df03d    8bf8
                         call               _jmp_addr_0x00555880                          // 0x005df03f    e83c68f7ff
                         cmp.s              edi, eax                                      // 0x005df044    3bf8
                         {disp32} jne       _jmp_addr_0x005df0f4                          // 0x005df046    0f85a8000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005df04c    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x005df052    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x005df054    8a81595a2000
                         push               ebx                                           // 0x005df05a    53
                         push               0x1                                           // 0x005df05b    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005df05d    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x005df060    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005df063    8d0450
                         shl                eax, 5                                        // 0x005df066    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x005df069    8d4c0818
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x005df06d    e81eb70600
                         push               eax                                           // 0x005df072    50
                         push               ebx                                           // 0x005df073    53
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */       // 0x005df074    6838bdd400
                         call               _jmp_addr_0x005dea60                          // 0x005df079    e8e2f9ffff
                         push               0x0000009e                                    // 0x005df07e    689e000000
                         push               0x00bf3268                                    // 0x005df083    686832bf00
                         push               0x00001028                                    // 0x005df088    6828100000
                         call               ___nw__FUl                                    // 0x005df08d    e8fec61f00
                         mov.s              edx, eax                                      // 0x005df092    8bd0
                         mov                ecx, 0x0000020a                               // 0x005df094    b90a020000
                         mov                esi, OFFSET _PlayerProfile_00d4bd38           // 0x005df099    be38bdd400
                         mov.s              edi, edx                                      // 0x005df09e    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005df0a0    f3a5
                         {disp32} lea       eax, dword ptr [edx + 0x00000824]             // 0x005df0a2    8d8224080000
                         mov                dword ptr [eax], 0x00000000                   // 0x005df0a8    c70000000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x38653c]        // 0x005df0ae    8b0d3cc5d400
                         {disp32} mov       esi, dword ptr [ecx * 0x4 + 0x00d19c48]       // 0x005df0b4    8b348d489cd100
                         add                esp, 0x20                                     // 0x005df0bb    83c420
                         test               esi, esi                                      // 0x005df0be    85f6
                         mov.s              ebx, edx                                      // 0x005df0c0    8bda
                         {disp8} je         _jmp_addr_0x005df0ca                          // 0x005df0c2    7406
                         mov                dword ptr [eax], 0x00000002                   // 0x005df0c4    c70002000000
_jmp_addr_0x005df0ca:    mov                cl, byte ptr [eax]                            // 0x005df0ca    8a08
                         add                edx, 0x00000828                               // 0x005df0cc    81c228080000
                         test               cl, 0x02                                      // 0x005df0d2    f6c102
                         {disp8} je         _jmp_addr_0x005df0f2                          // 0x005df0d5    741b
                         or                 eax, -0x1                                     // 0x005df0d7    83c8ff
                         mov.s              edi, edx                                      // 0x005df0da    8bfa
                         mov                ecx, 0x00000200                               // 0x005df0dc    b900020000
                         rep stosd                                                        // 0x005df0e1    f3ab
                         {disp32} mov       eax, dword ptr [data_bytes + 0x38653c]        // 0x005df0e3    a13cc5d400
                         push               eax                                           // 0x005df0e8    50
                         push               edx                                           // 0x005df0e9    52
                         call               _jmp_addr_0x005de8c0                          // 0x005df0ea    e8d1f7ffff
                         add                esp, 0x08                                     // 0x005df0ef    83c408
_jmp_addr_0x005df0f2:    mov.s              esi, ebx                                      // 0x005df0f2    8bf3
_jmp_addr_0x005df0f4:    test               esi, esi                                      // 0x005df0f4    85f6
                         {disp8} je         _jmp_addr_0x005df14e                          // 0x005df0f6    7456
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005df0f8    8b0d5c19d000
                         push               ebp                                           // 0x005df0fe    55
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x005df0ff    e8ac18f7ff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000a4c]             // 0x005df104    8b884c0a0000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005df10a    894c2410
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005df10e    8b0d5c19d000
                         push               ebp                                           // 0x005df114    55
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x005df115    e89618f7ff
                         mov.s              ecx, eax                                      // 0x005df11a    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x005df11c    e8cfb80600
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005df121    8b0d5c19d000
                         mov.s              edi, eax                                      // 0x005df127    8bf8
                         call               _jmp_addr_0x00555880                          // 0x005df129    e85267f7ff
                         sub.s              edi, eax                                      // 0x005df12e    2bf8
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005df130    8b442410
                         neg                edi                                           // 0x005df134    f7df
                         sbb.s              edi, edi                                      // 0x005df136    1bff
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005df138    8d542414
                         not                edi                                           // 0x005df13c    f7d7
                         and.s              edi, edx                                      // 0x005df13e    23fa
                         push               edi                                           // 0x005df140    57
                         push               0x0                                           // 0x005df141    6a00
                         push               ebp                                           // 0x005df143    55
                         push               eax                                           // 0x005df144    50
                         push               esi                                           // 0x005df145    56
                         call               _jmp_addr_0x005dea60                          // 0x005df146    e815f9ffff
                         add                esp, 0x14                                     // 0x005df14b    83c414
_jmp_addr_0x005df14e:    test               ebx, ebx                                      // 0x005df14e    85db
                         {disp8} je         _jmp_addr_0x005df15b                          // 0x005df150    7409
                         push               ebx                                           // 0x005df152    53
                         call               ??3@YAXPAX@Z                                  // 0x005df153    e840fd1c00
                         add                esp, 0x04                                     // 0x005df158    83c404
_jmp_addr_0x005df15b:    inc                ebp                                           // 0x005df15b    45
                         cmp                ebp, 0x08                                     // 0x005df15c    83fd08
                         {disp32} jb        _jmp_addr_0x005def4a                          // 0x005df15f    0f82e5fdffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c3c]        // 0x005df165    8b0d3c9cd100
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x005df16b    8b7104
                         test               esi, esi                                      // 0x005df16e    85f6
                         {disp8} je         _jmp_addr_0x005df17e                          // 0x005df170    740c
                         call               _jmp_addr_0x00838430                          // 0x005df172    e8b9922500
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x005df177    c7460400000000
_jmp_addr_0x005df17e:    pop                edi                                           // 0x005df17e    5f
                         pop                esi                                           // 0x005df17f    5e
                         pop                ebp                                           // 0x005df180    5d
                         pop                ebx                                           // 0x005df181    5b
                         add                esp, 0x00000104                               // 0x005df182    81c404010000
                         ret                                                              // 0x005df188    c3
                         nop                                                              // 0x005df189    90
                         nop                                                              // 0x005df18a    90
                         nop                                                              // 0x005df18b    90
                         nop                                                              // 0x005df18c    90
                         nop                                                              // 0x005df18d    90
                         nop                                                              // 0x005df18e    90
                         nop                                                              // 0x005df18f    90
_globl_ct_0x005df190:    {disp32} jmp       _jmp_addr_0x005df1a0                          // 0x005df190    e90b000000
                         nop                                                              // 0x005df195    90
                         nop                                                              // 0x005df196    90
                         nop                                                              // 0x005df197    90
                         nop                                                              // 0x005df198    90
                         nop                                                              // 0x005df199    90
                         nop                                                              // 0x005df19a    90
                         nop                                                              // 0x005df19b    90
                         nop                                                              // 0x005df19c    90
                         nop                                                              // 0x005df19d    90
                         nop                                                              // 0x005df19e    90
                         nop                                                              // 0x005df19f    90
_jmp_addr_0x005df1a0:    ret                                                              // 0x005df1a0    c3
                         nop                                                              // 0x005df1a1    90
                         nop                                                              // 0x005df1a2    90
                         nop                                                              // 0x005df1a3    90
                         nop                                                              // 0x005df1a4    90
                         nop                                                              // 0x005df1a5    90
                         nop                                                              // 0x005df1a6    90
                         nop                                                              // 0x005df1a7    90
                         nop                                                              // 0x005df1a8    90
                         nop                                                              // 0x005df1a9    90
                         nop                                                              // 0x005df1aa    90
                         nop                                                              // 0x005df1ab    90
                         nop                                                              // 0x005df1ac    90
                         nop                                                              // 0x005df1ad    90
                         nop                                                              // 0x005df1ae    90
                         nop                                                              // 0x005df1af    90
_jmp_addr_0x005df1b0:    sub                esp, 0x08                                     // 0x005df1b0    83ec08
                         push               ebx                                           // 0x005df1b3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x005df1b4    8b5c2414
                         cmp                ebx, -0x01                                    // 0x005df1b8    83fbff
                         push               esi                                           // 0x005df1bb    56
                         push               edi                                           // 0x005df1bc    57
                         {disp8} jne        _jmp_addr_0x005df1db                          // 0x005df1bd    751c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22caf8]        // 0x005df1bf    a1f82abf00
                         mov.s              ebx, eax                                      // 0x005df1c4    8bd8
                         inc                eax                                           // 0x005df1c6    40
                         cmp                eax, 0x0e                                     // 0x005df1c7    83f80e
                         {disp32} mov       dword ptr [data_bytes + 0x22caf8], eax        // 0x005df1ca    a3f82abf00
                         {disp8} jl         _jmp_addr_0x005df1db                          // 0x005df1cf    7c0a
                         {disp32} mov       dword ptr [data_bytes + 0x22caf8], 0x00000003 // 0x005df1d1    c705f82abf0003000000
_jmp_addr_0x005df1db:    {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x005df1db    8b742418
                         mov.s              eax, ebx                                      // 0x005df1df    8bc3
                         shl                eax, 4                                        // 0x005df1e1    c1e004
                         add                eax, 0x00d19a48                               // 0x005df1e4    05489ad100
                         mov.s              ecx, esi                                      // 0x005df1e9    8bce
                         mov                edi, dword ptr [ecx]                          // 0x005df1eb    8b39
                         mov.s              edx, eax                                      // 0x005df1ed    8bd0
                         mov                dword ptr [edx], edi                          // 0x005df1ef    893a
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                   // 0x005df1f1    8b7904
                         {disp8} mov        dword ptr [edx + 0x04], edi                   // 0x005df1f4    897a04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005df1f7    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x005df1fa    894a08
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x005df1fd    8b542420
                         {disp8} mov        dword ptr [eax + 0x0c], edx                   // 0x005df201    89500c
                         fld                dword ptr [esi]                               // 0x005df204    d906
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005df206    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005df20c    e8ef211c00
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x005df211    d94608
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005df214    d80d04c48a00
                         mov.s              edi, eax                                      // 0x005df21a    8bf8
                         call               _jmp_addr_0x007a1400                          // 0x005df21c    e8df211c00
                         {disp8} lea        esi, dword ptr [edi + -0x01]                  // 0x005df221    8d77ff
                         {disp8} lea        ecx, dword ptr [edi + 0x01]                   // 0x005df224    8d4f01
                         cmp.s              esi, ecx                                      // 0x005df227    3bf1
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x005df229    89742418
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005df22d    894c2410
                         {disp32} jg        _jmp_addr_0x005df2fc                          // 0x005df231    0f8fc5000000
                         {disp8} lea        edx, dword ptr [eax + -0x01]                  // 0x005df237    8d50ff
                         {disp8} lea        edi, dword ptr [eax + 0x01]                   // 0x005df23a    8d7801
                         push               ebp                                           // 0x005df23d    55
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x005df23e    89542424
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x005df242    897c2410
_jmp_addr_0x005df246:    {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x005df246    8b6c2424
                         cmp.s              ebp, edi                                      // 0x005df24a    3bef
                         {disp32} jg        _jmp_addr_0x005df2ee                          // 0x005df24c    0f8f9c000000
_jmp_addr_0x005df252:    {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x005df252    8d4c2420
                         {disp8} mov        word ptr [esp + 0x20], si                     // 0x005df256    6689742420
                         {disp8} mov        word ptr [esp + 0x22], bp                     // 0x005df25b    66896c2422
                         call               _jmp_addr_0x005e1860                          // 0x005df260    e8fb250000
                         test               eax, eax                                      // 0x005df265    85c0
                         {disp8} je         _jmp_addr_0x005df2e1                          // 0x005df267    7478
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x005df269    8d4c2420
                         call               _jmp_addr_0x005e1950                          // 0x005df26d    e8de260000
                         mov.s              edi, eax                                      // 0x005df272    8bf8
                         {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x005df274    8b7704
                         test               esi, esi                                      // 0x005df277    85f6
                         {disp8} je         _jmp_addr_0x005df2d9                          // 0x005df279    745e
_jmp_addr_0x005df27b:    mov                eax, dword ptr [esi]                          // 0x005df27b    8b06
                         mov.s              ecx, esi                                      // 0x005df27d    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x005df27f    ff90e8040000
                         cmp                eax, 0x0d                                     // 0x005df285    83f80d
                         {disp8} je         _jmp_addr_0x005df2ad                          // 0x005df288    7423
                         cmp                eax, 0x16                                     // 0x005df28a    83f816
                         {disp8} jne        _jmp_addr_0x005df2c8                          // 0x005df28d    7539
                         xor.s              ecx, ecx                                      // 0x005df28f    33c9
                         xor.s              edx, edx                                      // 0x005df291    33d2
                         {disp8} mov        dx, word ptr [esi + 0x5c]                     // 0x005df293    668b565c
                         mov.s              cl, bl                                        // 0x005df297    8acb
                         and                edx, 0x0000fc3f                               // 0x005df299    81e23ffc0000
                         and                ecx, 0x0f                                     // 0x005df29f    83e10f
                         shl                ecx, 6                                        // 0x005df2a2    c1e106
                         or.s               ecx, edx                                      // 0x005df2a5    0bca
                         {disp8} mov        word ptr [esi + 0x5c], cx                     // 0x005df2a7    66894e5c
                         {disp8} jmp        _jmp_addr_0x005df2c8                          // 0x005df2ab    eb1b
_jmp_addr_0x005df2ad:    xor.s              eax, eax                                      // 0x005df2ad    33c0
                         {disp32} mov       ax, word ptr [esi + 0x00000098]               // 0x005df2af    668b8698000000
                         xor.s              ecx, ecx                                      // 0x005df2b6    33c9
                         mov.s              cl, al                                        // 0x005df2b8    8ac8
                         xor.s              cl, bl                                        // 0x005df2ba    32cb
                         and                ecx, 0x0f                                     // 0x005df2bc    83e10f
                         xor.s              ecx, eax                                      // 0x005df2bf    33c8
                         {disp32} mov       word ptr [esi + 0x00000098], cx               // 0x005df2c1    66898e98000000
_jmp_addr_0x005df2c8:    mov                edx, dword ptr [esi]                          // 0x005df2c8    8b16
                         push               edi                                           // 0x005df2ca    57
                         mov.s              ecx, esi                                      // 0x005df2cb    8bce
                         call               dword ptr [edx + 0x53c]                       // 0x005df2cd    ff923c050000
                         mov.s              esi, eax                                      // 0x005df2d3    8bf0
                         test               esi, esi                                      // 0x005df2d5    85f6
                         {disp8} jne        _jmp_addr_0x005df27b                          // 0x005df2d7    75a2
_jmp_addr_0x005df2d9:    {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x005df2d9    8b74241c
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x005df2dd    8b7c2410
_jmp_addr_0x005df2e1:    inc                ebp                                           // 0x005df2e1    45
                         cmp.s              ebp, edi                                      // 0x005df2e2    3bef
                         {disp32} jle       _jmp_addr_0x005df252                          // 0x005df2e4    0f8e68ffffff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005df2ea    8b4c2414
_jmp_addr_0x005df2ee:    inc                esi                                           // 0x005df2ee    46
                         cmp.s              esi, ecx                                      // 0x005df2ef    3bf1
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x005df2f1    8974241c
                         {disp32} jle       _jmp_addr_0x005df246                          // 0x005df2f5    0f8e4bffffff
                         pop                ebp                                           // 0x005df2fb    5d
_jmp_addr_0x005df2fc:    pop                edi                                           // 0x005df2fc    5f
                         pop                esi                                           // 0x005df2fd    5e
                         pop                ebx                                           // 0x005df2fe    5b
                         add                esp, 0x08                                     // 0x005df2ff    83c408
                         ret                                                              // 0x005df302    c3
                         nop                                                              // 0x005df303    90
                         nop                                                              // 0x005df304    90
                         nop                                                              // 0x005df305    90
                         nop                                                              // 0x005df306    90
                         nop                                                              // 0x005df307    90
                         nop                                                              // 0x005df308    90
                         nop                                                              // 0x005df309    90
                         nop                                                              // 0x005df30a    90
                         nop                                                              // 0x005df30b    90
                         nop                                                              // 0x005df30c    90
                         nop                                                              // 0x005df30d    90
                         nop                                                              // 0x005df30e    90
                         nop                                                              // 0x005df30f    90
_jmp_addr_0x005df310:    push               esi                                           // 0x005df310    56
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x005df311    8b742424
                         test               esi, esi                                      // 0x005df315    85f6
                         {disp8} je         _jmp_addr_0x005df391                          // 0x005df317    7478
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x005df319    8b542428
                         cmp                edx, 0x07                                     // 0x005df31d    83fa07
                         {disp8} jg         _jmp_addr_0x005df391                          // 0x005df320    7f6f
                         test               edx, edx                                      // 0x005df322    85d2
                         {disp8} jl         _jmp_addr_0x005df391                          // 0x005df324    7c6b
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005df326    8b4c2420
                         cmp                ecx, 0x07                                     // 0x005df32a    83f907
                         {disp8} jg         _jmp_addr_0x005df391                          // 0x005df32d    7f62
                         test               ecx, ecx                                      // 0x005df32f    85c9
                         {disp8} jl         _jmp_addr_0x005df391                          // 0x005df331    7c5e
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x005df333    8b44242c
                         test               eax, eax                                      // 0x005df337    85c0
                         {disp8} jne        _jmp_addr_0x005df345                          // 0x005df339    750a
                         lea                eax, dword ptr [edx + ecx * 0x8]              // 0x005df33b    8d04ca
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00d19b28]       // 0x005df33e    8b0485289bd100
_jmp_addr_0x005df345:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x005df345    8b4c2408
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005df349    8b54240c
                         {disp32} mov       dword ptr [data_bytes + 0x51748c], ecx        // 0x005df34d    890d8cd4ed00
                         {disp32} mov       dword ptr [data_bytes + 0x517490], edx        // 0x005df353    891590d4ed00
                         {disp8} mov        cl, byte ptr [esi + 0x01]                     // 0x005df359    8a4e01
                         {disp8} mov        dl, byte ptr [esi + 0x02]                     // 0x005df35c    8a5602
                         {disp8} mov        byte ptr [esp + 0x24], cl                     // 0x005df35f    884c2424
                         {disp8} mov        cl, byte ptr [esi + 0x03]                     // 0x005df363    8a4e03
                         {disp8} mov        byte ptr [esp + 0x25], dl                     // 0x005df366    88542425
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005df36a    8b54241c
                         push               edx                                           // 0x005df36e    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005df36f    8b542418
                         {disp8} mov        byte ptr [esp + 0x2a], cl                     // 0x005df373    884c242a
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005df377    8b4c241c
                         push               ecx                                           // 0x005df37b    51
                         push               edx                                           // 0x005df37c    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x005df37d    8d4c2430
                         push               ecx                                           // 0x005df381    51
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005df382    8b4c2420
                         push               eax                                           // 0x005df386    50
                         {disp8} mov        byte ptr [esp + 0x3b], -0x01                  // 0x005df387    c644243bff
                         call               _jmp_addr_0x00839190                          // 0x005df38c    e8ff9d2500
_jmp_addr_0x005df391:    pop                esi                                           // 0x005df391    5e
                         ret                                                              // 0x005df392    c3
                         nop                                                              // 0x005df393    90
                         nop                                                              // 0x005df394    90
                         nop                                                              // 0x005df395    90
                         nop                                                              // 0x005df396    90
                         nop                                                              // 0x005df397    90
                         nop                                                              // 0x005df398    90
                         nop                                                              // 0x005df399    90
                         nop                                                              // 0x005df39a    90
                         nop                                                              // 0x005df39b    90
                         nop                                                              // 0x005df39c    90
                         nop                                                              // 0x005df39d    90
                         nop                                                              // 0x005df39e    90
                         nop                                                              // 0x005df39f    90
_jmp_addr_0x005df3a0:    sub                esp, 0x18                                     // 0x005df3a0    83ec18
                         push               ebx                                           // 0x005df3a3    53
                         push               ebp                                           // 0x005df3a4    55
                         push               esi                                           // 0x005df3a5    56
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x005df3a6    8b742428
                         mov                ecx, 0x00000040                               // 0x005df3aa    b940000000
                         mov                ebx, 0x00000020                               // 0x005df3af    bb20000000
                         push               edi                                           // 0x005df3b4    57
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x005df3b5    894c2420
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x005df3b9    895c2410
                         {disp8} jmp        _jmp_addr_0x005df3c3                          // 0x005df3bd    eb04
_jmp_addr_0x005df3bf:    {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x005df3bf    8b5c2410
_jmp_addr_0x005df3c3:    mov.s              eax, ecx                                      // 0x005df3c3    8bc1
                         imul               eax, ecx                                      // 0x005df3c5    0fafc1
                         mov.s              edi, esi                                      // 0x005df3c8    8bfe
                         add.s              esi, eax                                      // 0x005df3ca    03f0
                         test               ebx, ebx                                      // 0x005df3cc    85db
                         {disp8} mov        dword ptr [esp + 0x24], edi                   // 0x005df3ce    897c2424
                         {disp8} mov        dword ptr [esp + 0x2c], esi                   // 0x005df3d2    8974242c
                         {disp32} jle       _jmp_addr_0x005df470                          // 0x005df3d6    0f8e94000000
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x005df3dc    89742418
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x005df3e0    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x005df3e8    895c241c
                         {disp8} jmp        _jmp_addr_0x005df3f2                          // 0x005df3ec    eb04
_jmp_addr_0x005df3ee:    {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x005df3ee    8b7c2424
_jmp_addr_0x005df3f2:    lea                eax, dword ptr [edi + ecx * 0x1]              // 0x005df3f2    8d040f
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005df3f5    8b4c2414
                         mov.s              edx, edi                                      // 0x005df3f9    8bd7
                         sub.s              edx, eax                                      // 0x005df3fb    2bd0
                         xor.s              esi, esi                                      // 0x005df3fd    33f6
                         add.s              ecx, eax                                      // 0x005df3ff    03c8
                         mov                ebp, 0x00000001                               // 0x005df401    bd01000000
                         {disp8} lea        ebx, dword ptr [edx + 0x01]                   // 0x005df406    8d5a01
                         sub.s              edi, eax                                      // 0x005df409    2bf8
_jmp_addr_0x005df40b:    xor.s              edx, edx                                      // 0x005df40b    33d2
                         mov                dl, byte ptr [edi + ecx * 0x1]                // 0x005df40d    8a140f
                         xor.s              eax, eax                                      // 0x005df410    33c0
                         mov                al, byte ptr [ecx + ebp * 0x1]                // 0x005df412    8a0429
                         add                ecx, 0x2                                      // 0x005df415    83c102
                         add.s              eax, edx                                      // 0x005df418    03c2
                         xor.s              edx, edx                                      // 0x005df41a    33d2
                         {disp8} mov        dl, byte ptr [ebx + ecx * 0x1 + -0x02]        // 0x005df41c    8a540bfe
                         add.s              eax, edx                                      // 0x005df420    03c2
                         xor.s              edx, edx                                      // 0x005df422    33d2
                         {disp8} mov        dl, byte ptr [ecx + -0x02]                    // 0x005df424    8a51fe
                         add.s              eax, edx                                      // 0x005df427    03c2
                         cdq                                                              // 0x005df429    99
                         and                edx, 0x03                                     // 0x005df42a    83e203
                         add.s              eax, edx                                      // 0x005df42d    03c2
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005df42f    8b542418
                         sar                eax, 2                                        // 0x005df433    c1f802
                         mov                byte ptr [edx + esi * 0x1], al                // 0x005df436    880432
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005df439    8b442410
                         inc                esi                                           // 0x005df43d    46
                         cmp.s              esi, eax                                      // 0x005df43e    3bf0
                         {disp8} jl         _jmp_addr_0x005df40b                          // 0x005df440    7cc9
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005df442    8b4c2420
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x005df446    8b742414
                         lea                eax, dword ptr [ecx + ecx * 0x1]              // 0x005df44a    8d0409
                         add.s              esi, eax                                      // 0x005df44d    03f0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005df44f    8b442410
                         add.s              edx, eax                                      // 0x005df453    03d0
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005df455    8b44241c
                         dec                eax                                           // 0x005df459    48
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x005df45a    89742414
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x005df45e    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005df462    8944241c
                         {disp8} jne        _jmp_addr_0x005df3ee                          // 0x005df466    7586
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x005df468    8b74242c
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x005df46c    8b5c2410
_jmp_addr_0x005df470:    mov.s              eax, ecx                                      // 0x005df470    8bc1
                         cdq                                                              // 0x005df472    99
                         sub.s              eax, edx                                      // 0x005df473    2bc2
                         sar                eax, 1                                        // 0x005df475    d1f8
                         mov.s              ecx, eax                                      // 0x005df477    8bc8
                         mov.s              eax, ebx                                      // 0x005df479    8bc3
                         cdq                                                              // 0x005df47b    99
                         sub.s              eax, edx                                      // 0x005df47c    2bc2
                         sar                eax, 1                                        // 0x005df47e    d1f8
                         cmp                eax, 0x04                                     // 0x005df480    83f804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x005df483    894c2420
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005df487    89442410
                         {disp32} jge       _jmp_addr_0x005df3bf                          // 0x005df48b    0f8d2effffff
                         pop                edi                                           // 0x005df491    5f
                         pop                esi                                           // 0x005df492    5e
                         pop                ebp                                           // 0x005df493    5d
                         pop                ebx                                           // 0x005df494    5b
                         add                esp, 0x18                                     // 0x005df495    83c418
                         ret                                                              // 0x005df498    c3
                         nop                                                              // 0x005df499    90
                         nop                                                              // 0x005df49a    90
                         nop                                                              // 0x005df49b    90
                         nop                                                              // 0x005df49c    90
                         nop                                                              // 0x005df49d    90
                         nop                                                              // 0x005df49e    90
                         nop                                                              // 0x005df49f    90
_jmp_addr_0x005df4a0:    push               ecx                                           // 0x005df4a0    51
                         push               ebx                                           // 0x005df4a1    53
                         push               ebp                                           // 0x005df4a2    55
                         push               esi                                           // 0x005df4a3    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x005df4a4    8b742414
                         shl                esi, 5                                        // 0x005df4a8    c1e605
                         add                esi, 0x00d19b28                               // 0x005df4ab    81c6289bd100
                         push               edi                                           // 0x005df4b1    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x005df4b2    8b7c2420
                         mov                ebx, dword ptr [esi + edi * 0x4]              // 0x005df4b6    8b1cbe
                         test               ebx, ebx                                      // 0x005df4b9    85db
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x005df4bb    89742410
                         {disp8} jne        _jmp_addr_0x005df4d3                          // 0x005df4bf    7512
                         push               0x00001550                                    // 0x005df4c1    6850150000
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005df4c6    e815382600
                         add                esp, 0x04                                     // 0x005df4cb    83c404
                         mov                dword ptr [esi + edi * 0x4], eax              // 0x005df4ce    8904be
                         mov.s              ebx, eax                                      // 0x005df4d1    8bd8
_jmp_addr_0x005df4d3:    {disp32} mov       ecx, dword ptr [data_bytes + 0x517470]        // 0x005df4d3    8b0d70d4ed00
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x005df4d9    8b6c241c
                         neg                ecx                                           // 0x005df4dd    f7d9
                         sbb.s              ecx, ecx                                      // 0x005df4df    1bc9
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x005df4e1    8b742424
                         and                ecx, 0xffffffe0                               // 0x005df4e5    83e1e0
                         add                ecx, 0x40                                     // 0x005df4e8    83c140
                         mov.s              eax, ecx                                      // 0x005df4eb    8bc1
                         cdq                                                              // 0x005df4ed    99
                         and                edx, 0x03                                     // 0x005df4ee    83e203
                         add.s              eax, edx                                      // 0x005df4f1    03c2
                         sar                eax, 2                                        // 0x005df4f3    c1f802
                         mov.s              edx, ebp                                      // 0x005df4f6    8bd5
                         and                edx, 0xfffffffc                               // 0x005df4f8    83e2fc
                         imul               eax, edx                                      // 0x005df4fb    0fafc2
                         imul               eax, dword ptr [esi + 0x04]                   // 0x005df4fe    0faf4604
                         and                ebp, 0x03                                     // 0x005df502    83e503
                         imul               ebp, ecx                                      // 0x005df505    0fafe9
                         cdq                                                              // 0x005df508    99
                         sub.s              eax, edx                                      // 0x005df509    2bc2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x517470]        // 0x005df50b    8b1570d4ed00
                         mov.s              edi, eax                                      // 0x005df511    8bf8
                         sar                edi, 1                                        // 0x005df513    d1ff
                         xor.s              eax, eax                                      // 0x005df515    33c0
                         add.s              edi, ebp                                      // 0x005df517    03fd
                         test               edx, edx                                      // 0x005df519    85d2
                         setne              al                                            // 0x005df51b    0f95c0
                         inc                eax                                           // 0x005df51e    40
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005df51f    89442418
                         xor.s              ebp, ebp                                      // 0x005df523    33ed
_jmp_addr_0x005df525:    xor.s              ecx, ecx                                      // 0x005df525    33c9
_jmp_addr_0x005df527:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005df527    8b4604
                         imul               eax, ebp                                      // 0x005df52a    0fafc5
                         cdq                                                              // 0x005df52d    99
                         sub.s              eax, edx                                      // 0x005df52e    2bc2
                         sar                eax, 1                                        // 0x005df530    d1f8
                         add.s              eax, ecx                                      // 0x005df532    03c1
                         cdq                                                              // 0x005df534    99
                         idiv               dword ptr [esp + 0x18]                        // 0x005df535    f77c2418
                         mov                edx, dword ptr [esi]                          // 0x005df539    8b16
                         add.s              eax, edi                                      // 0x005df53b    03c7
                         mov                al, byte ptr [edx + eax * 0x2]                // 0x005df53d    8a0442
                         and                al, 0x0f                                      // 0x005df540    240f
                         mov                byte ptr [ebx], al                            // 0x005df542    8803
                         inc                ebx                                           // 0x005df544    43
                         inc                ecx                                           // 0x005df545    41
                         cmp                ecx, 0x40                                     // 0x005df546    83f940
                         {disp8} jl         _jmp_addr_0x005df527                          // 0x005df549    7cdc
                         inc                ebp                                           // 0x005df54b    45
                         cmp                ebp, 0x40                                     // 0x005df54c    83fd40
                         {disp8} jl         _jmp_addr_0x005df525                          // 0x005df54f    7cd4
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005df551    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x005df555    8b542420
                         mov                eax, dword ptr [ecx + edx * 0x4]              // 0x005df559    8b0491
                         push               eax                                           // 0x005df55c    50
                         call               _jmp_addr_0x005df3a0                          // 0x005df55d    e83efeffff
                         add                esp, 0x04                                     // 0x005df562    83c404
                         pop                edi                                           // 0x005df565    5f
                         pop                esi                                           // 0x005df566    5e
                         pop                ebp                                           // 0x005df567    5d
                         pop                ebx                                           // 0x005df568    5b
                         pop                ecx                                           // 0x005df569    59
                         ret                                                              // 0x005df56a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005df56b    e88922e2ff
_jmp_addr_0x005df570:    push               ebx                                           // 0x005df570    53
                         push               ebp                                           // 0x005df571    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x005df572    8b6c2410
                         push               esi                                           // 0x005df576    56
                         push               edi                                           // 0x005df577    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005df578    8b7c2414
                         shl                edi, 5                                        // 0x005df57c    c1e705
                         add                edi, 0x00d19b28                               // 0x005df57f    81c7289bd100
                         mov                edx, dword ptr [edi + ebp * 0x4]              // 0x005df585    8b14af
                         test               edx, edx                                      // 0x005df588    85d2
                         {disp8} jne        _jmp_addr_0x005df59e                          // 0x005df58a    7512
                         push               0x00001550                                    // 0x005df58c    6850150000
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x005df591    e84a372600
                         add                esp, 0x04                                     // 0x005df596    83c404
                         mov                dword ptr [edi + ebp * 0x4], eax              // 0x005df599    8904af
                         mov.s              edx, eax                                      // 0x005df59c    8bd0
_jmp_addr_0x005df59e:    {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x005df59e    8b74241c
                         mov                ebx, 0x00000040                               // 0x005df5a2    bb40000000
_jmp_addr_0x005df5a7:    xor.s              ecx, ecx                                      // 0x005df5a7    33c9
_jmp_addr_0x005df5a9:    test               cl, 0x01                                      // 0x005df5a9    f6c101
                         mov                al, byte ptr [esi]                            // 0x005df5ac    8a06
                         {disp8} je         _jmp_addr_0x005df5ba                          // 0x005df5ae    740a
                         shr                al, 4                                         // 0x005df5b0    c0e804
                         movzx              ax, al                                        // 0x005df5b3    660fb6c0
                         inc                esi                                           // 0x005df5b7    46
                         {disp8} jmp        _jmp_addr_0x005df5c0                          // 0x005df5b8    eb06
_jmp_addr_0x005df5ba:    and                al, 0x0f                                      // 0x005df5ba    240f
                         movzx              ax, al                                        // 0x005df5bc    660fb6c0
_jmp_addr_0x005df5c0:    mov                byte ptr [edx], al                            // 0x005df5c0    8802
                         inc                edx                                           // 0x005df5c2    42
                         inc                ecx                                           // 0x005df5c3    41
                         cmp                ecx, 0x40                                     // 0x005df5c4    83f940
                         {disp8} jl         _jmp_addr_0x005df5a9                          // 0x005df5c7    7ce0
                         dec                ebx                                           // 0x005df5c9    4b
                         {disp8} jne        _jmp_addr_0x005df5a7                          // 0x005df5ca    75db
                         mov                ecx, dword ptr [edi + ebp * 0x4]              // 0x005df5cc    8b0caf
                         push               ecx                                           // 0x005df5cf    51
                         call               _jmp_addr_0x005df3a0                          // 0x005df5d0    e8cbfdffff
                         add                esp, 0x04                                     // 0x005df5d5    83c404
                         pop                edi                                           // 0x005df5d8    5f
                         pop                esi                                           // 0x005df5d9    5e
                         pop                ebp                                           // 0x005df5da    5d
                         pop                ebx                                           // 0x005df5db    5b
                         ret                                                              // 0x005df5dc    c3
                         nop                                                              // 0x005df5dd    90
                         nop                                                              // 0x005df5de    90
                         nop                                                              // 0x005df5df    90
_globl_ct_0x005df5e0:    {disp32} jmp       _jmp_addr_0x005df5f0                          // 0x005df5e0    e90b000000
                         nop                                                              // 0x005df5e5    90
                         nop                                                              // 0x005df5e6    90
                         nop                                                              // 0x005df5e7    90
                         nop                                                              // 0x005df5e8    90
                         nop                                                              // 0x005df5e9    90
                         nop                                                              // 0x005df5ea    90
                         nop                                                              // 0x005df5eb    90
                         nop                                                              // 0x005df5ec    90
                         nop                                                              // 0x005df5ed    90
                         nop                                                              // 0x005df5ee    90
                         nop                                                              // 0x005df5ef    90
_jmp_addr_0x005df5f0:    {disp32} mov       dword ptr [data_bytes + 0x353a38], 0x44bacc21 // 0x005df5f0    c705389ad10021ccba44
                         {disp32} mov       dword ptr [data_bytes + 0x353a3c], 0xc0200000 // 0x005df5fa    c7053c9ad100000020c0
                         {disp32} mov       dword ptr [data_bytes + 0x353a40], 0x4502b795 // 0x005df604    c705409ad10095b70245
                         ret                                                              // 0x005df60e    c3
                         nop                                                              // 0x005df60f    90
_globl_ct_0x005df610:    {disp32} jmp       _jmp_addr_0x005df620                          // 0x005df610    e90b000000
                         nop                                                              // 0x005df615    90
                         nop                                                              // 0x005df616    90
                         nop                                                              // 0x005df617    90
                         nop                                                              // 0x005df618    90
                         nop                                                              // 0x005df619    90
                         nop                                                              // 0x005df61a    90
                         nop                                                              // 0x005df61b    90
                         nop                                                              // 0x005df61c    90
                         nop                                                              // 0x005df61d    90
                         nop                                                              // 0x005df61e    90
                         nop                                                              // 0x005df61f    90
_jmp_addr_0x005df620:    {disp32} mov       dword ptr [data_bytes + 0x353a28], 0x44b10ac9 // 0x005df620    c705289ad100c90ab144
                         {disp32} mov       dword ptr [data_bytes + 0x353a2c], 0x00000000 // 0x005df62a    c7052c9ad10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x353a30], 0x4500580c // 0x005df634    c705309ad1000c580045
                         ret                                                              // 0x005df63e    c3
                         nop                                                              // 0x005df63f    90
_jmp_addr_0x005df640:    {disp32} mov       eax, dword ptr [data_bytes + 0x22cafc]        // 0x005df640    a1fc2abf00
                         sub                esp, 0x0c                                     // 0x005df645    83ec0c
                         cmp                eax, -0x01                                    // 0x005df648    83f8ff
                         push               esi                                           // 0x005df64b    56
                         push               edi                                           // 0x005df64c    57
                         {disp32} je        _jmp_addr_0x005df9a2                          // 0x005df64d    0f844f030000
                         xor.s              edi, edi                                      // 0x005df653    33ff
                         cmp.s              eax, edi                                      // 0x005df655    3bc7
                         {disp32} je        _jmp_addr_0x005df92d                          // 0x005df657    0f84d0020000
                         cmp                eax, 0x04                                     // 0x005df65d    83f804
                         {disp32} je        _jmp_addr_0x005df865                          // 0x005df660    0f84ff010000
                         cmp                eax, 0x0c                                     // 0x005df666    83f80c
                         {disp32} jne       _jmp_addr_0x005df9a2                          // 0x005df669    0f8533030000
                         cmp                dword ptr [data_bytes + 0x353c98], edi        // 0x005df66f    393d989cd100
                         {disp32} jne       _jmp_addr_0x005df707                          // 0x005df675    0f858c000000
                         mov                ecx, 0x00000002                               // 0x005df67b    b902000000
                         {disp32} mov       dword ptr [data_bytes + 0x353cb0], edi        // 0x005df680    893db09cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353cac], edi        // 0x005df686    893dac9cd100
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x005df68c    e83fbe2200
                         {disp32} mov       dword ptr [data_bytes + 0x353c98], eax        // 0x005df691    a3989cd100
                         mov                esi, dword ptr [eax]                          // 0x005df696    8b30
                         mov                edx, 0x00000001                               // 0x005df698    ba01000000
                         mov.s              ecx, eax                                      // 0x005df69d    8bc8
                         call               dword ptr [esi + 0x58]                        // 0x005df69f    ff5658
                         push               edi                                           // 0x005df6a2    57
                         push               0x00bf32b4                                    // 0x005df6a3    68b432bf00
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x005df6a8    e843712200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df6ad    8b0d989cd100
                         add                esp, 0x08                                     // 0x005df6b3    83c408
                         push               edi                                           // 0x005df6b6    57
                         {disp32} mov       dword ptr [data_bytes + 0x353c9c], eax        // 0x005df6b7    a39c9cd100
                         mov                esi, dword ptr [ecx]                          // 0x005df6bc    8b31
                         push               edi                                           // 0x005df6be    57
                         mov.s              edx, eax                                      // 0x005df6bf    8bd0
                         call               dword ptr [esi + 0xf4]                        // 0x005df6c1    ff96f4000000
                         push               0x00bf3298                                    // 0x005df6c7    689832bf00
                         call               _jmp_addr_0x00839900                          // 0x005df6cc    e82fa22500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df6d1    8b0d989cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353ca0], eax        // 0x005df6d7    a3a09cd100
                         mov                esi, dword ptr [ecx]                          // 0x005df6dc    8b31
                         add                esp, 0x04                                     // 0x005df6de    83c404
                         mov.s              edx, eax                                      // 0x005df6e1    8bd0
                         call               dword ptr [esi + 0x180]                       // 0x005df6e3    ff9680010000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x22caf4]        // 0x005df6e9    8b15f42abf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df6ef    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005df6f5    8b01
                         push               edx                                           // 0x005df6f7    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x353ca8]        // 0x005df6f8    8b15a89cd100
                         push               edx                                           // 0x005df6fe    52
                         mov                edx, 0x00d19a28                               // 0x005df6ff    ba289ad100
                         call               dword ptr [eax + 0x20]                        // 0x005df704    ff5020
_jmp_addr_0x005df707:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c88]        // 0x005df707    8b0d889cd100
                         cmp.s              ecx, edi                                      // 0x005df70d    3bcf
                         {disp8} je         _jmp_addr_0x005df742                          // 0x005df70f    7431
                         cmp                dword ptr [ecx + 0x28], 0x04                  // 0x005df711    83792804
                         {disp8} jne        _jmp_addr_0x005df73d                          // 0x005df715    7526
                         mov.s              esi, ecx                                      // 0x005df717    8bf1
                         cmp.s              esi, edi                                      // 0x005df719    3bf7
                         {disp8} je         _jmp_addr_0x005df72b                          // 0x005df71b    740e
                         call               _jmp_addr_0x008282e0                          // 0x005df71d    e8be8b2400
                         push               esi                                           // 0x005df722    56
                         call               ??3@YAXPAX@Z                                  // 0x005df723    e870f71c00
                         add                esp, 0x04                                     // 0x005df728    83c404
_jmp_addr_0x005df72b:    {disp32} mov       dword ptr [data_bytes + 0x353c88], edi        // 0x005df72b    893d889cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353cb0], 0x000003e8 // 0x005df731    c705b09cd100e8030000
                         {disp8} jmp        _jmp_addr_0x005df742                          // 0x005df73b    eb05
_jmp_addr_0x005df73d:    call               _jmp_addr_0x00828300                          // 0x005df73d    e8be8b2400
_jmp_addr_0x005df742:    {disp32} mov       al, byte ptr [data_bytes + 0x353a24]          // 0x005df742    a0249ad100
                         test               al, 0x01                                      // 0x005df747    a801
                         {disp8} jne        _jmp_addr_0x005df781                          // 0x005df749    7536
                         mov.s              dl, al                                        // 0x005df74b    8ad0
                         or                 dl, 1                                         // 0x005df74d    80ca01
                         push               0x005df9b0                                    // 0x005df750    68b0f95d00
                         {disp32} mov       byte ptr [data_bytes + 0x353a24], dl          // 0x005df755    8815249ad100
                         {disp32} mov       dword ptr [data_bytes + 0x353a18], 0x44b10ac9 // 0x005df75b    c705189ad100c90ab144
                         {disp32} mov       dword ptr [data_bytes + 0x353a1c], 0xbfc00000 // 0x005df765    c7051c9ad1000000c0bf
                         {disp32} mov       dword ptr [data_bytes + 0x353a20], 0x4500580c // 0x005df76f    c705209ad1000c580045
                         call               _atexit                                       // 0x005df779    e813601e00
                         add                esp, 0x04                                     // 0x005df77e    83c404
_jmp_addr_0x005df781:    {disp32} mov       al, byte ptr [data_bytes + 0x353a24]          // 0x005df781    a0249ad100
                         test               al, 0x02                                      // 0x005df786    a802
                         {disp8} jne        _jmp_addr_0x005df79b                          // 0x005df788    7511
                         or                 al, 2                                         // 0x005df78a    0c02
                         {disp32} mov       byte ptr [data_bytes + 0x353a24], al          // 0x005df78c    a2249ad100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22caf4]        // 0x005df791    a1f42abf00
                         {disp32} mov       dword ptr [data_bytes + 0x353a14], eax        // 0x005df796    a3149ad100
_jmp_addr_0x005df79b:    {disp32} mov       eax, dword ptr [data_bytes + 0x353a20]        // 0x005df79b    a1209ad100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353a18]        // 0x005df7a0    8b0d189ad100
                         {disp32} mov       edx, dword ptr [data_bytes + 0x353a1c]        // 0x005df7a6    8b151c9ad100
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005df7ac    89442410
                         cmp                dword ptr [data_bytes + 0x353cb0], edi        // 0x005df7b0    393db09cd100
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x005df7b6    894c2408
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x005df7ba    8954240c
                         {disp8} je         _jmp_addr_0x005df821                          // 0x005df7be    7461
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df7c0    8b0d989cd100
                         mov                edx, dword ptr [ecx]                          // 0x005df7c6    8b11
                         call               dword ptr [edx + 0x18c]                       // 0x005df7c8    ff928c010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df7ce    8b0d989cd100
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4e3ec0]        // 0x005df7d4    8b3dc09eea00
                         mov.s              esi, eax                                      // 0x005df7da    8bf0
                         mov                eax, dword ptr [ecx]                          // 0x005df7dc    8b01
                         call               dword ptr [eax + 0x184]                       // 0x005df7de    ff9084010000
                         mov.s              ecx, eax                                      // 0x005df7e4    8bc8
                         {disp8} mov        eax, dword ptr [ecx + 0x50]                   // 0x005df7e6    8b4150
                         test               ah, 0x01                                      // 0x005df7e9    f6c401
                         lea                eax, dword ptr [edi + esi * 0x1]              // 0x005df7ec    8d0437
                         {disp8} je         _jmp_addr_0x005df7f7                          // 0x005df7ef    7406
                         cdq                                                              // 0x005df7f1    99
                         idiv               dword ptr [ecx + 0x20]                        // 0x005df7f2    f77920
                         {disp8} jmp        _jmp_addr_0x005df803                          // 0x005df7f5    eb0c
_jmp_addr_0x005df7f7:    {disp8} mov        ecx, dword ptr [ecx + 0x20]                   // 0x005df7f7    8b4920
                         dec                ecx                                           // 0x005df7fa    49
                         cmp.s              ecx, eax                                      // 0x005df7fb    3bc8
                         mov.s              edx, ecx                                      // 0x005df7fd    8bd1
                         {disp8} jl         _jmp_addr_0x005df803                          // 0x005df7ff    7c02
                         mov.s              edx, eax                                      // 0x005df801    8bd0
_jmp_addr_0x005df803:    cmp.s              edx, esi                                      // 0x005df803    3bd6
                         {disp8} jge        _jmp_addr_0x005df813                          // 0x005df805    7d0c
                         {disp32} mov       dword ptr [data_bytes + 0x353c94], 0x00000001 // 0x005df807    c705949cd10001000000
                         {disp8} jmp        _jmp_addr_0x005df821                          // 0x005df811    eb0e
_jmp_addr_0x005df813:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df813    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005df819    8b01
                         call               dword ptr [eax + 0x188]                       // 0x005df81b    ff9088010000
_jmp_addr_0x005df821:    {disp32} mov       edx, dword ptr [data_bytes + 0x353a14]        // 0x005df821    8b15149ad100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df827    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005df82d    8b01
                         push               edx                                           // 0x005df82f    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x22cb00]        // 0x005df830    8b15002bbf00
                         push               edx                                           // 0x005df836    52
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x005df837    8d542410
                         call               dword ptr [eax + 0x20]                        // 0x005df83b    ff5020
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df83e    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005df844    8b01
                         mov                edx, 0x00000001                               // 0x005df846    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x005df84b    ff90a0000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df851    8b0d989cd100
                         mov                edx, dword ptr [ecx]                          // 0x005df857    8b11
                         call               dword ptr [edx + 0x108]                       // 0x005df859    ff9208010000
                         pop                edi                                           // 0x005df85f    5f
                         pop                esi                                           // 0x005df860    5e
                         add                esp, 0x0c                                     // 0x005df861    83c40c
                         ret                                                              // 0x005df864    c3
_jmp_addr_0x005df865:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df865    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005df86b    8b01
                         mov                edx, 0x00000001                               // 0x005df86d    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x005df872    ff90a0000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df878    8b0d989cd100
                         mov                edx, dword ptr [ecx]                          // 0x005df87e    8b11
                         call               dword ptr [edx + 0x108]                       // 0x005df880    ff9208010000
                         cmp                dword ptr [data_bytes + 0x353ca4], edi        // 0x005df886    393da49cd100
                         {disp32} je        _jmp_addr_0x005df9a2                          // 0x005df88c    0f8410010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df892    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005df898    8b01
                         call               dword ptr [eax + 0x18c]                       // 0x005df89a    ff908c010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353ca0]        // 0x005df8a0    8b0da09cd100
                         mov.s              esi, eax                                      // 0x005df8a6    8bf0
                         {disp8} mov        eax, dword ptr [ecx + 0x50]                   // 0x005df8a8    8b4150
                         test               ah, 0x01                                      // 0x005df8ab    f6c401
                         {disp8} je         _jmp_addr_0x005df8bf                          // 0x005df8ae    740f
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ec0]        // 0x005df8b0    8b15c09eea00
                         lea                eax, dword ptr [edx + esi * 0x1]              // 0x005df8b6    8d0432
                         cdq                                                              // 0x005df8b9    99
                         idiv               dword ptr [ecx + 0x20]                        // 0x005df8ba    f77920
                         {disp8} jmp        _jmp_addr_0x005df8d2                          // 0x005df8bd    eb13
_jmp_addr_0x005df8bf:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ec0]        // 0x005df8bf    a1c09eea00
                         {disp8} mov        ecx, dword ptr [ecx + 0x20]                   // 0x005df8c4    8b4920
                         add.s              eax, esi                                      // 0x005df8c7    03c6
                         dec                ecx                                           // 0x005df8c9    49
                         cmp.s              ecx, eax                                      // 0x005df8ca    3bc8
                         mov.s              edx, ecx                                      // 0x005df8cc    8bd1
                         {disp8} jl         _jmp_addr_0x005df8d2                          // 0x005df8ce    7c02
                         mov.s              edx, eax                                      // 0x005df8d0    8bd0
_jmp_addr_0x005df8d2:    cmp.s              edx, esi                                      // 0x005df8d2    3bd6
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005df8d4    8b0d989cd100
                         {disp8} jge        _jmp_addr_0x005df91f                          // 0x005df8da    7d43
                         mov                edx, dword ptr [ecx]                          // 0x005df8dc    8b11
                         call               dword ptr [edx + 4]                           // 0x005df8de    ff5204
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353ca0]        // 0x005df8e1    8b0da09cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353c98], edi        // 0x005df8e7    893d989cd100
                         call               _jmp_addr_0x00839970                          // 0x005df8ed    e87ea02500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c9c]        // 0x005df8f2    8b0d9c9cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353ca0], edi        // 0x005df8f8    893da09cd100
                         call               @Release__8LH3DMeshFv@4                       // 0x005df8fe    e8fd732200
                         {disp32} mov       dword ptr [data_bytes + 0x353c9c], edi        // 0x005df903    893d9c9cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353ca4], edi        // 0x005df909    893da49cd100
                         pop                edi                                           // 0x005df90f    5f
                         {disp32} mov       dword ptr [data_bytes + 0x22cafc], 0xffffffff // 0x005df910    c705fc2abf00ffffffff
                         pop                esi                                           // 0x005df91a    5e
                         add                esp, 0x0c                                     // 0x005df91b    83c40c
                         ret                                                              // 0x005df91e    c3
_jmp_addr_0x005df91f:    mov                eax, dword ptr [ecx]                          // 0x005df91f    8b01
                         call               dword ptr [eax + 0x188]                       // 0x005df921    ff9088010000
                         pop                edi                                           // 0x005df927    5f
                         pop                esi                                           // 0x005df928    5e
                         add                esp, 0x0c                                     // 0x005df929    83c40c
                         ret                                                              // 0x005df92c    c3
_jmp_addr_0x005df92d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353c88]        // 0x005df92d    8b0d889cd100
                         cmp.s              ecx, edi                                      // 0x005df933    3bcf
                         {disp8} je         _jmp_addr_0x005df9a2                          // 0x005df935    746b
                         cmp                dword ptr [ecx + 0x28], 0x04                  // 0x005df937    83792804
                         {disp8} jne        _jmp_addr_0x005df95d                          // 0x005df93b    7520
                         mov.s              esi, ecx                                      // 0x005df93d    8bf1
                         cmp.s              esi, edi                                      // 0x005df93f    3bf7
                         {disp8} je         _jmp_addr_0x005df951                          // 0x005df941    740e
                         call               _jmp_addr_0x008282e0                          // 0x005df943    e898892400
                         push               esi                                           // 0x005df948    56
                         call               ??3@YAXPAX@Z                                  // 0x005df949    e84af51c00
                         add                esp, 0x04                                     // 0x005df94e    83c404
_jmp_addr_0x005df951:    {disp32} mov       dword ptr [data_bytes + 0x353c88], edi        // 0x005df951    893d889cd100
                         pop                edi                                           // 0x005df957    5f
                         pop                esi                                           // 0x005df958    5e
                         add                esp, 0x0c                                     // 0x005df959    83c40c
                         ret                                                              // 0x005df95c    c3
_jmp_addr_0x005df95d:    call               _jmp_addr_0x00828300                          // 0x005df95d    e89e892400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c88]        // 0x005df962    8b0d889cd100
                         cmp                dword ptr [ecx + 0x28], 0x01                  // 0x005df968    83792801
                         {disp8} jne        _jmp_addr_0x005df978                          // 0x005df96c    750a
                         {disp32} mov       dword ptr [data_bytes + 0x22cafc], 0x0000000c // 0x005df96e    c705fc2abf000c000000
_jmp_addr_0x005df978:    cmp                dword ptr [data_bytes + 0x353c90], edi        // 0x005df978    393d909cd100
                         {disp8} je         _jmp_addr_0x005df9a2                          // 0x005df97e    7422
                         {disp32} mov       edx, dword ptr [data_bytes + 0x353a28]        // 0x005df980    8b15289ad100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x353a2c]        // 0x005df986    a12c9ad100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353a30]        // 0x005df98b    8b0d309ad100
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb68], edx        // 0x005df991    8915681bea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb6c], eax        // 0x005df997    a36c1bea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb70], ecx        // 0x005df99c    890d701bea00
_jmp_addr_0x005df9a2:    pop                edi                                           // 0x005df9a2    5f
                         pop                esi                                           // 0x005df9a3    5e
                         add                esp, 0x0c                                     // 0x005df9a4    83c40c
                         ret                                                              // 0x005df9a7    c3
                         nop                                                              // 0x005df9a8    90
                         nop                                                              // 0x005df9a9    90
                         nop                                                              // 0x005df9aa    90
                         nop                                                              // 0x005df9ab    90
                         nop                                                              // 0x005df9ac    90
                         nop                                                              // 0x005df9ad    90
                         nop                                                              // 0x005df9ae    90
                         nop                                                              // 0x005df9af    90
                         ret                                                              // 0x005df9b0    c3
                         nop                                                              // 0x005df9b1    90
                         nop                                                              // 0x005df9b2    90
                         nop                                                              // 0x005df9b3    90
                         nop                                                              // 0x005df9b4    90
                         nop                                                              // 0x005df9b5    90
                         nop                                                              // 0x005df9b6    90
                         nop                                                              // 0x005df9b7    90
                         nop                                                              // 0x005df9b8    90
                         nop                                                              // 0x005df9b9    90
                         nop                                                              // 0x005df9ba    90
                         nop                                                              // 0x005df9bb    90
                         nop                                                              // 0x005df9bc    90
                         nop                                                              // 0x005df9bd    90
                         nop                                                              // 0x005df9be    90
                         nop                                                              // 0x005df9bf    90
_jmp_addr_0x005df9c0:    sub                esp, 0x10                                     // 0x005df9c0    83ec10
                         {disp32} fld       dword ptr [data_bytes + 0x22cb04]             // 0x005df9c3    d905042bbf00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005df9c9    8b442414
                         cmp                eax, 0x06                                     // 0x005df9cd    83f806
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8220c]             // 0x005df9d0    d80d0cb29200
                         push               esi                                           // 0x005df9d6    56
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1e9e4]             // 0x005df9d7    d82de4798c00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x005df9dd    d95c2404
                         {disp32} ja        _jmp_addr_0x005dfc1a                          // 0x005df9e1    0f8733020000
                         jmp                dword ptr [eax*4 + 0x5dfc20]                  // 0x005df9e7    ff248520fc5d00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x353c8c]        // 0x005df9ee    a18c9cd100
                         xor.s              esi, esi                                      // 0x005df9f3    33f6
                         cmp.s              eax, esi                                      // 0x005df9f5    3bc6
                         {disp32} mov       dword ptr [data_bytes + 0x22cafc], esi        // 0x005df9f7    8935fc2abf00
                         {disp8} jne        _jmp_addr_0x005dfa14                          // 0x005df9fd    7515
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dba90]        // 0x005df9ff    a1901aea00
                         push               eax                                           // 0x005dfa04    50
                         push               0xd                                           // 0x005dfa05    6a0d
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x005dfa07    e824032500
                         add                esp, 0x08                                     // 0x005dfa0c    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x353c8c], eax        // 0x005dfa0f    a38c9cd100
_jmp_addr_0x005dfa14:    push               0x000003ff                                    // 0x005dfa14    68ff030000
                         push               0x00bf3248                                    // 0x005dfa19    684832bf00
                         push               0x34                                          // 0x005dfa1e    6a34
                         call               ___nw__FUl                                    // 0x005dfa20    e86bbd1f00
                         add                esp, 0x0c                                     // 0x005dfa25    83c40c
                         cmp.s              eax, esi                                      // 0x005dfa28    3bc6
                         {disp8} je         _jmp_addr_0x005dfa6c                          // 0x005dfa2a    7440
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c8c]        // 0x005dfa2c    8b0d8c9cd100
                         push               ecx                                           // 0x005dfa32    51
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x005dfa33    8d54240c
                         push               edx                                           // 0x005dfa37    52
                         push               0x00d19a28                                    // 0x005dfa38    68289ad100
                         mov.s              ecx, eax                                      // 0x005dfa3d    8bc8
                         {disp8} mov        dword ptr [esp + 0x14], 0xbf800000            // 0x005dfa3f    c7442414000080bf
                         {disp8} mov        dword ptr [esp + 0x18], 0xbe75c28f            // 0x005dfa47    c74424188fc275be
                         {disp8} mov        dword ptr [esp + 0x1c], 0xbf800000            // 0x005dfa4f    c744241c000080bf
                         call               _jmp_addr_0x00827f20                          // 0x005dfa57    e8c4842400
                         {disp32} mov       dword ptr [data_bytes + 0x353c34], esi        // 0x005dfa5c    8935349cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353c88], eax        // 0x005dfa62    a3889cd100
                         pop                esi                                           // 0x005dfa67    5e
                         add                esp, 0x10                                     // 0x005dfa68    83c410
                         ret                                                              // 0x005dfa6b    c3
_jmp_addr_0x005dfa6c:    {disp32} mov       dword ptr [data_bytes + 0x353c88], esi        // 0x005dfa6c    8935889cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353c34], esi        // 0x005dfa72    8935349cd100
                         pop                esi                                           // 0x005dfa78    5e
                         add                esp, 0x10                                     // 0x005dfa79    83c410
                         ret                                                              // 0x005dfa7c    c3
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22cafc]        // 0x005dfa7d    a1fc2abf00
                         test               eax, eax                                      // 0x005dfa82    85c0
                         {disp32} jne       _jmp_addr_0x005dfc1a                          // 0x005dfa84    0f8590010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353a2c]        // 0x005dfa8a    8b0d2c9ad100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x353a28]        // 0x005dfa90    a1289ad100
                         {disp32} mov       edx, dword ptr [data_bytes + 0x353a30]        // 0x005dfa95    8b15309ad100
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb6c], ecx        // 0x005dfa9b    890d6c1bea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c88]        // 0x005dfaa1    8b0d889cd100
                         push               0x00ea1b58                                    // 0x005dfaa7    68581bea00
                         {disp32} mov       dword ptr [data_bytes + 0x353c90], 0x00000001 // 0x005dfaac    c705909cd10001000000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ec8], 0x00000002 // 0x005dfab6    c705c89eea0002000000
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb68], eax        // 0x005dfac0    a3681bea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb70], edx        // 0x005dfac5    8915701bea00
                         call               _jmp_addr_0x00828760                          // 0x005dfacb    e8908c2400
                         pop                esi                                           // 0x005dfad0    5e
                         add                esp, 0x10                                     // 0x005dfad1    83c410
                         ret                                                              // 0x005dfad4    c3
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22cafc]        // 0x005dfad5    a1fc2abf00
                         xor.s              esi, esi                                      // 0x005dfada    33f6
                         cmp.s              eax, esi                                      // 0x005dfadc    3bc6
                         {disp32} jne       _jmp_addr_0x005dfc1a                          // 0x005dfade    0f8536010000
                         {disp32} mov       dword ptr [data_bytes + 0x353c90], esi        // 0x005dfae4    8935909cd100
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ec8], esi        // 0x005dfaea    8935c89eea00
                         pop                esi                                           // 0x005dfaf0    5e
                         add                esp, 0x10                                     // 0x005dfaf1    83c410
                         ret                                                              // 0x005dfaf4    c3
                         {disp32} mov       eax, dword ptr [data_bytes + 0x353c98]        // 0x005dfaf5    a1989cd100
                         xor.s              esi, esi                                      // 0x005dfafa    33f6
                         cmp.s              eax, esi                                      // 0x005dfafc    3bc6
                         {disp8} jne        _jmp_addr_0x005dfb44                          // 0x005dfafe    7544
                         push               edi                                           // 0x005dfb00    57
                         mov                ecx, 0x00000002                               // 0x005dfb01    b902000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x005dfb06    e8c5b92200
                         {disp32} mov       dword ptr [data_bytes + 0x353c98], eax        // 0x005dfb0b    a3989cd100
                         mov                edi, dword ptr [eax]                          // 0x005dfb10    8b38
                         mov                edx, 0x00000001                               // 0x005dfb12    ba01000000
                         mov.s              ecx, eax                                      // 0x005dfb17    8bc8
                         call               dword ptr [edi + 0x58]                        // 0x005dfb19    ff5758
                         push               esi                                           // 0x005dfb1c    56
                         push               0x00bf32b4                                    // 0x005dfb1d    68b432bf00
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x005dfb22    e8c96c2200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005dfb27    8b0d989cd100
                         add                esp, 0x08                                     // 0x005dfb2d    83c408
                         push               esi                                           // 0x005dfb30    56
                         {disp32} mov       dword ptr [data_bytes + 0x353c9c], eax        // 0x005dfb31    a39c9cd100
                         mov                edi, dword ptr [ecx]                          // 0x005dfb36    8b39
                         push               esi                                           // 0x005dfb38    56
                         mov.s              edx, eax                                      // 0x005dfb39    8bd0
                         call               dword ptr [edi + 0xf4]                        // 0x005dfb3b    ff97f4000000
                         pop                edi                                           // 0x005dfb41    5f
                         {disp8} jmp        _jmp_addr_0x005dfb55                          // 0x005dfb42    eb11
_jmp_addr_0x005dfb44:    {disp32} mov       ecx, dword ptr [data_bytes + 0x353ca0]        // 0x005dfb44    8b0da09cd100
                         call               _jmp_addr_0x00839970                          // 0x005dfb4a    e8219e2500
                         {disp32} mov       dword ptr [data_bytes + 0x353ca0], esi        // 0x005dfb4f    8935a09cd100
_jmp_addr_0x005dfb55:    push               0x00bf32d0                                    // 0x005dfb55    68d032bf00
                         call               _jmp_addr_0x00839900                          // 0x005dfb5a    e8a19d2500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005dfb5f    8b0d989cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353ca0], eax        // 0x005dfb65    a3a09cd100
                         mov                esi, dword ptr [ecx]                          // 0x005dfb6a    8b31
                         add                esp, 0x04                                     // 0x005dfb6c    83c404
                         mov.s              edx, eax                                      // 0x005dfb6f    8bd0
                         call               dword ptr [esi + 0x180]                       // 0x005dfb71    ff9680010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005dfb77    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005dfb7d    8b01
                         xor.s              edx, edx                                      // 0x005dfb7f    33d2
                         call               dword ptr [eax + 0x188]                       // 0x005dfb81    ff9088010000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x22caf4]        // 0x005dfb87    8b15f42abf00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005dfb8d    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005dfb93    8b01
                         push               edx                                           // 0x005dfb95    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005dfb96    8b542408
                         push               edx                                           // 0x005dfb9a    52
                         mov                edx, 0x00d19a38                               // 0x005dfb9b    ba389ad100
                         call               dword ptr [eax + 0x20]                        // 0x005dfba0    ff5020
                         {disp32} mov       dword ptr [data_bytes + 0x22cafc], 0x00000004 // 0x005dfba3    c705fc2abf0004000000
                         pop                esi                                           // 0x005dfbad    5e
                         add                esp, 0x10                                     // 0x005dfbae    83c410
                         ret                                                              // 0x005dfbb1    c3
                         cmp                dword ptr [data_bytes + 0x22cafc], 0x04       // 0x005dfbb2    833dfc2abf0004
                         {disp8} jne        _jmp_addr_0x005dfc1a                          // 0x005dfbb9    755f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x353ca4]        // 0x005dfbbb    a1a49cd100
                         xor.s              esi, esi                                      // 0x005dfbc0    33f6
                         cmp.s              eax, esi                                      // 0x005dfbc2    3bc6
                         {disp8} je         _jmp_addr_0x005dfbe4                          // 0x005dfbc4    741e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x353c98]        // 0x005dfbc6    8b0d989cd100
                         mov                eax, dword ptr [ecx]                          // 0x005dfbcc    8b01
                         mov                edx, 0x0000094b                               // 0x005dfbce    ba4b090000
                         call               dword ptr [eax + 0x188]                       // 0x005dfbd3    ff9088010000
                         {disp32} mov       dword ptr [data_bytes + 0x353c34], esi        // 0x005dfbd9    8935349cd100
                         pop                esi                                           // 0x005dfbdf    5e
                         add                esp, 0x10                                     // 0x005dfbe0    83c410
                         ret                                                              // 0x005dfbe3    c3
_jmp_addr_0x005dfbe4:    mov                eax, 0x00000001                               // 0x005dfbe4    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x353ca4], eax        // 0x005dfbe9    a3a49cd100
                         {disp32} mov       dword ptr [data_bytes + 0x353c34], eax        // 0x005dfbee    a3349cd100
                         pop                esi                                           // 0x005dfbf3    5e
                         add                esp, 0x10                                     // 0x005dfbf4    83c410
                         ret                                                              // 0x005dfbf7    c3
                         push               0x0000044b                                    // 0x005dfbf8    684b040000
                         push               0x00bf3248                                    // 0x005dfbfd    684832bf00
                         push               0x68                                          // 0x005dfc02    6a68
                         call               ___nw__FUl                                    // 0x005dfc04    e887bb1f00
                         xor.s              esi, esi                                      // 0x005dfc09    33f6
                         add                esp, 0x0c                                     // 0x005dfc0b    83c40c
                         cmp.s              eax, esi                                      // 0x005dfc0e    3bc6
                         {disp8} je         _jmp_addr_0x005dfc1a                          // 0x005dfc10    7408
                         push               esi                                           // 0x005dfc12    56
                         mov.s              ecx, eax                                      // 0x005dfc13    8bc8
                         call               _jmp_addr_0x005e1020                          // 0x005dfc15    e806140000
_jmp_addr_0x005dfc1a:    pop                esi                                           // 0x005dfc1a    5e
                         add                esp, 0x10                                     // 0x005dfc1b    83c410
                         ret                                                              // 0x005dfc1e    c3

// Snippet: db, [0x005dfc1f, 0x005dfc20)
.byte 0x90                        // 0x005dfc1f

// Snippet: jmptbl, [0x005dfc20, 0x005dfc3c)
.byte 0xee, 0xf9, 0x5d, 0x00      // 0x005dfc20
.byte 0x7d, 0xfa, 0x5d, 0x00      // 0x005dfc24
.byte 0xd5, 0xfa, 0x5d, 0x00      // 0x005dfc28
.byte 0x1a, 0xfc, 0x5d, 0x00      // 0x005dfc2c
.byte 0xf5, 0xfa, 0x5d, 0x00      // 0x005dfc30
.byte 0xb2, 0xfb, 0x5d, 0x00      // 0x005dfc34
.byte 0xf8, 0xfb, 0x5d, 0x00      // 0x005dfc38

// Snippet: db, [0x005dfc3c, 0x005dfc40)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005dfc3c

