.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0046ee50
.extern _jmp_addr_0x0046f040
.extern _jmp_addr_0x00472680
.extern _jmp_addr_0x004726b0
.extern _jmp_addr_0x004726d0
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern _sprintf
.extern ??2@YAPAXI@Z

.globl _jmp_addr_0x00471760
.globl _jmp_addr_0x00471850
.globl _jmp_addr_0x00471910
.globl _jmp_addr_0x00471940
.globl _jmp_addr_0x00471a50
.globl _jmp_addr_0x00471aa0
.globl _jmp_addr_0x00471b10
.globl ??GCPUCheck@@UAE@XZ

.globl _globl_ct_0x00471a20

start_0x00471760_0x00472680:
// Snippet: asm, [0x00471760, 0x00472536)
_jmp_addr_0x00471760:    sub              esp, 0x00000208                               // 0x00471760    81ec08020000
                         push             ebx                                           // 0x00471766    53
                         push             ebp                                           // 0x00471767    55
                         push             esi                                           // 0x00471768    56
                         mov.s            ebp, ecx                                      // 0x00471769    8be9
                         push             edi                                           // 0x0047176b    57
                         {disp32} lea     esi, dword ptr [ebp + 0x00000820]             // 0x0047176c    8db520080000
                         mov              ecx, 0x00000041                               // 0x00471772    b941000000
                         {disp32} lea     edi, dword ptr [esp + 0x00000114]             // 0x00471777    8dbc2414010000
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x0047177e    f3a5
                         cmp              dword ptr [esp + 0x00000114], 0x01            // 0x00471780    83bc241401000001
                         {disp8} jne      _jmp_addr_0x004717b4                          // 0x00471788    752a
                         {disp32} lea     esi, dword ptr [ebp + 0x00000514]             // 0x0047178a    8db514050000
                         mov              ecx, 0x00000041                               // 0x00471790    b941000000
                         {disp8} lea      edi, dword ptr [esp + 0x10]                   // 0x00471795    8d7c2410
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00471799    f3a5
                         cmp              dword ptr [esp + 0x10], 0x05                  // 0x0047179b    837c241005
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x004717a0    8d4c2410
                         sete             bl                                            // 0x004717a4    0f94c3
                         call             _jmp_addr_0x0046f040                          // 0x004717a7    e894d8ffff
                         test             bl, bl                                        // 0x004717ac    84db
                         {disp8} je       _jmp_addr_0x004717b4                          // 0x004717ae    7404
                         mov              bl, 0x01                                      // 0x004717b0    b301
                         {disp8} jmp      _jmp_addr_0x004717b6                          // 0x004717b2    eb02
_jmp_addr_0x004717b4:    xor.s            bl, bl                                        // 0x004717b4    32db
_jmp_addr_0x004717b6:    {disp32} lea     ecx, dword ptr [esp + 0x00000114]             // 0x004717b6    8d8c2414010000
                         call             _jmp_addr_0x0046f040                          // 0x004717bd    e87ed8ffff
                         test             bl, bl                                        // 0x004717c2    84db
                         {disp8} je       _jmp_addr_0x004717d6                          // 0x004717c4    7410
                         pop              edi                                           // 0x004717c6    5f
                         pop              esi                                           // 0x004717c7    5e
                         pop              ebp                                           // 0x004717c8    5d
                         mov              eax, 0x00000003                               // 0x004717c9    b803000000
                         pop              ebx                                           // 0x004717ce    5b
                         add              esp, 0x00000208                               // 0x004717cf    81c408020000
                         ret                                                            // 0x004717d5    c3
_jmp_addr_0x004717d6:    mov              ecx, 0x00000041                               // 0x004717d6    b941000000
                         {disp32} lea     esi, dword ptr [ebp + 0x00000820]             // 0x004717db    8db520080000
                         {disp8} lea      edi, dword ptr [esp + 0x10]                   // 0x004717e1    8d7c2410
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x004717e5    f3a5
                         cmp              dword ptr [esp + 0x10], 0x05                  // 0x004717e7    837c241005
                         {disp8} jne      _jmp_addr_0x00471821                          // 0x004717ec    7533
                         {disp32} lea     esi, dword ptr [ebp + 0x00000514]             // 0x004717ee    8db514050000
                         mov              ecx, 0x00000041                               // 0x004717f4    b941000000
                         {disp32} lea     edi, dword ptr [esp + 0x00000114]             // 0x004717f9    8dbc2414010000
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00471800    f3a5
                         cmp              dword ptr [esp + 0x00000114], 0x01            // 0x00471802    83bc241401000001
                         {disp32} lea     ecx, dword ptr [esp + 0x00000114]             // 0x0047180a    8d8c2414010000
                         sete             bl                                            // 0x00471811    0f94c3
                         call             _jmp_addr_0x0046f040                          // 0x00471814    e827d8ffff
                         test             bl, bl                                        // 0x00471819    84db
                         {disp8} je       _jmp_addr_0x00471821                          // 0x0047181b    7404
                         mov              bl, 0x01                                      // 0x0047181d    b301
                         {disp8} jmp      _jmp_addr_0x00471823                          // 0x0047181f    eb02
_jmp_addr_0x00471821:    xor.s            bl, bl                                        // 0x00471821    32db
_jmp_addr_0x00471823:    {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00471823    8d4c2410
                         call             _jmp_addr_0x0046f040                          // 0x00471827    e814d8ffff
                         neg              bl                                            // 0x0047182c    f6db
                         pop              edi                                           // 0x0047182e    5f
                         pop              esi                                           // 0x0047182f    5e
                         pop              ebp                                           // 0x00471830    5d
                         sbb.s            ebx, ebx                                      // 0x00471831    1bdb
                         and              ebx, 0x04                                     // 0x00471833    83e304
                         dec              ebx                                           // 0x00471836    4b
                         mov.s            eax, ebx                                      // 0x00471837    8bc3
                         pop              ebx                                           // 0x00471839    5b
                         add              esp, 0x00000208                               // 0x0047183a    81c408020000
                         ret                                                            // 0x00471840    c3
                         nop                                                            // 0x00471841    90
                         nop                                                            // 0x00471842    90
                         nop                                                            // 0x00471843    90
                         nop                                                            // 0x00471844    90
                         nop                                                            // 0x00471845    90
                         nop                                                            // 0x00471846    90
                         nop                                                            // 0x00471847    90
                         nop                                                            // 0x00471848    90
                         nop                                                            // 0x00471849    90
                         nop                                                            // 0x0047184a    90
                         nop                                                            // 0x0047184b    90
                         nop                                                            // 0x0047184c    90
                         nop                                                            // 0x0047184d    90
                         nop                                                            // 0x0047184e    90
                         nop                                                            // 0x0047184f    90
_jmp_addr_0x00471850:    {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x00471850    8b542404
                         sub              esp, 0x00000108                               // 0x00471854    81ec08010000
                         cmp              edx, -0x01                                    // 0x0047185a    83faff
                         {disp8} jne      _jmp_addr_0x0047186a                          // 0x0047185d    750b
                         xor.s            eax, eax                                      // 0x0047185f    33c0
                         add              esp, 0x00000108                               // 0x00471861    81c408010000
                         ret              0x0004                                        // 0x00471867    c20400
_jmp_addr_0x0047186a:    mov.s            eax, edx                                      // 0x0047186a    8bc2
                         shl              eax, 6                                        // 0x0047186c    c1e006
                         add.s            eax, edx                                      // 0x0047186f    03c2
                         push             esi                                           // 0x00471871    56
                         lea              eax, dword ptr [eax + eax * 0x2]              // 0x00471872    8d0440
                         {disp32} lea     esi, dword ptr [ecx + eax * 0x4 + 0x00000100] // 0x00471875    8db48100010000
                         push             edi                                           // 0x0047187c    57
                         mov              ecx, 0x00000042                               // 0x0047187d    b942000000
                         {disp8} lea      edi, dword ptr [esp + 0x08]                   // 0x00471882    8d7c2408
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00471886    f3a5
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x00471888    8b442408
                         xor.s            ecx, ecx                                      // 0x0047188c    33c9
                         test             eax, eax                                      // 0x0047188e    85c0
                         setne            cl                                            // 0x00471890    0f95c1
                         mov.s            esi, ecx                                      // 0x00471893    8bf1
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x00471895    8d4c2408
                         call             _jmp_addr_0x0046ee50                          // 0x00471899    e8b2d5ffff
                         pop              edi                                           // 0x0047189e    5f
                         mov.s            eax, esi                                      // 0x0047189f    8bc6
                         pop              esi                                           // 0x004718a1    5e
                         add              esp, 0x00000108                               // 0x004718a2    81c408010000
                         ret              0x0004                                        // 0x004718a8    c20400
                         call             ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004718ab    e8c9fff8ff
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x004718b0    8b542404
                         sub              esp, 0x00000108                               // 0x004718b4    81ec08010000
                         cmp              edx, -0x01                                    // 0x004718ba    83faff
                         {disp8} jne      _jmp_addr_0x004718ca                          // 0x004718bd    750b
                         xor.s            eax, eax                                      // 0x004718bf    33c0
                         add              esp, 0x00000108                               // 0x004718c1    81c408010000
                         ret              0x0004                                        // 0x004718c7    c20400
_jmp_addr_0x004718ca:    mov.s            eax, edx                                      // 0x004718ca    8bc2
                         shl              eax, 6                                        // 0x004718cc    c1e006
                         push             esi                                           // 0x004718cf    56
                         add.s            eax, edx                                      // 0x004718d0    03c2
                         lea              eax, dword ptr [eax + eax * 0x2]              // 0x004718d2    8d0440
                         {disp32} lea     esi, dword ptr [ecx + eax * 0x4 + 0x00000100] // 0x004718d5    8db48100010000
                         push             edi                                           // 0x004718dc    57
                         mov              ecx, 0x00000042                               // 0x004718dd    b942000000
                         {disp8} lea      edi, dword ptr [esp + 0x08]                   // 0x004718e2    8d7c2408
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x004718e6    f3a5
                         {disp32} mov     esi, dword ptr [esp + 0x0000008c]             // 0x004718e8    8bb4248c000000
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x004718ef    8d4c2408
                         call             _jmp_addr_0x0046ee50                          // 0x004718f3    e858d5ffff
                         xor.s            eax, eax                                      // 0x004718f8    33c0
                         test             esi, esi                                      // 0x004718fa    85f6
                         pop              edi                                           // 0x004718fc    5f
                         setne            al                                            // 0x004718fd    0f95c0
                         pop              esi                                           // 0x00471900    5e
                         add              esp, 0x00000108                               // 0x00471901    81c408010000
                         ret              0x0004                                        // 0x00471907    c20400
                         call             dword ptr [__imp__CoFileTimeToDosDateTime@4]  // 0x0047190a    ff1578998a00
_jmp_addr_0x00471910:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00471910    8b442404
                         cmp              eax, -0x01                                    // 0x00471914    83f8ff
                         {disp8} jne      _jmp_addr_0x0047191e                          // 0x00471917    7505
                         xor.s            eax, eax                                      // 0x00471919    33c0
                         ret              0x0004                                        // 0x0047191b    c20400
_jmp_addr_0x0047191e:    cmp              eax, 0x03                                     // 0x0047191e    83f803
                         {disp8} je       _jmp_addr_0x00471932                          // 0x00471921    740f
                         cmp              eax, 0x04                                     // 0x00471923    83f804
                         {disp8} je       _jmp_addr_0x00471932                          // 0x00471926    740a
                         cmp              eax, 0x06                                     // 0x00471928    83f806
                         {disp8} je       _jmp_addr_0x00471932                          // 0x0047192b    7405
                         xor.s            eax, eax                                      // 0x0047192d    33c0
                         ret              0x0004                                        // 0x0047192f    c20400
_jmp_addr_0x00471932:    mov              eax, 0x00000001                               // 0x00471932    b801000000
                         ret              0x0004                                        // 0x00471937    c20400
                         call             dword ptr [__imp__RegCloseKey@4]              // 0x0047193a    ff1504908a00
_jmp_addr_0x00471940:    sub              esp, 0x00000104                               // 0x00471940    81ec04010000
                         push             esi                                           // 0x00471946    56
                         {disp32} mov     esi, dword ptr [esp + 0x0000010c]             // 0x00471947    8bb4240c010000
                         cmp              esi, -0x01                                    // 0x0047194e    83feff
                         push             edi                                           // 0x00471951    57
                         mov.s            edi, ecx                                      // 0x00471952    8bf9
                         {disp8} jne      _jmp_addr_0x00471963                          // 0x00471954    750d
                         pop              edi                                           // 0x00471956    5f
                         xor.s            eax, eax                                      // 0x00471957    33c0
                         pop              esi                                           // 0x00471959    5e
                         add              esp, 0x00000104                               // 0x0047195a    81c404010000
                         ret              0x0004                                        // 0x00471960    c20400
_jmp_addr_0x00471963:    push             esi                                           // 0x00471963    56
                         mov.s            ecx, edi                                      // 0x00471964    8bcf
                         call             _jmp_addr_0x00471910                          // 0x00471966    e8a5ffffff
                         test             eax, eax                                      // 0x0047196b    85c0
                         {disp8} je       _jmp_addr_0x004719d6                          // 0x0047196d    7467
                         mov.s            eax, esi                                      // 0x0047196f    8bc6
                         shl              eax, 6                                        // 0x00471971    c1e006
                         add.s            eax, esi                                      // 0x00471974    03c6
                         lea              eax, dword ptr [eax + eax * 0x2]              // 0x00471976    8d0440
                         {disp32} lea     esi, dword ptr [edi + eax * 0x4 + 0x00000208] // 0x00471979    8db48708020000
                         mov              ecx, 0x00000041                               // 0x00471980    b941000000
                         {disp8} lea      edi, dword ptr [esp + 0x08]                   // 0x00471985    8d7c2408
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00471989    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x0047198b    8b4c2408
                         test             ecx, ecx                                      // 0x0047198f    85c9
                         push             ebx                                           // 0x00471991    53
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                   // 0x00471992    8d4c240c
                         sete             bl                                            // 0x00471996    0f94c3
                         call             _jmp_addr_0x0046f040                          // 0x00471999    e8a2d6ffff
                         test             bl, bl                                        // 0x0047199e    84db
                         pop              ebx                                           // 0x004719a0    5b
                         {disp8} je       _jmp_addr_0x004719c6                          // 0x004719a1    7423
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x004719a3    8b0d5c19d000
                         {disp32} mov     ecx, dword ptr [ecx + 0x00250300]             // 0x004719a9    8b8900032500
                         call             _jmp_addr_0x00471760                          // 0x004719af    e8acfdffff
                         cmp              eax, -0x01                                    // 0x004719b4    83f8ff
                         {disp8} jne      _jmp_addr_0x004719c6                          // 0x004719b7    750d
                         pop              edi                                           // 0x004719b9    5f
                         xor.s            eax, eax                                      // 0x004719ba    33c0
                         pop              esi                                           // 0x004719bc    5e
                         add              esp, 0x00000104                               // 0x004719bd    81c404010000
                         ret              0x0004                                        // 0x004719c3    c20400
_jmp_addr_0x004719c6:    pop              edi                                           // 0x004719c6    5f
                         mov              eax, 0x00000001                               // 0x004719c7    b801000000
                         pop              esi                                           // 0x004719cc    5e
                         add              esp, 0x00000104                               // 0x004719cd    81c404010000
                         ret              0x0004                                        // 0x004719d3    c20400
_jmp_addr_0x004719d6:    mov.s            eax, esi                                      // 0x004719d6    8bc6
                         shl              eax, 6                                        // 0x004719d8    c1e006
                         add.s            eax, esi                                      // 0x004719db    03c6
                         lea              edx, dword ptr [eax + eax * 0x2]              // 0x004719dd    8d1440
                         {disp32} lea     esi, dword ptr [edi + edx * 0x4 + 0x00000208] // 0x004719e0    8db49708020000
                         mov              ecx, 0x00000041                               // 0x004719e7    b941000000
                         {disp8} lea      edi, dword ptr [esp + 0x08]                   // 0x004719ec    8d7c2408
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x004719f0    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x004719f2    8b4c2408
                         xor.s            eax, eax                                      // 0x004719f6    33c0
                         test             ecx, ecx                                      // 0x004719f8    85c9
                         setne            al                                            // 0x004719fa    0f95c0
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x004719fd    8d4c2408
                         mov.s            esi, eax                                      // 0x00471a01    8bf0
                         call             _jmp_addr_0x0046f040                          // 0x00471a03    e838d6ffff
                         pop              edi                                           // 0x00471a08    5f
                         mov.s            eax, esi                                      // 0x00471a09    8bc6
                         pop              esi                                           // 0x00471a0b    5e
                         add              esp, 0x00000104                               // 0x00471a0c    81c404010000
                         ret              0x0004                                        // 0x00471a12    c20400
                         nop                                                            // 0x00471a15    90
                         nop                                                            // 0x00471a16    90
                         nop                                                            // 0x00471a17    90
                         nop                                                            // 0x00471a18    90
                         nop                                                            // 0x00471a19    90
                         nop                                                            // 0x00471a1a    90
                         nop                                                            // 0x00471a1b    90
                         nop                                                            // 0x00471a1c    90
                         nop                                                            // 0x00471a1d    90
                         nop                                                            // 0x00471a1e    90
                         nop                                                            // 0x00471a1f    90
_globl_ct_0x00471a20:    {disp32} mov     cl, byte ptr [_DAT_00fac934]                  // 0x00471a20    8a0d34c9fa00
                         mov              al, 0x01                                      // 0x00471a26    b001
                         test             al, cl                                        // 0x00471a28    84c8
                         {disp8} jne      _jmp_addr_0x00471a34                          // 0x00471a2a    7508
                         or.s             cl, al                                        // 0x00471a2c    0ac8
                         {disp32} mov     byte ptr [_DAT_00fac934], cl                  // 0x00471a2e    880d34c9fa00
_jmp_addr_0x00471a34:    {disp32} jmp     _jmp_addr_0x00471a40                          // 0x00471a34    e907000000
                         nop                                                            // 0x00471a39    90
                         nop                                                            // 0x00471a3a    90
                         nop                                                            // 0x00471a3b    90
                         nop                                                            // 0x00471a3c    90
                         nop                                                            // 0x00471a3d    90
                         nop                                                            // 0x00471a3e    90
                         nop                                                            // 0x00471a3f    90
_jmp_addr_0x00471a40:    push             0x00407870                                    // 0x00471a40    6870784000
                         call             _atexit                                       // 0x00471a45    e8473d3500
                         pop              ecx                                           // 0x00471a4a    59
                         ret                                                            // 0x00471a4b    c3
                         nop                                                            // 0x00471a4c    90
                         nop                                                            // 0x00471a4d    90
                         nop                                                            // 0x00471a4e    90
                         nop                                                            // 0x00471a4f    90
_jmp_addr_0x00471a50:    mov.s            edx, ecx                                      // 0x00471a50    8bd1
                         xor.s            eax, eax                                      // 0x00471a52    33c0
                         push             edi                                           // 0x00471a54    57
                         mov              ecx, 0x0000000a                               // 0x00471a55    b90a000000
                         {disp8} lea      edi, dword ptr [edx + 0x24]                   // 0x00471a5a    8d7a24
                         mov              dword ptr [edx], 0x008cbf34                   // 0x00471a5d    c70234bf8c00
                         rep stosd                                                      // 0x00471a63    f3ab
                         {disp8} mov      dword ptr [edx + 0x18], eax                   // 0x00471a65    894218
                         {disp8} mov      dword ptr [edx + 0x1c], eax                   // 0x00471a68    89421c
                         {disp8} mov      dword ptr [edx + 0x20], eax                   // 0x00471a6b    894220
                         mov.s            eax, edx                                      // 0x00471a6e    8bc2
                         pop              edi                                           // 0x00471a70    5f
                         ret                                                            // 0x00471a71    c3
                         nop                                                            // 0x00471a72    90
                         nop                                                            // 0x00471a73    90
                         nop                                                            // 0x00471a74    90
                         nop                                                            // 0x00471a75    90
                         nop                                                            // 0x00471a76    90
                         nop                                                            // 0x00471a77    90
                         nop                                                            // 0x00471a78    90
                         nop                                                            // 0x00471a79    90
                         nop                                                            // 0x00471a7a    90
                         nop                                                            // 0x00471a7b    90
                         nop                                                            // 0x00471a7c    90
                         nop                                                            // 0x00471a7d    90
                         nop                                                            // 0x00471a7e    90
                         nop                                                            // 0x00471a7f    90
??GCPUCheck@@UAE@XZ:
                         push             esi                                           // 0x00471a80    56
                         mov.s            esi, ecx                                      // 0x00471a81    8bf1
                         call             _jmp_addr_0x00471aa0                          // 0x00471a83    e818000000
                         test             byte ptr [esp + 0x08], 0x01                   // 0x00471a88    f644240801
                         {disp8} je       _jmp_addr_0x00471a98                          // 0x00471a8d    7409
                         push             esi                                           // 0x00471a8f    56
                         call             ??3@YAXPAX@Z                                  // 0x00471a90    e803d43300
                         add              esp, 0x04                                     // 0x00471a95    83c404
_jmp_addr_0x00471a98:    mov.s            eax, esi                                      // 0x00471a98    8bc6
                         pop              esi                                           // 0x00471a9a    5e
                         ret              0x0004                                        // 0x00471a9b    c20400
                         nop                                                            // 0x00471a9e    90
                         nop                                                            // 0x00471a9f    90
_jmp_addr_0x00471aa0:    push             esi                                           // 0x00471aa0    56
                         mov.s            esi, ecx                                      // 0x00471aa1    8bf1
                         {disp8} mov      eax, dword ptr [esi + 0x18]                   // 0x00471aa3    8b4618
                         test             eax, eax                                      // 0x00471aa6    85c0
                         mov              dword ptr [esi], 0x008cbf34                   // 0x00471aa8    c70634bf8c00
                         {disp8} je       _jmp_addr_0x00471ab9                          // 0x00471aae    7409
                         push             eax                                           // 0x00471ab0    50
                         call             ??3@YAXPAX@Z                                  // 0x00471ab1    e8e2d33300
                         add              esp, 0x04                                     // 0x00471ab6    83c404
_jmp_addr_0x00471ab9:    {disp8} mov      eax, dword ptr [esi + 0x1c]                   // 0x00471ab9    8b461c
                         test             eax, eax                                      // 0x00471abc    85c0
                         {disp8} je       _jmp_addr_0x00471ac9                          // 0x00471abe    7409
                         push             eax                                           // 0x00471ac0    50
                         call             ??3@YAXPAX@Z                                  // 0x00471ac1    e8d2d33300
                         add              esp, 0x04                                     // 0x00471ac6    83c404
_jmp_addr_0x00471ac9:    {disp8} mov      esi, dword ptr [esi + 0x20]                   // 0x00471ac9    8b7620
                         test             esi, esi                                      // 0x00471acc    85f6
                         {disp8} je       _jmp_addr_0x00471ad9                          // 0x00471ace    7409
                         push             esi                                           // 0x00471ad0    56
                         call             ??3@YAXPAX@Z                                  // 0x00471ad1    e8c2d33300
                         add              esp, 0x04                                     // 0x00471ad6    83c404
_jmp_addr_0x00471ad9:    pop              esi                                           // 0x00471ad9    5e
                         ret                                                            // 0x00471ada    c3
                         call             ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00471adb    e899fdf8ff
_jmp_addr_0x00471ae0:    push             ebp                                           // 0x00471ae0    55
                         mov.s            ebp, esp                                      // 0x00471ae1    8bec
                         push             ecx                                           // 0x00471ae3    51
                         push             ebx                                           // 0x00471ae4    53
                         {disp8} mov      byte ptr [ebp + -0x01], 0x00                  // 0x00471ae5    c645ff00
                         mov              eax, 0x00000001                               // 0x00471ae9    b801000000
                         cpuid                                                          // 0x00471aee    0fa2
                         and              eax, 0x00000500                               // 0x00471af0    2500050000
                         cmp              eax, 0x00000500                               // 0x00471af5    3d00050000
                         sete             al                                            // 0x00471afa    0f94c0
                         {disp8} mov      byte ptr [ebp + -0x01], al                    // 0x00471afd    8845ff
                         {disp8} mov      al, byte ptr [ebp + -0x01]                    // 0x00471b00    8a45ff
                         pop              ebx                                           // 0x00471b03    5b
                         mov.s            esp, ebp                                      // 0x00471b04    8be5
                         pop              ebp                                           // 0x00471b06    5d
                         ret                                                            // 0x00471b07    c3
                         nop                                                            // 0x00471b08    90
                         nop                                                            // 0x00471b09    90
                         nop                                                            // 0x00471b0a    90
                         nop                                                            // 0x00471b0b    90
                         nop                                                            // 0x00471b0c    90
                         nop                                                            // 0x00471b0d    90
                         nop                                                            // 0x00471b0e    90
                         nop                                                            // 0x00471b0f    90
_jmp_addr_0x00471b10:    push             esi                                           // 0x00471b10    56
                         mov.s            esi, ecx                                      // 0x00471b11    8bf1
                         {disp8} mov      eax, dword ptr [esi + 0x20]                   // 0x00471b13    8b4620
                         test             eax, eax                                      // 0x00471b16    85c0
                         {disp8} je       _jmp_addr_0x00471b23                          // 0x00471b18    7409
                         push             eax                                           // 0x00471b1a    50
                         call             ??3@YAXPAX@Z                                  // 0x00471b1b    e878d33300
                         add              esp, 0x04                                     // 0x00471b20    83c404
_jmp_addr_0x00471b23:    mov.s            ecx, esi                                      // 0x00471b23    8bce
                         {disp8} mov      dword ptr [esi + 0x20], 0x00000000            // 0x00471b25    c7462000000000
                         call             _jmp_addr_0x004726d0                          // 0x00471b2c    e89f0b0000
                         mov.s            ecx, esi                                      // 0x00471b31    8bce
                         call             _jmp_addr_0x00472680                          // 0x00471b33    e8480b0000
                         test             al, al                                        // 0x00471b38    84c0
                         {disp8} jne      _jmp_addr_0x00471b60                          // 0x00471b3a    7524
                         push             0x000003e8                                    // 0x00471b3c    68e8030000
                         call             ??2@YAPAXI@Z                                  // 0x00471b41    e8a8493500
                         add              esp, 0x04                                     // 0x00471b46    83c404
                         {disp8} mov      dword ptr [esi + 0x20], eax                   // 0x00471b49    894620
                         add              esi, 0x4c                                     // 0x00471b4c    83c64c
                         push             esi                                           // 0x00471b4f    56
                         push             0x009cef04                                    // 0x00471b50    6804ef9c00
                         push             eax                                           // 0x00471b55    50
                         call             _sprintf                                      // 0x00471b56    e8773c3500
                         add              esp, 0x0c                                     // 0x00471b5b    83c40c
                         pop              esi                                           // 0x00471b5e    5e
                         ret                                                            // 0x00471b5f    c3
_jmp_addr_0x00471b60:    mov.s            ecx, esi                                      // 0x00471b60    8bce
                         call             _jmp_addr_0x00471ae0                          // 0x00471b62    e879ffffff
                         test             al, al                                        // 0x00471b67    84c0
                         {disp8} je       _jmp_addr_0x00471b8f                          // 0x00471b69    7424
                         push             0x000003e8                                    // 0x00471b6b    68e8030000
                         call             ??2@YAPAXI@Z                                  // 0x00471b70    e879493500
                         add              esp, 0x04                                     // 0x00471b75    83c404
                         {disp8} mov      dword ptr [esi + 0x20], eax                   // 0x00471b78    894620
                         add              esi, 0x4c                                     // 0x00471b7b    83c64c
                         push             esi                                           // 0x00471b7e    56
                         push             0x009ceee0                                    // 0x00471b7f    68e0ee9c00
                         push             eax                                           // 0x00471b84    50
                         call             _sprintf                                      // 0x00471b85    e8483c3500
                         add              esp, 0x0c                                     // 0x00471b8a    83c40c
                         pop              esi                                           // 0x00471b8d    5e
                         ret                                                            // 0x00471b8e    c3
_jmp_addr_0x00471b8f:    push             0x00000fa0                                    // 0x00471b8f    68a00f0000
                         call             ??2@YAPAXI@Z                                  // 0x00471b94    e855493500
                         add              esp, 0x04                                     // 0x00471b99    83c404
                         mov.s            ecx, esi                                      // 0x00471b9c    8bce
                         {disp8} mov      dword ptr [esi + 0x20], eax                   // 0x00471b9e    894620
                         call             _jmp_addr_0x00471be0                          // 0x00471ba1    e83a000000
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x00471ba6    8b4e04
                         {disp8} mov      edx, dword ptr [esi + 0x18]                   // 0x00471ba9    8b5618
                         {disp8} lea      eax, dword ptr [esi + 0x4c]                   // 0x00471bac    8d464c
                         push             eax                                           // 0x00471baf    50
                         and              ecx, 0x0f                                     // 0x00471bb0    83e10f
                         push             ecx                                           // 0x00471bb3    51
                         push             edx                                           // 0x00471bb4    52
                         {disp8} lea      eax, dword ptr [esi + 0x08]                   // 0x00471bb5    8d4608
                         push             eax                                           // 0x00471bb8    50
                         mov.s            ecx, esi                                      // 0x00471bb9    8bce
                         call             _jmp_addr_0x004726b0                          // 0x00471bbb    e8f00a0000
                         {disp8} mov      ecx, dword ptr [esi + 0x20]                   // 0x00471bc0    8b4e20
                         push             eax                                           // 0x00471bc3    50
                         push             0x009cee80                                    // 0x00471bc4    6880ee9c00
                         push             ecx                                           // 0x00471bc9    51
                         call             _sprintf                                      // 0x00471bca    e8033c3500
                         add              esp, 0x1c                                     // 0x00471bcf    83c41c
                         pop              esi                                           // 0x00471bd2    5e
                         ret                                                            // 0x00471bd3    c3
                         nop                                                            // 0x00471bd4    90
                         nop                                                            // 0x00471bd5    90
                         nop                                                            // 0x00471bd6    90
                         nop                                                            // 0x00471bd7    90
                         nop                                                            // 0x00471bd8    90
                         nop                                                            // 0x00471bd9    90
                         nop                                                            // 0x00471bda    90
                         nop                                                            // 0x00471bdb    90
                         nop                                                            // 0x00471bdc    90
                         nop                                                            // 0x00471bdd    90
                         nop                                                            // 0x00471bde    90
                         nop                                                            // 0x00471bdf    90
_jmp_addr_0x00471be0:    push             ebp                                           // 0x00471be0    55
                         mov.s            ebp, esp                                      // 0x00471be1    8bec
                         sub              esp, 0x0c                                     // 0x00471be3    83ec0c
                         push             ebx                                           // 0x00471be6    53
                         push             esi                                           // 0x00471be7    56
                         push             edi                                           // 0x00471be8    57
                         mov.s            edi, ecx                                      // 0x00471be9    8bf9
                         {disp8} mov      eax, dword ptr [edi + 0x1c]                   // 0x00471beb    8b471c
                         xor.s            esi, esi                                      // 0x00471bee    33f6
                         cmp.s            eax, esi                                      // 0x00471bf0    3bc6
                         {disp8} je       _jmp_addr_0x00471bfd                          // 0x00471bf2    7409
                         push             eax                                           // 0x00471bf4    50
                         call             ??3@YAXPAX@Z                                  // 0x00471bf5    e89ed23300
                         add              esp, 0x04                                     // 0x00471bfa    83c404
_jmp_addr_0x00471bfd:    {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00471bfd    8b4718
                         cmp.s            eax, esi                                      // 0x00471c00    3bc6
                         {disp8} mov      dword ptr [edi + 0x1c], esi                   // 0x00471c02    89771c
                         {disp8} je       _jmp_addr_0x00471c10                          // 0x00471c05    7409
                         push             eax                                           // 0x00471c07    50
                         call             ??3@YAXPAX@Z                                  // 0x00471c08    e88bd23300
                         add              esp, 0x04                                     // 0x00471c0d    83c404
_jmp_addr_0x00471c10:    push             0x64                                          // 0x00471c10    6a64
                         {disp8} mov      dword ptr [edi + 0x18], esi                   // 0x00471c12    897718
                         call             ??2@YAPAXI@Z                                  // 0x00471c15    e8d4483500
                         push             0x000000c8                                    // 0x00471c1a    68c8000000
                         {disp8} mov      dword ptr [edi + 0x1c], eax                   // 0x00471c1f    89471c
                         call             ??2@YAPAXI@Z                                  // 0x00471c22    e8c7483500
                         add              esp, 0x08                                     // 0x00471c27    83c408
                         {disp8} mov      dword ptr [edi + 0x18], eax                   // 0x00471c2a    894718
                         mov              eax, 0x00000001                               // 0x00471c2d    b801000000
                         cpuid                                                          // 0x00471c32    0fa2
                         and              eax, 0x00003fff                               // 0x00471c34    25ff3f0000
                         {disp8} mov      dword ptr [ebp + -0x04], eax                  // 0x00471c39    8945fc
                         {disp8} mov      eax, dword ptr [ebp + -0x04]                  // 0x00471c3c    8b45fc
                         {disp8} mov      dword ptr [edi + 0x04], eax                   // 0x00471c3f    894704
                         mov              eax, 0x00000000                               // 0x00471c42    b800000000
                         cpuid                                                          // 0x00471c47    0fa2
                         {disp8} mov      dword ptr [ebp + -0x04], ebx                  // 0x00471c49    895dfc
                         {disp8} mov      dword ptr [ebp + -0x08], edx                  // 0x00471c4c    8955f8
                         {disp8} mov      dword ptr [ebp + -0x0c], ecx                  // 0x00471c4f    894df4
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x00471c52    8b4dfc
                         {disp8} mov      eax, dword ptr [ebp + -0x08]                  // 0x00471c55    8b45f8
                         {disp8} lea      edx, dword ptr [edi + 0x08]                   // 0x00471c58    8d5708
                         mov              dword ptr [edx], ecx                          // 0x00471c5b    890a
                         {disp8} mov      ecx, dword ptr [ebp + -0x0c]                  // 0x00471c5d    8b4df4
                         {disp8} mov      dword ptr [edi + 0x0c], eax                   // 0x00471c60    89470c
                         {disp8} mov      dword ptr [edi + 0x10], ecx                   // 0x00471c63    894f10
                         {disp8} mov      byte ptr [edi + 0x14], 0x00                   // 0x00471c66    c6471400
                         mov              esi, 0x009cf580                               // 0x00471c6a    be80f59c00
                         mov.s            eax, edx                                      // 0x00471c6f    8bc2
_jmp_addr_0x00471c71:    mov              bl, byte ptr [eax]                            // 0x00471c71    8a18
                         mov.s            cl, bl                                        // 0x00471c73    8acb
                         cmp              bl, byte ptr [esi]                            // 0x00471c75    3a1e
                         {disp8} jne      _jmp_addr_0x00471c95                          // 0x00471c77    751c
                         test             cl, cl                                        // 0x00471c79    84c9
                         {disp8} je       _jmp_addr_0x00471c91                          // 0x00471c7b    7414
                         {disp8} mov      bl, byte ptr [eax + 0x01]                     // 0x00471c7d    8a5801
                         mov.s            cl, bl                                        // 0x00471c80    8acb
                         cmp              bl, byte ptr [esi + 0x01]                     // 0x00471c82    3a5e01
                         {disp8} jne      _jmp_addr_0x00471c95                          // 0x00471c85    750e
                         add              eax, 0x02                                     // 0x00471c87    83c002
                         add              esi, 0x02                                     // 0x00471c8a    83c602
                         test             cl, cl                                        // 0x00471c8d    84c9
                         {disp8} jne      _jmp_addr_0x00471c71                          // 0x00471c8f    75e0
_jmp_addr_0x00471c91:    xor.s            eax, eax                                      // 0x00471c91    33c0
                         {disp8} jmp      _jmp_addr_0x00471c9a                          // 0x00471c93    eb05
_jmp_addr_0x00471c95:    sbb.s            eax, eax                                      // 0x00471c95    1bc0
                         sbb              eax, -0x01                                    // 0x00471c97    83d8ff
_jmp_addr_0x00471c9a:    test             eax, eax                                      // 0x00471c9a    85c0
                         {disp8} jne      _jmp_addr_0x00471ca9                          // 0x00471c9c    750b
                         {disp32} mov     dword ptr [edi + 0x000013d4], eax             // 0x00471c9e    8987d4130000
                         {disp32} jmp     _jmp_addr_0x00471e37                          // 0x00471ca4    e98e010000
_jmp_addr_0x00471ca9:    mov              esi, 0x009cf574                               // 0x00471ca9    be74f59c00
                         mov.s            eax, edx                                      // 0x00471cae    8bc2
_jmp_addr_0x00471cb0:    mov              bl, byte ptr [eax]                            // 0x00471cb0    8a18
                         mov.s            cl, bl                                        // 0x00471cb2    8acb
                         cmp              bl, byte ptr [esi]                            // 0x00471cb4    3a1e
                         {disp8} jne      _jmp_addr_0x00471cd4                          // 0x00471cb6    751c
                         test             cl, cl                                        // 0x00471cb8    84c9
                         {disp8} je       _jmp_addr_0x00471cd0                          // 0x00471cba    7414
                         {disp8} mov      bl, byte ptr [eax + 0x01]                     // 0x00471cbc    8a5801
                         mov.s            cl, bl                                        // 0x00471cbf    8acb
                         cmp              bl, byte ptr [esi + 0x01]                     // 0x00471cc1    3a5e01
                         {disp8} jne      _jmp_addr_0x00471cd4                          // 0x00471cc4    750e
                         add              eax, 0x02                                     // 0x00471cc6    83c002
                         add              esi, 0x02                                     // 0x00471cc9    83c602
                         test             cl, cl                                        // 0x00471ccc    84c9
                         {disp8} jne      _jmp_addr_0x00471cb0                          // 0x00471cce    75e0
_jmp_addr_0x00471cd0:    xor.s            eax, eax                                      // 0x00471cd0    33c0
                         {disp8} jmp      _jmp_addr_0x00471cd9                          // 0x00471cd2    eb05
_jmp_addr_0x00471cd4:    sbb.s            eax, eax                                      // 0x00471cd4    1bc0
                         sbb              eax, -0x01                                    // 0x00471cd6    83d8ff
_jmp_addr_0x00471cd9:    test             eax, eax                                      // 0x00471cd9    85c0
                         {disp8} jne      _jmp_addr_0x00471cec                          // 0x00471cdb    750f
                         {disp32} mov     dword ptr [edi + 0x000013d4], 0x00000002      // 0x00471cdd    c787d413000002000000
                         {disp32} jmp     _jmp_addr_0x00471e37                          // 0x00471ce7    e94b010000
_jmp_addr_0x00471cec:    mov              esi, 0x009cf564                               // 0x00471cec    be64f59c00
                         mov.s            eax, edx                                      // 0x00471cf1    8bc2
_jmp_addr_0x00471cf3:    mov              bl, byte ptr [eax]                            // 0x00471cf3    8a18
                         mov.s            cl, bl                                        // 0x00471cf5    8acb
                         cmp              bl, byte ptr [esi]                            // 0x00471cf7    3a1e
                         {disp8} jne      _jmp_addr_0x00471d17                          // 0x00471cf9    751c
                         test             cl, cl                                        // 0x00471cfb    84c9
                         {disp8} je       _jmp_addr_0x00471d13                          // 0x00471cfd    7414
                         {disp8} mov      bl, byte ptr [eax + 0x01]                     // 0x00471cff    8a5801
                         mov.s            cl, bl                                        // 0x00471d02    8acb
                         cmp              bl, byte ptr [esi + 0x01]                     // 0x00471d04    3a5e01
                         {disp8} jne      _jmp_addr_0x00471d17                          // 0x00471d07    750e
                         add              eax, 0x02                                     // 0x00471d09    83c002
                         add              esi, 0x02                                     // 0x00471d0c    83c602
                         test             cl, cl                                        // 0x00471d0f    84c9
                         {disp8} jne      _jmp_addr_0x00471cf3                          // 0x00471d11    75e0
_jmp_addr_0x00471d13:    xor.s            eax, eax                                      // 0x00471d13    33c0
                         {disp8} jmp      _jmp_addr_0x00471d1c                          // 0x00471d15    eb05
_jmp_addr_0x00471d17:    sbb.s            eax, eax                                      // 0x00471d17    1bc0
                         sbb              eax, -0x01                                    // 0x00471d19    83d8ff
_jmp_addr_0x00471d1c:    test             eax, eax                                      // 0x00471d1c    85c0
                         {disp8} jne      _jmp_addr_0x00471d2f                          // 0x00471d1e    750f
                         {disp32} mov     dword ptr [edi + 0x000013d4], 0x00000003      // 0x00471d20    c787d413000003000000
                         {disp32} jmp     _jmp_addr_0x00471e37                          // 0x00471d2a    e908010000
_jmp_addr_0x00471d2f:    mov              esi, 0x009cf554                               // 0x00471d2f    be54f59c00
                         mov.s            eax, edx                                      // 0x00471d34    8bc2
_jmp_addr_0x00471d36:    mov              bl, byte ptr [eax]                            // 0x00471d36    8a18
                         mov.s            cl, bl                                        // 0x00471d38    8acb
                         cmp              bl, byte ptr [esi]                            // 0x00471d3a    3a1e
                         {disp8} jne      _jmp_addr_0x00471d5a                          // 0x00471d3c    751c
                         test             cl, cl                                        // 0x00471d3e    84c9
                         {disp8} je       _jmp_addr_0x00471d56                          // 0x00471d40    7414
                         {disp8} mov      bl, byte ptr [eax + 0x01]                     // 0x00471d42    8a5801
                         mov.s            cl, bl                                        // 0x00471d45    8acb
                         cmp              bl, byte ptr [esi + 0x01]                     // 0x00471d47    3a5e01
                         {disp8} jne      _jmp_addr_0x00471d5a                          // 0x00471d4a    750e
                         add              eax, 0x02                                     // 0x00471d4c    83c002
                         add              esi, 0x02                                     // 0x00471d4f    83c602
                         test             cl, cl                                        // 0x00471d52    84c9
                         {disp8} jne      _jmp_addr_0x00471d36                          // 0x00471d54    75e0
_jmp_addr_0x00471d56:    xor.s            eax, eax                                      // 0x00471d56    33c0
                         {disp8} jmp      _jmp_addr_0x00471d5f                          // 0x00471d58    eb05
_jmp_addr_0x00471d5a:    sbb.s            eax, eax                                      // 0x00471d5a    1bc0
                         sbb              eax, -0x01                                    // 0x00471d5c    83d8ff
_jmp_addr_0x00471d5f:    test             eax, eax                                      // 0x00471d5f    85c0
                         {disp8} jne      _jmp_addr_0x00471d72                          // 0x00471d61    750f
                         {disp32} mov     dword ptr [edi + 0x000013d4], 0x00000001      // 0x00471d63    c787d413000001000000
                         {disp32} jmp     _jmp_addr_0x00471e37                          // 0x00471d6d    e9c5000000
_jmp_addr_0x00471d72:    mov              esi, 0x009cf544                               // 0x00471d72    be44f59c00
                         mov.s            eax, edx                                      // 0x00471d77    8bc2
_jmp_addr_0x00471d79:    mov              bl, byte ptr [eax]                            // 0x00471d79    8a18
                         mov.s            cl, bl                                        // 0x00471d7b    8acb
                         cmp              bl, byte ptr [esi]                            // 0x00471d7d    3a1e
                         {disp8} jne      _jmp_addr_0x00471d9d                          // 0x00471d7f    751c
                         test             cl, cl                                        // 0x00471d81    84c9
                         {disp8} je       _jmp_addr_0x00471d99                          // 0x00471d83    7414
                         {disp8} mov      bl, byte ptr [eax + 0x01]                     // 0x00471d85    8a5801
                         mov.s            cl, bl                                        // 0x00471d88    8acb
                         cmp              bl, byte ptr [esi + 0x01]                     // 0x00471d8a    3a5e01
                         {disp8} jne      _jmp_addr_0x00471d9d                          // 0x00471d8d    750e
                         add              eax, 0x02                                     // 0x00471d8f    83c002
                         add              esi, 0x02                                     // 0x00471d92    83c602
                         test             cl, cl                                        // 0x00471d95    84c9
                         {disp8} jne      _jmp_addr_0x00471d79                          // 0x00471d97    75e0
_jmp_addr_0x00471d99:    xor.s            eax, eax                                      // 0x00471d99    33c0
                         {disp8} jmp      _jmp_addr_0x00471da2                          // 0x00471d9b    eb05
_jmp_addr_0x00471d9d:    sbb.s            eax, eax                                      // 0x00471d9d    1bc0
                         sbb              eax, -0x01                                    // 0x00471d9f    83d8ff
_jmp_addr_0x00471da2:    test             eax, eax                                      // 0x00471da2    85c0
                         {disp8} jne      _jmp_addr_0x00471db5                          // 0x00471da4    750f
                         {disp32} mov     dword ptr [edi + 0x000013d4], 0x00000006      // 0x00471da6    c787d413000006000000
                         {disp32} jmp     _jmp_addr_0x00471e37                          // 0x00471db0    e982000000
_jmp_addr_0x00471db5:    mov              esi, 0x009cf534                               // 0x00471db5    be34f59c00
                         mov.s            eax, edx                                      // 0x00471dba    8bc2
_jmp_addr_0x00471dbc:    mov              bl, byte ptr [eax]                            // 0x00471dbc    8a18
                         mov.s            cl, bl                                        // 0x00471dbe    8acb
                         cmp              bl, byte ptr [esi]                            // 0x00471dc0    3a1e
                         {disp8} jne      _jmp_addr_0x00471de0                          // 0x00471dc2    751c
                         test             cl, cl                                        // 0x00471dc4    84c9
                         {disp8} je       _jmp_addr_0x00471ddc                          // 0x00471dc6    7414
                         {disp8} mov      bl, byte ptr [eax + 0x01]                     // 0x00471dc8    8a5801
                         mov.s            cl, bl                                        // 0x00471dcb    8acb
                         cmp              bl, byte ptr [esi + 0x01]                     // 0x00471dcd    3a5e01
                         {disp8} jne      _jmp_addr_0x00471de0                          // 0x00471dd0    750e
                         add              eax, 0x02                                     // 0x00471dd2    83c002
                         add              esi, 0x02                                     // 0x00471dd5    83c602
                         test             cl, cl                                        // 0x00471dd8    84c9
                         {disp8} jne      _jmp_addr_0x00471dbc                          // 0x00471dda    75e0
_jmp_addr_0x00471ddc:    xor.s            eax, eax                                      // 0x00471ddc    33c0
                         {disp8} jmp      _jmp_addr_0x00471de5                          // 0x00471dde    eb05
_jmp_addr_0x00471de0:    sbb.s            eax, eax                                      // 0x00471de0    1bc0
                         sbb              eax, -0x01                                    // 0x00471de2    83d8ff
_jmp_addr_0x00471de5:    test             eax, eax                                      // 0x00471de5    85c0
                         {disp8} jne      _jmp_addr_0x00471df5                          // 0x00471de7    750c
                         {disp32} mov     dword ptr [edi + 0x000013d4], 0x00000004      // 0x00471de9    c787d413000004000000
                         {disp8} jmp      _jmp_addr_0x00471e37                          // 0x00471df3    eb42
_jmp_addr_0x00471df5:    mov              esi, 0x009cf524                               // 0x00471df5    be24f59c00
                         mov.s            eax, edx                                      // 0x00471dfa    8bc2
_jmp_addr_0x00471dfc:    mov              dl, byte ptr [eax]                            // 0x00471dfc    8a10
                         mov              bl, byte ptr [esi]                            // 0x00471dfe    8a1e
                         mov.s            cl, dl                                        // 0x00471e00    8aca
                         cmp.s            dl, bl                                        // 0x00471e02    3ad3
                         {disp8} jne      _jmp_addr_0x00471e24                          // 0x00471e04    751e
                         test             cl, cl                                        // 0x00471e06    84c9
                         {disp8} je       _jmp_addr_0x00471e20                          // 0x00471e08    7416
                         {disp8} mov      dl, byte ptr [eax + 0x01]                     // 0x00471e0a    8a5001
                         {disp8} mov      bl, byte ptr [esi + 0x01]                     // 0x00471e0d    8a5e01
                         mov.s            cl, dl                                        // 0x00471e10    8aca
                         cmp.s            dl, bl                                        // 0x00471e12    3ad3
                         {disp8} jne      _jmp_addr_0x00471e24                          // 0x00471e14    750e
                         add              eax, 0x02                                     // 0x00471e16    83c002
                         add              esi, 0x02                                     // 0x00471e19    83c602
                         test             cl, cl                                        // 0x00471e1c    84c9
                         {disp8} jne      _jmp_addr_0x00471dfc                          // 0x00471e1e    75dc
_jmp_addr_0x00471e20:    xor.s            eax, eax                                      // 0x00471e20    33c0
                         {disp8} jmp      _jmp_addr_0x00471e29                          // 0x00471e22    eb05
_jmp_addr_0x00471e24:    sbb.s            eax, eax                                      // 0x00471e24    1bc0
                         sbb              eax, -0x01                                    // 0x00471e26    83d8ff
_jmp_addr_0x00471e29:    test             eax, eax                                      // 0x00471e29    85c0
                         {disp8} jne      _jmp_addr_0x00471e37                          // 0x00471e2b    750a
                         {disp32} mov     dword ptr [edi + 0x000013d4], 0x00000005      // 0x00471e2d    c787d413000005000000
_jmp_addr_0x00471e37:    {disp8} mov      eax, dword ptr [edi + 0x04]                   // 0x00471e37    8b4704
                         shr              eax, 0xc                                      // 0x00471e3a    c1e80c
                         and              eax, 0x03                                     // 0x00471e3d    83e003
                         cmp              eax, 0x03                                     // 0x00471e40    83f803
                         {disp8} ja       _jmp_addr_0x00471e7a                          // 0x00471e43    7735
                         jmp              dword ptr [eax*4 + 0x472538]                  // 0x00471e45    ff248538254700
                         push             0x009cf510                                    // 0x00471e4c    6810f59c00
                         {disp8} jmp      _jmp_addr_0x00471e6e                          // 0x00471e51    eb1b
                         {disp8} mov      ecx, dword ptr [edi + 0x1c]                   // 0x00471e53    8b4f1c
                         push             0x009cf4fc                                    // 0x00471e56    68fcf49c00
                         push             ecx                                           // 0x00471e5b    51
                         {disp8} jmp      _jmp_addr_0x00471e72                          // 0x00471e5c    eb14
                         {disp8} mov      edx, dword ptr [edi + 0x1c]                   // 0x00471e5e    8b571c
                         push             0x009cf4e8                                    // 0x00471e61    68e8f49c00
                         push             edx                                           // 0x00471e66    52
                         {disp8} jmp      _jmp_addr_0x00471e72                          // 0x00471e67    eb09
                         push             0x009cf4bc                                    // 0x00471e69    68bcf49c00
_jmp_addr_0x00471e6e:    {disp8} mov      eax, dword ptr [edi + 0x1c]                   // 0x00471e6e    8b471c
                         push             eax                                           // 0x00471e71    50
_jmp_addr_0x00471e72:    call             _sprintf                                      // 0x00471e72    e85b393500
                         add              esp, 0x08                                     // 0x00471e77    83c408
_jmp_addr_0x00471e7a:    {disp8} mov      eax, dword ptr [edi + 0x04]                   // 0x00471e7a    8b4704
                         mov.s            ecx, eax                                      // 0x00471e7d    8bc8
                         shr              ecx, 8                                        // 0x00471e7f    c1e908
                         and              ecx, 0x0f                                     // 0x00471e82    83e10f
                         add              ecx, -0x4                                     // 0x00471e85    83c1fc
                         cmp              ecx, 0x0b                                     // 0x00471e88    83f90b
                         {disp32} ja      _jmp_addr_0x0047251e                          // 0x00471e8b    0f878d060000
                         xor.s            edx, edx                                      // 0x00471e91    33d2
                         {disp32} mov     dl, byte ptr [ecx + 0x0047255c]               // 0x00471e93    8a915c254700
                         jmp              dword ptr [edx*4 + 0x472548]                  // 0x00471e99    ff249548254700
                         {disp32} mov     ecx, dword ptr [edi + 0x000013d4]             // 0x00471ea0    8b8fd4130000
                         cmp              ecx, 0x03                                     // 0x00471ea6    83f903
                         {disp32} ja      _jmp_addr_0x0047252f                          // 0x00471ea9    0f8780060000
                         jmp              dword ptr [ecx*4 + 0x472568]                  // 0x00471eaf    ff248d68254700
                         shr              eax, 4                                        // 0x00471eb6    c1e804
                         and              eax, 0x0f                                     // 0x00471eb9    83e00f
                         cmp              eax, 0x09                                     // 0x00471ebc    83f809
                         {disp32} ja      _jmp_addr_0x0047252f                          // 0x00471ebf    0f876a060000
                         jmp              dword ptr [eax*4 + 0x472578]                  // 0x00471ec5    ff248578254700
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00471ecc    8b4718
                         push             0x009cf4a8                                    // 0x00471ecf    68a8f49c00
                         push             eax                                           // 0x00471ed4    50
                         call             _sprintf                                      // 0x00471ed5    e8f8383500
                         add              esp, 0x08                                     // 0x00471eda    83c408
                         pop              edi                                           // 0x00471edd    5f
                         pop              esi                                           // 0x00471ede    5e
                         pop              ebx                                           // 0x00471edf    5b
                         mov.s            esp, ebp                                      // 0x00471ee0    8be5
                         pop              ebp                                           // 0x00471ee2    5d
                         ret                                                            // 0x00471ee3    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00471ee4    8b4f18
                         push             0x009cf498                                    // 0x00471ee7    6898f49c00
                         push             ecx                                           // 0x00471eec    51
                         call             _sprintf                                      // 0x00471eed    e8e0383500
                         add              esp, 0x08                                     // 0x00471ef2    83c408
                         pop              edi                                           // 0x00471ef5    5f
                         pop              esi                                           // 0x00471ef6    5e
                         pop              ebx                                           // 0x00471ef7    5b
                         mov.s            esp, ebp                                      // 0x00471ef8    8be5
                         pop              ebp                                           // 0x00471efa    5d
                         ret                                                            // 0x00471efb    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00471efc    8b5718
                         push             0x009cf48c                                    // 0x00471eff    688cf49c00
                         push             edx                                           // 0x00471f04    52
                         call             _sprintf                                      // 0x00471f05    e8c8383500
                         add              esp, 0x08                                     // 0x00471f0a    83c408
                         pop              edi                                           // 0x00471f0d    5f
                         pop              esi                                           // 0x00471f0e    5e
                         pop              ebx                                           // 0x00471f0f    5b
                         mov.s            esp, ebp                                      // 0x00471f10    8be5
                         pop              ebp                                           // 0x00471f12    5d
                         ret                                                            // 0x00471f13    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00471f14    8b4718
                         push             0x009cf47c                                    // 0x00471f17    687cf49c00
                         push             eax                                           // 0x00471f1c    50
                         call             _sprintf                                      // 0x00471f1d    e8b0383500
                         add              esp, 0x08                                     // 0x00471f22    83c408
                         pop              edi                                           // 0x00471f25    5f
                         pop              esi                                           // 0x00471f26    5e
                         pop              ebx                                           // 0x00471f27    5b
                         mov.s            esp, ebp                                      // 0x00471f28    8be5
                         pop              ebp                                           // 0x00471f2a    5d
                         ret                                                            // 0x00471f2b    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00471f2c    8b4f18
                         push             0x009cf470                                    // 0x00471f2f    6870f49c00
                         push             ecx                                           // 0x00471f34    51
                         call             _sprintf                                      // 0x00471f35    e898383500
                         add              esp, 0x08                                     // 0x00471f3a    83c408
                         pop              edi                                           // 0x00471f3d    5f
                         pop              esi                                           // 0x00471f3e    5e
                         pop              ebx                                           // 0x00471f3f    5b
                         mov.s            esp, ebp                                      // 0x00471f40    8be5
                         pop              ebp                                           // 0x00471f42    5d
                         ret                                                            // 0x00471f43    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00471f44    8b5718
                         push             0x009cf460                                    // 0x00471f47    6860f49c00
                         push             edx                                           // 0x00471f4c    52
                         call             _sprintf                                      // 0x00471f4d    e880383500
                         add              esp, 0x08                                     // 0x00471f52    83c408
                         pop              edi                                           // 0x00471f55    5f
                         pop              esi                                           // 0x00471f56    5e
                         pop              ebx                                           // 0x00471f57    5b
                         mov.s            esp, ebp                                      // 0x00471f58    8be5
                         pop              ebp                                           // 0x00471f5a    5d
                         ret                                                            // 0x00471f5b    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00471f5c    8b4718
                         push             0x009cf450                                    // 0x00471f5f    6850f49c00
                         push             eax                                           // 0x00471f64    50
                         call             _sprintf                                      // 0x00471f65    e868383500
                         add              esp, 0x08                                     // 0x00471f6a    83c408
                         pop              edi                                           // 0x00471f6d    5f
                         pop              esi                                           // 0x00471f6e    5e
                         pop              ebx                                           // 0x00471f6f    5b
                         mov.s            esp, ebp                                      // 0x00471f70    8be5
                         pop              ebp                                           // 0x00471f72    5d
                         ret                                                            // 0x00471f73    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00471f74    8b4f18
                         push             0x009cf440                                    // 0x00471f77    6840f49c00
                         push             ecx                                           // 0x00471f7c    51
                         call             _sprintf                                      // 0x00471f7d    e850383500
                         add              esp, 0x08                                     // 0x00471f82    83c408
                         pop              edi                                           // 0x00471f85    5f
                         pop              esi                                           // 0x00471f86    5e
                         pop              ebx                                           // 0x00471f87    5b
                         mov.s            esp, ebp                                      // 0x00471f88    8be5
                         pop              ebp                                           // 0x00471f8a    5d
                         ret                                                            // 0x00471f8b    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00471f8c    8b5718
                         push             0x009cf430                                    // 0x00471f8f    6830f49c00
                         push             edx                                           // 0x00471f94    52
                         call             _sprintf                                      // 0x00471f95    e838383500
                         add              esp, 0x08                                     // 0x00471f9a    83c408
                         pop              edi                                           // 0x00471f9d    5f
                         pop              esi                                           // 0x00471f9e    5e
                         pop              ebx                                           // 0x00471f9f    5b
                         mov.s            esp, ebp                                      // 0x00471fa0    8be5
                         pop              ebp                                           // 0x00471fa2    5d
                         ret                                                            // 0x00471fa3    c3
                         shr              eax, 4                                        // 0x00471fa4    c1e804
                         and              eax, 0x0f                                     // 0x00471fa7    83e00f
                         dec              eax                                           // 0x00471faa    48
                         {disp8} je       _jmp_addr_0x00471fcc                          // 0x00471fab    741f
                         dec              eax                                           // 0x00471fad    48
                         {disp32} jne     _jmp_addr_0x0047252f                          // 0x00471fae    0f857b050000
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00471fb4    8b4718
                         push             0x009cf420                                    // 0x00471fb7    6820f49c00
                         push             eax                                           // 0x00471fbc    50
                         call             _sprintf                                      // 0x00471fbd    e810383500
                         add              esp, 0x08                                     // 0x00471fc2    83c408
                         pop              edi                                           // 0x00471fc5    5f
                         pop              esi                                           // 0x00471fc6    5e
                         pop              ebx                                           // 0x00471fc7    5b
                         mov.s            esp, ebp                                      // 0x00471fc8    8be5
                         pop              ebp                                           // 0x00471fca    5d
                         ret                                                            // 0x00471fcb    c3
_jmp_addr_0x00471fcc:    {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00471fcc    8b4f18
                         push             0x009cf410                                    // 0x00471fcf    6810f49c00
                         push             ecx                                           // 0x00471fd4    51
                         call             _sprintf                                      // 0x00471fd5    e8f8373500
                         add              esp, 0x08                                     // 0x00471fda    83c408
                         pop              edi                                           // 0x00471fdd    5f
                         pop              esi                                           // 0x00471fde    5e
                         pop              ebx                                           // 0x00471fdf    5b
                         mov.s            esp, ebp                                      // 0x00471fe0    8be5
                         pop              ebp                                           // 0x00471fe2    5d
                         ret                                                            // 0x00471fe3    c3
                         shr              eax, 4                                        // 0x00471fe4    c1e804
                         and              eax, 0x0f                                     // 0x00471fe7    83e00f
                         add              eax, -0x03                                    // 0x00471fea    83c0fd
                         cmp              eax, 0x0c                                     // 0x00471fed    83f80c
                         {disp32} ja      _jmp_addr_0x0047252f                          // 0x00471ff0    0f8739050000
                         xor.s            edx, edx                                      // 0x00471ff6    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x004725bc]               // 0x00471ff8    8a90bc254700
                         jmp              dword ptr [edx*4 + 0x4725a0]                  // 0x00471ffe    ff2495a0254700
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00472005    8b4718
                         push             0x009cf404                                    // 0x00472008    6804f49c00
                         push             eax                                           // 0x0047200d    50
                         call             _sprintf                                      // 0x0047200e    e8bf373500
                         add              esp, 0x08                                     // 0x00472013    83c408
                         pop              edi                                           // 0x00472016    5f
                         pop              esi                                           // 0x00472017    5e
                         pop              ebx                                           // 0x00472018    5b
                         mov.s            esp, ebp                                      // 0x00472019    8be5
                         pop              ebp                                           // 0x0047201b    5d
                         ret                                                            // 0x0047201c    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x0047201d    8b4f18
                         push             0x009cf3f4                                    // 0x00472020    68f4f39c00
                         push             ecx                                           // 0x00472025    51
                         call             _sprintf                                      // 0x00472026    e8a7373500
                         add              esp, 0x08                                     // 0x0047202b    83c408
                         pop              edi                                           // 0x0047202e    5f
                         pop              esi                                           // 0x0047202f    5e
                         pop              ebx                                           // 0x00472030    5b
                         mov.s            esp, ebp                                      // 0x00472031    8be5
                         pop              ebp                                           // 0x00472033    5d
                         ret                                                            // 0x00472034    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00472035    8b5718
                         push             0x009cf3e8                                    // 0x00472038    68e8f39c00
                         push             edx                                           // 0x0047203d    52
                         call             _sprintf                                      // 0x0047203e    e88f373500
                         add              esp, 0x08                                     // 0x00472043    83c408
                         pop              edi                                           // 0x00472046    5f
                         pop              esi                                           // 0x00472047    5e
                         pop              ebx                                           // 0x00472048    5b
                         mov.s            esp, ebp                                      // 0x00472049    8be5
                         pop              ebp                                           // 0x0047204b    5d
                         ret                                                            // 0x0047204c    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x0047204d    8b4718
                         push             0x009cf3d8                                    // 0x00472050    68d8f39c00
                         push             eax                                           // 0x00472055    50
                         call             _sprintf                                      // 0x00472056    e877373500
                         add              esp, 0x08                                     // 0x0047205b    83c408
                         pop              edi                                           // 0x0047205e    5f
                         pop              esi                                           // 0x0047205f    5e
                         pop              ebx                                           // 0x00472060    5b
                         mov.s            esp, ebp                                      // 0x00472061    8be5
                         pop              ebp                                           // 0x00472063    5d
                         ret                                                            // 0x00472064    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00472065    8b4f18
                         push             0x009cf3cc                                    // 0x00472068    68ccf39c00
                         push             ecx                                           // 0x0047206d    51
                         call             _sprintf                                      // 0x0047206e    e85f373500
                         add              esp, 0x08                                     // 0x00472073    83c408
                         pop              edi                                           // 0x00472076    5f
                         pop              esi                                           // 0x00472077    5e
                         pop              ebx                                           // 0x00472078    5b
                         mov.s            esp, ebp                                      // 0x00472079    8be5
                         pop              ebp                                           // 0x0047207b    5d
                         ret                                                            // 0x0047207c    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x0047207d    8b5718
                         push             0x009cf3c0                                    // 0x00472080    68c0f39c00
                         push             edx                                           // 0x00472085    52
                         call             _sprintf                                      // 0x00472086    e847373500
                         add              esp, 0x08                                     // 0x0047208b    83c408
                         pop              edi                                           // 0x0047208e    5f
                         pop              esi                                           // 0x0047208f    5e
                         pop              ebx                                           // 0x00472090    5b
                         mov.s            esp, ebp                                      // 0x00472091    8be5
                         pop              ebp                                           // 0x00472093    5d
                         ret                                                            // 0x00472094    c3
                         shr              eax, 4                                        // 0x00472095    c1e804
                         and              eax, 0x0f                                     // 0x00472098    83e00f
                         cmp              eax, 0x04                                     // 0x0047209b    83f804
                         {disp8} je       _jmp_addr_0x004720c1                          // 0x0047209e    7421
                         cmp              eax, 0x09                                     // 0x004720a0    83f809
                         {disp32} jne     _jmp_addr_0x0047252f                          // 0x004720a3    0f8586040000
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x004720a9    8b4718
                         push             0x009cf3b4                                    // 0x004720ac    68b4f39c00
                         push             eax                                           // 0x004720b1    50
                         call             _sprintf                                      // 0x004720b2    e81b373500
                         add              esp, 0x08                                     // 0x004720b7    83c408
                         pop              edi                                           // 0x004720ba    5f
                         pop              esi                                           // 0x004720bb    5e
                         pop              ebx                                           // 0x004720bc    5b
                         mov.s            esp, ebp                                      // 0x004720bd    8be5
                         pop              ebp                                           // 0x004720bf    5d
                         ret                                                            // 0x004720c0    c3
_jmp_addr_0x004720c1:    {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x004720c1    8b4f18
                         push             0x009cf39c                                    // 0x004720c4    689cf39c00
                         push             ecx                                           // 0x004720c9    51
                         call             _sprintf                                      // 0x004720ca    e803373500
                         add              esp, 0x08                                     // 0x004720cf    83c408
                         pop              edi                                           // 0x004720d2    5f
                         pop              esi                                           // 0x004720d3    5e
                         pop              ebx                                           // 0x004720d4    5b
                         mov.s            esp, ebp                                      // 0x004720d5    8be5
                         pop              ebp                                           // 0x004720d7    5d
                         ret                                                            // 0x004720d8    c3
                         {disp32} mov     ecx, dword ptr [edi + 0x000013d4]             // 0x004720d9    8b8fd4130000
                         cmp              ecx, 0x06                                     // 0x004720df    83f906
                         {disp32} ja      _jmp_addr_0x0047252f                          // 0x004720e2    0f8747040000
                         jmp              dword ptr [ecx*4 + 0x4725cc]                  // 0x004720e8    ff248dcc254700
                         shr              eax, 4                                        // 0x004720ef    c1e804
                         and              eax, 0x0f                                     // 0x004720f2    83e00f
                         cmp              eax, 0x08                                     // 0x004720f5    83f808
                         {disp32} ja      _jmp_addr_0x0047252f                          // 0x004720f8    0f8731040000
                         jmp              dword ptr [eax*4 + 0x4725e8]                  // 0x004720fe    ff2485e8254700
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00472105    8b5718
                         push             0x009cf38c                                    // 0x00472108    688cf39c00
                         push             edx                                           // 0x0047210d    52
                         call             _sprintf                                      // 0x0047210e    e8bf363500
                         add              esp, 0x08                                     // 0x00472113    83c408
                         pop              edi                                           // 0x00472116    5f
                         pop              esi                                           // 0x00472117    5e
                         pop              ebx                                           // 0x00472118    5b
                         mov.s            esp, ebp                                      // 0x00472119    8be5
                         pop              ebp                                           // 0x0047211b    5d
                         ret                                                            // 0x0047211c    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x0047211d    8b4718
                         push             0x009cf380                                    // 0x00472120    6880f39c00
                         push             eax                                           // 0x00472125    50
                         call             _sprintf                                      // 0x00472126    e8a7363500
                         add              esp, 0x08                                     // 0x0047212b    83c408
                         pop              edi                                           // 0x0047212e    5f
                         pop              esi                                           // 0x0047212f    5e
                         pop              ebx                                           // 0x00472130    5b
                         mov.s            esp, ebp                                      // 0x00472131    8be5
                         pop              ebp                                           // 0x00472133    5d
                         ret                                                            // 0x00472134    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00472135    8b5718
                         push             0x009cf368                                    // 0x00472138    6868f39c00
                         push             edx                                           // 0x0047213d    52
                         call             _sprintf                                      // 0x0047213e    e88f363500
                         add              esp, 0x08                                     // 0x00472143    83c408
                         pop              edi                                           // 0x00472146    5f
                         pop              esi                                           // 0x00472147    5e
                         pop              ebx                                           // 0x00472148    5b
                         mov.s            esp, ebp                                      // 0x00472149    8be5
                         pop              ebp                                           // 0x0047214b    5d
                         ret                                                            // 0x0047214c    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x0047214d    8b4718
                         push             0x009cf35c                                    // 0x00472150    685cf39c00
                         push             eax                                           // 0x00472155    50
                         call             _sprintf                                      // 0x00472156    e877363500
                         add              esp, 0x08                                     // 0x0047215b    83c408
                         pop              edi                                           // 0x0047215e    5f
                         pop              esi                                           // 0x0047215f    5e
                         pop              ebx                                           // 0x00472160    5b
                         mov.s            esp, ebp                                      // 0x00472161    8be5
                         pop              ebp                                           // 0x00472163    5d
                         ret                                                            // 0x00472164    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00472165    8b4f18
                         push             0x009cf350                                    // 0x00472168    6850f39c00
                         push             ecx                                           // 0x0047216d    51
                         call             _sprintf                                      // 0x0047216e    e85f363500
                         add              esp, 0x08                                     // 0x00472173    83c408
                         pop              edi                                           // 0x00472176    5f
                         pop              esi                                           // 0x00472177    5e
                         pop              ebx                                           // 0x00472178    5b
                         mov.s            esp, ebp                                      // 0x00472179    8be5
                         pop              ebp                                           // 0x0047217b    5d
                         ret                                                            // 0x0047217c    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x0047217d    8b5718
                         push             0x009cf328                                    // 0x00472180    6828f39c00
                         push             edx                                           // 0x00472185    52
                         call             _sprintf                                      // 0x00472186    e847363500
                         add              esp, 0x08                                     // 0x0047218b    83c408
                         pop              edi                                           // 0x0047218e    5f
                         pop              esi                                           // 0x0047218f    5e
                         pop              ebx                                           // 0x00472190    5b
                         mov.s            esp, ebp                                      // 0x00472191    8be5
                         pop              ebp                                           // 0x00472193    5d
                         ret                                                            // 0x00472194    c3
                         test             al, -0x10                                     // 0x00472195    a8f0
                         {disp32} jne     _jmp_addr_0x0047252f                          // 0x00472197    0f8592030000
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x0047219d    8b4718
                         push             0x009cf300                                    // 0x004721a0    6800f39c00
                         push             eax                                           // 0x004721a5    50
                         call             _sprintf                                      // 0x004721a6    e827363500
                         add              esp, 0x08                                     // 0x004721ab    83c408
                         pop              edi                                           // 0x004721ae    5f
                         pop              esi                                           // 0x004721af    5e
                         pop              ebx                                           // 0x004721b0    5b
                         mov.s            esp, ebp                                      // 0x004721b1    8be5
                         pop              ebp                                           // 0x004721b3    5d
                         ret                                                            // 0x004721b4    c3
                         shr              eax, 4                                        // 0x004721b5    c1e804
                         and              eax, 0x0f                                     // 0x004721b8    83e00f
                         sub              eax, 0x00                                     // 0x004721bb    83e800
                         {disp8} je       _jmp_addr_0x004721fe                          // 0x004721be    743e
                         sub              eax, 0x02                                     // 0x004721c0    83e802
                         {disp8} je       _jmp_addr_0x004721e6                          // 0x004721c3    7421
                         sub              eax, 0x03                                     // 0x004721c5    83e803
                         {disp32} jne     _jmp_addr_0x0047252f                          // 0x004721c8    0f8561030000
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x004721ce    8b4f18
                         push             0x009cf2f0                                    // 0x004721d1    68f0f29c00
                         push             ecx                                           // 0x004721d6    51
                         call             _sprintf                                      // 0x004721d7    e8f6353500
                         add              esp, 0x08                                     // 0x004721dc    83c408
                         pop              edi                                           // 0x004721df    5f
                         pop              esi                                           // 0x004721e0    5e
                         pop              ebx                                           // 0x004721e1    5b
                         mov.s            esp, ebp                                      // 0x004721e2    8be5
                         pop              ebp                                           // 0x004721e4    5d
                         ret                                                            // 0x004721e5    c3
_jmp_addr_0x004721e6:    {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x004721e6    8b5718
                         push             0x009cf2e4                                    // 0x004721e9    68e4f29c00
                         push             edx                                           // 0x004721ee    52
                         call             _sprintf                                      // 0x004721ef    e8de353500
                         add              esp, 0x08                                     // 0x004721f4    83c408
                         pop              edi                                           // 0x004721f7    5f
                         pop              esi                                           // 0x004721f8    5e
                         pop              ebx                                           // 0x004721f9    5b
                         mov.s            esp, ebp                                      // 0x004721fa    8be5
                         pop              ebp                                           // 0x004721fc    5d
                         ret                                                            // 0x004721fd    c3
_jmp_addr_0x004721fe:    {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x004721fe    8b4718
                         push             0x009cf2d8                                    // 0x00472201    68d8f29c00
                         push             eax                                           // 0x00472206    50
                         call             _sprintf                                      // 0x00472207    e8c6353500
                         add              esp, 0x08                                     // 0x0047220c    83c408
                         pop              edi                                           // 0x0047220f    5f
                         pop              esi                                           // 0x00472210    5e
                         pop              ebx                                           // 0x00472211    5b
                         mov.s            esp, ebp                                      // 0x00472212    8be5
                         pop              ebp                                           // 0x00472214    5d
                         ret                                                            // 0x00472215    c3
                         shr              eax, 4                                        // 0x00472216    c1e804
                         and              eax, 0x0f                                     // 0x00472219    83e00f
                         cmp              eax, 0x0d                                     // 0x0047221c    83f80d
                         {disp32} ja      _jmp_addr_0x0047252f                          // 0x0047221f    0f870a030000
                         jmp              dword ptr [eax*4 + 0x47260c]                  // 0x00472225    ff24850c264700
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x0047222c    8b4f18
                         push             0x009cf2bc                                    // 0x0047222f    68bcf29c00
                         push             ecx                                           // 0x00472234    51
                         call             _sprintf                                      // 0x00472235    e898353500
                         add              esp, 0x08                                     // 0x0047223a    83c408
                         pop              edi                                           // 0x0047223d    5f
                         pop              esi                                           // 0x0047223e    5e
                         pop              ebx                                           // 0x0047223f    5b
                         mov.s            esp, ebp                                      // 0x00472240    8be5
                         pop              ebp                                           // 0x00472242    5d
                         ret                                                            // 0x00472243    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00472244    8b5718
                         push             0x009cf2a4                                    // 0x00472247    68a4f29c00
                         push             edx                                           // 0x0047224c    52
                         call             _sprintf                                      // 0x0047224d    e880353500
                         add              esp, 0x08                                     // 0x00472252    83c408
                         pop              edi                                           // 0x00472255    5f
                         pop              esi                                           // 0x00472256    5e
                         pop              ebx                                           // 0x00472257    5b
                         mov.s            esp, ebp                                      // 0x00472258    8be5
                         pop              ebp                                           // 0x0047225a    5d
                         ret                                                            // 0x0047225b    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x0047225c    8b4718
                         push             0x009cf290                                    // 0x0047225f    6890f29c00
                         push             eax                                           // 0x00472264    50
                         call             _sprintf                                      // 0x00472265    e868353500
                         add              esp, 0x08                                     // 0x0047226a    83c408
                         pop              edi                                           // 0x0047226d    5f
                         pop              esi                                           // 0x0047226e    5e
                         pop              ebx                                           // 0x0047226f    5b
                         mov.s            esp, ebp                                      // 0x00472270    8be5
                         pop              ebp                                           // 0x00472272    5d
                         ret                                                            // 0x00472273    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00472274    8b4f18
                         push             0x009cf27c                                    // 0x00472277    687cf29c00
                         push             ecx                                           // 0x0047227c    51
                         call             _sprintf                                      // 0x0047227d    e850353500
                         add              esp, 0x08                                     // 0x00472282    83c408
                         pop              edi                                           // 0x00472285    5f
                         pop              esi                                           // 0x00472286    5e
                         pop              ebx                                           // 0x00472287    5b
                         mov.s            esp, ebp                                      // 0x00472288    8be5
                         pop              ebp                                           // 0x0047228a    5d
                         ret                                                            // 0x0047228b    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x0047228c    8b5718
                         push             0x009cf25c                                    // 0x0047228f    685cf29c00
                         push             edx                                           // 0x00472294    52
                         call             _sprintf                                      // 0x00472295    e838353500
                         add              esp, 0x08                                     // 0x0047229a    83c408
                         pop              edi                                           // 0x0047229d    5f
                         pop              esi                                           // 0x0047229e    5e
                         pop              ebx                                           // 0x0047229f    5b
                         mov.s            esp, ebp                                      // 0x004722a0    8be5
                         pop              ebp                                           // 0x004722a2    5d
                         ret                                                            // 0x004722a3    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x004722a4    8b4718
                         push             0x009cf23c                                    // 0x004722a7    683cf29c00
                         push             eax                                           // 0x004722ac    50
                         call             _sprintf                                      // 0x004722ad    e820353500
                         add              esp, 0x08                                     // 0x004722b2    83c408
                         pop              edi                                           // 0x004722b5    5f
                         pop              esi                                           // 0x004722b6    5e
                         pop              ebx                                           // 0x004722b7    5b
                         mov.s            esp, ebp                                      // 0x004722b8    8be5
                         pop              ebp                                           // 0x004722ba    5d
                         ret                                                            // 0x004722bb    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x004722bc    8b4f18
                         push             0x009cf230                                    // 0x004722bf    6830f29c00
                         push             ecx                                           // 0x004722c4    51
                         call             _sprintf                                      // 0x004722c5    e808353500
                         add              esp, 0x08                                     // 0x004722ca    83c408
                         pop              edi                                           // 0x004722cd    5f
                         pop              esi                                           // 0x004722ce    5e
                         pop              ebx                                           // 0x004722cf    5b
                         mov.s            esp, ebp                                      // 0x004722d0    8be5
                         pop              ebp                                           // 0x004722d2    5d
                         ret                                                            // 0x004722d3    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x004722d4    8b5718
                         push             0x009cf224                                    // 0x004722d7    6824f29c00
                         push             edx                                           // 0x004722dc    52
                         call             _sprintf                                      // 0x004722dd    e8f0343500
                         add              esp, 0x08                                     // 0x004722e2    83c408
                         pop              edi                                           // 0x004722e5    5f
                         pop              esi                                           // 0x004722e6    5e
                         pop              ebx                                           // 0x004722e7    5b
                         mov.s            esp, ebp                                      // 0x004722e8    8be5
                         pop              ebp                                           // 0x004722ea    5d
                         ret                                                            // 0x004722eb    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x004722ec    8b4718
                         push             0x009cf1f4                                    // 0x004722ef    68f4f19c00
                         push             eax                                           // 0x004722f4    50
                         call             _sprintf                                      // 0x004722f5    e8d8343500
                         add              esp, 0x08                                     // 0x004722fa    83c408
                         pop              edi                                           // 0x004722fd    5f
                         pop              esi                                           // 0x004722fe    5e
                         pop              ebx                                           // 0x004722ff    5b
                         mov.s            esp, ebp                                      // 0x00472300    8be5
                         pop              ebp                                           // 0x00472302    5d
                         ret                                                            // 0x00472303    c3
                         shr              eax, 4                                        // 0x00472304    c1e804
                         and              eax, 0x0f                                     // 0x00472307    83e00f
                         sub              eax, 0x04                                     // 0x0047230a    83e804
                         {disp8} je       _jmp_addr_0x0047234b                          // 0x0047230d    743c
                         sub              eax, 0x04                                     // 0x0047230f    83e804
                         {disp8} je       _jmp_addr_0x00472333                          // 0x00472312    741f
                         dec              eax                                           // 0x00472314    48
                         {disp32} jne     _jmp_addr_0x0047252f                          // 0x00472315    0f8514020000
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x0047231b    8b4f18
                         push             0x009cf1e4                                    // 0x0047231e    68e4f19c00
                         push             ecx                                           // 0x00472323    51
                         call             _sprintf                                      // 0x00472324    e8a9343500
                         add              esp, 0x08                                     // 0x00472329    83c408
                         pop              edi                                           // 0x0047232c    5f
                         pop              esi                                           // 0x0047232d    5e
                         pop              ebx                                           // 0x0047232e    5b
                         mov.s            esp, ebp                                      // 0x0047232f    8be5
                         pop              ebp                                           // 0x00472331    5d
                         ret                                                            // 0x00472332    c3
_jmp_addr_0x00472333:    {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00472333    8b5718
                         push             0x009cf1d4                                    // 0x00472336    68d4f19c00
                         push             edx                                           // 0x0047233b    52
                         call             _sprintf                                      // 0x0047233c    e891343500
                         add              esp, 0x08                                     // 0x00472341    83c408
                         pop              edi                                           // 0x00472344    5f
                         pop              esi                                           // 0x00472345    5e
                         pop              ebx                                           // 0x00472346    5b
                         mov.s            esp, ebp                                      // 0x00472347    8be5
                         pop              ebp                                           // 0x00472349    5d
                         ret                                                            // 0x0047234a    c3
_jmp_addr_0x0047234b:    {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x0047234b    8b4718
                         push             0x009cf1c4                                    // 0x0047234e    68c4f19c00
                         push             eax                                           // 0x00472353    50
                         call             _sprintf                                      // 0x00472354    e879343500
                         add              esp, 0x08                                     // 0x00472359    83c408
                         pop              edi                                           // 0x0047235c    5f
                         pop              esi                                           // 0x0047235d    5e
                         pop              ebx                                           // 0x0047235e    5b
                         mov.s            esp, ebp                                      // 0x0047235f    8be5
                         pop              ebp                                           // 0x00472361    5d
                         ret                                                            // 0x00472362    c3
                         shr              eax, 4                                        // 0x00472363    c1e804
                         and              eax, 0x0f                                     // 0x00472366    83e00f
                         sub              eax, 0x00                                     // 0x00472369    83e800
                         {disp8} je       _jmp_addr_0x0047238f                          // 0x0047236c    7421
                         sub              eax, 0x02                                     // 0x0047236e    83e802
                         {disp32} jne     _jmp_addr_0x0047252f                          // 0x00472371    0f85b8010000
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00472377    8b4f18
                         push             0x009cf1a0                                    // 0x0047237a    68a0f19c00
                         push             ecx                                           // 0x0047237f    51
                         call             _sprintf                                      // 0x00472380    e84d343500
                         add              esp, 0x08                                     // 0x00472385    83c408
                         pop              edi                                           // 0x00472388    5f
                         pop              esi                                           // 0x00472389    5e
                         pop              ebx                                           // 0x0047238a    5b
                         mov.s            esp, ebp                                      // 0x0047238b    8be5
                         pop              ebp                                           // 0x0047238d    5d
                         ret                                                            // 0x0047238e    c3
_jmp_addr_0x0047238f:    {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x0047238f    8b5718
                         push             0x009cf17c                                    // 0x00472392    687cf19c00
                         push             edx                                           // 0x00472397    52
                         call             _sprintf                                      // 0x00472398    e835343500
                         add              esp, 0x08                                     // 0x0047239d    83c408
                         pop              edi                                           // 0x004723a0    5f
                         pop              esi                                           // 0x004723a1    5e
                         pop              ebx                                           // 0x004723a2    5b
                         mov.s            esp, ebp                                      // 0x004723a3    8be5
                         pop              ebp                                           // 0x004723a5    5d
                         ret                                                            // 0x004723a6    c3
                         {disp32} mov     ecx, dword ptr [edi + 0x000013d4]             // 0x004723a7    8b8fd4130000
                         sub              ecx, 0x00                                     // 0x004723ad    83e900
                         {disp8} je       _jmp_addr_0x00472430                          // 0x004723b0    747e
                         dec              ecx                                           // 0x004723b2    49
                         {disp32} jne     _jmp_addr_0x0047252f                          // 0x004723b3    0f8576010000
                         shr              eax, 4                                        // 0x004723b9    c1e804
                         and              eax, 0x0f                                     // 0x004723bc    83e00f
                         dec              eax                                           // 0x004723bf    48
                         cmp              eax, 0x03                                     // 0x004723c0    83f803
                         {disp32} ja      _jmp_addr_0x0047252f                          // 0x004723c3    0f8766010000
                         jmp              dword ptr [eax*4 + 0x472644]                  // 0x004723c9    ff248544264700
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x004723d0    8b4718
                         push             0x009cf158                                    // 0x004723d3    6858f19c00
                         push             eax                                           // 0x004723d8    50
                         call             _sprintf                                      // 0x004723d9    e8f4333500
                         add              esp, 0x08                                     // 0x004723de    83c408
                         pop              edi                                           // 0x004723e1    5f
                         pop              esi                                           // 0x004723e2    5e
                         pop              ebx                                           // 0x004723e3    5b
                         mov.s            esp, ebp                                      // 0x004723e4    8be5
                         pop              ebp                                           // 0x004723e6    5d
                         ret                                                            // 0x004723e7    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x004723e8    8b4f18
                         push             0x009cf134                                    // 0x004723eb    6834f19c00
                         push             ecx                                           // 0x004723f0    51
                         call             _sprintf                                      // 0x004723f1    e8dc333500
                         add              esp, 0x08                                     // 0x004723f6    83c408
                         pop              edi                                           // 0x004723f9    5f
                         pop              esi                                           // 0x004723fa    5e
                         pop              ebx                                           // 0x004723fb    5b
                         mov.s            esp, ebp                                      // 0x004723fc    8be5
                         pop              ebp                                           // 0x004723fe    5d
                         ret                                                            // 0x004723ff    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x00472400    8b5718
                         push             0x009cf0f8                                    // 0x00472403    68f8f09c00
                         push             edx                                           // 0x00472408    52
                         call             _sprintf                                      // 0x00472409    e8c4333500
                         add              esp, 0x08                                     // 0x0047240e    83c408
                         pop              edi                                           // 0x00472411    5f
                         pop              esi                                           // 0x00472412    5e
                         pop              ebx                                           // 0x00472413    5b
                         mov.s            esp, ebp                                      // 0x00472414    8be5
                         pop              ebp                                           // 0x00472416    5d
                         ret                                                            // 0x00472417    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00472418    8b4718
                         push             0x009cf0bc                                    // 0x0047241b    68bcf09c00
                         push             eax                                           // 0x00472420    50
                         call             _sprintf                                      // 0x00472421    e8ac333500
                         add              esp, 0x08                                     // 0x00472426    83c408
                         pop              edi                                           // 0x00472429    5f
                         pop              esi                                           // 0x0047242a    5e
                         pop              ebx                                           // 0x0047242b    5b
                         mov.s            esp, ebp                                      // 0x0047242c    8be5
                         pop              ebp                                           // 0x0047242e    5d
                         ret                                                            // 0x0047242f    c3
_jmp_addr_0x00472430:    shr              eax, 4                                        // 0x00472430    c1e804
                         and              eax, 0x0f                                     // 0x00472433    83e00f
                         cmp              eax, 0x0a                                     // 0x00472436    83f80a
                         {disp32} ja      _jmp_addr_0x0047252f                          // 0x00472439    0f87f0000000
                         jmp              dword ptr [eax*4 + 0x472654]                  // 0x0047243f    ff248554264700
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00472446    8b4f18
                         push             0x009cf0ac                                    // 0x00472449    68acf09c00
                         push             ecx                                           // 0x0047244e    51
                         call             _sprintf                                      // 0x0047244f    e87e333500
                         add              esp, 0x08                                     // 0x00472454    83c408
                         pop              edi                                           // 0x00472457    5f
                         pop              esi                                           // 0x00472458    5e
                         pop              ebx                                           // 0x00472459    5b
                         mov.s            esp, ebp                                      // 0x0047245a    8be5
                         pop              ebp                                           // 0x0047245c    5d
                         ret                                                            // 0x0047245d    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x0047245e    8b5718
                         push             0x009cf0a0                                    // 0x00472461    68a0f09c00
                         push             edx                                           // 0x00472466    52
                         call             _sprintf                                      // 0x00472467    e866333500
                         add              esp, 0x08                                     // 0x0047246c    83c408
                         pop              edi                                           // 0x0047246f    5f
                         pop              esi                                           // 0x00472470    5e
                         pop              ebx                                           // 0x00472471    5b
                         mov.s            esp, ebp                                      // 0x00472472    8be5
                         pop              ebp                                           // 0x00472474    5d
                         ret                                                            // 0x00472475    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00472476    8b4718
                         push             0x009cf07c                                    // 0x00472479    687cf09c00
                         push             eax                                           // 0x0047247e    50
                         call             _sprintf                                      // 0x0047247f    e84e333500
                         add              esp, 0x08                                     // 0x00472484    83c408
                         pop              edi                                           // 0x00472487    5f
                         pop              esi                                           // 0x00472488    5e
                         pop              ebx                                           // 0x00472489    5b
                         mov.s            esp, ebp                                      // 0x0047248a    8be5
                         pop              ebp                                           // 0x0047248c    5d
                         ret                                                            // 0x0047248d    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x0047248e    8b4f18
                         push             0x009cf058                                    // 0x00472491    6858f09c00
                         push             ecx                                           // 0x00472496    51
                         call             _sprintf                                      // 0x00472497    e836333500
                         add              esp, 0x08                                     // 0x0047249c    83c408
                         pop              edi                                           // 0x0047249f    5f
                         pop              esi                                           // 0x004724a0    5e
                         pop              ebx                                           // 0x004724a1    5b
                         mov.s            esp, ebp                                      // 0x004724a2    8be5
                         pop              ebp                                           // 0x004724a4    5d
                         ret                                                            // 0x004724a5    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x004724a6    8b5718
                         push             0x009cf038                                    // 0x004724a9    6838f09c00
                         push             edx                                           // 0x004724ae    52
                         call             _sprintf                                      // 0x004724af    e81e333500
                         add              esp, 0x08                                     // 0x004724b4    83c408
                         pop              edi                                           // 0x004724b7    5f
                         pop              esi                                           // 0x004724b8    5e
                         pop              ebx                                           // 0x004724b9    5b
                         mov.s            esp, ebp                                      // 0x004724ba    8be5
                         pop              ebp                                           // 0x004724bc    5d
                         ret                                                            // 0x004724bd    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x004724be    8b4718
                         push             0x009cf014                                    // 0x004724c1    6814f09c00
                         push             eax                                           // 0x004724c6    50
                         call             _sprintf                                      // 0x004724c7    e806333500
                         add              esp, 0x08                                     // 0x004724cc    83c408
                         pop              edi                                           // 0x004724cf    5f
                         pop              esi                                           // 0x004724d0    5e
                         pop              ebx                                           // 0x004724d1    5b
                         mov.s            esp, ebp                                      // 0x004724d2    8be5
                         pop              ebp                                           // 0x004724d4    5d
                         ret                                                            // 0x004724d5    c3
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x004724d6    8b4f18
                         push             0x009cefd4                                    // 0x004724d9    68d4ef9c00
                         push             ecx                                           // 0x004724de    51
                         call             _sprintf                                      // 0x004724df    e8ee323500
                         add              esp, 0x08                                     // 0x004724e4    83c408
                         pop              edi                                           // 0x004724e7    5f
                         pop              esi                                           // 0x004724e8    5e
                         pop              ebx                                           // 0x004724e9    5b
                         mov.s            esp, ebp                                      // 0x004724ea    8be5
                         pop              ebp                                           // 0x004724ec    5d
                         ret                                                            // 0x004724ed    c3
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x004724ee    8b5718
                         push             0x009cef94                                    // 0x004724f1    6894ef9c00
                         push             edx                                           // 0x004724f6    52
                         call             _sprintf                                      // 0x004724f7    e8d6323500
                         add              esp, 0x08                                     // 0x004724fc    83c408
                         pop              edi                                           // 0x004724ff    5f
                         pop              esi                                           // 0x00472500    5e
                         pop              ebx                                           // 0x00472501    5b
                         mov.s            esp, ebp                                      // 0x00472502    8be5
                         pop              ebp                                           // 0x00472504    5d
                         ret                                                            // 0x00472505    c3
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00472506    8b4718
                         push             0x009cef78                                    // 0x00472509    6878ef9c00
                         push             eax                                           // 0x0047250e    50
                         call             _sprintf                                      // 0x0047250f    e8be323500
                         add              esp, 0x08                                     // 0x00472514    83c408
                         pop              edi                                           // 0x00472517    5f
                         pop              esi                                           // 0x00472518    5e
                         pop              ebx                                           // 0x00472519    5b
                         mov.s            esp, ebp                                      // 0x0047251a    8be5
                         pop              ebp                                           // 0x0047251c    5d
                         ret                                                            // 0x0047251d    c3
_jmp_addr_0x0047251e:    {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x0047251e    8b4f18
                         push             0x009cef60                                    // 0x00472521    6860ef9c00
                         push             ecx                                           // 0x00472526    51
                         call             _sprintf                                      // 0x00472527    e8a6323500
                         add              esp, 0x08                                     // 0x0047252c    83c408
_jmp_addr_0x0047252f:    pop              edi                                           // 0x0047252f    5f
                         pop              esi                                           // 0x00472530    5e
                         pop              ebx                                           // 0x00472531    5b
                         mov.s            esp, ebp                                      // 0x00472532    8be5
                         pop              ebp                                           // 0x00472534    5d
                         ret                                                            // 0x00472535    c3

// Snippet: db, [0x00472536, 0x00472538)
.byte 0x8b, 0xff                  // 0x00472536

// Snippet: jmptbl, [0x00472538, 0x0047255c)
.byte 0x4c, 0x1e, 0x47, 0x00      // 0x00472538
.byte 0x53, 0x1e, 0x47, 0x00      // 0x0047253c
.byte 0x5e, 0x1e, 0x47, 0x00      // 0x00472540
.byte 0x69, 0x1e, 0x47, 0x00      // 0x00472544
.byte 0xa0, 0x1e, 0x47, 0x00      // 0x00472548
.byte 0xd9, 0x20, 0x47, 0x00      // 0x0047254c
.byte 0xa7, 0x23, 0x47, 0x00      // 0x00472550
.byte 0x06, 0x25, 0x47, 0x00      // 0x00472554
.byte 0x1e, 0x25, 0x47, 0x00      // 0x00472558

// Snippet: ijmptbl, [0x0047255c, 0x00472568)
.byte 0x00, 0x01, 0x02, 0x04      // 0x0047255c
.byte 0x04, 0x04, 0x04, 0x04      // 0x00472560
.byte 0x04, 0x04, 0x04, 0x03      // 0x00472564

// Snippet: jmptbl, [0x00472568, 0x004725bc)
.byte 0xb6, 0x1e, 0x47, 0x00      // 0x00472568
.byte 0xe4, 0x1f, 0x47, 0x00      // 0x0047256c
.byte 0xa4, 0x1f, 0x47, 0x00      // 0x00472570
.byte 0x95, 0x20, 0x47, 0x00      // 0x00472574
.byte 0xcc, 0x1e, 0x47, 0x00      // 0x00472578
.byte 0xe4, 0x1e, 0x47, 0x00      // 0x0047257c
.byte 0xfc, 0x1e, 0x47, 0x00      // 0x00472580
.byte 0x14, 0x1f, 0x47, 0x00      // 0x00472584
.byte 0x2c, 0x1f, 0x47, 0x00      // 0x00472588
.byte 0x44, 0x1f, 0x47, 0x00      // 0x0047258c
.byte 0x2f, 0x25, 0x47, 0x00      // 0x00472590
.byte 0x5c, 0x1f, 0x47, 0x00      // 0x00472594
.byte 0x74, 0x1f, 0x47, 0x00      // 0x00472598
.byte 0x8c, 0x1f, 0x47, 0x00      // 0x0047259c
.byte 0x05, 0x20, 0x47, 0x00      // 0x004725a0
.byte 0x1d, 0x20, 0x47, 0x00      // 0x004725a4
.byte 0x35, 0x20, 0x47, 0x00      // 0x004725a8
.byte 0x4d, 0x20, 0x47, 0x00      // 0x004725ac
.byte 0x65, 0x20, 0x47, 0x00      // 0x004725b0
.byte 0x7d, 0x20, 0x47, 0x00      // 0x004725b4
.byte 0x2f, 0x25, 0x47, 0x00      // 0x004725b8

// Snippet: ijmptbl, [0x004725bc, 0x004725c9)
.byte 0x00, 0x06, 0x06, 0x06      // 0x004725bc
.byte 0x01, 0x02, 0x03, 0x06      // 0x004725c0
.byte 0x06, 0x06, 0x06, 0x04      // 0x004725c4
.byte 0x05                        // 0x004725c8

// Snippet: db, [0x004725c9, 0x004725cc)
.byte 0x8d, 0x49, 0x00            // 0x004725c9

// Snippet: jmptbl, [0x004725cc, 0x00472680)
.byte 0xef, 0x20, 0x47, 0x00      // 0x004725cc
.byte 0x16, 0x22, 0x47, 0x00      // 0x004725d0
.byte 0x2f, 0x25, 0x47, 0x00      // 0x004725d4
.byte 0xb5, 0x21, 0x47, 0x00      // 0x004725d8
.byte 0x95, 0x21, 0x47, 0x00      // 0x004725dc
.byte 0x04, 0x23, 0x47, 0x00      // 0x004725e0
.byte 0x63, 0x23, 0x47, 0x00      // 0x004725e4
.byte 0x05, 0x21, 0x47, 0x00      // 0x004725e8
.byte 0x1d, 0x21, 0x47, 0x00      // 0x004725ec
.byte 0x65, 0x21, 0x47, 0x00      // 0x004725f0
.byte 0x35, 0x21, 0x47, 0x00      // 0x004725f4
.byte 0x4d, 0x21, 0x47, 0x00      // 0x004725f8
.byte 0x2f, 0x25, 0x47, 0x00      // 0x004725fc
.byte 0x2f, 0x25, 0x47, 0x00      // 0x00472600
.byte 0x65, 0x21, 0x47, 0x00      // 0x00472604
.byte 0x7d, 0x21, 0x47, 0x00      // 0x00472608
.byte 0x2c, 0x22, 0x47, 0x00      // 0x0047260c
.byte 0x44, 0x22, 0x47, 0x00      // 0x00472610
.byte 0x5c, 0x22, 0x47, 0x00      // 0x00472614
.byte 0x74, 0x22, 0x47, 0x00      // 0x00472618
.byte 0x2f, 0x25, 0x47, 0x00      // 0x0047261c
.byte 0x2f, 0x25, 0x47, 0x00      // 0x00472620
.byte 0x8c, 0x22, 0x47, 0x00      // 0x00472624
.byte 0xa4, 0x22, 0x47, 0x00      // 0x00472628
.byte 0xbc, 0x22, 0x47, 0x00      // 0x0047262c
.byte 0xd4, 0x22, 0x47, 0x00      // 0x00472630
.byte 0x2f, 0x25, 0x47, 0x00      // 0x00472634
.byte 0x2f, 0x25, 0x47, 0x00      // 0x00472638
.byte 0x2f, 0x25, 0x47, 0x00      // 0x0047263c
.byte 0xec, 0x22, 0x47, 0x00      // 0x00472640
.byte 0xd0, 0x23, 0x47, 0x00      // 0x00472644
.byte 0xe8, 0x23, 0x47, 0x00      // 0x00472648
.byte 0x00, 0x24, 0x47, 0x00      // 0x0047264c
.byte 0x18, 0x24, 0x47, 0x00      // 0x00472650
.byte 0x46, 0x24, 0x47, 0x00      // 0x00472654
.byte 0x5e, 0x24, 0x47, 0x00      // 0x00472658
.byte 0x2f, 0x25, 0x47, 0x00      // 0x0047265c
.byte 0x76, 0x24, 0x47, 0x00      // 0x00472660
.byte 0x2f, 0x25, 0x47, 0x00      // 0x00472664
.byte 0x8e, 0x24, 0x47, 0x00      // 0x00472668
.byte 0xa6, 0x24, 0x47, 0x00      // 0x0047266c
.byte 0xbe, 0x24, 0x47, 0x00      // 0x00472670
.byte 0xd6, 0x24, 0x47, 0x00      // 0x00472674
.byte 0x2f, 0x25, 0x47, 0x00      // 0x00472678
.byte 0xee, 0x24, 0x47, 0x00      // 0x0047267c

