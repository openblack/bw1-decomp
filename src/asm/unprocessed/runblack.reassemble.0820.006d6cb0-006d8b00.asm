.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.extern _jmp_addr_0x005e6540
.extern ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ
.extern @SetupMoveToPos__6LivingFRC9MapCoordsUc@13
.extern _jmp_addr_0x006041c0
.extern @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16
.extern @__apl__9MapCoordsFRC9JustMapXZ@12
.extern ?__ne@MapCoords@@QBE_NABV1@@Z
.extern @GetLHPoint__9MapCoordsCFv@12
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z_2
.extern @AreWeThere__13MobileWallHugFf@12
.extern _jmp_addr_0x0060c110
.extern _jmp_addr_0x00639a60
.extern _jmp_addr_0x0063e540
.extern _jmp_addr_0x0063e580
.extern _jmp_addr_0x006d66e0
.extern _jmp_addr_0x006d8b00
.extern _jmp_addr_0x006d9290
.extern _jmp_addr_0x006d9450
.extern _jmp_addr_0x006da520
.extern _jmp_addr_0x006da550
.extern _jmp_addr_0x006dac60
.extern _jmp_addr_0x006db020
.extern _jmp_addr_0x006db160
.extern _jmp_addr_0x006db520
.extern _jmp_addr_0x006db8a0
.extern _jmp_addr_0x006dbba0
.extern _jmp_addr_0x006dbbd0
.extern _jmp_addr_0x006dbc10
.extern _jmp_addr_0x006dbcf0
.extern _jmp_addr_0x006dc560
.extern _jmp_addr_0x006dc740
.extern ?GameRand@GRand@@SAHJ@Z
.extern _jmp_addr_0x0071ed40
.extern _jmp_addr_0x00737760
.extern _jmp_addr_0x0074a3f0
.extern ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern _jmp_addr_0x00824700
.extern _jmp_addr_0x00824740
.extern _jmp_addr_0x00829a30
.extern _jmp_addr_0x00829b20

.globl _jmp_addr_0x006d6cc0
.globl _jmp_addr_0x006d7190
.globl _jmp_addr_0x006d71d0
.globl _jmp_addr_0x006d7480
.globl ?ToBeDeleted@PuzzleGame@@UAEXH@Z

start_0x006d6cb0_0x006d8b00:
// Snippet: asm, [0x006d6cb0, 0x006d8a97)
                         ret                0x0004                                        // 0x006d6cb0    c20400
                         nop                                                              // 0x006d6cb3    90
                         nop                                                              // 0x006d6cb4    90
                         nop                                                              // 0x006d6cb5    90
                         nop                                                              // 0x006d6cb6    90
                         nop                                                              // 0x006d6cb7    90
                         nop                                                              // 0x006d6cb8    90
                         nop                                                              // 0x006d6cb9    90
                         nop                                                              // 0x006d6cba    90
                         nop                                                              // 0x006d6cbb    90
                         nop                                                              // 0x006d6cbc    90
                         nop                                                              // 0x006d6cbd    90
                         nop                                                              // 0x006d6cbe    90
                         nop                                                              // 0x006d6cbf    90
_jmp_addr_0x006d6cc0:    push               ecx                                           // 0x006d6cc0    51
                         push               ebx                                           // 0x006d6cc1    53
                         push               ebp                                           // 0x006d6cc2    55
                         push               esi                                           // 0x006d6cc3    56
                         push               edi                                           // 0x006d6cc4    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006d6cc5    894c2410
                         {disp32} lea       esi, dword ptr [ecx + 0x000000d4]             // 0x006d6cc9    8db1d4000000
                         mov                edi, 0x00000004                               // 0x006d6ccf    bf04000000
                         xor.s              ebp, ebp                                      // 0x006d6cd4    33ed
_jmp_addr_0x006d6cd6:    {disp8} mov        ecx, dword ptr [esi + -0x10]                  // 0x006d6cd6    8b4ef0
                         cmp.s              ecx, ebp                                      // 0x006d6cd9    3bcd
                         {disp8} je         _jmp_addr_0x006d6cf2                          // 0x006d6cdb    7415
                         mov                eax, dword ptr [ecx]                          // 0x006d6cdd    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d6cdf    ff502c
                         test               eax, eax                                      // 0x006d6ce2    85c0
                         {disp8} je         _jmp_addr_0x006d6cf2                          // 0x006d6ce4    740c
                         {disp8} mov        ecx, dword ptr [esi + -0x10]                  // 0x006d6ce6    8b4ef0
                         mov                edx, dword ptr [ecx]                          // 0x006d6ce9    8b11
                         push               ebp                                           // 0x006d6ceb    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6cec    ff520c
                         {disp8} mov        dword ptr [esi + -0x10], ebp                  // 0x006d6cef    896ef0
_jmp_addr_0x006d6cf2:    mov                ecx, dword ptr [esi]                          // 0x006d6cf2    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6cf4    3bcd
                         {disp8} je         _jmp_addr_0x006d6d0b                          // 0x006d6cf6    7413
                         mov                eax, dword ptr [ecx]                          // 0x006d6cf8    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d6cfa    ff502c
                         test               eax, eax                                      // 0x006d6cfd    85c0
                         {disp8} je         _jmp_addr_0x006d6d0b                          // 0x006d6cff    740a
                         mov                ecx, dword ptr [esi]                          // 0x006d6d01    8b0e
                         mov                edx, dword ptr [ecx]                          // 0x006d6d03    8b11
                         push               ebp                                           // 0x006d6d05    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6d06    ff520c
                         mov                dword ptr [esi], ebp                          // 0x006d6d09    892e
_jmp_addr_0x006d6d0b:    add                esi, 0x04                                     // 0x006d6d0b    83c604
                         dec                edi                                           // 0x006d6d0e    4f
                         {disp8} jne        _jmp_addr_0x006d6cd6                          // 0x006d6d0f    75c5
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6d11    8b442410
                         {disp8} lea        esi, dword ptr [eax + 0x58]                   // 0x006d6d15    8d7058
                         mov                ebx, 0x00000003                               // 0x006d6d18    bb03000000
_jmp_addr_0x006d6d1d:    mov                edi, 0x00000003                               // 0x006d6d1d    bf03000000
_jmp_addr_0x006d6d22:    mov                ecx, dword ptr [esi]                          // 0x006d6d22    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6d24    3bcd
                         {disp8} je         _jmp_addr_0x006d6d30                          // 0x006d6d26    7408
                         mov                edx, dword ptr [ecx]                          // 0x006d6d28    8b11
                         push               ebp                                           // 0x006d6d2a    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6d2b    ff520c
                         mov                dword ptr [esi], ebp                          // 0x006d6d2e    892e
_jmp_addr_0x006d6d30:    add                esi, 0x04                                     // 0x006d6d30    83c604
                         dec                edi                                           // 0x006d6d33    4f
                         {disp8} jne        _jmp_addr_0x006d6d22                          // 0x006d6d34    75ec
                         dec                ebx                                           // 0x006d6d36    4b
                         {disp8} jne        _jmp_addr_0x006d6d1d                          // 0x006d6d37    75e4
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6d39    8b442410
                         {disp32} mov       ecx, dword ptr [eax + 0x000003f4]             // 0x006d6d3d    8b88f4030000
                         cmp.s              ecx, ebp                                      // 0x006d6d43    3bcd
                         {disp8} je         _jmp_addr_0x006d6d57                          // 0x006d6d45    7410
                         mov                edx, dword ptr [ecx]                          // 0x006d6d47    8b11
                         push               ebp                                           // 0x006d6d49    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6d4a    ff520c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6d4d    8b442410
                         {disp32} mov       dword ptr [eax + 0x000003f4], ebp             // 0x006d6d51    89a8f4030000
_jmp_addr_0x006d6d57:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006d6d57    8b4c2410
                         {disp32} mov       ecx, dword ptr [ecx + 0x000003fc]             // 0x006d6d5b    8b89fc030000
                         cmp.s              ecx, ebp                                      // 0x006d6d61    3bcd
                         {disp8} je         _jmp_addr_0x006d6d75                          // 0x006d6d63    7410
                         mov                edx, dword ptr [ecx]                          // 0x006d6d65    8b11
                         push               ebp                                           // 0x006d6d67    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6d68    ff520c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6d6b    8b442410
                         {disp32} mov       dword ptr [eax + 0x000003fc], ebp             // 0x006d6d6f    89a8fc030000
_jmp_addr_0x006d6d75:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006d6d75    8b4c2410
                         {disp32} mov       ecx, dword ptr [ecx + 0x000003f8]             // 0x006d6d79    8b89f8030000
                         cmp.s              ecx, ebp                                      // 0x006d6d7f    3bcd
                         {disp8} je         _jmp_addr_0x006d6d93                          // 0x006d6d81    7410
                         mov                edx, dword ptr [ecx]                          // 0x006d6d83    8b11
                         push               ebp                                           // 0x006d6d85    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6d86    ff520c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6d89    8b442410
                         {disp32} mov       dword ptr [eax + 0x000003f8], ebp             // 0x006d6d8d    89a8f8030000
_jmp_addr_0x006d6d93:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x006d6d93    8b742410
                         cmp                dword ptr [esi + 0x48], 0x08                  // 0x006d6d97    837e4808
                         {disp8} je         _jmp_addr_0x006d6e01                          // 0x006d6d9b    7464
                         add                esi, 0x00000240                               // 0x006d6d9d    81c640020000
                         mov                ebx, 0x00000009                               // 0x006d6da3    bb09000000
_jmp_addr_0x006d6da8:    mov                edi, 0x00000009                               // 0x006d6da8    bf09000000
_jmp_addr_0x006d6dad:    {disp32} mov       ecx, dword ptr [esi + -0x00000144]            // 0x006d6dad    8b8ebcfeffff
                         cmp.s              ecx, ebp                                      // 0x006d6db3    3bcd
                         {disp8} je         _jmp_addr_0x006d6dc3                          // 0x006d6db5    740c
                         mov                edx, dword ptr [ecx]                          // 0x006d6db7    8b11
                         push               ebp                                           // 0x006d6db9    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6dba    ff520c
                         {disp32} mov       dword ptr [esi + -0x00000144], ebp            // 0x006d6dbd    89aebcfeffff
_jmp_addr_0x006d6dc3:    mov                ecx, dword ptr [esi]                          // 0x006d6dc3    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6dc5    3bcd
                         {disp8} je         _jmp_addr_0x006d6dd1                          // 0x006d6dc7    7408
                         mov                eax, dword ptr [ecx]                          // 0x006d6dc9    8b01
                         push               ebp                                           // 0x006d6dcb    55
                         call               dword ptr [eax + 0xc]                         // 0x006d6dcc    ff500c
                         mov                dword ptr [esi], ebp                          // 0x006d6dcf    892e
_jmp_addr_0x006d6dd1:    add                esi, 0x04                                     // 0x006d6dd1    83c604
                         dec                edi                                           // 0x006d6dd4    4f
                         {disp8} jne        _jmp_addr_0x006d6dad                          // 0x006d6dd5    75d6
                         dec                ebx                                           // 0x006d6dd7    4b
                         {disp8} jne        _jmp_addr_0x006d6da8                          // 0x006d6dd8    75ce
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006d6dda    8b4c2410
                         {disp32} lea       esi, dword ptr [ecx + 0x00000398]             // 0x006d6dde    8db198030000
                         mov                edi, 0x00000006                               // 0x006d6de4    bf06000000
_jmp_addr_0x006d6de9:    mov                ecx, dword ptr [esi]                          // 0x006d6de9    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6deb    3bcd
                         {disp8} je         _jmp_addr_0x006d6df7                          // 0x006d6ded    7408
                         mov                edx, dword ptr [ecx]                          // 0x006d6def    8b11
                         push               ebp                                           // 0x006d6df1    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6df2    ff520c
                         mov                dword ptr [esi], ebp                          // 0x006d6df5    892e
_jmp_addr_0x006d6df7:    add                esi, 0x04                                     // 0x006d6df7    83c604
                         dec                edi                                           // 0x006d6dfa    4f
                         {disp8} jne        _jmp_addr_0x006d6de9                          // 0x006d6dfb    75ec
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x006d6dfd    8b742410
_jmp_addr_0x006d6e01:    add                esi, 0x000003b0                               // 0x006d6e01    81c6b0030000
                         mov                edi, 0x00000003                               // 0x006d6e07    bf03000000
_jmp_addr_0x006d6e0c:    mov                ecx, dword ptr [esi]                          // 0x006d6e0c    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6e0e    3bcd
                         {disp8} je         _jmp_addr_0x006d6e1a                          // 0x006d6e10    7408
                         mov                eax, dword ptr [ecx]                          // 0x006d6e12    8b01
                         push               ebp                                           // 0x006d6e14    55
                         call               dword ptr [eax + 0xc]                         // 0x006d6e15    ff500c
                         mov                dword ptr [esi], ebp                          // 0x006d6e18    892e
_jmp_addr_0x006d6e1a:    add                esi, 0x04                                     // 0x006d6e1a    83c604
                         dec                edi                                           // 0x006d6e1d    4f
                         {disp8} jne        _jmp_addr_0x006d6e0c                          // 0x006d6e1e    75ec
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006d6e20    8b4c2410
                         {disp32} lea       esi, dword ptr [ecx + 0x000003bc]             // 0x006d6e24    8db1bc030000
                         mov                edi, 0x00000004                               // 0x006d6e2a    bf04000000
_jmp_addr_0x006d6e2f:    mov                ecx, dword ptr [esi]                          // 0x006d6e2f    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6e31    3bcd
                         {disp8} je         _jmp_addr_0x006d6e3d                          // 0x006d6e33    7408
                         mov                edx, dword ptr [ecx]                          // 0x006d6e35    8b11
                         push               ebp                                           // 0x006d6e37    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6e38    ff520c
                         mov                dword ptr [esi], ebp                          // 0x006d6e3b    892e
_jmp_addr_0x006d6e3d:    add                esi, 0x04                                     // 0x006d6e3d    83c604
                         dec                edi                                           // 0x006d6e40    4f
                         {disp8} jne        _jmp_addr_0x006d6e2f                          // 0x006d6e41    75ec
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6e43    8b442410
                         {disp32} lea       esi, dword ptr [eax + 0x00000410]             // 0x006d6e47    8db010040000
                         mov                edi, 0x00000008                               // 0x006d6e4d    bf08000000
_jmp_addr_0x006d6e52:    mov                ecx, dword ptr [esi]                          // 0x006d6e52    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6e54    3bcd
                         {disp8} je         _jmp_addr_0x006d6e60                          // 0x006d6e56    7408
                         mov                edx, dword ptr [ecx]                          // 0x006d6e58    8b11
                         push               ebp                                           // 0x006d6e5a    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6e5b    ff520c
                         mov                dword ptr [esi], ebp                          // 0x006d6e5e    892e
_jmp_addr_0x006d6e60:    add                esi, 0x04                                     // 0x006d6e60    83c604
                         dec                edi                                           // 0x006d6e63    4f
                         {disp8} jne        _jmp_addr_0x006d6e52                          // 0x006d6e64    75ec
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6e66    8b442410
                         {disp32} lea       esi, dword ptr [eax + 0x00000430]             // 0x006d6e6a    8db030040000
                         mov                edi, 0x00000008                               // 0x006d6e70    bf08000000
_jmp_addr_0x006d6e75:    mov                ecx, dword ptr [esi]                          // 0x006d6e75    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6e77    3bcd
                         {disp8} je         _jmp_addr_0x006d6e83                          // 0x006d6e79    7408
                         mov                edx, dword ptr [ecx]                          // 0x006d6e7b    8b11
                         push               ebp                                           // 0x006d6e7d    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6e7e    ff520c
                         mov                dword ptr [esi], ebp                          // 0x006d6e81    892e
_jmp_addr_0x006d6e83:    add                esi, 0x04                                     // 0x006d6e83    83c604
                         dec                edi                                           // 0x006d6e86    4f
                         {disp8} jne        _jmp_addr_0x006d6e75                          // 0x006d6e87    75ec
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6e89    8b442410
                         {disp32} lea       esi, dword ptr [eax + 0x00000494]             // 0x006d6e8d    8db094040000
                         mov                edi, 0x00000014                               // 0x006d6e93    bf14000000
_jmp_addr_0x006d6e98:    mov                ecx, dword ptr [esi]                          // 0x006d6e98    8b0e
                         cmp.s              ecx, ebp                                      // 0x006d6e9a    3bcd
                         {disp8} je         _jmp_addr_0x006d6ea6                          // 0x006d6e9c    7408
                         mov                edx, dword ptr [ecx]                          // 0x006d6e9e    8b11
                         push               ebp                                           // 0x006d6ea0    55
                         call               dword ptr [edx + 0xc]                         // 0x006d6ea1    ff520c
                         mov                dword ptr [esi], ebp                          // 0x006d6ea4    892e
_jmp_addr_0x006d6ea6:    add                esi, 0x04                                     // 0x006d6ea6    83c604
                         dec                edi                                           // 0x006d6ea9    4f
                         {disp8} jne        _jmp_addr_0x006d6e98                          // 0x006d6eaa    75ec
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d6eac    8b442410
                         {disp32} mov       esi, dword ptr [eax + 0x00000408]             // 0x006d6eb0    8bb008040000
                         cmp.s              esi, ebp                                      // 0x006d6eb6    3bf5
                         {disp8} mov        dword ptr [eax + 0x3c], 0x00000001            // 0x006d6eb8    c7403c01000000
                         {disp8} je         _jmp_addr_0x006d6eeb                          // 0x006d6ebf    742a
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x006d6ec1    8b7e28
                         cmp.s              edi, ebp                                      // 0x006d6ec4    3bfd
                         {disp8} je         _jmp_addr_0x006d6ed8                          // 0x006d6ec6    7410
                         mov.s              ecx, edi                                      // 0x006d6ec8    8bcf
                         call               _jmp_addr_0x00829b20                          // 0x006d6eca    e8512c1500
                         push               edi                                           // 0x006d6ecf    57
                         call               ??3@YAXPAX@Z                                  // 0x006d6ed0    e8c37f0d00
                         add                esp, 0x04                                     // 0x006d6ed5    83c404
_jmp_addr_0x006d6ed8:    push               esi                                           // 0x006d6ed8    56
                         call               ??3@YAXPAX@Z                                  // 0x006d6ed9    e8ba7f0d00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006d6ede    8b442414
                         add                esp, 0x04                                     // 0x006d6ee2    83c404
                         {disp32} mov       dword ptr [eax + 0x00000408], ebp             // 0x006d6ee5    89a808040000
_jmp_addr_0x006d6eeb:    {disp32} mov       edi, dword ptr [eax + 0x00000404]             // 0x006d6eeb    8bb804040000
                         cmp.s              edi, ebp                                      // 0x006d6ef1    3bfd
                         {disp8} je         _jmp_addr_0x006d6f5d                          // 0x006d6ef3    7468
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4f39f4]        // 0x006d6ef5    8b0df499eb00
                         cmp.s              ecx, edi                                      // 0x006d6efb    3bcf
                         {disp8} jne        _jmp_addr_0x006d6f09                          // 0x006d6efd    750a
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x006d6eff    8b4760
                         {disp32} mov       dword ptr [data_bytes + 0x4f39f4], eax        // 0x006d6f02    a3f499eb00
                         {disp8} jmp        _jmp_addr_0x006d6f1f                          // 0x006d6f07    eb16
_jmp_addr_0x006d6f09:    {disp8} mov        eax, dword ptr [ecx + 0x60]                   // 0x006d6f09    8b4160
                         cmp.s              eax, edi                                      // 0x006d6f0c    3bc7
                         {disp8} je         _jmp_addr_0x006d6f19                          // 0x006d6f0e    7409
_jmp_addr_0x006d6f10:    mov.s              ecx, eax                                      // 0x006d6f10    8bc8
                         {disp8} mov        eax, dword ptr [eax + 0x60]                   // 0x006d6f12    8b4060
                         cmp.s              eax, edi                                      // 0x006d6f15    3bc7
                         {disp8} jne        _jmp_addr_0x006d6f10                          // 0x006d6f17    75f7
_jmp_addr_0x006d6f19:    {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x006d6f19    8b5760
                         {disp8} mov        dword ptr [ecx + 0x60], edx                   // 0x006d6f1c    895160
_jmp_addr_0x006d6f1f:    mov.s              esi, edi                                      // 0x006d6f1f    8bf7
                         mov                ebp, 0x0000000f                               // 0x006d6f21    bd0f000000
_jmp_addr_0x006d6f26:    mov                ebx, dword ptr [esi]                          // 0x006d6f26    8b1e
                         test               ebx, ebx                                      // 0x006d6f28    85db
                         {disp8} je         _jmp_addr_0x006d6f3c                          // 0x006d6f2a    7410
                         mov.s              ecx, ebx                                      // 0x006d6f2c    8bcb
                         call               _jmp_addr_0x00824700                          // 0x006d6f2e    e8cdd71400
                         push               ebx                                           // 0x006d6f33    53
                         call               ??3@YAXPAX@Z                                  // 0x006d6f34    e85f7f0d00
                         add                esp, 0x04                                     // 0x006d6f39    83c404
_jmp_addr_0x006d6f3c:    mov                dword ptr [esi], 0x00000000                   // 0x006d6f3c    c70600000000
                         add                esi, 0x04                                     // 0x006d6f42    83c604
                         dec                ebp                                           // 0x006d6f45    4d
                         {disp8} jne        _jmp_addr_0x006d6f26                          // 0x006d6f46    75de
                         push               edi                                           // 0x006d6f48    57
                         call               ??3@YAXPAX@Z                                  // 0x006d6f49    e84a7f0d00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006d6f4e    8b442414
                         add                esp, 0x04                                     // 0x006d6f52    83c404
                         xor.s              ebp, ebp                                      // 0x006d6f55    33ed
                         {disp32} mov       dword ptr [eax + 0x00000404], ebp             // 0x006d6f57    89a804040000
_jmp_addr_0x006d6f5d:    {disp32} mov       edi, dword ptr [eax + 0x00000400]             // 0x006d6f5d    8bb800040000
                         cmp.s              edi, ebp                                      // 0x006d6f63    3bfd
                         {disp8} je         _jmp_addr_0x006d6fcf                          // 0x006d6f65    7468
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4f39f4]        // 0x006d6f67    8b0df499eb00
                         cmp.s              ecx, edi                                      // 0x006d6f6d    3bcf
                         {disp8} jne        _jmp_addr_0x006d6f7b                          // 0x006d6f6f    750a
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x006d6f71    8b4760
                         {disp32} mov       dword ptr [data_bytes + 0x4f39f4], eax        // 0x006d6f74    a3f499eb00
                         {disp8} jmp        _jmp_addr_0x006d6f91                          // 0x006d6f79    eb16
_jmp_addr_0x006d6f7b:    {disp8} mov        eax, dword ptr [ecx + 0x60]                   // 0x006d6f7b    8b4160
                         cmp.s              eax, edi                                      // 0x006d6f7e    3bc7
                         {disp8} je         _jmp_addr_0x006d6f8b                          // 0x006d6f80    7409
_jmp_addr_0x006d6f82:    mov.s              ecx, eax                                      // 0x006d6f82    8bc8
                         {disp8} mov        eax, dword ptr [eax + 0x60]                   // 0x006d6f84    8b4060
                         cmp.s              eax, edi                                      // 0x006d6f87    3bc7
                         {disp8} jne        _jmp_addr_0x006d6f82                          // 0x006d6f89    75f7
_jmp_addr_0x006d6f8b:    {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x006d6f8b    8b5760
                         {disp8} mov        dword ptr [ecx + 0x60], edx                   // 0x006d6f8e    895160
_jmp_addr_0x006d6f91:    mov.s              esi, edi                                      // 0x006d6f91    8bf7
                         mov                ebp, 0x0000000f                               // 0x006d6f93    bd0f000000
_jmp_addr_0x006d6f98:    mov                ebx, dword ptr [esi]                          // 0x006d6f98    8b1e
                         test               ebx, ebx                                      // 0x006d6f9a    85db
                         {disp8} je         _jmp_addr_0x006d6fae                          // 0x006d6f9c    7410
                         mov.s              ecx, ebx                                      // 0x006d6f9e    8bcb
                         call               _jmp_addr_0x00824700                          // 0x006d6fa0    e85bd71400
                         push               ebx                                           // 0x006d6fa5    53
                         call               ??3@YAXPAX@Z                                  // 0x006d6fa6    e8ed7e0d00
                         add                esp, 0x04                                     // 0x006d6fab    83c404
_jmp_addr_0x006d6fae:    mov                dword ptr [esi], 0x00000000                   // 0x006d6fae    c70600000000
                         add                esi, 0x04                                     // 0x006d6fb4    83c604
                         dec                ebp                                           // 0x006d6fb7    4d
                         {disp8} jne        _jmp_addr_0x006d6f98                          // 0x006d6fb8    75de
                         push               edi                                           // 0x006d6fba    57
                         call               ??3@YAXPAX@Z                                  // 0x006d6fbb    e8d87e0d00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006d6fc0    8b442414
                         add                esp, 0x04                                     // 0x006d6fc4    83c404
                         xor.s              ebp, ebp                                      // 0x006d6fc7    33ed
                         {disp32} mov       dword ptr [eax + 0x00000400], ebp             // 0x006d6fc9    89a800040000
_jmp_addr_0x006d6fcf:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006d6fcf    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006d6fd3    8b442418
                         mov                edx, dword ptr [ecx]                          // 0x006d6fd7    8b11
                         push               eax                                           // 0x006d6fd9    50
                         call               dword ptr [edx + 0xc]                         // 0x006d6fda    ff520c
                         pop                edi                                           // 0x006d6fdd    5f
                         pop                esi                                           // 0x006d6fde    5e
                         pop                ebp                                           // 0x006d6fdf    5d
                         pop                ebx                                           // 0x006d6fe0    5b
                         pop                ecx                                           // 0x006d6fe1    59
                         ret                0x0004                                        // 0x006d6fe2    c20400
                         nop                                                              // 0x006d6fe5    90
                         nop                                                              // 0x006d6fe6    90
                         nop                                                              // 0x006d6fe7    90
                         nop                                                              // 0x006d6fe8    90
                         nop                                                              // 0x006d6fe9    90
                         nop                                                              // 0x006d6fea    90
                         nop                                                              // 0x006d6feb    90
                         nop                                                              // 0x006d6fec    90
                         nop                                                              // 0x006d6fed    90
                         nop                                                              // 0x006d6fee    90
                         nop                                                              // 0x006d6fef    90
?ToBeDeleted@PuzzleGame@@UAEXH@Z:
                         push               ebx                                           // 0x006d6ff0    53
                         push               ebp                                           // 0x006d6ff1    55
                         push               esi                                           // 0x006d6ff2    56
                         mov.s              ebp, ecx                                      // 0x006d6ff3    8be9
                         {disp32} mov       esi, dword ptr [ebp + 0x00000408]             // 0x006d6ff5    8bb508040000
                         xor.s              ebx, ebx                                      // 0x006d6ffb    33db
                         cmp.s              esi, ebx                                      // 0x006d6ffd    3bf3
                         push               edi                                           // 0x006d6fff    57
                         {disp8} je         _jmp_addr_0x006d7028                          // 0x006d7000    7426
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x006d7002    8b7e28
                         cmp.s              edi, ebx                                      // 0x006d7005    3bfb
                         {disp8} je         _jmp_addr_0x006d7019                          // 0x006d7007    7410
                         mov.s              ecx, edi                                      // 0x006d7009    8bcf
                         call               _jmp_addr_0x00829b20                          // 0x006d700b    e8102b1500
                         push               edi                                           // 0x006d7010    57
                         call               ??3@YAXPAX@Z                                  // 0x006d7011    e8827e0d00
                         add                esp, 0x04                                     // 0x006d7016    83c404
_jmp_addr_0x006d7019:    push               esi                                           // 0x006d7019    56
                         call               ??3@YAXPAX@Z                                  // 0x006d701a    e8797e0d00
                         add                esp, 0x04                                     // 0x006d701f    83c404
                         {disp32} mov       dword ptr [ebp + 0x00000408], ebx             // 0x006d7022    899d08040000
_jmp_addr_0x006d7028:    {disp32} mov       esi, dword ptr [ebp + 0x00000404]             // 0x006d7028    8bb504040000
                         cmp.s              esi, ebx                                      // 0x006d702e    3bf3
                         {disp8} je         _jmp_addr_0x006d708d                          // 0x006d7030    745b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4f39f4]        // 0x006d7032    8b0df499eb00
                         cmp.s              ecx, esi                                      // 0x006d7038    3bce
                         {disp8} jne        _jmp_addr_0x006d7046                          // 0x006d703a    750a
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x006d703c    8b4660
                         {disp32} mov       dword ptr [data_bytes + 0x4f39f4], eax        // 0x006d703f    a3f499eb00
                         {disp8} jmp        _jmp_addr_0x006d705c                          // 0x006d7044    eb16
_jmp_addr_0x006d7046:    {disp8} mov        eax, dword ptr [ecx + 0x60]                   // 0x006d7046    8b4160
                         cmp.s              eax, esi                                      // 0x006d7049    3bc6
                         {disp8} je         _jmp_addr_0x006d7056                          // 0x006d704b    7409
_jmp_addr_0x006d704d:    mov.s              ecx, eax                                      // 0x006d704d    8bc8
                         {disp8} mov        eax, dword ptr [eax + 0x60]                   // 0x006d704f    8b4060
                         cmp.s              eax, esi                                      // 0x006d7052    3bc6
                         {disp8} jne        _jmp_addr_0x006d704d                          // 0x006d7054    75f7
_jmp_addr_0x006d7056:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x006d7056    8b5660
                         {disp8} mov        dword ptr [ecx + 0x60], edx                   // 0x006d7059    895160
_jmp_addr_0x006d705c:    mov.s              edi, esi                                      // 0x006d705c    8bfe
                         mov                ebx, 0x0000000f                               // 0x006d705e    bb0f000000
_jmp_addr_0x006d7063:    mov                ecx, dword ptr [edi]                          // 0x006d7063    8b0f
                         test               ecx, ecx                                      // 0x006d7065    85c9
                         {disp8} je         _jmp_addr_0x006d7070                          // 0x006d7067    7407
                         push               0x1                                           // 0x006d7069    6a01
                         call               _jmp_addr_0x006d7170                          // 0x006d706b    e800010000
_jmp_addr_0x006d7070:    mov                dword ptr [edi], 0x00000000                   // 0x006d7070    c70700000000
                         add                edi, 0x04                                     // 0x006d7076    83c704
                         dec                ebx                                           // 0x006d7079    4b
                         {disp8} jne        _jmp_addr_0x006d7063                          // 0x006d707a    75e7
                         push               esi                                           // 0x006d707c    56
                         call               ??3@YAXPAX@Z                                  // 0x006d707d    e8167e0d00
                         add                esp, 0x04                                     // 0x006d7082    83c404
                         xor.s              ebx, ebx                                      // 0x006d7085    33db
                         {disp32} mov       dword ptr [ebp + 0x00000404], ebx             // 0x006d7087    899d04040000
_jmp_addr_0x006d708d:    {disp32} mov       edi, dword ptr [ebp + 0x00000400]             // 0x006d708d    8bbd00040000
                         cmp.s              edi, ebx                                      // 0x006d7093    3bfb
                         {disp8} je         _jmp_addr_0x006d70f2                          // 0x006d7095    745b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4f39f4]        // 0x006d7097    8b0df499eb00
                         cmp.s              ecx, edi                                      // 0x006d709d    3bcf
                         {disp8} jne        _jmp_addr_0x006d70ab                          // 0x006d709f    750a
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x006d70a1    8b4760
                         {disp32} mov       dword ptr [data_bytes + 0x4f39f4], eax        // 0x006d70a4    a3f499eb00
                         {disp8} jmp        _jmp_addr_0x006d70c1                          // 0x006d70a9    eb16
_jmp_addr_0x006d70ab:    {disp8} mov        eax, dword ptr [ecx + 0x60]                   // 0x006d70ab    8b4160
                         cmp.s              eax, edi                                      // 0x006d70ae    3bc7
                         {disp8} je         _jmp_addr_0x006d70bb                          // 0x006d70b0    7409
_jmp_addr_0x006d70b2:    mov.s              ecx, eax                                      // 0x006d70b2    8bc8
                         {disp8} mov        eax, dword ptr [eax + 0x60]                   // 0x006d70b4    8b4060
                         cmp.s              eax, edi                                      // 0x006d70b7    3bc7
                         {disp8} jne        _jmp_addr_0x006d70b2                          // 0x006d70b9    75f7
_jmp_addr_0x006d70bb:    {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x006d70bb    8b5760
                         {disp8} mov        dword ptr [ecx + 0x60], edx                   // 0x006d70be    895160
_jmp_addr_0x006d70c1:    mov.s              esi, edi                                      // 0x006d70c1    8bf7
                         mov                ebx, 0x0000000f                               // 0x006d70c3    bb0f000000
_jmp_addr_0x006d70c8:    mov                ecx, dword ptr [esi]                          // 0x006d70c8    8b0e
                         test               ecx, ecx                                      // 0x006d70ca    85c9
                         {disp8} je         _jmp_addr_0x006d70d5                          // 0x006d70cc    7407
                         push               0x1                                           // 0x006d70ce    6a01
                         call               _jmp_addr_0x006d7170                          // 0x006d70d0    e89b000000
_jmp_addr_0x006d70d5:    mov                dword ptr [esi], 0x00000000                   // 0x006d70d5    c70600000000
                         add                esi, 0x04                                     // 0x006d70db    83c604
                         dec                ebx                                           // 0x006d70de    4b
                         {disp8} jne        _jmp_addr_0x006d70c8                          // 0x006d70df    75e7
                         push               edi                                           // 0x006d70e1    57
                         call               ??3@YAXPAX@Z                                  // 0x006d70e2    e8b17d0d00
                         add                esp, 0x04                                     // 0x006d70e7    83c404
                         xor.s              ebx, ebx                                      // 0x006d70ea    33db
                         {disp32} mov       dword ptr [ebp + 0x00000400], ebx             // 0x006d70ec    899d00040000
_jmp_addr_0x006d70f2:    cmp                dword ptr [ebp + 0x48], 0x03                  // 0x006d70f2    837d4803
                         {disp8} jne        _jmp_addr_0x006d7112                          // 0x006d70f6    751a
                         {disp32} lea       ecx, dword ptr [ebp + 0x000003bc]             // 0x006d70f8    8d8dbc030000
                         mov                edx, 0x00000004                               // 0x006d70fe    ba04000000
_jmp_addr_0x006d7103:    mov                eax, dword ptr [ecx]                          // 0x006d7103    8b01
                         cmp.s              eax, ebx                                      // 0x006d7105    3bc3
                         {disp8} je         _jmp_addr_0x006d710c                          // 0x006d7107    7403
                         {disp8} mov        dword ptr [eax + 0x7c], ebx                   // 0x006d7109    89587c
_jmp_addr_0x006d710c:    add                ecx, 0x4                                      // 0x006d710c    83c104
                         dec                edx                                           // 0x006d710f    4a
                         {disp8} jne        _jmp_addr_0x006d7103                          // 0x006d7110    75f1
_jmp_addr_0x006d7112:    {disp32} mov       eax, dword ptr [_game]                        // 0x006d7112    a15c19d000
                         {disp32} lea       edx, dword ptr [eax + 0x00205d14]             // 0x006d7117    8d90145d2000
                         mov                eax, dword ptr [edx]                          // 0x006d711d    8b02
                         cmp.s              eax, ebp                                      // 0x006d711f    3bc5
                         {disp8} jne        _jmp_addr_0x006d712a                          // 0x006d7121    7507
                         {disp8} mov        ecx, dword ptr [ebp + 0x2c]                   // 0x006d7123    8b4d2c
                         mov                dword ptr [edx], ecx                          // 0x006d7126    890a
                         {disp8} jmp        _jmp_addr_0x006d7154                          // 0x006d7128    eb2a
_jmp_addr_0x006d712a:    cmp.s              eax, ebx                                      // 0x006d712a    3bc3
                         {disp8} je         _jmp_addr_0x006d715a                          // 0x006d712c    742c
_jmp_addr_0x006d712e:    {disp8} mov        ecx, dword ptr [eax + 0x2c]                   // 0x006d712e    8b482c
                         cmp.s              ecx, ebp                                      // 0x006d7131    3bcd
                         {disp8} je         _jmp_addr_0x006d714e                          // 0x006d7133    7419
                         mov.s              eax, ecx                                      // 0x006d7135    8bc1
                         cmp.s              eax, ebx                                      // 0x006d7137    3bc3
                         {disp8} jne        _jmp_addr_0x006d712e                          // 0x006d7139    75f3
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006d713b    8b542414
                         push               edx                                           // 0x006d713f    52
                         mov.s              ecx, ebp                                      // 0x006d7140    8bcd
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x006d7142    e8b98ce9ff
                         pop                edi                                           // 0x006d7147    5f
                         pop                esi                                           // 0x006d7148    5e
                         pop                ebp                                           // 0x006d7149    5d
                         pop                ebx                                           // 0x006d714a    5b
                         ret                0x0004                                        // 0x006d714b    c20400
_jmp_addr_0x006d714e:    {disp8} mov        ecx, dword ptr [ebp + 0x2c]                   // 0x006d714e    8b4d2c
                         {disp8} mov        dword ptr [eax + 0x2c], ecx                   // 0x006d7151    89482c
_jmp_addr_0x006d7154:    dec                dword ptr [edx + 0x04]                        // 0x006d7154    ff4a04
                         {disp8} mov        dword ptr [ebp + 0x2c], ebx                   // 0x006d7157    895d2c
_jmp_addr_0x006d715a:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006d715a    8b542414
                         push               edx                                           // 0x006d715e    52
                         mov.s              ecx, ebp                                      // 0x006d715f    8bcd
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x006d7161    e89a8ce9ff
                         pop                edi                                           // 0x006d7166    5f
                         pop                esi                                           // 0x006d7167    5e
                         pop                ebp                                           // 0x006d7168    5d
                         pop                ebx                                           // 0x006d7169    5b
                         ret                0x0004                                        // 0x006d716a    c20400
                         nop                                                              // 0x006d716d    90
                         nop                                                              // 0x006d716e    90
                         nop                                                              // 0x006d716f    90
_jmp_addr_0x006d7170:    push               esi                                           // 0x006d7170    56
                         mov.s              esi, ecx                                      // 0x006d7171    8bf1
                         call               _jmp_addr_0x00824700                          // 0x006d7173    e888d51400
                         test               byte ptr [esp + 0x08], 0x01                   // 0x006d7178    f644240801
                         {disp8} je         _jmp_addr_0x006d7188                          // 0x006d717d    7409
                         push               esi                                           // 0x006d717f    56
                         call               ??3@YAXPAX@Z                                  // 0x006d7180    e8137d0d00
                         add                esp, 0x04                                     // 0x006d7185    83c404
_jmp_addr_0x006d7188:    mov.s              eax, esi                                      // 0x006d7188    8bc6
                         pop                esi                                           // 0x006d718a    5e
                         ret                0x0004                                        // 0x006d718b    c20400
                         nop                                                              // 0x006d718e    90
                         nop                                                              // 0x006d718f    90
_jmp_addr_0x006d7190:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x006d7190    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006d7194    d81d98a38a00
                         fnstsw             ax                                            // 0x006d719a    dfe0
                         test               ah, 0x01                                      // 0x006d719c    f6c401
                         {disp8} jne        _jmp_addr_0x006d71b0                          // 0x006d719f    750f
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x006d71a1    d9442404
                         {disp32} fadd      qword ptr [__real@3fe0000000000000]           // 0x006d71a5    dc0560b28a00
                         {disp32} jmp       _jmp_addr_0x007a1400                          // 0x006d71ab    e950a20c00
_jmp_addr_0x006d71b0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x006d71b0    d9442404
                         push               ecx                                           // 0x006d71b4    51
                         fchs                                                             // 0x006d71b5    d9e0
                         fstp               dword ptr [esp]                               // 0x006d71b7    d91c24
                         call               _jmp_addr_0x006d7190                          // 0x006d71ba    e8d1ffffff
                         add                esp, 0x04                                     // 0x006d71bf    83c404
                         neg                eax                                           // 0x006d71c2    f7d8
                         ret                                                              // 0x006d71c4    c3
                         nop                                                              // 0x006d71c5    90
                         nop                                                              // 0x006d71c6    90
                         nop                                                              // 0x006d71c7    90
                         nop                                                              // 0x006d71c8    90
                         nop                                                              // 0x006d71c9    90
                         nop                                                              // 0x006d71ca    90
                         nop                                                              // 0x006d71cb    90
                         nop                                                              // 0x006d71cc    90
                         nop                                                              // 0x006d71cd    90
                         nop                                                              // 0x006d71ce    90
                         nop                                                              // 0x006d71cf    90
_jmp_addr_0x006d71d0:    sub                esp, 0x20                                     // 0x006d71d0    83ec20
                         push               ebx                                           // 0x006d71d3    53
                         push               ebp                                           // 0x006d71d4    55
                         push               esi                                           // 0x006d71d5    56
                         push               edi                                           // 0x006d71d6    57
                         mov.s              edi, ecx                                      // 0x006d71d7    8bf9
                         xor.s              ebp, ebp                                      // 0x006d71d9    33ed
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x006d71db    896c2414
                         {disp32} lea       esi, dword ptr [edi + 0x00000240]             // 0x006d71df    8db740020000
_jmp_addr_0x006d71e5:    xor.s              ebx, ebx                                      // 0x006d71e5    33db
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x006d71e7    895c2410
_jmp_addr_0x006d71eb:    {disp32} mov       ecx, dword ptr [esi + -0x00000144]            // 0x006d71eb    8b8ebcfeffff
                         test               ecx, ecx                                      // 0x006d71f1    85c9
                         {disp32} je        _jmp_addr_0x006d727f                          // 0x006d71f3    0f8486000000
                         push               0x0                                           // 0x006d71f9    6a00
                         push               0x0                                           // 0x006d71fb    6a00
                         call               _jmp_addr_0x00639a60                          // 0x006d71fd    e85e28f6ff
                         {disp32} mov       ecx, dword ptr [esi + -0x00000144]            // 0x006d7202    8b8ebcfeffff
                         mov                eax, dword ptr [ecx]                          // 0x006d7208    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d720a    ff502c
                         test               eax, eax                                      // 0x006d720d    85c0
                         {disp8} jne        _jmp_addr_0x006d7224                          // 0x006d720f    7513
                         push               0x1                                           // 0x006d7211    6a01
                         push               ebx                                           // 0x006d7213    53
                         push               ebp                                           // 0x006d7214    55
                         mov.s              ecx, edi                                      // 0x006d7215    8bcf
                         call               _jmp_addr_0x006db020                          // 0x006d7217    e8043e0000
                         {disp32} mov       dword ptr [esi + -0x00000144], eax            // 0x006d721c    8986bcfeffff
                         {disp8} jmp        _jmp_addr_0x006d727f                          // 0x006d7222    eb5b
_jmp_addr_0x006d7224:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006d7224    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006d7228    8b542414
                         inc                ecx                                           // 0x006d722c    41
                         push               ecx                                           // 0x006d722d    51
                         push               edx                                           // 0x006d722e    52
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x006d722f    8d442420
                         push               eax                                           // 0x006d7233    50
                         mov.s              ecx, edi                                      // 0x006d7234    8bcf
                         call               _jmp_addr_0x006d9290                          // 0x006d7236    e855200000
                         {disp32} mov       ecx, dword ptr [esi + -0x00000144]            // 0x006d723b    8b8ebcfeffff
                         push               eax                                           // 0x006d7241    50
                         add                ecx, 0x14                                     // 0x006d7242    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d7245    e866e4f2ff
                         test               eax, eax                                      // 0x006d724a    85c0
                         {disp8} je         _jmp_addr_0x006d727f                          // 0x006d724c    7431
                         {disp32} mov       ecx, dword ptr [esi + -0x00000144]            // 0x006d724e    8b8ebcfeffff
                         push               ecx                                           // 0x006d7254    51
                         call               _jmp_addr_0x005e6540                          // 0x006d7255    e8e6f2f0ff
                         {disp32} mov       ecx, dword ptr [esi + -0x00000144]            // 0x006d725a    8b8ebcfeffff
                         mov                edx, dword ptr [ecx]                          // 0x006d7260    8b11
                         add                esp, 0x04                                     // 0x006d7262    83c404
                         push               0x0                                           // 0x006d7265    6a00
                         call               dword ptr [edx + 0xc]                         // 0x006d7267    ff520c
                         push               0x1                                           // 0x006d726a    6a01
                         push               ebx                                           // 0x006d726c    53
                         push               ebp                                           // 0x006d726d    55
                         mov.s              ecx, edi                                      // 0x006d726e    8bcf
                         call               _jmp_addr_0x006db020                          // 0x006d7270    e8ab3d0000
                         {disp32} mov       dword ptr [esi + -0x00000144], eax            // 0x006d7275    8986bcfeffff
                         or                 byte ptr [eax + 0x25], 0x20                   // 0x006d727b    80482520
_jmp_addr_0x006d727f:    mov                ecx, dword ptr [esi]                          // 0x006d727f    8b0e
                         test               ecx, ecx                                      // 0x006d7281    85c9
                         {disp8} je         _jmp_addr_0x006d72f2                          // 0x006d7283    746d
                         push               0x0                                           // 0x006d7285    6a00
                         push               0x0                                           // 0x006d7287    6a00
                         call               _jmp_addr_0x00639a60                          // 0x006d7289    e8d227f6ff
                         mov                ecx, dword ptr [esi]                          // 0x006d728e    8b0e
                         mov                eax, dword ptr [ecx]                          // 0x006d7290    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d7292    ff502c
                         test               eax, eax                                      // 0x006d7295    85c0
                         {disp8} jne        _jmp_addr_0x006d72a7                          // 0x006d7297    750e
                         push               eax                                           // 0x006d7299    50
                         push               ebx                                           // 0x006d729a    53
                         push               ebp                                           // 0x006d729b    55
                         mov.s              ecx, edi                                      // 0x006d729c    8bcf
                         call               _jmp_addr_0x006db020                          // 0x006d729e    e87d3d0000
                         mov                dword ptr [esi], eax                          // 0x006d72a3    8906
                         {disp8} jmp        _jmp_addr_0x006d72f2                          // 0x006d72a5    eb4b
_jmp_addr_0x006d72a7:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006d72a7    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006d72ab    8b542414
                         push               ecx                                           // 0x006d72af    51
                         inc                edx                                           // 0x006d72b0    42
                         push               edx                                           // 0x006d72b1    52
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x006d72b2    8d44242c
                         push               eax                                           // 0x006d72b6    50
                         mov.s              ecx, edi                                      // 0x006d72b7    8bcf
                         call               _jmp_addr_0x006d9290                          // 0x006d72b9    e8d21f0000
                         mov                ecx, dword ptr [esi]                          // 0x006d72be    8b0e
                         push               eax                                           // 0x006d72c0    50
                         add                ecx, 0x14                                     // 0x006d72c1    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d72c4    e8e7e3f2ff
                         test               eax, eax                                      // 0x006d72c9    85c0
                         {disp8} je         _jmp_addr_0x006d72f2                          // 0x006d72cb    7425
                         mov                ecx, dword ptr [esi]                          // 0x006d72cd    8b0e
                         push               ecx                                           // 0x006d72cf    51
                         call               _jmp_addr_0x005e6540                          // 0x006d72d0    e86bf2f0ff
                         mov                ecx, dword ptr [esi]                          // 0x006d72d5    8b0e
                         mov                edx, dword ptr [ecx]                          // 0x006d72d7    8b11
                         add                esp, 0x04                                     // 0x006d72d9    83c404
                         push               0x0                                           // 0x006d72dc    6a00
                         call               dword ptr [edx + 0xc]                         // 0x006d72de    ff520c
                         push               0x0                                           // 0x006d72e1    6a00
                         push               ebx                                           // 0x006d72e3    53
                         push               ebp                                           // 0x006d72e4    55
                         mov.s              ecx, edi                                      // 0x006d72e5    8bcf
                         call               _jmp_addr_0x006db020                          // 0x006d72e7    e8343d0000
                         mov                dword ptr [esi], eax                          // 0x006d72ec    8906
                         or                 byte ptr [eax + 0x25], 0x20                   // 0x006d72ee    80482520
_jmp_addr_0x006d72f2:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006d72f2    8b442410
                         add                eax, 0x02                                     // 0x006d72f6    83c002
                         inc                ebx                                           // 0x006d72f9    43
                         add                esi, 0x04                                     // 0x006d72fa    83c604
                         cmp                eax, 0x12                                     // 0x006d72fd    83f812
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006d7300    89442410
                         {disp32} jl        _jmp_addr_0x006d71eb                          // 0x006d7304    0f8ce1feffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006d730a    8b442414
                         add                eax, 0x02                                     // 0x006d730e    83c002
                         inc                ebp                                           // 0x006d7311    45
                         cmp                eax, 0x12                                     // 0x006d7312    83f812
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006d7315    89442414
                         {disp32} jl        _jmp_addr_0x006d71e5                          // 0x006d7319    0f8cc6feffff
                         pop                edi                                           // 0x006d731f    5f
                         pop                esi                                           // 0x006d7320    5e
                         pop                ebp                                           // 0x006d7321    5d
                         pop                ebx                                           // 0x006d7322    5b
                         add                esp, 0x20                                     // 0x006d7323    83c420
                         ret                                                              // 0x006d7326    c3
                         nop                                                              // 0x006d7327    90
                         nop                                                              // 0x006d7328    90
                         nop                                                              // 0x006d7329    90
                         nop                                                              // 0x006d732a    90
                         nop                                                              // 0x006d732b    90
                         nop                                                              // 0x006d732c    90
                         nop                                                              // 0x006d732d    90
                         nop                                                              // 0x006d732e    90
                         nop                                                              // 0x006d732f    90
_jmp_addr_0x006d7330:    sub                esp, 0x00000168                               // 0x006d7330    81ec68010000
                         push               esi                                           // 0x006d7336    56
                         {disp32} mov       esi, dword ptr [esp + 0x00000170]             // 0x006d7337    8bb42470010000
                         mov                eax, dword ptr [esi]                          // 0x006d733e    8b06
                         {disp8} mov        edx, dword ptr [eax + 0x28]                   // 0x006d7340    8b5028
                         push               0x3f800000                                    // 0x006d7343    680000803f
                         push               0x0                                           // 0x006d7348    6a00
                         push               0x0                                           // 0x006d734a    6a00
                         push               edx                                           // 0x006d734c    52
                         add                eax, 0x68                                     // 0x006d734d    83c068
                         push               eax                                           // 0x006d7350    50
                         push               ecx                                           // 0x006d7351    51
                         call               _jmp_addr_0x006db8a0                          // 0x006d7352    e849450000
                         mov                ecx, dword ptr [esi]                          // 0x006d7357    8b0e
                         {disp8} mov        edx, dword ptr [ecx + 0x78]                   // 0x006d7359    8b5178
                         {disp8} mov        dword ptr [eax + 0x78], edx                   // 0x006d735c    895078
                         mov                ecx, dword ptr [esi]                          // 0x006d735f    8b0e
                         {disp8} mov        ecx, dword ptr [ecx + 0x74]                   // 0x006d7361    8b4974
                         add                esp, 0x18                                     // 0x006d7364    83c418
                         test               ecx, ecx                                      // 0x006d7367    85c9
                         {disp8} mov        dword ptr [eax + 0x74], ecx                   // 0x006d7369    894874
                         {disp8} je         _jmp_addr_0x006d7371                          // 0x006d736c    7403
                         {disp8} mov        dword ptr [ecx + 0x78], eax                   // 0x006d736e    894178
_jmp_addr_0x006d7371:    {disp8} mov        ecx, dword ptr [eax + 0x78]                   // 0x006d7371    8b4878
                         test               ecx, ecx                                      // 0x006d7374    85c9
                         {disp8} je         _jmp_addr_0x006d737b                          // 0x006d7376    7403
                         {disp8} mov        dword ptr [ecx + 0x74], eax                   // 0x006d7378    894174
_jmp_addr_0x006d737b:    mov                dword ptr [esi], eax                          // 0x006d737b    8906
                         mov                edx, dword ptr [eax]                          // 0x006d737d    8b10
                         push               0x1                                           // 0x006d737f    6a01
                         mov.s              ecx, eax                                      // 0x006d7381    8bc8
                         call               dword ptr [edx + 0x440]                       // 0x006d7383    ff9240040000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006d7389    8d4c2404
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x006d738d    ff155c978a00
                         {disp32} mov       eax, dword ptr [_global]                      // 0x006d7393    a1203bcd00
                         {disp32} mov       ecx, dword ptr [eax + 0x000003b0]             // 0x006d7398    8b88b0030000
                         push               0x9                                           // 0x006d739e    6a09
                         push               0x0000019d                                    // 0x006d73a0    689d010000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006d73a5    894c2410
                         call               _jmp_addr_0x0071ed40                          // 0x006d73a9    e892790400
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x006d73ae    8b0d203bcd00
                         add                esp, 0x08                                     // 0x006d73b4    83c408
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006d73b7    8d542404
                         push               edx                                           // 0x006d73bb    52
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x006d73bc    8944242c
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x006d73c0    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x006d73c8    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x006d73d0    c744241000000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x006d73d8    e8532ad5ff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006d73dd    8d4c2404
                         call               dword ptr [rdata_bytes + 0x758]               // 0x006d73e1    ff1558978a00
                         pop                esi                                           // 0x006d73e7    5e
                         add                esp, 0x00000168                               // 0x006d73e8    81c468010000
                         ret                0x0004                                        // 0x006d73ee    c20400
                         nop                                                              // 0x006d73f1    90
                         nop                                                              // 0x006d73f2    90
                         nop                                                              // 0x006d73f3    90
                         nop                                                              // 0x006d73f4    90
                         nop                                                              // 0x006d73f5    90
                         nop                                                              // 0x006d73f6    90
                         nop                                                              // 0x006d73f7    90
                         nop                                                              // 0x006d73f8    90
                         nop                                                              // 0x006d73f9    90
                         nop                                                              // 0x006d73fa    90
                         nop                                                              // 0x006d73fb    90
                         nop                                                              // 0x006d73fc    90
                         nop                                                              // 0x006d73fd    90
                         nop                                                              // 0x006d73fe    90
                         nop                                                              // 0x006d73ff    90
_jmp_addr_0x006d7400:    sub                esp, 0x0c                                     // 0x006d7400    83ec0c
                         push               esi                                           // 0x006d7403    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x006d7404    8b742414
                         mov                eax, dword ptr [esi]                          // 0x006d7408    8b06
                         {disp8} lea        ecx, dword ptr [eax + 0x14]                   // 0x006d740a    8d4814
                         mov                edx, dword ptr [ecx]                          // 0x006d740d    8b11
                         {disp8} mov        dword ptr [esp + 0x04], edx                   // 0x006d740f    89542404
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x006d7413    8b5104
                         push               0x0                                           // 0x006d7416    6a00
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x006d7418    8954240c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x243860]        // 0x006d741c    8b156098c000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x006d7422    8b4908
                         push               0x3f800000                                    // 0x006d7425    680000803f
                         push               edx                                           // 0x006d742a    52
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x006d742b    894c2418
                         push               0x0                                           // 0x006d742f    6a00
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x006d7431    c744241c00000000
                         {disp8} mov        eax, dword ptr [eax + 0x28]                   // 0x006d7439    8b4028
                         push               0x0                                           // 0x006d743c    6a00
                         push               eax                                           // 0x006d743e    50
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x006d743f    8d44241c
                         push               eax                                           // 0x006d7443    50
                         call               _jmp_addr_0x006da550                          // 0x006d7444    e807310000
                         mov                ecx, dword ptr [esi]                          // 0x006d7449    8b0e
                         {disp32} mov       edx, dword ptr [ecx + 0x000000e4]             // 0x006d744b    8b91e4000000
                         {disp32} mov       dword ptr [eax + 0x000000e4], edx             // 0x006d7451    8990e4000000
                         mov                ecx, dword ptr [esi]                          // 0x006d7457    8b0e
                         {disp32} mov       edx, dword ptr [ecx + 0x000000e8]             // 0x006d7459    8b91e8000000
                         {disp32} mov       dword ptr [eax + 0x000000e8], edx             // 0x006d745f    8990e8000000
                         add                esp, 0x1c                                     // 0x006d7465    83c41c
                         mov                dword ptr [esi], eax                          // 0x006d7468    8906
                         mov                edx, dword ptr [eax]                          // 0x006d746a    8b10
                         or                 byte ptr [eax + 0x25], 0x10                   // 0x006d746c    80482510
                         push               0x1                                           // 0x006d7470    6a01
                         mov.s              ecx, eax                                      // 0x006d7472    8bc8
                         call               dword ptr [edx + 0x440]                       // 0x006d7474    ff9240040000
                         pop                esi                                           // 0x006d747a    5e
                         add                esp, 0x0c                                     // 0x006d747b    83c40c
                         ret                                                              // 0x006d747e    c3
                         nop                                                              // 0x006d747f    90
_jmp_addr_0x006d7480:    sub                esp, 0x0000023c                               // 0x006d7480    81ec3c020000
                         push               ebx                                           // 0x006d7486    53
                         push               ebp                                           // 0x006d7487    55
                         push               esi                                           // 0x006d7488    56
                         mov.s              esi, ecx                                      // 0x006d7489    8bf1
                         push               edi                                           // 0x006d748b    57
                         {disp32} lea       edi, dword ptr [esi + 0x000000d4]             // 0x006d748c    8dbed4000000
                         mov                ebx, 0x00000004                               // 0x006d7492    bb04000000
_jmp_addr_0x006d7497:    {disp8} mov        ecx, dword ptr [edi + -0x10]                  // 0x006d7497    8b4ff0
                         xor.s              ebp, ebp                                      // 0x006d749a    33ed
                         cmp.s              ecx, ebp                                      // 0x006d749c    3bcd
                         {disp8} je         _jmp_addr_0x006d74ac                          // 0x006d749e    740c
                         mov                eax, dword ptr [ecx]                          // 0x006d74a0    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d74a2    ff502c
                         test               eax, eax                                      // 0x006d74a5    85c0
                         {disp8} jne        _jmp_addr_0x006d74ac                          // 0x006d74a7    7503
                         {disp8} mov        dword ptr [edi + -0x10], ebp                  // 0x006d74a9    896ff0
_jmp_addr_0x006d74ac:    mov                ecx, dword ptr [edi]                          // 0x006d74ac    8b0f
                         cmp.s              ecx, ebp                                      // 0x006d74ae    3bcd
                         {disp8} je         _jmp_addr_0x006d74bd                          // 0x006d74b0    740b
                         mov                edx, dword ptr [ecx]                          // 0x006d74b2    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x006d74b4    ff522c
                         test               eax, eax                                      // 0x006d74b7    85c0
                         {disp8} jne        _jmp_addr_0x006d74bd                          // 0x006d74b9    7502
                         mov                dword ptr [edi], ebp                          // 0x006d74bb    892f
_jmp_addr_0x006d74bd:    add                edi, 0x04                                     // 0x006d74bd    83c704
                         dec                ebx                                           // 0x006d74c0    4b
                         {disp8} jne        _jmp_addr_0x006d7497                          // 0x006d74c1    75d4
                         cmp                dword ptr [esi + 0x3c], ebp                   // 0x006d74c3    396e3c
                         {disp32} jne       _jmp_addr_0x006d8a8c                          // 0x006d74c6    0f85c0150000
                         mov.s              ecx, esi                                      // 0x006d74cc    8bce
                         call               _jmp_addr_0x006d66e0                          // 0x006d74ce    e80df2ffff
                         test               eax, eax                                      // 0x006d74d3    85c0
                         {disp8} je         _jmp_addr_0x006d74e9                          // 0x006d74d5    7412
                         pop                edi                                           // 0x006d74d7    5f
                         {disp8} mov        dword ptr [esi + 0x3c], 0x00000001            // 0x006d74d8    c7463c01000000
                         pop                esi                                           // 0x006d74df    5e
                         pop                ebp                                           // 0x006d74e0    5d
                         pop                ebx                                           // 0x006d74e1    5b
                         add                esp, 0x0000023c                               // 0x006d74e2    81c43c020000
                         ret                                                              // 0x006d74e8    c3
_jmp_addr_0x006d74e9:    {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x006d74e9    8b4648
                         dec                eax                                           // 0x006d74ec    48
                         cmp                eax, 0x11                                     // 0x006d74ed    83f811
                         {disp32} ja        _jmp_addr_0x006d8a8c                          // 0x006d74f0    0f8796150000
                         xor.s              ecx, ecx                                      // 0x006d74f6    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x006d8ac0]               // 0x006d74f8    8a88c08a6d00
                         jmp                dword ptr [ecx*4 + 0x6d8a98]                  // 0x006d74fe    ff248d988a6d00
                         mov.s              ecx, esi                                      // 0x006d7505    8bce
                         call               _jmp_addr_0x006d71d0                          // 0x006d7507    e8c4fcffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000003f8]             // 0x006d750c    8b8ef8030000
                         cmp.s              ecx, ebp                                      // 0x006d7512    3bcd
                         {disp32} je        _jmp_addr_0x006d8a8c                          // 0x006d7514    0f8472150000
                         cmp                dword ptr [esi + 0x000003f4], ebp             // 0x006d751a    39aef4030000
                         {disp32} je        _jmp_addr_0x006d8a8c                          // 0x006d7520    0f8466150000
                         mov                edx, dword ptr [ecx]                          // 0x006d7526    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x006d7528    ff522c
                         test               eax, eax                                      // 0x006d752b    85c0
                         {disp8} je         _jmp_addr_0x006d753e                          // 0x006d752d    740f
                         {disp32} mov       ecx, dword ptr [esi + 0x000003f4]             // 0x006d752f    8b8ef4030000
                         mov                eax, dword ptr [ecx]                          // 0x006d7535    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d7537    ff502c
                         test               eax, eax                                      // 0x006d753a    85c0
                         {disp8} jne        _jmp_addr_0x006d7545                          // 0x006d753c    7507
_jmp_addr_0x006d753e:    mov.s              ecx, esi                                      // 0x006d753e    8bce
                         call               _jmp_addr_0x006db160                          // 0x006d7540    e81b3c0000
_jmp_addr_0x006d7545:    {disp32} mov       ecx, dword ptr [esi + 0x000003f8]             // 0x006d7545    8b8ef8030000
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x006d754b    e8a0b2f1ff
                         cmp                al, 0x01                                      // 0x006d7550    3c01
                         mov                ebp, 0x00000001                               // 0x006d7552    bd01000000
                         {disp32} je        _jmp_addr_0x006d781d                          // 0x006d7557    0f84c0020000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003f4]             // 0x006d755d    8b8ef4030000
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x006d7563    e888b2f1ff
                         cmp                al, 0x01                                      // 0x006d7568    3c01
                         {disp32} je        _jmp_addr_0x006d781d                          // 0x006d756a    0f84ad020000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003e8]             // 0x006d7570    8b8ee8030000
                         {disp32} mov       eax, dword ptr [esi + 0x000003e4]             // 0x006d7576    8b86e4030000
                         {disp8} lea        edx, dword ptr [ecx + ecx * 0x1 + 0x01]       // 0x006d757c    8d540901
                         push               edx                                           // 0x006d7580    52
                         {disp8} lea        ecx, dword ptr [eax + eax * 0x1 + 0x01]       // 0x006d7581    8d4c0001
                         push               ecx                                           // 0x006d7585    51
                         {disp8} lea        edx, dword ptr [esp + 0x68]                   // 0x006d7586    8d542468
                         push               edx                                           // 0x006d758a    52
                         mov.s              ecx, esi                                      // 0x006d758b    8bce
                         call               _jmp_addr_0x006d9290                          // 0x006d758d    e8fe1c0000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003f8]             // 0x006d7592    8b8ef8030000
                         push               eax                                           // 0x006d7598    50
                         add                ecx, 0x14                                     // 0x006d7599    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d759c    e80fe1f2ff
                         test               eax, eax                                      // 0x006d75a1    85c0
                         {disp8} je         _jmp_addr_0x006d75df                          // 0x006d75a3    743a
                         {disp32} mov       eax, dword ptr [esi + 0x000003f8]             // 0x006d75a5    8b86f8030000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003e8]             // 0x006d75ab    8b8ee8030000
                         mov                edi, dword ptr [eax]                          // 0x006d75b1    8b38
                         {disp32} mov       eax, dword ptr [esi + 0x000003e4]             // 0x006d75b3    8b86e4030000
                         {disp8} lea        edx, dword ptr [ecx + ecx * 0x1 + 0x01]       // 0x006d75b9    8d540901
                         push               edx                                           // 0x006d75bd    52
                         {disp8} lea        ecx, dword ptr [eax + eax * 0x1 + 0x01]       // 0x006d75be    8d4c0001
                         push               ecx                                           // 0x006d75c2    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000c8]             // 0x006d75c3    8d9424c8000000
                         push               edx                                           // 0x006d75ca    52
                         mov.s              ecx, esi                                      // 0x006d75cb    8bce
                         call               _jmp_addr_0x006d9290                          // 0x006d75cd    e8be1c0000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003f8]             // 0x006d75d2    8b8ef8030000
                         push               eax                                           // 0x006d75d8    50
                         call               dword ptr [edi + 0x55c]                       // 0x006d75d9    ff975c050000
_jmp_addr_0x006d75df:    xor.s              ebx, ebx                                      // 0x006d75df    33db
                         {disp32} lea       edi, dword ptr [esi + 0x00000398]             // 0x006d75e1    8dbe98030000
_jmp_addr_0x006d75e7:    mov                ecx, dword ptr [edi]                          // 0x006d75e7    8b0f
                         test               ecx, ecx                                      // 0x006d75e9    85c9
                         {disp8} je         _jmp_addr_0x006d75ff                          // 0x006d75eb    7412
                         mov                eax, dword ptr [ecx]                          // 0x006d75ed    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d75ef    ff502c
                         test               eax, eax                                      // 0x006d75f2    85c0
                         {disp8} jne        _jmp_addr_0x006d75ff                          // 0x006d75f4    7509
                         push               edi                                           // 0x006d75f6    57
                         call               _jmp_addr_0x006d7400                          // 0x006d75f7    e804feffff
                         add                esp, 0x04                                     // 0x006d75fc    83c404
_jmp_addr_0x006d75ff:    mov                ecx, dword ptr [edi]                          // 0x006d75ff    8b0f
                         {disp32} mov       eax, dword ptr [ecx + 0x000000e8]             // 0x006d7601    8b81e8000000
                         test               eax, eax                                      // 0x006d7607    85c0
                         {disp8} jne        _jmp_addr_0x006d7619                          // 0x006d7609    750e
                         inc                ebx                                           // 0x006d760b    43
                         add                edi, 0x04                                     // 0x006d760c    83c704
                         cmp                ebx, 0x04                                     // 0x006d760f    83fb04
                         {disp8} jl         _jmp_addr_0x006d75e7                          // 0x006d7612    7cd3
                         {disp32} jmp       _jmp_addr_0x006d7782                          // 0x006d7614    e969010000
_jmp_addr_0x006d7619:    {disp32} mov       edx, dword ptr [esi + ebx * 0x4 + 0x00000398] // 0x006d7619    8b949e98030000
                         push               0x0                                           // 0x006d7620    6a00
                         push               0x3                                           // 0x006d7622    6a03
                         {disp32} lea       edi, dword ptr [esi + ebx * 0x4 + 0x00000398] // 0x006d7624    8dbc9e98030000
                         push               0x40000000                                    // 0x006d762b    6800000040
                         add                edx, 0x14                                     // 0x006d7630    83c214
                         push               0xc                                           // 0x006d7633    6a0c
                         push               edx                                           // 0x006d7635    52
                         call               _jmp_addr_0x0063e580                          // 0x006d7636    e8456ff6ff
                         add                esp, 0x14                                     // 0x006d763b    83c414
                         {disp32} lea       ecx, dword ptr [esp + 0x000000e4]             // 0x006d763e    8d8c24e4000000
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x006d7645    ff155c978a00
                         {disp32} mov       eax, dword ptr [_global]                      // 0x006d764b    a1203bcd00
                         {disp32} mov       ecx, dword ptr [eax + 0x000003bc]             // 0x006d7650    8b88bc030000
                         {disp32} mov       dword ptr [esp + 0x000000e8], ecx             // 0x006d7656    898c24e8000000
                         mov                ecx, dword ptr [edi]                          // 0x006d765d    8b0f
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x006d765f    8d54241c
                         push               edx                                           // 0x006d7663    52
                         add                ecx, 0x14                                     // 0x006d7664    83c114
                         {disp32} mov       dword ptr [esp + 0x0000010c], 0x0000005c      // 0x006d7667    c784240c0100005c000000
                         {disp32} mov       dword ptr [esp + 0x000000f4], 0x00000000      // 0x006d7672    c78424f400000000000000
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x006d767d    e8bee5f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x006d7682    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x006d7686    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x006d768a    8b542424
                         {disp32} mov       dword ptr [esp + 0x00000114], eax             // 0x006d768e    89842414010000
                         {disp32} lea       eax, dword ptr [esp + 0x000000e4]             // 0x006d7695    8d8424e4000000
                         {disp32} mov       dword ptr [esp + 0x00000118], ecx             // 0x006d769c    898c2418010000
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x006d76a3    8b0d203bcd00
                         push               eax                                           // 0x006d76a9    50
                         {disp32} mov       dword ptr [esp + 0x00000120], edx             // 0x006d76aa    89942420010000
                         {disp32} mov       dword ptr [esp + 0x00000108], edi             // 0x006d76b1    89bc2408010000
                         {disp32} mov       dword ptr [esp + 0x000000f0], ebp             // 0x006d76b8    89ac24f0000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x006d76bf    e86c27d5ff
                         {disp32} mov       ecx, dword ptr [esi + 0x000003f0]             // 0x006d76c4    8b8ef0030000
                         {disp32} mov       edx, dword ptr [esi + 0x000003ec]             // 0x006d76ca    8b96ec030000
                         push               ebx                                           // 0x006d76d0    53
                         push               ecx                                           // 0x006d76d1    51
                         push               edx                                           // 0x006d76d2    52
                         mov.s              ecx, esi                                      // 0x006d76d3    8bce
                         {disp32} mov       dword ptr [esi + 0x00000584], ebp             // 0x006d76d5    89ae84050000
                         call               _jmp_addr_0x006dac60                          // 0x006d76db    e880350000
                         test               eax, eax                                      // 0x006d76e0    85c0
                         {disp32} jne       _jmp_addr_0x006d7775                          // 0x006d76e2    0f858d000000
                         mov                ebp, 0x00000600                               // 0x006d76e8    bd00060000
                         mov                edi, 0x00000400                               // 0x006d76ed    bf00040000
_jmp_addr_0x006d76f2:    cmp                ebx, 0x03                                     // 0x006d76f2    83fb03
                         {disp8} ja         _jmp_addr_0x006d7756                          // 0x006d76f5    775f
                         jmp                dword ptr [ebx*4 + 0x6d8ad4]                  // 0x006d76f7    ff249dd48a6d00
                         {disp32} mov       eax, dword ptr [esi + 0x000003f0]             // 0x006d76fe    8b86f0030000
                         inc                eax                                           // 0x006d7704    40
                         {disp8} mov        word ptr [esi + 0x40], 0x0200                 // 0x006d7705    66c746400002
                         {disp32} mov       dword ptr [esi + 0x000003f0], eax             // 0x006d770b    8986f0030000
                         {disp8} jmp        _jmp_addr_0x006d7750                          // 0x006d7711    eb3d
                         {disp32} mov       ecx, dword ptr [esi + 0x000003ec]             // 0x006d7713    8b8eec030000
                         xor.s              eax, eax                                      // 0x006d7719    33c0
                         inc                ecx                                           // 0x006d771b    41
                         {disp8} mov        word ptr [esi + 0x40], ax                     // 0x006d771c    66894640
                         {disp32} mov       dword ptr [esi + 0x000003ec], ecx             // 0x006d7720    898eec030000
                         {disp8} mov        word ptr [esi + 0x44], ax                     // 0x006d7726    66894644
                         {disp8} jmp        _jmp_addr_0x006d7756                          // 0x006d772a    eb2a
                         {disp32} mov       eax, dword ptr [esi + 0x000003f0]             // 0x006d772c    8b86f0030000
                         dec                eax                                           // 0x006d7732    48
                         {disp8} mov        word ptr [esi + 0x40], bp                     // 0x006d7733    66896e40
                         {disp32} mov       dword ptr [esi + 0x000003f0], eax             // 0x006d7737    8986f0030000
                         {disp8} jmp        _jmp_addr_0x006d7750                          // 0x006d773d    eb11
                         {disp32} mov       eax, dword ptr [esi + 0x000003ec]             // 0x006d773f    8b86ec030000
                         dec                eax                                           // 0x006d7745    48
                         {disp8} mov        word ptr [esi + 0x40], di                     // 0x006d7746    66897e40
                         {disp32} mov       dword ptr [esi + 0x000003ec], eax             // 0x006d774a    8986ec030000
_jmp_addr_0x006d7750:    {disp8} mov        word ptr [esi + 0x44], 0x0000                 // 0x006d7750    66c746440000
_jmp_addr_0x006d7756:    {disp32} mov       eax, dword ptr [esi + 0x000003f0]             // 0x006d7756    8b86f0030000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003ec]             // 0x006d775c    8b8eec030000
                         push               ebx                                           // 0x006d7762    53
                         push               eax                                           // 0x006d7763    50
                         push               ecx                                           // 0x006d7764    51
                         mov.s              ecx, esi                                      // 0x006d7765    8bce
                         call               _jmp_addr_0x006dac60                          // 0x006d7767    e8f4340000
                         test               eax, eax                                      // 0x006d776c    85c0
                         {disp8} je         _jmp_addr_0x006d76f2                          // 0x006d776e    7482
                         mov                ebp, 0x00000001                               // 0x006d7770    bd01000000
_jmp_addr_0x006d7775:    {disp32} lea       ecx, dword ptr [esp + 0x000000e4]             // 0x006d7775    8d8c24e4000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x006d777c    ff1558978a00
_jmp_addr_0x006d7782:    {disp32} mov       ecx, dword ptr [esi + 0x000003f4]             // 0x006d7782    8b8ef4030000
                         mov                edx, dword ptr [ecx]                          // 0x006d7788    8b11
                         xor.s              eax, eax                                      // 0x006d778a    33c0
                         {disp8} mov        ax, word ptr [esi + 0x40]                     // 0x006d778c    668b4640
                         push               eax                                           // 0x006d7790    50
                         call               dword ptr [edx + 0x868]                       // 0x006d7791    ff9268080000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003f4]             // 0x006d7797    8b8ef4030000
                         {disp8} mov        dx, word ptr [esi + 0x40]                     // 0x006d779d    668b5640
                         cmp                dx, word ptr [ecx + 0x5c]                     // 0x006d77a1    663b515c
                         {disp8} jne        _jmp_addr_0x006d7806                          // 0x006d77a5    755f
                         {disp8} mov        ax, word ptr [esi + 0x44]                     // 0x006d77a7    668b4644
                         test               ax, ax                                        // 0x006d77ab    6685c0
                         {disp8} jne        _jmp_addr_0x006d77f0                          // 0x006d77ae    7540
                         push               0x40800000                                    // 0x006d77b0    6800008040
                         call               _jmp_addr_0x0060c110                          // 0x006d77b5    e85649f3ff
                         {disp32} mov       eax, dword ptr [esi + 0x000003f0]             // 0x006d77ba    8b86f0030000
                         {disp32} mov       edx, dword ptr [esi + 0x000003ec]             // 0x006d77c0    8b96ec030000
                         push               0x2b                                          // 0x006d77c6    6a2b
                         {disp8} lea        ecx, dword ptr [eax + eax * 0x1 + 0x01]       // 0x006d77c8    8d4c0001
                         push               ecx                                           // 0x006d77cc    51
                         {disp8} lea        eax, dword ptr [edx + edx * 0x1 + 0x01]       // 0x006d77cd    8d441201
                         push               eax                                           // 0x006d77d1    50
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x006d77d2    8d4c2448
                         push               ecx                                           // 0x006d77d6    51
                         mov.s              ecx, esi                                      // 0x006d77d7    8bce
                         call               _jmp_addr_0x006d9290                          // 0x006d77d9    e8b21a0000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003f4]             // 0x006d77de    8b8ef4030000
                         push               eax                                           // 0x006d77e4    50
                         call               @SetupMoveToPos__6LivingFRC9MapCoordsUc@13    // 0x006d77e5    e846b0f1ff
                         {disp8} mov        word ptr [esi + 0x44], bp                     // 0x006d77ea    66896e44
                         {disp8} jmp        _jmp_addr_0x006d7806                          // 0x006d77ee    eb16
_jmp_addr_0x006d77f0:    cmp.s              ax, bp                                        // 0x006d77f0    663bc5
                         {disp8} jne        _jmp_addr_0x006d7806                          // 0x006d77f3    7511
                         push               0x0                                           // 0x006d77f5    6a00
                         call               @AreWeThere__13MobileWallHugFf@12             // 0x006d77f7    e84435f3ff
                         test               eax, eax                                      // 0x006d77fc    85c0
                         {disp8} je         _jmp_addr_0x006d7806                          // 0x006d77fe    7406
                         {disp8} mov        word ptr [esi + 0x44], 0x0002                 // 0x006d7800    66c746440200
_jmp_addr_0x006d7806:    {disp32} mov       edx, dword ptr [esi + 0x000003a8]             // 0x006d7806    8b96a8030000
                         {disp32} mov       eax, dword ptr [edx + 0x000000e8]             // 0x006d780c    8b82e8000000
                         test               eax, eax                                      // 0x006d7812    85c0
                         {disp8} je         _jmp_addr_0x006d781d                          // 0x006d7814    7407
                         mov.s              ecx, esi                                      // 0x006d7816    8bce
                         call               _jmp_addr_0x006db160                          // 0x006d7818    e843390000
_jmp_addr_0x006d781d:    add                esi, 0x00000398                               // 0x006d781d    81c698030000
                         mov                eax, 0x00000005                               // 0x006d7823    b805000000
                         xor.s              ecx, ecx                                      // 0x006d7828    33c9
_jmp_addr_0x006d782a:    mov                edx, dword ptr [esi]                          // 0x006d782a    8b16
                         add                esi, 0x04                                     // 0x006d782c    83c604
                         dec                eax                                           // 0x006d782f    48
                         {disp32} mov       dword ptr [edx + 0x000000e8], ecx             // 0x006d7830    898ae8000000
                         {disp8} jne        _jmp_addr_0x006d782a                          // 0x006d7836    75f2
                         pop                edi                                           // 0x006d7838    5f
                         pop                esi                                           // 0x006d7839    5e
                         pop                ebp                                           // 0x006d783a    5d
                         pop                ebx                                           // 0x006d783b    5b
                         add                esp, 0x0000023c                               // 0x006d783c    81c43c020000
                         ret                                                              // 0x006d7842    c3
                         xor.s              ebp, ebp                                      // 0x006d7843    33ed
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x006d7845    896c2414
                         {disp8} lea        edi, dword ptr [esi + 0x58]                   // 0x006d7849    8d7e58
_jmp_addr_0x006d784c:    xor.s              ebx, ebx                                      // 0x006d784c    33db
_jmp_addr_0x006d784e:    {disp8} mov        ecx, dword ptr [edi + 0x24]                   // 0x006d784e    8b4f24
                         test               ecx, ecx                                      // 0x006d7851    85c9
                         {disp8} je         _jmp_addr_0x006d7861                          // 0x006d7853    740c
                         mov                eax, dword ptr [ecx]                          // 0x006d7855    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d7857    ff502c
                         test               eax, eax                                      // 0x006d785a    85c0
                         {disp8} jne        _jmp_addr_0x006d7861                          // 0x006d785c    7503
                         {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x006d785e    894724
_jmp_addr_0x006d7861:    {disp8} mov        ecx, dword ptr [edi + 0x48]                   // 0x006d7861    8b4f48
                         test               ecx, ecx                                      // 0x006d7864    85c9
                         {disp8} je         _jmp_addr_0x006d7874                          // 0x006d7866    740c
                         mov                edx, dword ptr [ecx]                          // 0x006d7868    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x006d786a    ff522c
                         test               eax, eax                                      // 0x006d786d    85c0
                         {disp8} jne        _jmp_addr_0x006d7874                          // 0x006d786f    7503
                         {disp8} mov        dword ptr [edi + 0x48], eax                   // 0x006d7871    894748
_jmp_addr_0x006d7874:    mov                ecx, dword ptr [edi]                          // 0x006d7874    8b0f
                         test               ecx, ecx                                      // 0x006d7876    85c9
                         {disp8} je         _jmp_addr_0x006d78d6                          // 0x006d7878    745c
                         mov                eax, dword ptr [ecx]                          // 0x006d787a    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d787c    ff502c
                         test               eax, eax                                      // 0x006d787f    85c0
                         {disp8} je         _jmp_addr_0x006d78fc                          // 0x006d7881    7479
                         push               ebx                                           // 0x006d7883    53
                         push               ebp                                           // 0x006d7884    55
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b0]             // 0x006d7885    8d8c24b0000000
                         push               ecx                                           // 0x006d788c    51
                         mov.s              ecx, esi                                      // 0x006d788d    8bce
                         call               _jmp_addr_0x006d9290                          // 0x006d788f    e8fc190000
                         mov                ecx, dword ptr [edi]                          // 0x006d7894    8b0f
                         push               eax                                           // 0x006d7896    50
                         add                ecx, 0x14                                     // 0x006d7897    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d789a    e811def2ff
                         test               eax, eax                                      // 0x006d789f    85c0
                         {disp8} jne        _jmp_addr_0x006d78fc                          // 0x006d78a1    7559
                         mov                edx, dword ptr [edi]                          // 0x006d78a3    8b17
                         mov.s              ebp, edx                                      // 0x006d78a5    8bea
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006d78a7    8b4500
                         mov.s              ecx, ebp                                      // 0x006d78aa    8bcd
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x006d78ac    8954242c
                         call               dword ptr [eax + 0x120]                       // 0x006d78b0    ff9020010000
                         {disp8} fcomp      dword ptr [ebp + 0x64]                        // 0x006d78b6    d85d64
                         fnstsw             ax                                            // 0x006d78b9    dfe0
                         test               ah, 0x01                                      // 0x006d78bb    f6c401
                         {disp8} je         _jmp_addr_0x006d78d2                          // 0x006d78be    7412
                         push               0x0                                           // 0x006d78c0    6a00
                         push               0x1                                           // 0x006d78c2    6a01
                         push               0x3d4ccccd                                    // 0x006d78c4    68cdcc4c3d
                         mov.s              ecx, ebp                                      // 0x006d78c9    8bcd
                         call               _jmp_addr_0x0074a3f0                          // 0x006d78cb    e8202b0700
                         fstp               st(0)                                         // 0x006d78d0    ddd8
_jmp_addr_0x006d78d2:    {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x006d78d2    8b6c2414
_jmp_addr_0x006d78d6:    inc                ebx                                           // 0x006d78d6    43
                         add                edi, 0x04                                     // 0x006d78d7    83c704
                         cmp                ebx, 0x03                                     // 0x006d78da    83fb03
                         {disp32} jl        _jmp_addr_0x006d784e                          // 0x006d78dd    0f8c6bffffff
                         inc                ebp                                           // 0x006d78e3    45
                         cmp                ebp, 0x03                                     // 0x006d78e4    83fd03
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x006d78e7    896c2414
                         {disp32} jl        _jmp_addr_0x006d784c                          // 0x006d78eb    0f8c5bffffff
                         pop                edi                                           // 0x006d78f1    5f
                         pop                esi                                           // 0x006d78f2    5e
                         pop                ebp                                           // 0x006d78f3    5d
                         pop                ebx                                           // 0x006d78f4    5b
                         add                esp, 0x0000023c                               // 0x006d78f5    81c43c020000
                         ret                                                              // 0x006d78fb    c3
_jmp_addr_0x006d78fc:    push               ebx                                           // 0x006d78fc    53
                         push               ebp                                           // 0x006d78fd    55
                         mov.s              ecx, esi                                      // 0x006d78fe    8bce
                         {disp32} mov       dword ptr [esi + 0x00000584], 0x00000001      // 0x006d7900    c7868405000001000000
                         call               _jmp_addr_0x006d9450                          // 0x006d790a    e8411b0000
                         {disp8} jmp        _jmp_addr_0x006d78d6                          // 0x006d790f    ebc5
                         {disp8} mov        byte ptr [esp + 0x2b], 0x01                   // 0x006d7911    c644242b01
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                   // 0x006d7916    c644241300
                         xor.s              ebp, ebp                                      // 0x006d791b    33ed
                         {disp32} lea       edi, dword ptr [esi + 0x000003b0]             // 0x006d791d    8dbeb0030000
_jmp_addr_0x006d7923:    cmp                dword ptr [edi], 0x00                         // 0x006d7923    833f00
                         {disp8} je         _jmp_addr_0x006d7995                          // 0x006d7926    746d
                         push               ebp                                           // 0x006d7928    55
                         push               0x0                                           // 0x006d7929    6a00
                         {disp32} lea       ecx, dword ptr [esp + 0x00000080]             // 0x006d792b    8d8c2480000000
                         push               ecx                                           // 0x006d7932    51
                         mov.s              ecx, esi                                      // 0x006d7933    8bce
                         call               _jmp_addr_0x006d9290                          // 0x006d7935    e856190000
                         mov                ecx, dword ptr [edi]                          // 0x006d793a    8b0f
                         push               eax                                           // 0x006d793c    50
                         add                ecx, 0x14                                     // 0x006d793d    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d7940    e86bddf2ff
                         test               eax, eax                                      // 0x006d7945    85c0
                         {disp8} je         _jmp_addr_0x006d7995                          // 0x006d7947    744c
                         mov                edx, dword ptr [edi]                          // 0x006d7949    8b17
                         push               edx                                           // 0x006d794b    52
                         call               _jmp_addr_0x005e6540                          // 0x006d794c    e8efebf0ff
                         mov                ecx, dword ptr [edi]                          // 0x006d7951    8b0f
                         mov                eax, dword ptr [ecx]                          // 0x006d7953    8b01
                         add                esp, 0x04                                     // 0x006d7955    83c404
                         push               0x0                                           // 0x006d7958    6a00
                         call               dword ptr [eax + 0xc]                         // 0x006d795a    ff500c
                         push               0x3f800000                                    // 0x006d795d    680000803f
                         push               0x0                                           // 0x006d7962    6a00
                         push               0x0                                           // 0x006d7964    6a00
                         push               0x00d3a050                                    // 0x006d7966    6850a0d300
                         push               ebp                                           // 0x006d796b    55
                         push               0x0                                           // 0x006d796c    6a00
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f0]             // 0x006d796e    8d8c24f0000000
                         push               ecx                                           // 0x006d7975    51
                         mov.s              ecx, esi                                      // 0x006d7976    8bce
                         call               _jmp_addr_0x006d9290                          // 0x006d7978    e813190000
                         push               eax                                           // 0x006d797d    50
                         push               esi                                           // 0x006d797e    56
                         call               _jmp_addr_0x006db8a0                          // 0x006d797f    e81c3f0000
                         add                esp, 0x18                                     // 0x006d7984    83c418
                         mov                dword ptr [edi], eax                          // 0x006d7987    8907
                         mov                edx, dword ptr [eax]                          // 0x006d7989    8b10
                         push               0x1                                           // 0x006d798b    6a01
                         mov.s              ecx, eax                                      // 0x006d798d    8bc8
                         call               dword ptr [edx + 0x440]                       // 0x006d798f    ff9240040000
_jmp_addr_0x006d7995:    mov                ecx, dword ptr [edi]                          // 0x006d7995    8b0f
                         test               ecx, ecx                                      // 0x006d7997    85c9
                         {disp8} je         _jmp_addr_0x006d79ac                          // 0x006d7999    7411
                         mov                eax, dword ptr [ecx]                          // 0x006d799b    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d799d    ff502c
                         test               eax, eax                                      // 0x006d79a0    85c0
                         {disp8} jne        _jmp_addr_0x006d79ac                          // 0x006d79a2    7508
                         push               edi                                           // 0x006d79a4    57
                         mov.s              ecx, esi                                      // 0x006d79a5    8bce
                         call               _jmp_addr_0x006d7330                          // 0x006d79a7    e884f9ffff
_jmp_addr_0x006d79ac:    inc                ebp                                           // 0x006d79ac    45
                         add                edi, 0x04                                     // 0x006d79ad    83c704
                         cmp                ebp, 0x03                                     // 0x006d79b0    83fd03
                         {disp32} jl        _jmp_addr_0x006d7923                          // 0x006d79b3    0f8c6affffff
                         {disp32} lea       ebp, dword ptr [esi + 0x000003bc]             // 0x006d79b9    8daebc030000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000004            // 0x006d79bf    c744241404000000
_jmp_addr_0x006d79c7:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x006d79c7    8b4d00
                         test               ecx, ecx                                      // 0x006d79ca    85c9
                         {disp8} je         _jmp_addr_0x006d79df                          // 0x006d79cc    7411
                         mov                edx, dword ptr [ecx]                          // 0x006d79ce    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x006d79d0    ff522c
                         test               eax, eax                                      // 0x006d79d3    85c0
                         {disp8} jne        _jmp_addr_0x006d79df                          // 0x006d79d5    7508
                         push               ebp                                           // 0x006d79d7    55
                         mov.s              ecx, esi                                      // 0x006d79d8    8bce
                         call               _jmp_addr_0x006d7330                          // 0x006d79da    e851f9ffff
_jmp_addr_0x006d79df:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006d79df    8b4500
                         test               eax, eax                                      // 0x006d79e2    85c0
                         {disp32} je        _jmp_addr_0x006d7d67                          // 0x006d79e4    0f847d030000
                         {disp8} lea        ecx, dword ptr [eax + 0x68]                   // 0x006d79ea    8d4868
                         push               ecx                                           // 0x006d79ed    51
                         {disp8} lea        ecx, dword ptr [eax + 0x14]                   // 0x006d79ee    8d4814
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d79f1    e8badcf2ff
                         test               eax, eax                                      // 0x006d79f6    85c0
                         {disp32} je        _jmp_addr_0x006d7d67                          // 0x006d79f8    0f8469030000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006d79fe    8b4500
                         test               byte ptr [eax + 0x24], 0x04                   // 0x006d7a01    f6402404
                         {disp32} jne       _jmp_addr_0x006d7d67                          // 0x006d7a05    0f855c030000
                         add                eax, 0x14                                     // 0x006d7a0b    83c014
                         mov                edx, dword ptr [eax]                          // 0x006d7a0e    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x006d7a10    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x006d7a14    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x006d7a17    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x006d7a1b    8b5008
                         mov                eax, 0x00000001                               // 0x006d7a1e    b801000000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x006d7a23    89542424
                         mov                ebx, 0x00000009                               // 0x006d7a27    bb09000000
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x006d7a2c    89442438
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x006d7a30    89442430
_jmp_addr_0x006d7a34:    push               0x0                                           // 0x006d7a34    6a00
                         push               -0x1                                          // 0x006d7a36    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x006d7a38    8d4c2424
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x006d7a3c    e87fcbf2ff
                         mov.s              edi, eax                                      // 0x006d7a41    8bf8
                         test               edi, edi                                      // 0x006d7a43    85ff
                         {disp8} je         _jmp_addr_0x006d7ab5                          // 0x006d7a45    746e
_jmp_addr_0x006d7a47:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006d7a47    8b4500
                         add                eax, 0x14                                     // 0x006d7a4a    83c014
                         push               eax                                           // 0x006d7a4d    50
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x006d7a4e    8d4f14
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                          // 0x006d7a51    e87ae2f2ff
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x2470]              // 0x006d7a56    dc1d70b48a00
                         fnstsw             ax                                            // 0x006d7a5c    dfe0
                         test               ah, 0x41                                      // 0x006d7a5e    f6c441
                         {disp8} je         _jmp_addr_0x006d7a9d                          // 0x006d7a61    743a
                         push               0x0                                           // 0x006d7a63    6a00
                         push               0x00becda8                                    // 0x006d7a65    68a8cdbe00
                         push               0x009c7f50                                    // 0x006d7a6a    68507f9c00
                         push               0x0                                           // 0x006d7a6f    6a00
                         push               edi                                           // 0x006d7a71    57
                         call               ___RTDynamicCast                              // 0x006d7a72    e8a2df0e00
                         add                esp, 0x14                                     // 0x006d7a77    83c414
                         test               eax, eax                                      // 0x006d7a7a    85c0
                         {disp8} je         _jmp_addr_0x006d7a9d                          // 0x006d7a7c    741f
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x006d7a7e    8b5500
                         cmp.s              edx, eax                                      // 0x006d7a81    3bd0
                         {disp8} je         _jmp_addr_0x006d7a9d                          // 0x006d7a83    7418
                         {disp8} mov        ecx, dword ptr [eax + 0x74]                   // 0x006d7a85    8b4874
                         test               ecx, ecx                                      // 0x006d7a88    85c9
                         {disp8} je         _jmp_addr_0x006d7a99                          // 0x006d7a8a    740d
_jmp_addr_0x006d7a8c:    mov.s              eax, ecx                                      // 0x006d7a8c    8bc1
                         cmp.s              edx, eax                                      // 0x006d7a8e    3bd0
                         {disp8} je         _jmp_addr_0x006d7a9d                          // 0x006d7a90    740b
                         {disp8} mov        ecx, dword ptr [eax + 0x74]                   // 0x006d7a92    8b4874
                         test               ecx, ecx                                      // 0x006d7a95    85c9
                         {disp8} jne        _jmp_addr_0x006d7a8c                          // 0x006d7a97    75f3
_jmp_addr_0x006d7a99:    cmp.s              edx, eax                                      // 0x006d7a99    3bd0
                         {disp8} jne        _jmp_addr_0x006d7ab1                          // 0x006d7a9b    7514
_jmp_addr_0x006d7a9d:    push               edi                                           // 0x006d7a9d    57
                         push               -0x1                                          // 0x006d7a9e    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x006d7aa0    8d4c2424
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x006d7aa4    e817cbf2ff
                         mov.s              edi, eax                                      // 0x006d7aa9    8bf8
                         test               edi, edi                                      // 0x006d7aab    85ff
                         {disp8} jne        _jmp_addr_0x006d7a47                          // 0x006d7aad    7598
                         {disp8} jmp        _jmp_addr_0x006d7ab5                          // 0x006d7aaf    eb04
_jmp_addr_0x006d7ab1:    test               eax, eax                                      // 0x006d7ab1    85c0
                         {disp8} jne        _jmp_addr_0x006d7adc                          // 0x006d7ab3    7527
_jmp_addr_0x006d7ab5:    {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x006d7ab5    8d4c2430
                         push               ecx                                           // 0x006d7ab9    51
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x006d7aba    8d54243c
                         push               edx                                           // 0x006d7abe    52
                         dec                ebx                                           // 0x006d7abf    4b
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x006d7ac0    e81b5d0700
                         add                esp, 0x08                                     // 0x006d7ac5    83c408
                         push               eax                                           // 0x006d7ac8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006d7ac9    8d4c2420
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12            // 0x006d7acd    e89ed9f2ff
                         test               ebx, ebx                                      // 0x006d7ad2    85db
                         {disp32} jne       _jmp_addr_0x006d7a34                          // 0x006d7ad4    0f855affffff
                         {disp8} jmp        _jmp_addr_0x006d7b27                          // 0x006d7ada    eb4b
_jmp_addr_0x006d7adc:    {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x006d7adc    8b4828
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000104]             // 0x006d7adf    8b8904010000
                         cmp                ecx, 0x1a                                     // 0x006d7ae5    83f91a
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x006d7ae8    8b5500
                         {disp32} je        _jmp_addr_0x006d7c6f                          // 0x006d7aeb    0f847e010000
                         cmp                ecx, 0x1b                                     // 0x006d7af1    83f91b
                         {disp8} jne        _jmp_addr_0x006d7b07                          // 0x006d7af4    7511
                         {disp8} mov        ecx, dword ptr [edx + 0x28]                   // 0x006d7af6    8b4a28
                         cmp                dword ptr [ecx + 0x00000104], 0x1a            // 0x006d7af9    83b9040100001a
                         {disp8} je         _jmp_addr_0x006d7b27                          // 0x006d7b00    7425
                         {disp32} jmp       _jmp_addr_0x006d7c6f                          // 0x006d7b02    e968010000
_jmp_addr_0x006d7b07:    cmp                ecx, 0x1c                                     // 0x006d7b07    83f91c
                         {disp32} jne       _jmp_addr_0x006d7c11                          // 0x006d7b0a    0f8501010000
                         {disp8} mov        ecx, dword ptr [edx + 0x28]                   // 0x006d7b10    8b4a28
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000104]             // 0x006d7b13    8b8904010000
                         cmp                ecx, 0x1a                                     // 0x006d7b19    83f91a
                         {disp8} je         _jmp_addr_0x006d7b27                          // 0x006d7b1c    7409
                         cmp                ecx, 0x1b                                     // 0x006d7b1e    83f91b
_jmp_addr_0x006d7b21:    {disp32} jne       _jmp_addr_0x006d7c6f                          // 0x006d7b21    0f8548010000
_jmp_addr_0x006d7b27:    {disp8} mov        al, byte ptr [esp + 0x13]                     // 0x006d7b27    8a442413
                         test               al, al                                        // 0x006d7b2b    84c0
                         {disp32} jne       _jmp_addr_0x006d7d37                          // 0x006d7b2d    0f8504020000
                         {disp32} mov       eax, dword ptr [esi + 0x0000040c]             // 0x006d7b33    8b860c040000
                         cmp                eax, -0x05                                    // 0x006d7b39    83f8fb
                         {disp8} mov        byte ptr [esp + 0x2b], 0x00                   // 0x006d7b3c    c644242b00
                         {disp8} jle        _jmp_addr_0x006d7b4a                          // 0x006d7b41    7e07
                         dec                eax                                           // 0x006d7b43    48
                         {disp32} mov       dword ptr [esi + 0x0000040c], eax             // 0x006d7b44    89860c040000
_jmp_addr_0x006d7b4a:    {disp32} mov       eax, dword ptr [esi + 0x0000040c]             // 0x006d7b4a    8b860c040000
                         test               eax, eax                                      // 0x006d7b50    85c0
                         {disp32} jge       _jmp_addr_0x006d7d41                          // 0x006d7b52    0f8de9010000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006d7b58    8b4500
                         add                eax, 0x68                                     // 0x006d7b5b    83c068
                         mov                ecx, dword ptr [eax]                          // 0x006d7b5e    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x006d7b60    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x006d7b64    8b5004
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x006d7b67    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006d7b6b    8b4008
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x006d7b6e    89442424
                         mov                eax, 0x00000001                               // 0x006d7b72    b801000000
                         xor.s              ebx, ebx                                      // 0x006d7b77    33db
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000009            // 0x006d7b79    c744241809000000
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x006d7b81    8944242c
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x006d7b85    89442434
_jmp_addr_0x006d7b89:    push               0x0                                           // 0x006d7b89    6a00
                         push               -0x1                                          // 0x006d7b8b    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x006d7b8d    8d4c2424
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x006d7b91    e82acaf2ff
                         mov.s              edi, eax                                      // 0x006d7b96    8bf8
                         test               edi, edi                                      // 0x006d7b98    85ff
                         {disp32} je        _jmp_addr_0x006d7cf2                          // 0x006d7b9a    0f8452010000
_jmp_addr_0x006d7ba0:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x006d7ba0    8b4d00
                         add                ecx, 0x68                                     // 0x006d7ba3    83c168
                         push               ecx                                           // 0x006d7ba6    51
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x006d7ba7    8d4f14
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                          // 0x006d7baa    e821e1f2ff
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x2470]              // 0x006d7baf    dc1d70b48a00
                         fnstsw             ax                                            // 0x006d7bb5    dfe0
                         test               ah, 0x41                                      // 0x006d7bb7    f6c441
                         {disp8} je         _jmp_addr_0x006d7bfa                          // 0x006d7bba    743e
                         push               0x0                                           // 0x006d7bbc    6a00
                         push               0x00becda8                                    // 0x006d7bbe    68a8cdbe00
                         push               0x009c7f50                                    // 0x006d7bc3    68507f9c00
                         push               0x0                                           // 0x006d7bc8    6a00
                         push               edi                                           // 0x006d7bca    57
                         call               ___RTDynamicCast                              // 0x006d7bcb    e849de0e00
                         add                esp, 0x14                                     // 0x006d7bd0    83c414
                         test               eax, eax                                      // 0x006d7bd3    85c0
                         {disp8} je         _jmp_addr_0x006d7bfa                          // 0x006d7bd5    7423
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x006d7bd7    8b5500
                         cmp.s              edx, eax                                      // 0x006d7bda    3bd0
                         {disp8} je         _jmp_addr_0x006d7bfa                          // 0x006d7bdc    741c
                         {disp8} mov        ecx, dword ptr [eax + 0x74]                   // 0x006d7bde    8b4874
                         test               ecx, ecx                                      // 0x006d7be1    85c9
                         {disp8} je         _jmp_addr_0x006d7bf2                          // 0x006d7be3    740d
_jmp_addr_0x006d7be5:    mov.s              eax, ecx                                      // 0x006d7be5    8bc1
                         cmp.s              edx, eax                                      // 0x006d7be7    3bd0
                         {disp8} je         _jmp_addr_0x006d7bfa                          // 0x006d7be9    740f
                         {disp8} mov        ecx, dword ptr [eax + 0x74]                   // 0x006d7beb    8b4874
                         test               ecx, ecx                                      // 0x006d7bee    85c9
                         {disp8} jne        _jmp_addr_0x006d7be5                          // 0x006d7bf0    75f3
_jmp_addr_0x006d7bf2:    cmp.s              edx, eax                                      // 0x006d7bf2    3bd0
                         {disp32} jne       _jmp_addr_0x006d7cec                          // 0x006d7bf4    0f85f2000000
_jmp_addr_0x006d7bfa:    push               edi                                           // 0x006d7bfa    57
                         push               -0x1                                          // 0x006d7bfb    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x006d7bfd    8d4c2424
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x006d7c01    e8bac9f2ff
                         mov.s              edi, eax                                      // 0x006d7c06    8bf8
                         test               edi, edi                                      // 0x006d7c08    85ff
                         {disp8} jne        _jmp_addr_0x006d7ba0                          // 0x006d7c0a    7594
                         {disp32} jmp       _jmp_addr_0x006d7cf2                          // 0x006d7c0c    e9e1000000
_jmp_addr_0x006d7c11:    cmp                ecx, 0x1d                                     // 0x006d7c11    83f91d
                         {disp8} jne        _jmp_addr_0x006d7c39                          // 0x006d7c14    7523
                         {disp8} mov        ecx, dword ptr [edx + 0x28]                   // 0x006d7c16    8b4a28
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000104]             // 0x006d7c19    8b8904010000
                         cmp                ecx, 0x1a                                     // 0x006d7c1f    83f91a
                         {disp32} je        _jmp_addr_0x006d7b27                          // 0x006d7c22    0f84fffeffff
                         cmp                ecx, 0x1b                                     // 0x006d7c28    83f91b
                         {disp32} je        _jmp_addr_0x006d7b27                          // 0x006d7c2b    0f84f6feffff
                         cmp                ecx, 0x1c                                     // 0x006d7c31    83f91c
                         {disp32} jmp       _jmp_addr_0x006d7b21                          // 0x006d7c34    e9e8feffff
_jmp_addr_0x006d7c39:    cmp                ecx, 0x1e                                     // 0x006d7c39    83f91e
                         {disp32} jne       _jmp_addr_0x006d7b27                          // 0x006d7c3c    0f85e5feffff
                         {disp8} mov        ecx, dword ptr [edx + 0x28]                   // 0x006d7c42    8b4a28
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000104]             // 0x006d7c45    8b8904010000
                         cmp                ecx, 0x1a                                     // 0x006d7c4b    83f91a
                         {disp32} je        _jmp_addr_0x006d7b27                          // 0x006d7c4e    0f84d3feffff
                         cmp                ecx, 0x1b                                     // 0x006d7c54    83f91b
                         {disp32} je        _jmp_addr_0x006d7b27                          // 0x006d7c57    0f84cafeffff
                         cmp                ecx, 0x1c                                     // 0x006d7c5d    83f91c
                         {disp32} je        _jmp_addr_0x006d7b27                          // 0x006d7c60    0f84c1feffff
                         cmp                ecx, 0x1d                                     // 0x006d7c66    83f91d
                         {disp32} je        _jmp_addr_0x006d7b27                          // 0x006d7c69    0f84b8feffff
_jmp_addr_0x006d7c6f:    {disp8} mov        dword ptr [edx + 0x78], eax                   // 0x006d7c6f    894278
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x006d7c72    8b5500
                         {disp8} mov        dword ptr [eax + 0x74], edx                   // 0x006d7c75    895074
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x006d7c78    8b5500
                         {disp8} lea        ecx, dword ptr [eax + 0x68]                   // 0x006d7c7b    8d4868
                         mov                edi, dword ptr [ecx]                          // 0x006d7c7e    8b39
                         add                edx, 0x68                                     // 0x006d7c80    83c268
                         mov                dword ptr [edx], edi                          // 0x006d7c83    893a
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                   // 0x006d7c85    8b7904
                         {disp8} mov        dword ptr [edx + 0x04], edi                   // 0x006d7c88    897a04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x006d7c8b    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x006d7c8e    894a08
                         {disp8} mov        edx, dword ptr [eax + 0x28]                   // 0x006d7c91    8b5028
                         {disp32} mov       eax, dword ptr [edx + 0x00000104]             // 0x006d7c94    8b8204010000
                         add                eax, -0x1a                                    // 0x006d7c9a    83c0e6
                         cmp                eax, 0x04                                     // 0x006d7c9d    83f804
                         {disp8} ja         _jmp_addr_0x006d7cc9                          // 0x006d7ca0    7727
                         jmp                dword ptr [eax*4 + 0x6d8ae4]                  // 0x006d7ca2    ff2485e48a6d00
                         {disp32} fld       dword ptr [rdata_bytes + 0x2418]              // 0x006d7ca9    d90518b48a00
                         {disp8} jmp        _jmp_addr_0x006d7ccf                          // 0x006d7caf    eb1e
                         {disp32} fld       dword ptr [rdata_bytes + 0x19c50]             // 0x006d7cb1    d905502c8c00
                         {disp8} jmp        _jmp_addr_0x006d7ccf                          // 0x006d7cb7    eb16
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x006d7cb9    d90578b48a00
                         {disp8} jmp        _jmp_addr_0x006d7ccf                          // 0x006d7cbf    eb0e
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x006d7cc1    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x006d7ccf                          // 0x006d7cc7    eb06
_jmp_addr_0x006d7cc9:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x006d7cc9    d90598a38a00
_jmp_addr_0x006d7ccf:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006d7ccf    8b4500
                         {disp8} fadd       dword ptr [eax + 0x70]                        // 0x006d7cd2    d84070
                         add                eax, 0x68                                     // 0x006d7cd5    83c068
                         {disp8} mov        byte ptr [esp + 0x13], 0x01                   // 0x006d7cd8    c644241301
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x006d7cdd    d95808
                         {disp32} mov       dword ptr [esi + 0x00000584], 0x00000001      // 0x006d7ce0    c7868405000001000000
                         {disp8} jmp        _jmp_addr_0x006d7d37                          // 0x006d7cea    eb4b
_jmp_addr_0x006d7cec:    test               eax, eax                                      // 0x006d7cec    85c0
                         mov.s              ebx, eax                                      // 0x006d7cee    8bd8
                         {disp8} jne        _jmp_addr_0x006d7d21                          // 0x006d7cf0    752f
_jmp_addr_0x006d7cf2:    {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x006d7cf2    8b7c2418
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x006d7cf6    8d542434
                         push               edx                                           // 0x006d7cfa    52
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x006d7cfb    8d442430
                         dec                edi                                           // 0x006d7cff    4f
                         push               eax                                           // 0x006d7d00    50
                         {disp8} mov        dword ptr [esp + 0x20], edi                   // 0x006d7d01    897c2420
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x006d7d05    e8d65a0700
                         add                esp, 0x08                                     // 0x006d7d0a    83c408
                         push               eax                                           // 0x006d7d0d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006d7d0e    8d4c2420
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12            // 0x006d7d12    e859d7f2ff
                         test               edi, edi                                      // 0x006d7d17    85ff
                         {disp32} jne       _jmp_addr_0x006d7b89                          // 0x006d7d19    0f856afeffff
                         {disp8} jmp        _jmp_addr_0x006d7d27                          // 0x006d7d1f    eb06
_jmp_addr_0x006d7d21:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x006d7d21    8b4d00
                         {disp8} mov        dword ptr [ebx + 0x74], ecx                   // 0x006d7d24    894b74
_jmp_addr_0x006d7d27:    {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x006d7d27    8b5500
                         {disp8} mov        dword ptr [edx + 0x74], 0x00000000            // 0x006d7d2a    c7427400000000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006d7d31    8b4500
                         {disp8} mov        dword ptr [eax + 0x78], ebx                   // 0x006d7d34    895878
_jmp_addr_0x006d7d37:    {disp32} mov       eax, dword ptr [esi + 0x0000040c]             // 0x006d7d37    8b860c040000
                         test               eax, eax                                      // 0x006d7d3d    85c0
                         {disp8} jl         _jmp_addr_0x006d7d49                          // 0x006d7d3f    7c08
_jmp_addr_0x006d7d41:    {disp8} mov        al, byte ptr [esp + 0x13]                     // 0x006d7d41    8a442413
                         test               al, al                                        // 0x006d7d45    84c0
                         {disp8} je         _jmp_addr_0x006d7d67                          // 0x006d7d47    741e
_jmp_addr_0x006d7d49:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x006d7d49    8b4d00
                         push               ecx                                           // 0x006d7d4c    51
                         call               _jmp_addr_0x005e6540                          // 0x006d7d4d    e8eee7f0ff
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x006d7d52    8b4d00
                         mov                edx, dword ptr [ecx]                          // 0x006d7d55    8b11
                         add                esp, 0x04                                     // 0x006d7d57    83c404
                         push               0x0                                           // 0x006d7d5a    6a00
                         call               dword ptr [edx + 0xc]                         // 0x006d7d5c    ff520c
                         push               ebp                                           // 0x006d7d5f    55
                         mov.s              ecx, esi                                      // 0x006d7d60    8bce
                         call               _jmp_addr_0x006d7330                          // 0x006d7d62    e8c9f5ffff
_jmp_addr_0x006d7d67:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006d7d67    8b442414
                         add                ebp, 0x04                                     // 0x006d7d6b    83c504
                         dec                eax                                           // 0x006d7d6e    48
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006d7d6f    89442414
                         {disp32} jne       _jmp_addr_0x006d79c7                          // 0x006d7d73    0f854efcffff
                         {disp8} mov        al, byte ptr [esp + 0x2b]                     // 0x006d7d79    8a44242b
                         test               al, al                                        // 0x006d7d7d    84c0
                         {disp32} je        _jmp_addr_0x006d8a8c                          // 0x006d7d7f    0f84070d0000
                         {disp32} mov       eax, dword ptr [esi + 0x0000040c]             // 0x006d7d85    8b860c040000
                         cmp                eax, 0x05                                     // 0x006d7d8b    83f805
                         {disp32} jge       _jmp_addr_0x006d8a8c                          // 0x006d7d8e    0f8df80c0000
                         pop                edi                                           // 0x006d7d94    5f
                         inc                eax                                           // 0x006d7d95    40
                         {disp32} mov       dword ptr [esi + 0x0000040c], eax             // 0x006d7d96    89860c040000
                         pop                esi                                           // 0x006d7d9c    5e
                         pop                ebp                                           // 0x006d7d9d    5d
                         pop                ebx                                           // 0x006d7d9e    5b
                         add                esp, 0x0000023c                               // 0x006d7d9f    81c43c020000
                         ret                                                              // 0x006d7da5    c3
                         xor.s              edi, edi                                      // 0x006d7da6    33ff
                         {disp32} lea       ebx, dword ptr [esi + 0x00000398]             // 0x006d7da8    8d9e98030000
_jmp_addr_0x006d7dae:    mov                ecx, dword ptr [ebx]                          // 0x006d7dae    8b0b
                         cmp.s              ecx, ebp                                      // 0x006d7db0    3bcd
                         {disp8} je         _jmp_addr_0x006d7dc6                          // 0x006d7db2    7412
                         mov                eax, dword ptr [ecx]                          // 0x006d7db4    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d7db6    ff502c
                         test               eax, eax                                      // 0x006d7db9    85c0
                         {disp8} jne        _jmp_addr_0x006d7dc6                          // 0x006d7dbb    7509
                         push               ebx                                           // 0x006d7dbd    53
                         call               _jmp_addr_0x006d7400                          // 0x006d7dbe    e83df6ffff
                         add                esp, 0x04                                     // 0x006d7dc3    83c404
_jmp_addr_0x006d7dc6:    mov                ecx, dword ptr [ebx]                          // 0x006d7dc6    8b0b
                         cmp.s              ecx, ebp                                      // 0x006d7dc8    3bcd
                         {disp8} je         _jmp_addr_0x006d7dd7                          // 0x006d7dca    740b
                         {disp8} mov        edx, dword ptr [ebx + 0x34]                   // 0x006d7dcc    8b5334
                         cmp                edx, dword ptr [ecx + 0x000000e8]             // 0x006d7dcf    3b91e8000000
                         {disp8} jne        _jmp_addr_0x006d7df8                          // 0x006d7dd5    7521
_jmp_addr_0x006d7dd7:    cmp                dword ptr [ecx + 0x000000f0], ebp             // 0x006d7dd7    39a9f0000000
                         {disp8} je         _jmp_addr_0x006d7de4                          // 0x006d7ddd    7405
                         call               _jmp_addr_0x00737760                          // 0x006d7ddf    e87cf90500
_jmp_addr_0x006d7de4:    inc                edi                                           // 0x006d7de4    47
                         add                ebx, 0x04                                     // 0x006d7de5    83c304
                         cmp                edi, 0x06                                     // 0x006d7de8    83ff06
                         {disp8} jl         _jmp_addr_0x006d7dae                          // 0x006d7deb    7cc1
                         pop                edi                                           // 0x006d7ded    5f
                         pop                esi                                           // 0x006d7dee    5e
                         pop                ebp                                           // 0x006d7def    5d
                         pop                ebx                                           // 0x006d7df0    5b
                         add                esp, 0x0000023c                               // 0x006d7df1    81c43c020000
                         ret                                                              // 0x006d7df7    c3
_jmp_addr_0x006d7df8:    {disp32} mov       dword ptr [esi + 0x00000584], 0x00000001      // 0x006d7df8    c7868405000001000000
                         {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000398] // 0x006d7e02    8b8cbe98030000
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x000003cc] // 0x006d7e09    8b84becc030000
                         {disp32} mov       ebp, dword ptr [ecx + 0x000000e8]             // 0x006d7e10    8ba9e8000000
                         sub.s              ebp, eax                                      // 0x006d7e16    2be8
                         add                ebp, 0x05                                     // 0x006d7e18    83c505
                         add.s              eax, ebp                                      // 0x006d7e1b    03c5
                         cdq                                                              // 0x006d7e1d    99
                         mov                ecx, 0x00000005                               // 0x006d7e1e    b905000000
                         idiv               ecx                                           // 0x006d7e23    f7f9
                         xor.s              ebx, ebx                                      // 0x006d7e25    33db
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x000003cc], edx // 0x006d7e27    8994becc030000
                         {disp32} lea       edx, dword ptr [esi + 0x000003cc]             // 0x006d7e2e    8d96cc030000
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x006d7e34    89542414
_jmp_addr_0x006d7e38:    cmp.s              ebx, edi                                      // 0x006d7e38    3bdf
                         {disp8} je         _jmp_addr_0x006d7e63                          // 0x006d7e3a    7427
                         mov.s              ecx, esi                                      // 0x006d7e3c    8bce
                         call               _jmp_addr_0x006da520                          // 0x006d7e3e    e8dd260000
                         lea                ecx, dword ptr [edi + edi * 0x2]              // 0x006d7e43    8d0c7f
                         lea                edx, dword ptr [ebx + ecx * 0x2]              // 0x006d7e46    8d144b
                         mov                eax, dword ptr [eax + edx * 0x4]              // 0x006d7e49    8b0490
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006d7e4c    8b4c2414
                         imul               eax, ebp                                      // 0x006d7e50    0fafc5
                         add                eax, dword ptr [ecx]                          // 0x006d7e53    0301
                         cdq                                                              // 0x006d7e55    99
                         mov                ecx, 0x00000005                               // 0x006d7e56    b905000000
                         idiv               ecx                                           // 0x006d7e5b    f7f9
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006d7e5d    8b442414
                         mov                dword ptr [eax], edx                          // 0x006d7e61    8910
_jmp_addr_0x006d7e63:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006d7e63    8b4c2414
                         inc                ebx                                           // 0x006d7e67    43
                         add                ecx, 0x4                                      // 0x006d7e68    83c104
                         cmp                ebx, 0x06                                     // 0x006d7e6b    83fb06
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x006d7e6e    894c2414
                         {disp8} jl         _jmp_addr_0x006d7e38                          // 0x006d7e72    7cc4
                         xor.s              ebx, ebx                                      // 0x006d7e74    33db
                         {disp32} lea       ebp, dword ptr [esi + 0x00000398]             // 0x006d7e76    8dae98030000
_jmp_addr_0x006d7e7c:    cmp.s              ebx, edi                                      // 0x006d7e7c    3bdf
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006d7e7e    8b4500
                         {disp32} mov       ecx, dword ptr [eax + 0x000000e8]             // 0x006d7e81    8b88e8000000
                         {disp32} mov       dword ptr [eax + 0x000000ec], ecx             // 0x006d7e87    8988ec000000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x006d7e8d    8b5500
                         {disp8} mov        eax, dword ptr [ebp + 0x34]                   // 0x006d7e90    8b4534
                         {disp32} mov       dword ptr [edx + 0x000000e8], eax             // 0x006d7e93    8982e8000000
                         {disp8} je         _jmp_addr_0x006d7ea8                          // 0x006d7e99    740d
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x006d7e9b    8b4d00
                         {disp32} mov       dword ptr [ecx + 0x000000f0], 0x00000005      // 0x006d7e9e    c781f000000005000000
_jmp_addr_0x006d7ea8:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x006d7ea8    8b4d00
                         call               _jmp_addr_0x00737760                          // 0x006d7eab    e8b0f80500
                         inc                ebx                                           // 0x006d7eb0    43
                         add                ebp, 0x04                                     // 0x006d7eb1    83c504
                         cmp                ebx, 0x06                                     // 0x006d7eb4    83fb06
                         {disp8} jl         _jmp_addr_0x006d7e7c                          // 0x006d7eb7    7cc3
                         xor.s              eax, eax                                      // 0x006d7eb9    33c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006d7ebb    89442414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006d7ebf    89442418
                         {disp32} lea       ebp, dword ptr [esi + 0x000000e4]             // 0x006d7ec3    8daee4000000
_jmp_addr_0x006d7ec9:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x006d7ec9    8b4d00
                         test               ecx, ecx                                      // 0x006d7ecc    85c9
                         {disp8} je         _jmp_addr_0x006d7ed7                          // 0x006d7ece    7407
                         mov                edx, dword ptr [ecx]                          // 0x006d7ed0    8b11
                         push               0x0                                           // 0x006d7ed2    6a00
                         call               dword ptr [edx + 0xc]                         // 0x006d7ed4    ff520c
_jmp_addr_0x006d7ed7:    {disp8} mov        dword ptr [ebp + 0x00], 0x00000000            // 0x006d7ed7    c7450000000000
                         cmp                dword ptr [ebp + 0x000002e8], 0x04            // 0x006d7ede    83bde802000004
                         {disp32} jne       _jmp_addr_0x006d7f8c                          // 0x006d7ee5    0f85a1000000
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x006d7eeb    8b4648
                         cmp                eax, 0x06                                     // 0x006d7eee    83f806
                         {disp8} je         _jmp_addr_0x006d7f61                          // 0x006d7ef1    746e
                         cmp                eax, 0x07                                     // 0x006d7ef3    83f807
                         {disp8} je         _jmp_addr_0x006d7f61                          // 0x006d7ef6    7469
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x006d7ef8    8d4614
                         mov                ebx, dword ptr [eax]                          // 0x006d7efb    8b18
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x006d7efd    8b4804
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x006d7f00    8b5008
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x006d7f03    89542424
                         mov                eax, 0xaaaaaaab                               // 0x006d7f07    b8abaaaaaa
                         mul                dword ptr [esp + 0x18]                        // 0x006d7f0c    f7642418
                         mov.s              edi, edx                                      // 0x006d7f10    8bfa
                         shr                edi, 2                                        // 0x006d7f12    c1ef02
                         shl                edi, 2                                        // 0x006d7f15    c1e702
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x006d7f18    894c2420
                         {disp32} fild      dword ptr [edi + _sin_lookup_table]           // 0x006d7f1c    db871416c300
                         {disp32} fmul      dword ptr [esi + 0x00000388]                  // 0x006d7f22    d88e88030000
                         fadd.s             st(0), st(0)                                  // 0x006d7f28    dcc0
                         call               _jmp_addr_0x007a1400                          // 0x006d7f2a    e8d1940c00
                         {disp32} fild      dword ptr [edi + _cos_lookup_table]           // 0x006d7f2f    db87141ec300
                         add.s              ebx, eax                                      // 0x006d7f35    03d8
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x006d7f37    895c241c
                         {disp32} fmul      dword ptr [esi + 0x00000388]                  // 0x006d7f3b    d88e88030000
                         fadd.s             st(0), st(0)                                  // 0x006d7f41    dcc0
                         call               _jmp_addr_0x007a1400                          // 0x006d7f43    e8b8940c00
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x006d7f48    8b4c2420
                         push               0x0                                           // 0x006d7f4c    6a00
                         add.s              ecx, eax                                      // 0x006d7f4e    03c8
                         push               0x40a00000                                    // 0x006d7f50    680000a040
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x006d7f55    894c2428
                         push               0xc                                           // 0x006d7f59    6a0c
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x006d7f5b    8d442428
                         {disp8} jmp        _jmp_addr_0x006d7f80                          // 0x006d7f5f    eb1f
_jmp_addr_0x006d7f61:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006d7f61    8b4c2414
                         push               0x0                                           // 0x006d7f65    6a00
                         push               0x40a00000                                    // 0x006d7f67    680000a040
                         push               0xc                                           // 0x006d7f6c    6a0c
                         push               0x0                                           // 0x006d7f6e    6a00
                         push               ecx                                           // 0x006d7f70    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000a4]             // 0x006d7f71    8d9424a4000000
                         push               edx                                           // 0x006d7f78    52
                         mov.s              ecx, esi                                      // 0x006d7f79    8bce
                         call               _jmp_addr_0x006d9290                          // 0x006d7f7b    e810130000
_jmp_addr_0x006d7f80:    push               eax                                           // 0x006d7f80    50
                         call               _jmp_addr_0x0063e540                          // 0x006d7f81    e8ba65f6ff
                         add                esp, 0x10                                     // 0x006d7f86    83c410
                         {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x006d7f89    894500
_jmp_addr_0x006d7f8c:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006d7f8c    8b442418
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x006d7f90    8b5c2414
                         add                eax, 0x00000400                               // 0x006d7f94    0500040000
                         inc                ebx                                           // 0x006d7f99    43
                         add                ebp, 0x04                                     // 0x006d7f9a    83c504
                         cmp                eax, 0x00001800                               // 0x006d7f9d    3d00180000
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x006d7fa2    895c2414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006d7fa6    89442418
                         {disp32} jl        _jmp_addr_0x006d7ec9                          // 0x006d7faa    0f8c19ffffff
                         pop                edi                                           // 0x006d7fb0    5f
                         pop                esi                                           // 0x006d7fb1    5e
                         pop                ebp                                           // 0x006d7fb2    5d
                         pop                ebx                                           // 0x006d7fb3    5b
                         add                esp, 0x0000023c                               // 0x006d7fb4    81c43c020000
                         ret                                                              // 0x006d7fba    c3
                         mov.s              ecx, esi                                      // 0x006d7fbb    8bce
                         call               _jmp_addr_0x006d8b00                          // 0x006d7fbd    e83e0b0000
                         pop                edi                                           // 0x006d7fc2    5f
                         pop                esi                                           // 0x006d7fc3    5e
                         pop                ebp                                           // 0x006d7fc4    5d
                         pop                ebx                                           // 0x006d7fc5    5b
                         add                esp, 0x0000023c                               // 0x006d7fc6    81c43c020000
                         ret                                                              // 0x006d7fcc    c3
                         cmp                dword ptr [esi + 0x00000408], ebp             // 0x006d7fcd    39ae08040000
                         {disp32} jne       _jmp_addr_0x006d8a8c                          // 0x006d7fd3    0f85b30a0000
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x006d7fd9    8d442448
                         push               eax                                           // 0x006d7fdd    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x006d7fde    8d4e14
                         call               _jmp_addr_0x006041c0                          // 0x006d7fe1    e8dac1f2ff
                         mov                ecx, dword ptr [eax]                          // 0x006d7fe6    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x006d7fe8    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x006d7fec    8b5004
                         push               0x00000423                                    // 0x006d7fef    6823040000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x006d7ff4    89542424
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006d7ff8    8b4008
                         push               0x00c09908                                    // 0x006d7ffb    680899c000
                         push               0x2c                                          // 0x006d8000    6a2c
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x006d8002    89442430
                         call               ___nw__FUl                                    // 0x006d8006    e885371000
                         mov.s              edi, eax                                      // 0x006d800b    8bf8
                         add                esp, 0x0c                                     // 0x006d800d    83c40c
                         cmp.s              edi, ebp                                      // 0x006d8010    3bfd
                         {disp8} je         _jmp_addr_0x006d8087                          // 0x006d8012    7473
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x006d8014    8b54241c
                         mov.s              ecx, edi                                      // 0x006d8018    8bcf
                         mov                dword ptr [ecx], edx                          // 0x006d801a    8911
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x006d801c    8b442420
                         push               0x000002bc                                    // 0x006d8020    68bc020000
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006d8025    894104
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x006d8028    8b542428
                         push               0x00be9e50                                    // 0x006d802c    68509ebe00
                         push               0x00000090                                    // 0x006d8031    6890000000
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006d8036    895108
                         {disp8} mov        dword ptr [edi + 0x0c], 0x41300000            // 0x006d8039    c7470c00003041
                         {disp8} mov        dword ptr [edi + 0x10], 0x0000001e            // 0x006d8040    c747101e000000
                         {disp8} mov        dword ptr [edi + 0x14], 0x000001f4            // 0x006d8047    c74714f4010000
                         {disp8} mov        dword ptr [edi + 0x18], ebp                   // 0x006d804e    896f18
                         {disp8} mov        dword ptr [edi + 0x20], ebp                   // 0x006d8051    896f20
                         {disp8} mov        dword ptr [edi + 0x24], ebp                   // 0x006d8054    896f24
                         {disp8} mov        dword ptr [edi + 0x1c], 0xffffffff            // 0x006d8057    c7471cffffffff
                         call               ___nw__FUl                                    // 0x006d805e    e82d371000
                         add                esp, 0x0c                                     // 0x006d8063    83c40c
                         cmp.s              eax, ebp                                      // 0x006d8066    3bc5
                         {disp8} je         _jmp_addr_0x006d8080                          // 0x006d8068    7416
                         push               0x41300000                                    // 0x006d806a    6800003041
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006d806f    8d4c2420
                         push               ecx                                           // 0x006d8073    51
                         mov.s              ecx, eax                                      // 0x006d8074    8bc8
                         call               _jmp_addr_0x00829a30                          // 0x006d8076    e8b5191500
                         {disp8} mov        dword ptr [edi + 0x28], eax                   // 0x006d807b    894728
                         {disp8} jmp        _jmp_addr_0x006d8089                          // 0x006d807e    eb09
_jmp_addr_0x006d8080:    xor.s              eax, eax                                      // 0x006d8080    33c0
                         {disp8} mov        dword ptr [edi + 0x28], eax                   // 0x006d8082    894728
                         {disp8} jmp        _jmp_addr_0x006d8089                          // 0x006d8085    eb02
_jmp_addr_0x006d8087:    xor.s              edi, edi                                      // 0x006d8087    33ff
_jmp_addr_0x006d8089:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x006d8089    d944241c
                         push               0x00000426                                    // 0x006d808d    6826040000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x261c0]             // 0x006d8092    d805c0f18c00
                         push               0x00c09908                                    // 0x006d8098    680899c000
                         push               0x68                                          // 0x006d809d    6a68
                         {disp32} mov       dword ptr [esi + 0x00000408], edi             // 0x006d809f    89be08040000
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x006d80a5    d95c2428
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x006d80a9    d9442430
                         {disp32} fadd      dword ptr [rdata_bytes + 0x261c0]             // 0x006d80ad    d805c0f18c00
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x006d80b3    d95c2430
                         call               ___nw__FUl                                    // 0x006d80b7    e8d4361000
                         mov.s              edi, eax                                      // 0x006d80bc    8bf8
                         add                esp, 0x0c                                     // 0x006d80be    83c40c
                         cmp.s              edi, ebp                                      // 0x006d80c1    3bfd
                         {disp32} je        _jmp_addr_0x006d8163                          // 0x006d80c3    0f849a000000
                         {disp32} mov       edx, dword ptr [esi + 0x00000408]             // 0x006d80c9    8b9608040000
                         {disp8} mov        dword ptr [edi + 0x5c], edx                   // 0x006d80cf    89575c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4f39f4]        // 0x006d80d2    a1f499eb00
                         {disp8} mov        dword ptr [edi + 0x60], eax                   // 0x006d80d7    894760
                         {disp32} mov       dword ptr [data_bytes + 0x4f39f4], edi        // 0x006d80da    893df499eb00
                         {disp8} mov        dword ptr [edi + 0x58], 0x40e00000            // 0x006d80e0    c747580000e040
                         {disp8} mov        dword ptr [edi + 0x54], 0x00000000            // 0x006d80e7    c7475400000000
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x006d80ee    8b4c241c
                         {disp8} mov        dword ptr [edi + 0x48], ecx                   // 0x006d80f2    894f48
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x006d80f5    8b542420
                         {disp8} lea        ebx, dword ptr [edi + 0x48]                   // 0x006d80f9    8d5f48
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x006d80fc    895304
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x006d80ff    8b442424
                         {disp8} mov        dword ptr [ebx + 0x08], eax                   // 0x006d8103    894308
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x006d8106    8b4c241c
                         {disp8} mov        dword ptr [edi + 0x3c], ecx                   // 0x006d810a    894f3c
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x006d810d    8b542420
                         {disp8} mov        dword ptr [edi + 0x40], edx                   // 0x006d8111    895740
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x006d8114    8b442424
                         {disp8} mov        dword ptr [edi + 0x44], eax                   // 0x006d8118    894744
                         mov.s              ebp, edi                                      // 0x006d811b    8bef
                         {disp8} mov        dword ptr [esp + 0x18], 0x0000000f            // 0x006d811d    c74424180f000000
_jmp_addr_0x006d8125:    push               0x000002f8                                    // 0x006d8125    68f8020000
                         push               0x00be9e50                                    // 0x006d812a    68509ebe00
                         push               0x24                                          // 0x006d812f    6a24
                         call               ___nw__FUl                                    // 0x006d8131    e85a361000
                         add                esp, 0x0c                                     // 0x006d8136    83c40c
                         test               eax, eax                                      // 0x006d8139    85c0
                         {disp8} je         _jmp_addr_0x006d8147                          // 0x006d813b    740a
                         push               ebx                                           // 0x006d813d    53
                         mov.s              ecx, eax                                      // 0x006d813e    8bc8
                         call               _jmp_addr_0x00824740                          // 0x006d8140    e8fbc51400
                         {disp8} jmp        _jmp_addr_0x006d8149                          // 0x006d8145    eb02
_jmp_addr_0x006d8147:    xor.s              eax, eax                                      // 0x006d8147    33c0
_jmp_addr_0x006d8149:    {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x006d8149    894500
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006d814c    8b442418
                         add                ebp, 0x04                                     // 0x006d8150    83c504
                         dec                eax                                           // 0x006d8153    48
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006d8154    89442418
                         {disp8} jne        _jmp_addr_0x006d8125                          // 0x006d8158    75cb
                         {disp8} mov        dword ptr [edi + 0x64], 0x3f800000            // 0x006d815a    c747640000803f
                         {disp8} jmp        _jmp_addr_0x006d8165                          // 0x006d8161    eb02
_jmp_addr_0x006d8163:    xor.s              edi, edi                                      // 0x006d8163    33ff
_jmp_addr_0x006d8165:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x006d8165    d944241c
                         push               0x00000428                                    // 0x006d8169    6828040000
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2126c]             // 0x006d816e    d8256ca28c00
                         push               0x00c09908                                    // 0x006d8174    680899c000
                         push               0x68                                          // 0x006d8179    6a68
                         {disp32} mov       dword ptr [esi + 0x00000400], edi             // 0x006d817b    89be00040000
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x006d8181    d95c2428
                         call               ___nw__FUl                                    // 0x006d8185    e806361000
                         mov.s              edi, eax                                      // 0x006d818a    8bf8
                         add                esp, 0x0c                                     // 0x006d818c    83c40c
                         test               edi, edi                                      // 0x006d818f    85ff
                         {disp32} je        _jmp_addr_0x006d8232                          // 0x006d8191    0f849b000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000408]             // 0x006d8197    8b8e08040000
                         {disp8} mov        dword ptr [edi + 0x5c], ecx                   // 0x006d819d    894f5c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4f39f4]        // 0x006d81a0    8b15f499eb00
                         {disp8} mov        dword ptr [edi + 0x60], edx                   // 0x006d81a6    895760
                         {disp32} mov       dword ptr [data_bytes + 0x4f39f4], edi        // 0x006d81a9    893df499eb00
                         {disp8} mov        dword ptr [edi + 0x58], 0x40e00000            // 0x006d81af    c747580000e040
                         {disp8} mov        dword ptr [edi + 0x54], 0x00000000            // 0x006d81b6    c7475400000000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x006d81bd    8b44241c
                         {disp8} mov        dword ptr [edi + 0x48], eax                   // 0x006d81c1    894748
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x006d81c4    8b4c2420
                         {disp8} lea        ebx, dword ptr [edi + 0x48]                   // 0x006d81c8    8d5f48
                         {disp8} mov        dword ptr [ebx + 0x04], ecx                   // 0x006d81cb    894b04
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x006d81ce    8b542424
                         {disp8} mov        dword ptr [ebx + 0x08], edx                   // 0x006d81d2    895308
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x006d81d5    8b44241c
                         {disp8} mov        dword ptr [edi + 0x3c], eax                   // 0x006d81d9    89473c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x006d81dc    8b4c2420
                         {disp8} mov        dword ptr [edi + 0x40], ecx                   // 0x006d81e0    894f40
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x006d81e3    8b542424
                         {disp8} mov        dword ptr [edi + 0x44], edx                   // 0x006d81e7    895744
                         mov.s              ebp, edi                                      // 0x006d81ea    8bef
                         {disp8} mov        dword ptr [esp + 0x18], 0x0000000f            // 0x006d81ec    c74424180f000000
_jmp_addr_0x006d81f4:    push               0x000002f8                                    // 0x006d81f4    68f8020000
                         push               0x00be9e50                                    // 0x006d81f9    68509ebe00
                         push               0x24                                          // 0x006d81fe    6a24
                         call               ___nw__FUl                                    // 0x006d8200    e88b351000
                         add                esp, 0x0c                                     // 0x006d8205    83c40c
                         test               eax, eax                                      // 0x006d8208    85c0
                         {disp8} je         _jmp_addr_0x006d8216                          // 0x006d820a    740a
                         push               ebx                                           // 0x006d820c    53
                         mov.s              ecx, eax                                      // 0x006d820d    8bc8
                         call               _jmp_addr_0x00824740                          // 0x006d820f    e82cc51400
                         {disp8} jmp        _jmp_addr_0x006d8218                          // 0x006d8214    eb02
_jmp_addr_0x006d8216:    xor.s              eax, eax                                      // 0x006d8216    33c0
_jmp_addr_0x006d8218:    {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x006d8218    894500
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006d821b    8b442418
                         add                ebp, 0x04                                     // 0x006d821f    83c504
                         dec                eax                                           // 0x006d8222    48
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006d8223    89442418
                         {disp8} jne        _jmp_addr_0x006d81f4                          // 0x006d8227    75cb
                         {disp8} mov        dword ptr [edi + 0x64], 0x3f800000            // 0x006d8229    c747640000803f
                         {disp8} jmp        _jmp_addr_0x006d8234                          // 0x006d8230    eb02
_jmp_addr_0x006d8232:    xor.s              edi, edi                                      // 0x006d8232    33ff
_jmp_addr_0x006d8234:    {disp32} mov       dword ptr [esi + 0x00000404], edi             // 0x006d8234    89be04040000
                         pop                edi                                           // 0x006d823a    5f
                         {disp32} mov       dword ptr [esi + 0x00000584], 0x00000001      // 0x006d823b    c7868405000001000000
                         pop                esi                                           // 0x006d8245    5e
                         pop                ebp                                           // 0x006d8246    5d
                         pop                ebx                                           // 0x006d8247    5b
                         add                esp, 0x0000023c                               // 0x006d8248    81c43c020000
                         ret                                                              // 0x006d824e    c3
                         mov.s              ecx, esi                                      // 0x006d824f    8bce
                         call               _jmp_addr_0x006d71d0                          // 0x006d8251    e87aefffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000398]             // 0x006d8256    8b8e98030000
                         cmp.s              ecx, ebp                                      // 0x006d825c    3bcd
                         {disp32} lea       edi, dword ptr [esi + 0x00000398]             // 0x006d825e    8dbe98030000
                         {disp8} je         _jmp_addr_0x006d8278                          // 0x006d8264    7412
                         mov                eax, dword ptr [ecx]                          // 0x006d8266    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d8268    ff502c
                         test               eax, eax                                      // 0x006d826b    85c0
                         {disp8} jne        _jmp_addr_0x006d8278                          // 0x006d826d    7509
                         push               edi                                           // 0x006d826f    57
                         call               _jmp_addr_0x006d7400                          // 0x006d8270    e88bf1ffff
                         add                esp, 0x04                                     // 0x006d8275    83c404
_jmp_addr_0x006d8278:    mov.s              ecx, esi                                      // 0x006d8278    8bce
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                   // 0x006d827a    c644241300
                         xor.s              ebx, ebx                                      // 0x006d827f    33db
                         call               _jmp_addr_0x006db520                          // 0x006d8281    e89a320000
                         test               eax, eax                                      // 0x006d8286    85c0
                         {disp32} jle       _jmp_addr_0x006d8334                          // 0x006d8288    0f8ea6000000
                         {disp32} lea       ebp, dword ptr [esi + 0x00000430]             // 0x006d828e    8dae30040000
                         mov.s              edi, ebp                                      // 0x006d8294    8bfd
_jmp_addr_0x006d8296:    {disp8} mov        ecx, dword ptr [edi + -0x20]                  // 0x006d8296    8b4fe0
                         mov                edx, dword ptr [ecx]                          // 0x006d8299    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x006d829b    ff522c
                         test               eax, eax                                      // 0x006d829e    85c0
                         {disp8} jne        _jmp_addr_0x006d82aa                          // 0x006d82a0    7508
                         push               ebx                                           // 0x006d82a2    53
                         mov.s              ecx, esi                                      // 0x006d82a3    8bce
                         call               _jmp_addr_0x006dbcf0                          // 0x006d82a5    e8463a0000
_jmp_addr_0x006d82aa:    mov                ecx, dword ptr [edi]                          // 0x006d82aa    8b0f
                         mov                eax, dword ptr [ecx]                          // 0x006d82ac    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006d82ae    ff502c
                         test               eax, eax                                      // 0x006d82b1    85c0
                         {disp8} jne        _jmp_addr_0x006d82bd                          // 0x006d82b3    7508
                         push               ebx                                           // 0x006d82b5    53
                         mov.s              ecx, esi                                      // 0x006d82b6    8bce
                         call               _jmp_addr_0x006dbc10                          // 0x006d82b8    e853390000
_jmp_addr_0x006d82bd:    {disp8} mov        ecx, dword ptr [edi + -0x20]                  // 0x006d82bd    8b4fe0
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x006d82c0    e82ba5f1ff
                         cmp                al, 0x01                                      // 0x006d82c5    3c01
                         {disp8} jne        _jmp_addr_0x006d82cd                          // 0x006d82c7    7504
                         {disp8} mov        byte ptr [esp + 0x13], al                     // 0x006d82c9    88442413
_jmp_addr_0x006d82cd:    mov                ecx, dword ptr [edi]                          // 0x006d82cd    8b0f
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x006d82cf    e81ca5f1ff
                         cmp                al, 0x01                                      // 0x006d82d4    3c01
                         {disp8} jne        _jmp_addr_0x006d82dc                          // 0x006d82d6    7504
                         {disp8} mov        byte ptr [esp + 0x13], al                     // 0x006d82d8    88442413
_jmp_addr_0x006d82dc:    mov.s              ecx, esi                                      // 0x006d82dc    8bce
                         inc                ebx                                           // 0x006d82de    43
                         add                edi, 0x04                                     // 0x006d82df    83c704
                         call               _jmp_addr_0x006db520                          // 0x006d82e2    e839320000
                         cmp.s              ebx, eax                                      // 0x006d82e7    3bd8
                         {disp8} jl         _jmp_addr_0x006d8296                          // 0x006d82e9    7cab
                         {disp8} mov        al, byte ptr [esp + 0x13]                     // 0x006d82eb    8a442413
                         test               al, al                                        // 0x006d82ef    84c0
                         {disp8} je         _jmp_addr_0x006d8332                          // 0x006d82f1    743f
                         mov.s              ecx, esi                                      // 0x006d82f3    8bce
                         xor.s              ebx, ebx                                      // 0x006d82f5    33db
                         call               _jmp_addr_0x006db520                          // 0x006d82f7    e824320000
                         test               eax, eax                                      // 0x006d82fc    85c0
                         {disp32} jle       _jmp_addr_0x006d8a8c                          // 0x006d82fe    0f8e88070000
                         mov.s              edi, ebp                                      // 0x006d8304    8bfd
                         mov                ebp, 0x00002000                               // 0x006d8306    bd00200000
_jmp_addr_0x006d830b:    {disp8} mov        eax, dword ptr [edi + -0x20]                  // 0x006d830b    8b47e0
                         or                 word ptr [eax + 0x24], bp                     // 0x006d830e    66096824
                         mov                eax, dword ptr [edi]                          // 0x006d8312    8b07
                         or                 word ptr [eax + 0x24], bp                     // 0x006d8314    66096824
                         mov.s              ecx, esi                                      // 0x006d8318    8bce
                         inc                ebx                                           // 0x006d831a    43
                         add                edi, 0x04                                     // 0x006d831b    83c704
                         call               _jmp_addr_0x006db520                          // 0x006d831e    e8fd310000
                         cmp.s              ebx, eax                                      // 0x006d8323    3bd8
                         {disp8} jl         _jmp_addr_0x006d830b                          // 0x006d8325    7ce4
                         pop                edi                                           // 0x006d8327    5f
                         pop                esi                                           // 0x006d8328    5e
                         pop                ebp                                           // 0x006d8329    5d
                         pop                ebx                                           // 0x006d832a    5b
                         add                esp, 0x0000023c                               // 0x006d832b    81c43c020000
                         ret                                                              // 0x006d8331    c3
_jmp_addr_0x006d8332:    xor.s              ebp, ebp                                      // 0x006d8332    33ed
_jmp_addr_0x006d8334:    {disp32} mov       eax, dword ptr [esi + 0x00000490]             // 0x006d8334    8b8690040000
                         cmp                eax, 0x02                                     // 0x006d833a    83f802
                         {disp8} mov        byte ptr [esp + 0x13], 0x01                   // 0x006d833d    c644241301
                         {disp8} jne        _jmp_addr_0x006d8382                          // 0x006d8342    753e
                         mov.s              ecx, esi                                      // 0x006d8344    8bce
                         xor.s              ebx, ebx                                      // 0x006d8346    33db
                         call               _jmp_addr_0x006db520                          // 0x006d8348    e8d3310000
                         test               eax, eax                                      // 0x006d834d    85c0
                         {disp8} jle        _jmp_addr_0x006d83d0                          // 0x006d834f    7e7f
                         {disp32} lea       edi, dword ptr [esi + 0x00000470]             // 0x006d8351    8dbe70040000
_jmp_addr_0x006d8357:    mov.s              ecx, esi                                      // 0x006d8357    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d8359    e8c2310000
                         mov                ecx, dword ptr [edi]                          // 0x006d835e    8b0f
                         sub                eax, 0x02                                     // 0x006d8360    83e802
                         cmp.s              ecx, eax                                      // 0x006d8363    3bc8
                         {disp8} je         _jmp_addr_0x006d836c                          // 0x006d8365    7405
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                   // 0x006d8367    c644241300
_jmp_addr_0x006d836c:    mov.s              ecx, esi                                      // 0x006d836c    8bce
                         inc                ebx                                           // 0x006d836e    43
                         add                edi, 0x04                                     // 0x006d836f    83c704
                         call               _jmp_addr_0x006db520                          // 0x006d8372    e8a9310000
                         cmp.s              ebx, eax                                      // 0x006d8377    3bd8
                         {disp8} jl         _jmp_addr_0x006d8357                          // 0x006d8379    7cdc
                         mov                ebp, 0x00000001                               // 0x006d837b    bd01000000
                         {disp8} jmp        _jmp_addr_0x006d83c6                          // 0x006d8380    eb44
_jmp_addr_0x006d8382:    mov                ebp, 0x00000001                               // 0x006d8382    bd01000000
                         cmp.s              eax, ebp                                      // 0x006d8387    3bc5
                         {disp32} jne       _jmp_addr_0x006d841a                          // 0x006d8389    0f858b000000
                         mov.s              ecx, esi                                      // 0x006d838f    8bce
                         xor.s              ebx, ebx                                      // 0x006d8391    33db
                         call               _jmp_addr_0x006db520                          // 0x006d8393    e888310000
                         test               eax, eax                                      // 0x006d8398    85c0
                         {disp8} jle        _jmp_addr_0x006d83d5                          // 0x006d839a    7e39
                         {disp32} lea       edi, dword ptr [esi + 0x00000450]             // 0x006d839c    8dbe50040000
_jmp_addr_0x006d83a2:    mov.s              ecx, esi                                      // 0x006d83a2    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d83a4    e877310000
                         mov                ecx, dword ptr [edi]                          // 0x006d83a9    8b0f
                         sub                eax, 0x02                                     // 0x006d83ab    83e802
                         cmp.s              ecx, eax                                      // 0x006d83ae    3bc8
                         {disp8} je         _jmp_addr_0x006d83b7                          // 0x006d83b0    7405
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                   // 0x006d83b2    c644241300
_jmp_addr_0x006d83b7:    mov.s              ecx, esi                                      // 0x006d83b7    8bce
                         inc                ebx                                           // 0x006d83b9    43
                         add                edi, 0x04                                     // 0x006d83ba    83c704
                         call               _jmp_addr_0x006db520                          // 0x006d83bd    e85e310000
                         cmp.s              ebx, eax                                      // 0x006d83c2    3bd8
                         {disp8} jl         _jmp_addr_0x006d83a2                          // 0x006d83c4    7cdc
_jmp_addr_0x006d83c6:    {disp8} mov        al, byte ptr [esp + 0x13]                     // 0x006d83c6    8a442413
                         test               al, al                                        // 0x006d83ca    84c0
                         {disp8} je         _jmp_addr_0x006d841a                          // 0x006d83cc    744c
                         {disp8} jmp        _jmp_addr_0x006d83d5                          // 0x006d83ce    eb05
_jmp_addr_0x006d83d0:    mov                ebp, 0x00000001                               // 0x006d83d0    bd01000000
_jmp_addr_0x006d83d5:    mov.s              ecx, esi                                      // 0x006d83d5    8bce
                         xor.s              edi, edi                                      // 0x006d83d7    33ff
                         call               _jmp_addr_0x006db520                          // 0x006d83d9    e842310000
                         test               eax, eax                                      // 0x006d83de    85c0
                         {disp8} jle        _jmp_addr_0x006d841a                          // 0x006d83e0    7e38
                         {disp32} lea       ebp, dword ptr [esi + 0x00000450]             // 0x006d83e2    8dae50040000
_jmp_addr_0x006d83e8:    {disp8} mov        dword ptr [ebp + 0x20], 0x00000000            // 0x006d83e8    c7452000000000
                         push               edi                                           // 0x006d83ef    57
                         mov.s              ecx, esi                                      // 0x006d83f0    8bce
                         {disp8} mov        dword ptr [ebp + 0x00], 0x00000000            // 0x006d83f2    c7450000000000
                         call               _jmp_addr_0x006dbcf0                          // 0x006d83f9    e8f2380000
                         push               edi                                           // 0x006d83fe    57
                         mov.s              ecx, esi                                      // 0x006d83ff    8bce
                         call               _jmp_addr_0x006dbc10                          // 0x006d8401    e80a380000
                         mov.s              ecx, esi                                      // 0x006d8406    8bce
                         inc                edi                                           // 0x006d8408    47
                         add                ebp, 0x04                                     // 0x006d8409    83c504
                         call               _jmp_addr_0x006db520                          // 0x006d840c    e80f310000
                         cmp.s              edi, eax                                      // 0x006d8411    3bf8
                         {disp8} jl         _jmp_addr_0x006d83e8                          // 0x006d8413    7cd3
                         mov                ebp, 0x00000001                               // 0x006d8415    bd01000000
_jmp_addr_0x006d841a:    mov.s              ecx, esi                                      // 0x006d841a    8bce
                         xor.s              ebx, ebx                                      // 0x006d841c    33db
                         call               _jmp_addr_0x006db520                          // 0x006d841e    e8fd300000
                         test               eax, eax                                      // 0x006d8423    85c0
                         {disp8} jle        _jmp_addr_0x006d8469                          // 0x006d8425    7e42
                         {disp32} lea       edi, dword ptr [esi + 0x00000430]             // 0x006d8427    8dbe30040000
_jmp_addr_0x006d842d:    {disp8} mov        ecx, dword ptr [edi + -0x20]                  // 0x006d842d    8b4fe0
                         test               byte ptr [ecx + 0x24], 0x04                   // 0x006d8430    f6412404
                         {disp8} je         _jmp_addr_0x006d8446                          // 0x006d8434    7410
                         {disp32} mov       dword ptr [esi + 0x00000490], 0x00000002      // 0x006d8436    c7869004000002000000
                         {disp32} mov       dword ptr [esi + 0x00000584], ebp             // 0x006d8440    89ae84050000
_jmp_addr_0x006d8446:    mov                edx, dword ptr [edi]                          // 0x006d8446    8b17
                         test               byte ptr [edx + 0x24], 0x04                   // 0x006d8448    f6422404
                         {disp8} je         _jmp_addr_0x006d845a                          // 0x006d844c    740c
                         {disp32} mov       dword ptr [esi + 0x00000490], ebp             // 0x006d844e    89ae90040000
                         {disp32} mov       dword ptr [esi + 0x00000584], ebp             // 0x006d8454    89ae84050000
_jmp_addr_0x006d845a:    mov.s              ecx, esi                                      // 0x006d845a    8bce
                         inc                ebx                                           // 0x006d845c    43
                         add                edi, 0x04                                     // 0x006d845d    83c704
                         call               _jmp_addr_0x006db520                          // 0x006d8460    e8bb300000
                         cmp.s              ebx, eax                                      // 0x006d8465    3bd8
                         {disp8} jl         _jmp_addr_0x006d842d                          // 0x006d8467    7cc4
_jmp_addr_0x006d8469:    xor.s              ebp, ebp                                      // 0x006d8469    33ed
                         mov.s              ecx, esi                                      // 0x006d846b    8bce
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x006d846d    896c2414
                         call               _jmp_addr_0x006db520                          // 0x006d8471    e8aa300000
                         test               eax, eax                                      // 0x006d8476    85c0
                         {disp32} jle       _jmp_addr_0x006d89ed                          // 0x006d8478    0f8e6f050000
                         {disp32} lea       edi, dword ptr [esi + 0x00000430]             // 0x006d847e    8dbe30040000
_jmp_addr_0x006d8484:    {disp8} mov        eax, dword ptr [edi + -0x20]                  // 0x006d8484    8b47e0
                         test               byte ptr [eax + 0x24], 0x04                   // 0x006d8487    f6402404
                         {disp32} jne       _jmp_addr_0x006d858f                          // 0x006d848b    0f85fe000000
                         push               ebp                                           // 0x006d8491    55
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x006d8492    8d4c2458
                         push               ecx                                           // 0x006d8496    51
                         mov.s              ecx, esi                                      // 0x006d8497    8bce
                         call               _jmp_addr_0x006dbba0                          // 0x006d8499    e802370000
                         {disp8} mov        ecx, dword ptr [edi + -0x20]                  // 0x006d849e    8b4fe0
                         push               eax                                           // 0x006d84a1    50
                         add                ecx, 0x14                                     // 0x006d84a2    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d84a5    e806d2f2ff
                         test               eax, eax                                      // 0x006d84aa    85c0
                         {disp32} je        _jmp_addr_0x006d858f                          // 0x006d84ac    0f84dd000000
                         cmp                dword ptr [esi + 0x00000490], 0x02            // 0x006d84b2    83be9004000002
                         {disp32} jne       _jmp_addr_0x006d8587                          // 0x006d84b9    0f85c8000000
                         {disp8} mov        eax, dword ptr [edi + -0x20]                  // 0x006d84bf    8b47e0
                         {disp8} mov        edx, dword ptr [eax + 0x14]                   // 0x006d84c2    8b5014
                         {disp8} mov        ebx, dword ptr [esi + 0x14]                   // 0x006d84c5    8b5e14
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x006d84c8    8b4e18
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x006d84cb    8b4018
                         sub.s              edx, ebx                                      // 0x006d84ce    2bd3
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x006d84d0    8954242c
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x006d84d4    db44242c
                         sub.s              eax, ecx                                      // 0x006d84d8    2bc1
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x006d84da    89442434
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x006d84de    d95c2430
                         push               ecx                                           // 0x006d84e2    51
                         {disp8} fild       dword ptr [esp + 0x38]                        // 0x006d84e3    db442438
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x006d84e7    d95c241c
                         {disp32} fld       dword ptr [esi + 0x00000388]                  // 0x006d84eb    d98688030000
                         {disp32} fild      dword ptr [esi + 0x00000390]                  // 0x006d84f1    db8690030000
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x006d84f7    d84c2434
                         {disp32} fild      dword ptr [esi + 0x00000394]                  // 0x006d84fb    db8694030000
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x006d8501    d84c241c
                         fsubp              st(1), st                                     // 0x006d8505    dee9
                         fld                st(1)                                         // 0x006d8507    d9c1
                         fmul               st, st(2)                                     // 0x006d8509    d8ca
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91ae4]             // 0x006d850b    d80de4aa9300
                         fdivp              st(1), st                                     // 0x006d8511    def9
                         fstp               dword ptr [esp]                               // 0x006d8513    d91c24
                         fstp               st(0)                                         // 0x006d8516    ddd8
                         call               _jmp_addr_0x006d7190                          // 0x006d8518    e873ecffff
                         {disp32} fld       dword ptr [esi + 0x00000388]                  // 0x006d851d    d98688030000
                         mov.s              ebx, eax                                      // 0x006d8523    8bd8
                         {disp32} fild      dword ptr [esi + 0x00000390]                  // 0x006d8525    db8690030000
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x006d852b    d84c241c
                         {disp32} fild      dword ptr [esi + 0x00000394]                  // 0x006d852f    db8694030000
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x006d8535    d84c2434
                         faddp              st(1), st                                     // 0x006d8539    dec1
                         fld                st(1)                                         // 0x006d853b    d9c1
                         fmul               st, st(2)                                     // 0x006d853d    d8ca
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91ae4]             // 0x006d853f    d80de4aa9300
                         fdivp              st(1), st                                     // 0x006d8545    def9
                         fstp               dword ptr [esp]                               // 0x006d8547    d91c24
                         fstp               st(0)                                         // 0x006d854a    ddd8
                         call               _jmp_addr_0x006d7190                          // 0x006d854c    e83fecffff
                         mov.s              ecx, eax                                      // 0x006d8551    8bc8
                         mov.s              eax, ebx                                      // 0x006d8553    8bc3
                         cdq                                                              // 0x006d8555    99
                         sub.s              eax, edx                                      // 0x006d8556    2bc2
                         sar                eax, 1                                        // 0x006d8558    d1f8
                         add                esp, 0x04                                     // 0x006d855a    83c404
                         cmp.s              eax, ebp                                      // 0x006d855d    3bc5
                         {disp8} jne        _jmp_addr_0x006d8587                          // 0x006d855f    7526
                         mov.s              eax, ecx                                      // 0x006d8561    8bc1
                         cdq                                                              // 0x006d8563    99
                         sub.s              eax, edx                                      // 0x006d8564    2bc2
                         mov.s              ebx, eax                                      // 0x006d8566    8bd8
                         sar                ebx, 1                                        // 0x006d8568    d1fb
                         {disp8} js         _jmp_addr_0x006d8587                          // 0x006d856a    781b
                         mov.s              ecx, esi                                      // 0x006d856c    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d856e    e8ad2f0000
                         sub                eax, dword ptr [edi + 0x40]                   // 0x006d8573    2b4740
                         dec                eax                                           // 0x006d8576    48
                         cmp.s              ebx, eax                                      // 0x006d8577    3bd8
                         {disp8} jge        _jmp_addr_0x006d8587                          // 0x006d8579    7d0c
                         cmp                dword ptr [edi + 0x20], ebx                   // 0x006d857b    395f20
                         {disp8} je         _jmp_addr_0x006d8584                          // 0x006d857e    7404
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x006d8580    ff442414
_jmp_addr_0x006d8584:    {disp8} mov        dword ptr [edi + 0x20], ebx                   // 0x006d8584    895f20
_jmp_addr_0x006d8587:    push               ebp                                           // 0x006d8587    55
                         mov.s              ecx, esi                                      // 0x006d8588    8bce
                         call               _jmp_addr_0x006dbcf0                          // 0x006d858a    e861370000
_jmp_addr_0x006d858f:    mov                ecx, dword ptr [edi]                          // 0x006d858f    8b0f
                         test               byte ptr [ecx + 0x24], 0x04                   // 0x006d8591    f6412404
                         {disp32} jne       _jmp_addr_0x006d86a3                          // 0x006d8595    0f8508010000
                         push               ebp                                           // 0x006d859b    55
                         {disp8} lea        edx, dword ptr [esp + 0x70]                   // 0x006d859c    8d542470
                         push               edx                                           // 0x006d85a0    52
                         mov.s              ecx, esi                                      // 0x006d85a1    8bce
                         call               _jmp_addr_0x006dbbd0                          // 0x006d85a3    e828360000
                         mov                ecx, dword ptr [edi]                          // 0x006d85a8    8b0f
                         push               eax                                           // 0x006d85aa    50
                         add                ecx, 0x14                                     // 0x006d85ab    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d85ae    e8fdd0f2ff
                         test               eax, eax                                      // 0x006d85b3    85c0
                         {disp32} je        _jmp_addr_0x006d86a3                          // 0x006d85b5    0f84e8000000
                         cmp                dword ptr [esi + 0x00000490], 0x01            // 0x006d85bb    83be9004000001
                         {disp32} jne       _jmp_addr_0x006d869b                          // 0x006d85c2    0f85d3000000
                         mov                eax, dword ptr [edi]                          // 0x006d85c8    8b07
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x006d85ca    8b5614
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x006d85cd    8b4814
                         sub.s              ecx, edx                                      // 0x006d85d0    2bca
                         {disp8} mov        edx, dword ptr [eax + 0x18]                   // 0x006d85d2    8b5018
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x006d85d5    894c242c
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x006d85d9    db44242c
                         sub                edx, dword ptr [esi + 0x18]                   // 0x006d85dd    2b5618
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x006d85e0    d95c2418
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x006d85e4    89542434
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x006d85e8    db442434
                         push               ecx                                           // 0x006d85ec    51
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x006d85ed    d95c2434
                         {disp32} fld       dword ptr [esi + 0x00000388]                  // 0x006d85f1    d98688030000
                         {disp32} fild      dword ptr [esi + 0x00000390]                  // 0x006d85f7    db8690030000
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x006d85fd    d84c241c
                         {disp32} fild      dword ptr [esi + 0x00000394]                  // 0x006d8601    db8694030000
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x006d8607    d84c2434
                         fsubp              st(1), st                                     // 0x006d860b    dee9
                         fld                st(1)                                         // 0x006d860d    d9c1
                         fmul               st, st(2)                                     // 0x006d860f    d8ca
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91ae4]             // 0x006d8611    d80de4aa9300
                         fdivp              st(1), st                                     // 0x006d8617    def9
                         fstp               dword ptr [esp]                               // 0x006d8619    d91c24
                         fstp               st(0)                                         // 0x006d861c    ddd8
                         call               _jmp_addr_0x006d7190                          // 0x006d861e    e86debffff
                         {disp32} fld       dword ptr [esi + 0x00000388]                  // 0x006d8623    d98688030000
                         mov.s              ebx, eax                                      // 0x006d8629    8bd8
                         {disp32} fild      dword ptr [esi + 0x00000390]                  // 0x006d862b    db8690030000
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x006d8631    d84c2434
                         {disp32} fild      dword ptr [esi + 0x00000394]                  // 0x006d8635    db8694030000
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x006d863b    d84c241c
                         faddp              st(1), st                                     // 0x006d863f    dec1
                         fld                st(1)                                         // 0x006d8641    d9c1
                         fmul               st, st(2)                                     // 0x006d8643    d8ca
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91ae4]             // 0x006d8645    d80de4aa9300
                         fdivp              st(1), st                                     // 0x006d864b    def9
                         fstp               dword ptr [esp]                               // 0x006d864d    d91c24
                         fstp               st(0)                                         // 0x006d8650    ddd8
                         call               _jmp_addr_0x006d7190                          // 0x006d8652    e839ebffff
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x006d8657    89442430
                         mov.s              eax, ebx                                      // 0x006d865b    8bc3
                         cdq                                                              // 0x006d865d    99
                         sub.s              eax, edx                                      // 0x006d865e    2bc2
                         sar                eax, 1                                        // 0x006d8660    d1f8
                         add                esp, 0x04                                     // 0x006d8662    83c404
                         cmp.s              eax, ebp                                      // 0x006d8665    3bc5
                         {disp8} jne        _jmp_addr_0x006d869b                          // 0x006d8667    7532
                         mov.s              ecx, esi                                      // 0x006d8669    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d866b    e8b02e0000
                         mov.s              ebx, eax                                      // 0x006d8670    8bd8
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x006d8672    8b44242c
                         cdq                                                              // 0x006d8676    99
                         sub.s              eax, edx                                      // 0x006d8677    2bc2
                         sar                eax, 1                                        // 0x006d8679    d1f8
                         sub.s              ebx, eax                                      // 0x006d867b    2bd8
                         dec                ebx                                           // 0x006d867d    4b
                         {disp8} js         _jmp_addr_0x006d869b                          // 0x006d867e    781b
                         mov.s              ecx, esi                                      // 0x006d8680    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d8682    e8992e0000
                         sub                eax, dword ptr [edi + 0x20]                   // 0x006d8687    2b4720
                         dec                eax                                           // 0x006d868a    48
                         cmp.s              ebx, eax                                      // 0x006d868b    3bd8
                         {disp8} jge        _jmp_addr_0x006d869b                          // 0x006d868d    7d0c
                         cmp                dword ptr [edi + 0x40], ebx                   // 0x006d868f    395f40
                         {disp8} je         _jmp_addr_0x006d8698                          // 0x006d8692    7404
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x006d8694    ff442414
_jmp_addr_0x006d8698:    {disp8} mov        dword ptr [edi + 0x40], ebx                   // 0x006d8698    895f40
_jmp_addr_0x006d869b:    push               ebp                                           // 0x006d869b    55
                         mov.s              ecx, esi                                      // 0x006d869c    8bce
                         call               _jmp_addr_0x006dbc10                          // 0x006d869e    e86d350000
_jmp_addr_0x006d86a3:    mov.s              ecx, esi                                      // 0x006d86a3    8bce
                         inc                ebp                                           // 0x006d86a5    45
                         add                edi, 0x04                                     // 0x006d86a6    83c704
                         call               _jmp_addr_0x006db520                          // 0x006d86a9    e8722e0000
                         cmp.s              ebp, eax                                      // 0x006d86ae    3be8
                         {disp32} jl        _jmp_addr_0x006d8484                          // 0x006d86b0    0f8ccefdffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006d86b6    8b442414
                         test               eax, eax                                      // 0x006d86ba    85c0
                         {disp32} je        _jmp_addr_0x006d89ed                          // 0x006d86bc    0f842b030000
                         cmp                dword ptr [esi + 0x00000490], 0x02            // 0x006d86c2    83be9004000002
                         {disp32} jne       _jmp_addr_0x006d8869                          // 0x006d86c9    0f859a010000
                         mov.s              ecx, esi                                      // 0x006d86cf    8bce
                         xor.s              ebx, ebx                                      // 0x006d86d1    33db
                         xor.s              ebp, ebp                                      // 0x006d86d3    33ed
                         call               _jmp_addr_0x006db520                          // 0x006d86d5    e8462e0000
                         test               eax, eax                                      // 0x006d86da    85c0
                         {disp8} jle        _jmp_addr_0x006d8712                          // 0x006d86dc    7e34
                         {disp32} lea       edi, dword ptr [esi + 0x00000450]             // 0x006d86de    8dbe50040000
_jmp_addr_0x006d86e4:    mov.s              ecx, esi                                      // 0x006d86e4    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d86e6    e8352e0000
                         {disp8} mov        edx, dword ptr [edi + 0x20]                   // 0x006d86eb    8b5720
                         mov                ecx, 0xfffffffe                               // 0x006d86ee    b9feffffff
                         sub.s              ecx, edx                                      // 0x006d86f3    2bca
                         sub                ecx, dword ptr [edi]                          // 0x006d86f5    2b0f
                         add.s              eax, ecx                                      // 0x006d86f7    03c1
                         xor.s              ebx, eax                                      // 0x006d86f9    33d8
                         mov.s              ecx, esi                                      // 0x006d86fb    8bce
                         inc                ebp                                           // 0x006d86fd    45
                         add                edi, 0x04                                     // 0x006d86fe    83c704
                         call               _jmp_addr_0x006db520                          // 0x006d8701    e81a2e0000
                         cmp.s              ebp, eax                                      // 0x006d8706    3be8
                         {disp8} jl         _jmp_addr_0x006d86e4                          // 0x006d8708    7cda
                         test               ebx, ebx                                      // 0x006d870a    85db
                         {disp32} jne       _jmp_addr_0x006d87bf                          // 0x006d870c    0f85ad000000
_jmp_addr_0x006d8712:    push               0x000004b4                                    // 0x006d8712    68b4040000
                         push               0x00c09908                                    // 0x006d8717    680899c000
                         mov.s              ecx, esi                                      // 0x006d871c    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d871e    e8fd2d0000
                         push               eax                                           // 0x006d8723    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x006d8724    e8e75d0000
                         add                esp, 0x0c                                     // 0x006d8729    83c40c
                         mov.s              ecx, esi                                      // 0x006d872c    8bce
                         mov.s              edi, eax                                      // 0x006d872e    8bf8
                         xor.s              ebx, ebx                                      // 0x006d8730    33db
                         call               _jmp_addr_0x006db520                          // 0x006d8732    e8e92d0000
                         test               eax, eax                                      // 0x006d8737    85c0
                         {disp32} jle       _jmp_addr_0x006d89ed                          // 0x006d8739    0f8eae020000
_jmp_addr_0x006d873f:    mov.s              ecx, esi                                      // 0x006d873f    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d8741    e8da2d0000
                         {disp32} mov       ebp, dword ptr [esi + edi * 0x4 + 0x00000450] // 0x006d8746    8bacbe50040000
                         mov                edx, 0xfffffffe                               // 0x006d874d    bafeffffff
                         sub.s              edx, ebp                                      // 0x006d8752    2bd5
                         add.s              eax, edx                                      // 0x006d8754    03c2
                         {disp8} jne        _jmp_addr_0x006d877a                          // 0x006d8756    7522
                         mov.s              ecx, esi                                      // 0x006d8758    8bce
                         inc                ebx                                           // 0x006d875a    43
                         call               _jmp_addr_0x006db520                          // 0x006d875b    e8c02d0000
                         mov.s              ecx, eax                                      // 0x006d8760    8bc8
                         {disp8} lea        eax, dword ptr [edi + 0x01]                   // 0x006d8762    8d4701
                         cdq                                                              // 0x006d8765    99
                         idiv               ecx                                           // 0x006d8766    f7f9
                         mov.s              ecx, esi                                      // 0x006d8768    8bce
                         mov.s              edi, edx                                      // 0x006d876a    8bfa
                         call               _jmp_addr_0x006db520                          // 0x006d876c    e8af2d0000
                         cmp.s              ebx, eax                                      // 0x006d8771    3bd8
                         {disp8} jl         _jmp_addr_0x006d873f                          // 0x006d8773    7cca
                         {disp32} jmp       _jmp_addr_0x006d89ed                          // 0x006d8775    e973020000
_jmp_addr_0x006d877a:    push               0x000004ba                                    // 0x006d877a    68ba040000
                         push               0x00c09908                                    // 0x006d877f    680899c000
                         push               eax                                           // 0x006d8784    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x006d8785    e8865d0000
                         {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000470] // 0x006d878a    8b8cbe70040000
                         add                esp, 0x0c                                     // 0x006d8791    83c40c
                         cmp.s              eax, ecx                                      // 0x006d8794    3bc1
                         {disp8} jl         _jmp_addr_0x006d8799                          // 0x006d8796    7c01
                         inc                eax                                           // 0x006d8798    40
_jmp_addr_0x006d8799:    push               0x2b                                          // 0x006d8799    6a2b
                         push               edi                                           // 0x006d879b    57
                         {disp32} lea       edx, dword ptr [esp + 0x0000008c]             // 0x006d879c    8d94248c000000
                         push               edx                                           // 0x006d87a3    52
                         mov.s              ecx, esi                                      // 0x006d87a4    8bce
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000470], eax // 0x006d87a6    8984be70040000
                         call               _jmp_addr_0x006dbbd0                          // 0x006d87ad    e81e340000
                         {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000430] // 0x006d87b2    8b8cbe30040000
                         push               eax                                           // 0x006d87b9    50
                         {disp32} jmp       _jmp_addr_0x006d89e8                          // 0x006d87ba    e929020000
_jmp_addr_0x006d87bf:    push               0x000004c5                                    // 0x006d87bf    68c5040000
                         push               0x00c09908                                    // 0x006d87c4    680899c000
                         mov.s              ecx, esi                                      // 0x006d87c9    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d87cb    e8502d0000
                         push               eax                                           // 0x006d87d0    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x006d87d1    e83a5d0000
                         add                esp, 0x0c                                     // 0x006d87d6    83c40c
                         mov.s              ecx, esi                                      // 0x006d87d9    8bce
                         mov.s              edi, eax                                      // 0x006d87db    8bf8
                         xor.s              ebp, ebp                                      // 0x006d87dd    33ed
                         call               _jmp_addr_0x006db520                          // 0x006d87df    e83c2d0000
                         test               eax, eax                                      // 0x006d87e4    85c0
                         {disp32} jle       _jmp_addr_0x006d89ed                          // 0x006d87e6    0f8e01020000
_jmp_addr_0x006d87ec:    mov.s              ecx, esi                                      // 0x006d87ec    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d87ee    e82d2d0000
                         {disp32} mov       edx, dword ptr [esi + edi * 0x4 + 0x00000470] // 0x006d87f3    8b94be70040000
                         mov                ecx, 0xfffffffe                               // 0x006d87fa    b9feffffff
                         sub.s              ecx, edx                                      // 0x006d87ff    2bca
                         sub                ecx, dword ptr [esi + edi * 0x4 + 0x00000450] // 0x006d8801    2b8cbe50040000
                         add.s              eax, ecx                                      // 0x006d8808    03c1
                         mov.s              edx, eax                                      // 0x006d880a    8bd0
                         xor.s              edx, ebx                                      // 0x006d880c    33d3
                         cmp.s              edx, eax                                      // 0x006d880e    3bd0
                         {disp8} jl         _jmp_addr_0x006d8834                          // 0x006d8810    7c22
                         mov.s              ecx, esi                                      // 0x006d8812    8bce
                         inc                ebp                                           // 0x006d8814    45
                         call               _jmp_addr_0x006db520                          // 0x006d8815    e8062d0000
                         mov.s              ecx, eax                                      // 0x006d881a    8bc8
                         {disp8} lea        eax, dword ptr [edi + 0x01]                   // 0x006d881c    8d4701
                         cdq                                                              // 0x006d881f    99
                         idiv               ecx                                           // 0x006d8820    f7f9
                         mov.s              ecx, esi                                      // 0x006d8822    8bce
                         mov.s              edi, edx                                      // 0x006d8824    8bfa
                         call               _jmp_addr_0x006db520                          // 0x006d8826    e8f52c0000
                         cmp.s              ebp, eax                                      // 0x006d882b    3be8
                         {disp8} jl         _jmp_addr_0x006d87ec                          // 0x006d882d    7cbd
                         {disp32} jmp       _jmp_addr_0x006d89ed                          // 0x006d882f    e9b9010000
_jmp_addr_0x006d8834:    {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000470] // 0x006d8834    8b8cbe70040000
                         mov.s              edx, eax                                      // 0x006d883b    8bd0
                         xor.s              edx, ebx                                      // 0x006d883d    33d3
                         sub.s              eax, edx                                      // 0x006d883f    2bc2
                         add.s              ecx, eax                                      // 0x006d8841    03c8
                         push               0x2b                                          // 0x006d8843    6a2b
                         push               edi                                           // 0x006d8845    57
                         {disp32} lea       eax, dword ptr [esp + 0x000000a4]             // 0x006d8846    8d8424a4000000
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000470], ecx // 0x006d884d    898cbe70040000
                         push               eax                                           // 0x006d8854    50
                         mov.s              ecx, esi                                      // 0x006d8855    8bce
                         call               _jmp_addr_0x006dbbd0                          // 0x006d8857    e874330000
                         {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000430] // 0x006d885c    8b8cbe30040000
                         push               eax                                           // 0x006d8863    50
                         {disp32} jmp       _jmp_addr_0x006d89e8                          // 0x006d8864    e97f010000
_jmp_addr_0x006d8869:    mov.s              ecx, esi                                      // 0x006d8869    8bce
                         xor.s              ebx, ebx                                      // 0x006d886b    33db
                         xor.s              ebp, ebp                                      // 0x006d886d    33ed
                         call               _jmp_addr_0x006db520                          // 0x006d886f    e8ac2c0000
                         test               eax, eax                                      // 0x006d8874    85c0
                         {disp8} jle        _jmp_addr_0x006d88ac                          // 0x006d8876    7e34
                         {disp32} lea       edi, dword ptr [esi + 0x00000450]             // 0x006d8878    8dbe50040000
_jmp_addr_0x006d887e:    mov.s              ecx, esi                                      // 0x006d887e    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d8880    e89b2c0000
                         {disp8} mov        edx, dword ptr [edi + 0x20]                   // 0x006d8885    8b5720
                         mov                ecx, 0xfffffffe                               // 0x006d8888    b9feffffff
                         sub.s              ecx, edx                                      // 0x006d888d    2bca
                         sub                ecx, dword ptr [edi]                          // 0x006d888f    2b0f
                         add.s              eax, ecx                                      // 0x006d8891    03c1
                         xor.s              ebx, eax                                      // 0x006d8893    33d8
                         mov.s              ecx, esi                                      // 0x006d8895    8bce
                         inc                ebp                                           // 0x006d8897    45
                         add                edi, 0x04                                     // 0x006d8898    83c704
                         call               _jmp_addr_0x006db520                          // 0x006d889b    e8802c0000
                         cmp.s              ebp, eax                                      // 0x006d88a0    3be8
                         {disp8} jl         _jmp_addr_0x006d887e                          // 0x006d88a2    7cda
                         test               ebx, ebx                                      // 0x006d88a4    85db
                         {disp32} jne       _jmp_addr_0x006d894a                          // 0x006d88a6    0f859e000000
_jmp_addr_0x006d88ac:    push               0x000004df                                    // 0x006d88ac    68df040000
                         push               0x00c09908                                    // 0x006d88b1    680899c000
                         mov.s              ecx, esi                                      // 0x006d88b6    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d88b8    e8632c0000
                         push               eax                                           // 0x006d88bd    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x006d88be    e84d5c0000
                         add                esp, 0x0c                                     // 0x006d88c3    83c40c
                         mov.s              ecx, esi                                      // 0x006d88c6    8bce
                         mov.s              edi, eax                                      // 0x006d88c8    8bf8
                         xor.s              ebx, ebx                                      // 0x006d88ca    33db
                         call               _jmp_addr_0x006db520                          // 0x006d88cc    e84f2c0000
                         test               eax, eax                                      // 0x006d88d1    85c0
                         {disp32} jle       _jmp_addr_0x006d89ed                          // 0x006d88d3    0f8e14010000
_jmp_addr_0x006d88d9:    mov.s              ecx, esi                                      // 0x006d88d9    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d88db    e8402c0000
                         {disp32} mov       ebp, dword ptr [esi + edi * 0x4 + 0x00000470] // 0x006d88e0    8bacbe70040000
                         mov                edx, 0xfffffffe                               // 0x006d88e7    bafeffffff
                         sub.s              edx, ebp                                      // 0x006d88ec    2bd5
                         add.s              eax, edx                                      // 0x006d88ee    03c2
                         {disp8} jne        _jmp_addr_0x006d8914                          // 0x006d88f0    7522
                         mov.s              ecx, esi                                      // 0x006d88f2    8bce
                         inc                ebx                                           // 0x006d88f4    43
                         call               _jmp_addr_0x006db520                          // 0x006d88f5    e8262c0000
                         mov.s              ecx, eax                                      // 0x006d88fa    8bc8
                         {disp8} lea        eax, dword ptr [edi + 0x01]                   // 0x006d88fc    8d4701
                         cdq                                                              // 0x006d88ff    99
                         idiv               ecx                                           // 0x006d8900    f7f9
                         mov.s              ecx, esi                                      // 0x006d8902    8bce
                         mov.s              edi, edx                                      // 0x006d8904    8bfa
                         call               _jmp_addr_0x006db520                          // 0x006d8906    e8152c0000
                         cmp.s              ebx, eax                                      // 0x006d890b    3bd8
                         {disp8} jl         _jmp_addr_0x006d88d9                          // 0x006d890d    7cca
                         {disp32} jmp       _jmp_addr_0x006d89ed                          // 0x006d890f    e9d9000000
_jmp_addr_0x006d8914:    push               0x000004e5                                    // 0x006d8914    68e5040000
                         push               0x00c09908                                    // 0x006d8919    680899c000
                         push               eax                                           // 0x006d891e    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x006d891f    e8ec5b0000
                         {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000450] // 0x006d8924    8b8cbe50040000
                         add                esp, 0x0c                                     // 0x006d892b    83c40c
                         cmp.s              eax, ecx                                      // 0x006d892e    3bc1
                         {disp8} jl         _jmp_addr_0x006d8933                          // 0x006d8930    7c01
                         inc                eax                                           // 0x006d8932    40
_jmp_addr_0x006d8933:    push               0x2b                                          // 0x006d8933    6a2b
                         push               edi                                           // 0x006d8935    57
                         {disp32} lea       edx, dword ptr [esp + 0x000000bc]             // 0x006d8936    8d9424bc000000
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000450], eax // 0x006d893d    8984be50040000
                         push               edx                                           // 0x006d8944    52
                         {disp32} jmp       _jmp_addr_0x006d89d9                          // 0x006d8945    e98f000000
_jmp_addr_0x006d894a:    push               0x000004f0                                    // 0x006d894a    68f0040000
                         push               0x00c09908                                    // 0x006d894f    680899c000
                         mov.s              ecx, esi                                      // 0x006d8954    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d8956    e8c52b0000
                         push               eax                                           // 0x006d895b    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x006d895c    e8af5b0000
                         add                esp, 0x0c                                     // 0x006d8961    83c40c
                         mov.s              ecx, esi                                      // 0x006d8964    8bce
                         mov.s              edi, eax                                      // 0x006d8966    8bf8
                         xor.s              ebp, ebp                                      // 0x006d8968    33ed
                         call               _jmp_addr_0x006db520                          // 0x006d896a    e8b12b0000
                         test               eax, eax                                      // 0x006d896f    85c0
                         {disp8} jle        _jmp_addr_0x006d89ed                          // 0x006d8971    7e7a
_jmp_addr_0x006d8973:    mov.s              ecx, esi                                      // 0x006d8973    8bce
                         call               _jmp_addr_0x006db520                          // 0x006d8975    e8a62b0000
                         {disp32} mov       edx, dword ptr [esi + edi * 0x4 + 0x00000470] // 0x006d897a    8b94be70040000
                         mov                ecx, 0xfffffffe                               // 0x006d8981    b9feffffff
                         sub.s              ecx, edx                                      // 0x006d8986    2bca
                         sub                ecx, dword ptr [esi + edi * 0x4 + 0x00000450] // 0x006d8988    2b8cbe50040000
                         add.s              eax, ecx                                      // 0x006d898f    03c1
                         mov.s              edx, eax                                      // 0x006d8991    8bd0
                         xor.s              edx, ebx                                      // 0x006d8993    33d3
                         cmp.s              edx, eax                                      // 0x006d8995    3bd0
                         {disp8} jl         _jmp_addr_0x006d89b8                          // 0x006d8997    7c1f
                         mov.s              ecx, esi                                      // 0x006d8999    8bce
                         inc                ebp                                           // 0x006d899b    45
                         call               _jmp_addr_0x006db520                          // 0x006d899c    e87f2b0000
                         mov.s              ecx, eax                                      // 0x006d89a1    8bc8
                         {disp8} lea        eax, dword ptr [edi + 0x01]                   // 0x006d89a3    8d4701
                         cdq                                                              // 0x006d89a6    99
                         idiv               ecx                                           // 0x006d89a7    f7f9
                         mov.s              ecx, esi                                      // 0x006d89a9    8bce
                         mov.s              edi, edx                                      // 0x006d89ab    8bfa
                         call               _jmp_addr_0x006db520                          // 0x006d89ad    e86e2b0000
                         cmp.s              ebp, eax                                      // 0x006d89b2    3be8
                         {disp8} jl         _jmp_addr_0x006d8973                          // 0x006d89b4    7cbd
                         {disp8} jmp        _jmp_addr_0x006d89ed                          // 0x006d89b6    eb35
_jmp_addr_0x006d89b8:    {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000450] // 0x006d89b8    8b8cbe50040000
                         mov.s              edx, eax                                      // 0x006d89bf    8bd0
                         xor.s              edx, ebx                                      // 0x006d89c1    33d3
                         sub.s              eax, edx                                      // 0x006d89c3    2bc2
                         push               0x2b                                          // 0x006d89c5    6a2b
                         add.s              ecx, eax                                      // 0x006d89c7    03c8
                         push               edi                                           // 0x006d89c9    57
                         {disp32} lea       eax, dword ptr [esp + 0x000000d4]             // 0x006d89ca    8d8424d4000000
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000450], ecx // 0x006d89d1    898cbe50040000
                         push               eax                                           // 0x006d89d8    50
_jmp_addr_0x006d89d9:    mov.s              ecx, esi                                      // 0x006d89d9    8bce
                         call               _jmp_addr_0x006dbba0                          // 0x006d89db    e8c0310000
                         {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000410] // 0x006d89e0    8b8cbe10040000
                         push               eax                                           // 0x006d89e7    50
_jmp_addr_0x006d89e8:    call               @SetupMoveToPos__6LivingFRC9MapCoordsUc@13    // 0x006d89e8    e8439ef1ff
_jmp_addr_0x006d89ed:    mov.s              ecx, esi                                      // 0x006d89ed    8bce
                         xor.s              ebp, ebp                                      // 0x006d89ef    33ed
                         call               _jmp_addr_0x006db520                          // 0x006d89f1    e82a2b0000
                         test               eax, eax                                      // 0x006d89f6    85c0
                         {disp32} jle       _jmp_addr_0x006d8a8c                          // 0x006d89f8    0f8e8e000000
                         {disp32} lea       edi, dword ptr [esi + 0x00000430]             // 0x006d89fe    8dbe30040000
                         mov                ebx, 0x00000002                               // 0x006d8a04    bb02000000
_jmp_addr_0x006d8a09:    {disp32} mov       edx, dword ptr [esi + 0x00000490]             // 0x006d8a09    8b9690040000
                         {disp8} mov        eax, dword ptr [edi + -0x20]                  // 0x006d8a0f    8b47e0
                         xor.s              ecx, ecx                                      // 0x006d8a12    33c9
                         cmp                edx, 0x01                                     // 0x006d8a14    83fa01
                         sete               cl                                            // 0x006d8a17    0f94c1
                         xor.s              edx, edx                                      // 0x006d8a1a    33d2
                         {disp8} mov        dx, word ptr [eax + 0x24]                     // 0x006d8a1c    668b5024
                         and                ecx, 0x01                                     // 0x006d8a20    83e101
                         shl                ecx, 0xd                                      // 0x006d8a23    c1e10d
                         and                edx, 0x0000dfff                               // 0x006d8a26    81e2ffdf0000
                         or.s               ecx, edx                                      // 0x006d8a2c    0bca
                         {disp8} mov        word ptr [eax + 0x24], cx                     // 0x006d8a2e    66894824
                         {disp32} mov       edx, dword ptr [esi + 0x00000490]             // 0x006d8a32    8b9690040000
                         mov                eax, dword ptr [edi]                          // 0x006d8a38    8b07
                         xor.s              ecx, ecx                                      // 0x006d8a3a    33c9
                         cmp.s              edx, ebx                                      // 0x006d8a3c    3bd3
                         sete               cl                                            // 0x006d8a3e    0f94c1
                         xor.s              edx, edx                                      // 0x006d8a41    33d2
                         {disp8} mov        dx, word ptr [eax + 0x24]                     // 0x006d8a43    668b5024
                         add                edi, 0x04                                     // 0x006d8a47    83c704
                         and                ecx, 0x01                                     // 0x006d8a4a    83e101
                         shl                ecx, 0xd                                      // 0x006d8a4d    c1e10d
                         and                edx, 0x0000dfff                               // 0x006d8a50    81e2ffdf0000
                         or.s               ecx, edx                                      // 0x006d8a56    0bca
                         {disp8} mov        word ptr [eax + 0x24], cx                     // 0x006d8a58    66894824
                         mov.s              ecx, esi                                      // 0x006d8a5c    8bce
                         inc                ebp                                           // 0x006d8a5e    45
                         call               _jmp_addr_0x006db520                          // 0x006d8a5f    e8bc2a0000
                         cmp.s              ebp, eax                                      // 0x006d8a64    3be8
                         {disp8} jl         _jmp_addr_0x006d8a09                          // 0x006d8a66    7ca1
                         pop                edi                                           // 0x006d8a68    5f
                         pop                esi                                           // 0x006d8a69    5e
                         pop                ebp                                           // 0x006d8a6a    5d
                         pop                ebx                                           // 0x006d8a6b    5b
                         add                esp, 0x0000023c                               // 0x006d8a6c    81c43c020000
                         ret                                                              // 0x006d8a72    c3
                         mov.s              ecx, esi                                      // 0x006d8a73    8bce
                         call               _jmp_addr_0x006dc560                          // 0x006d8a75    e8e63a0000
                         pop                edi                                           // 0x006d8a7a    5f
                         pop                esi                                           // 0x006d8a7b    5e
                         pop                ebp                                           // 0x006d8a7c    5d
                         pop                ebx                                           // 0x006d8a7d    5b
                         add                esp, 0x0000023c                               // 0x006d8a7e    81c43c020000
                         ret                                                              // 0x006d8a84    c3
                         mov.s              ecx, esi                                      // 0x006d8a85    8bce
                         call               _jmp_addr_0x006dc740                          // 0x006d8a87    e8b43c0000
_jmp_addr_0x006d8a8c:    pop                edi                                           // 0x006d8a8c    5f
                         pop                esi                                           // 0x006d8a8d    5e
                         pop                ebp                                           // 0x006d8a8e    5d
                         pop                ebx                                           // 0x006d8a8f    5b
                         add                esp, 0x0000023c                               // 0x006d8a90    81c43c020000
                         ret                                                              // 0x006d8a96    c3

// Snippet: db, [0x006d8a97, 0x006d8a98)
.byte 0x90                        // 0x006d8a97

// Snippet: jmptbl, [0x006d8a98, 0x006d8ac0)
.byte 0x43, 0x78, 0x6d, 0x00      // 0x006d8a98
.byte 0x11, 0x79, 0x6d, 0x00      // 0x006d8a9c
.byte 0xa6, 0x7d, 0x6d, 0x00      // 0x006d8aa0
.byte 0xbb, 0x7f, 0x6d, 0x00      // 0x006d8aa4
.byte 0x05, 0x75, 0x6d, 0x00      // 0x006d8aa8
.byte 0xcd, 0x7f, 0x6d, 0x00      // 0x006d8aac
.byte 0x73, 0x8a, 0x6d, 0x00      // 0x006d8ab0
.byte 0x85, 0x8a, 0x6d, 0x00      // 0x006d8ab4
.byte 0x4f, 0x82, 0x6d, 0x00      // 0x006d8ab8
.byte 0x8c, 0x8a, 0x6d, 0x00      // 0x006d8abc

// Snippet: ijmptbl, [0x006d8ac0, 0x006d8ad2)
.byte 0x00, 0x00, 0x01, 0x09      // 0x006d8ac0
.byte 0x09, 0x02, 0x02, 0x02      // 0x006d8ac4
.byte 0x02, 0x03, 0x03, 0x04      // 0x006d8ac8
.byte 0x04, 0x05, 0x09, 0x06      // 0x006d8acc
.byte 0x07, 0x08                  // 0x006d8ad0

// Snippet: db, [0x006d8ad2, 0x006d8ad4)
.byte 0x8b, 0xff                  // 0x006d8ad2

// Snippet: jmptbl, [0x006d8ad4, 0x006d8af8)
.byte 0xfe, 0x76, 0x6d, 0x00      // 0x006d8ad4
.byte 0x13, 0x77, 0x6d, 0x00      // 0x006d8ad8
.byte 0x2c, 0x77, 0x6d, 0x00      // 0x006d8adc
.byte 0x3f, 0x77, 0x6d, 0x00      // 0x006d8ae0
.byte 0xc9, 0x7c, 0x6d, 0x00      // 0x006d8ae4
.byte 0xa9, 0x7c, 0x6d, 0x00      // 0x006d8ae8
.byte 0xb1, 0x7c, 0x6d, 0x00      // 0x006d8aec
.byte 0xb9, 0x7c, 0x6d, 0x00      // 0x006d8af0
.byte 0xc1, 0x7c, 0x6d, 0x00      // 0x006d8af4

// Snippet: db, [0x006d8af8, 0x006d8b00)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006d8af8
.byte 0x90, 0x90, 0x90, 0x90      // 0x006d8afc

