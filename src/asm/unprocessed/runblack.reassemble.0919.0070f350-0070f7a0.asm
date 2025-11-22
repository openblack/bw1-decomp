.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0041aa00
.extern _jmp_addr_0x00429340
.extern _jmp_addr_0x004f7060
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern _jmp_addr_0x006f6bc0
.extern _jmp_addr_0x006f82c0
.extern _jmp_addr_0x006f82e0
.extern _jmp_addr_0x0070d220
.extern _jmp_addr_0x0070d440
.extern _jmp_addr_0x0070e820
.extern ?ReleaseFromScript@Villager@@QAEXXZ
.extern _jmp_addr_0x00774340
.extern _jmp_addr_0x007a1400
.extern _atexit

.globl _jmp_addr_0x0070f600

.globl _globl_ct_0x0070f580
.globl _globl_ct_0x0070f5b0
.globl _globl_ct_0x0070f5d0

start_0x0070f350_0x0070f7a0:
// Snippet: asm, [0x0070f350, 0x0070f753)
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070f350    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00250090]             // 0x0070f355    8b8090002500
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                   // 0x0070f35b    8b4820
                         {disp8} mov        edx, dword ptr [eax + 0x24]                   // 0x0070f35e    8b5024
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070f361    8b442404
                         push               ecx                                           // 0x0070f365    51
                         push               edx                                           // 0x0070f366    52
                         push               eax                                           // 0x0070f367    50
                         call               _jmp_addr_0x0070e820                          // 0x0070f368    e8b3f4ffff
                         add                esp, 0x0c                                     // 0x0070f36d    83c40c
                         xor.s              eax, eax                                      // 0x0070f370    33c0
                         ret                                                              // 0x0070f372    c3
                         nop                                                              // 0x0070f373    90
                         nop                                                              // 0x0070f374    90
                         nop                                                              // 0x0070f375    90
                         nop                                                              // 0x0070f376    90
                         nop                                                              // 0x0070f377    90
                         nop                                                              // 0x0070f378    90
                         nop                                                              // 0x0070f379    90
                         nop                                                              // 0x0070f37a    90
                         nop                                                              // 0x0070f37b    90
                         nop                                                              // 0x0070f37c    90
                         nop                                                              // 0x0070f37d    90
                         nop                                                              // 0x0070f37e    90
                         nop                                                              // 0x0070f37f    90
                         sub                esp, 0x0c                                     // 0x0070f380    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070f383    8b0d105cd900
                         push               ebx                                           // 0x0070f389    53
                         push               esi                                           // 0x0070f38a    56
                         push               edi                                           // 0x0070f38b    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0070f38c    8d44240c
                         push               eax                                           // 0x0070f390    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070f391    e82a78feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070f396    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0070f39c    8d542410
                         mov.s              ebx, eax                                      // 0x0070f3a0    8bd8
                         push               edx                                           // 0x0070f3a2    52
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0070f3a3    895c2410
                         call               _jmp_addr_0x006f6bc0                          // 0x0070f3a7    e81478feff
                         push               eax                                           // 0x0070f3ac    50
                         call               _jmp_addr_0x0070d220                          // 0x0070f3ad    e86edeffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070f3b2    8b0d105cd900
                         mov.s              esi, eax                                      // 0x0070f3b8    8bf0
                         add                esp, 0x04                                     // 0x0070f3ba    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070f3bd    8d442414
                         push               eax                                           // 0x0070f3c1    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070f3c2    e8f977feff
                         test               esi, esi                                      // 0x0070f3c7    85f6
                         mov.s              edi, eax                                      // 0x0070f3c9    8bf8
                         {disp8} jne        _jmp_addr_0x0070f3e1                          // 0x0070f3cb    7514
                         push               0x00c0d428                                    // 0x0070f3cd    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070f3d2    e8d96efeff
                         add                esp, 0x04                                     // 0x0070f3d7    83c404
                         pop                edi                                           // 0x0070f3da    5f
                         pop                esi                                           // 0x0070f3db    5e
                         pop                ebx                                           // 0x0070f3dc    5b
                         add                esp, 0x0c                                     // 0x0070f3dd    83c40c
                         ret                                                              // 0x0070f3e0    c3
_jmp_addr_0x0070f3e1:    mov                edx, dword ptr [esi]                          // 0x0070f3e1    8b16
                         mov.s              ecx, esi                                      // 0x0070f3e3    8bce
                         call               dword ptr [edx + 0x3f8]                       // 0x0070f3e5    ff92f8030000
                         test               eax, eax                                      // 0x0070f3eb    85c0
                         {disp8} je         _jmp_addr_0x0070f45f                          // 0x0070f3ed    7470
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070f3ef    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x0070f3f4    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0070f3fa    8b54240c
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x0070f3fe    895120
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070f401    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x0070f406    8b8890002500
                         {disp8} mov        dword ptr [ecx + 0x24], edi                   // 0x0070f40c    897924
                         mov                edx, dword ptr [esi]                          // 0x0070f40f    8b16
                         mov.s              ecx, esi                                      // 0x0070f411    8bce
                         call               dword ptr [edx + 0x4e8]                       // 0x0070f413    ff92e8040000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0070f419    8d0440
                         {disp32} mov       eax, dword ptr [eax * 0x8 + 0x00c0c73c]       // 0x0070f41c    8b04c53cc7c000
                         test               eax, eax                                      // 0x0070f423    85c0
                         {disp8} je         _jmp_addr_0x0070f43d                          // 0x0070f425    7416
                         push               0x0                                           // 0x0070f427    6a00
                         push               0x0                                           // 0x0070f429    6a00
                         push               0x0070f350                                    // 0x0070f42b    6850f37000
                         push               esi                                           // 0x0070f430    56
                         call               eax                                           // 0x0070f431    ffd0
                         add                esp, 0x10                                     // 0x0070f433    83c410
                         pop                edi                                           // 0x0070f436    5f
                         pop                esi                                           // 0x0070f437    5e
                         pop                ebx                                           // 0x0070f438    5b
                         add                esp, 0x0c                                     // 0x0070f439    83c40c
                         ret                                                              // 0x0070f43c    c3
_jmp_addr_0x0070f43d:    lea                ecx, dword ptr [edi + edi * 0x2]              // 0x0070f43d    8d0c7f
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00c0c73c]       // 0x0070f440    8b04cd3cc7c000
                         test               eax, eax                                      // 0x0070f447    85c0
                         {disp8} jne        _jmp_addr_0x0070f46a                          // 0x0070f449    751f
                         push               0x00c0c688                                    // 0x0070f44b    6888c6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070f450    e85b6efeff
                         add                esp, 0x04                                     // 0x0070f455    83c404
                         pop                edi                                           // 0x0070f458    5f
                         pop                esi                                           // 0x0070f459    5e
                         pop                ebx                                           // 0x0070f45a    5b
                         add                esp, 0x0c                                     // 0x0070f45b    83c40c
                         ret                                                              // 0x0070f45e    c3
_jmp_addr_0x0070f45f:    push               ebx                                           // 0x0070f45f    53
                         push               edi                                           // 0x0070f460    57
                         push               esi                                           // 0x0070f461    56
                         call               _jmp_addr_0x0070e820                          // 0x0070f462    e8b9f3ffff
                         add                esp, 0x0c                                     // 0x0070f467    83c40c
_jmp_addr_0x0070f46a:    pop                edi                                           // 0x0070f46a    5f
                         pop                esi                                           // 0x0070f46b    5e
                         pop                ebx                                           // 0x0070f46c    5b
                         add                esp, 0x0c                                     // 0x0070f46d    83c40c
                         ret                                                              // 0x0070f470    c3
                         nop                                                              // 0x0070f471    90
                         nop                                                              // 0x0070f472    90
                         nop                                                              // 0x0070f473    90
                         nop                                                              // 0x0070f474    90
                         nop                                                              // 0x0070f475    90
                         nop                                                              // 0x0070f476    90
                         nop                                                              // 0x0070f477    90
                         nop                                                              // 0x0070f478    90
                         nop                                                              // 0x0070f479    90
                         nop                                                              // 0x0070f47a    90
                         nop                                                              // 0x0070f47b    90
                         nop                                                              // 0x0070f47c    90
                         nop                                                              // 0x0070f47d    90
                         nop                                                              // 0x0070f47e    90
                         nop                                                              // 0x0070f47f    90
                         sub                esp, 0x0c                                     // 0x0070f480    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070f483    8b0d105cd900
                         push               ebx                                           // 0x0070f489    53
                         push               ebp                                           // 0x0070f48a    55
                         push               esi                                           // 0x0070f48b    56
                         push               edi                                           // 0x0070f48c    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070f48d    8d442414
                         push               eax                                           // 0x0070f491    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070f492    e82977feff
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070f497    89442414
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0070f49b    d9442414
                         call               _jmp_addr_0x007a1400                          // 0x0070f49f    e85c1f0900
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070f4a4    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0070f4aa    8d542414
                         push               edx                                           // 0x0070f4ae    52
                         mov.s              ebp, eax                                      // 0x0070f4af    8be8
                         call               _jmp_addr_0x006f6bc0                          // 0x0070f4b1    e80a77feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070f4b6    8b0d105cd900
                         mov.s              edi, eax                                      // 0x0070f4bc    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070f4be    8d442414
                         push               eax                                           // 0x0070f4c2    50
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0070f4c3    897c2414
                         call               _jmp_addr_0x006f6bc0                          // 0x0070f4c7    e8f476feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070f4cc    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0070f4d2    8d542418
                         mov.s              ebx, eax                                      // 0x0070f4d6    8bd8
                         push               edx                                           // 0x0070f4d8    52
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0070f4d9    895c2418
                         call               _jmp_addr_0x006f6bc0                          // 0x0070f4dd    e8de76feff
                         push               eax                                           // 0x0070f4e2    50
                         call               _jmp_addr_0x0070d220                          // 0x0070f4e3    e838ddffff
                         mov.s              esi, eax                                      // 0x0070f4e8    8bf0
                         add                esp, 0x04                                     // 0x0070f4ea    83c404
                         test               esi, esi                                      // 0x0070f4ed    85f6
                         {disp8} je         _jmp_addr_0x0070f565                          // 0x0070f4ef    7474
                         mov                eax, dword ptr [esi]                          // 0x0070f4f1    8b06
                         mov.s              ecx, esi                                      // 0x0070f4f3    8bce
                         call               dword ptr [eax + 0x3ec]                       // 0x0070f4f5    ff90ec030000
                         test               eax, eax                                      // 0x0070f4fb    85c0
                         {disp8} je         _jmp_addr_0x0070f546                          // 0x0070f4fd    7447
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0070f4ff    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0070f503    d81d98a38a00
                         fnstsw             ax                                            // 0x0070f509    dfe0
                         test               ah, 0x40                                      // 0x0070f50b    f6c440
                         {disp8} jne        _jmp_addr_0x0070f51d                          // 0x0070f50e    750d
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0070f510    d9442410
                         call               _jmp_addr_0x007a1400                          // 0x0070f514    e8e71e0900
                         {disp8} mov        word ptr [esi + 0x50], ax                     // 0x0070f519    66894650
_jmp_addr_0x0070f51d:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x0070f51d    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0070f521    d81d98a38a00
                         fnstsw             ax                                            // 0x0070f527    dfe0
                         test               ah, 0x40                                      // 0x0070f529    f6c440
                         {disp8} jne        _jmp_addr_0x0070f53b                          // 0x0070f52c    750d
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0070f52e    d9442414
                         call               _jmp_addr_0x007a1400                          // 0x0070f532    e8c91e0900
                         {disp8} mov        word ptr [esi + 0x52], ax                     // 0x0070f537    66894652
_jmp_addr_0x0070f53b:    pop                edi                                           // 0x0070f53b    5f
                         {disp8} mov        dword ptr [esi + 0x5c], ebp                   // 0x0070f53c    896e5c
                         pop                esi                                           // 0x0070f53f    5e
                         pop                ebp                                           // 0x0070f540    5d
                         pop                ebx                                           // 0x0070f541    5b
                         add                esp, 0x0c                                     // 0x0070f542    83c40c
                         ret                                                              // 0x0070f545    c3
_jmp_addr_0x0070f546:    mov                edx, dword ptr [esi]                          // 0x0070f546    8b16
                         mov.s              ecx, esi                                      // 0x0070f548    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x0070f54a    ff92fc030000
                         test               eax, eax                                      // 0x0070f550    85c0
                         {disp8} je         _jmp_addr_0x0070f565                          // 0x0070f552    7411
                         push               edi                                           // 0x0070f554    57
                         push               ebx                                           // 0x0070f555    53
                         mov.s              ecx, esi                                      // 0x0070f556    8bce
                         call               _jmp_addr_0x00774340                          // 0x0070f558    e8e34d0600
                         pop                edi                                           // 0x0070f55d    5f
                         pop                esi                                           // 0x0070f55e    5e
                         pop                ebp                                           // 0x0070f55f    5d
                         pop                ebx                                           // 0x0070f560    5b
                         add                esp, 0x0c                                     // 0x0070f561    83c40c
                         ret                                                              // 0x0070f564    c3
_jmp_addr_0x0070f565:    push               0x00c20a54                                    // 0x0070f565    68540ac200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070f56a    e8416dfeff
                         add                esp, 0x04                                     // 0x0070f56f    83c404
                         pop                edi                                           // 0x0070f572    5f
                         pop                esi                                           // 0x0070f573    5e
                         pop                ebp                                           // 0x0070f574    5d
                         pop                ebx                                           // 0x0070f575    5b
                         add                esp, 0x0c                                     // 0x0070f576    83c40c
                         ret                                                              // 0x0070f579    c3
                         nop                                                              // 0x0070f57a    90
                         nop                                                              // 0x0070f57b    90
                         nop                                                              // 0x0070f57c    90
                         nop                                                              // 0x0070f57d    90
                         nop                                                              // 0x0070f57e    90
                         nop                                                              // 0x0070f57f    90
_globl_ct_0x0070f580:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0070f580    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0070f586    b001
                         test               al, cl                                        // 0x0070f588    84c8
                         {disp8} jne        _jmp_addr_0x0070f594                          // 0x0070f58a    7508
                         or.s               cl, al                                        // 0x0070f58c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0070f58e    880d34c9fa00
_jmp_addr_0x0070f594:    {disp32} jmp       _jmp_addr_0x0070f5a0                          // 0x0070f594    e907000000
                         nop                                                              // 0x0070f599    90
                         nop                                                              // 0x0070f59a    90
                         nop                                                              // 0x0070f59b    90
                         nop                                                              // 0x0070f59c    90
                         nop                                                              // 0x0070f59d    90
                         nop                                                              // 0x0070f59e    90
                         nop                                                              // 0x0070f59f    90
_jmp_addr_0x0070f5a0:    push               0x00407870                                    // 0x0070f5a0    6870784000
                         call               _atexit                                       // 0x0070f5a5    e8e7610b00
                         pop                ecx                                           // 0x0070f5aa    59
                         ret                                                              // 0x0070f5ab    c3
                         nop                                                              // 0x0070f5ac    90
                         nop                                                              // 0x0070f5ad    90
                         nop                                                              // 0x0070f5ae    90
                         nop                                                              // 0x0070f5af    90
_globl_ct_0x0070f5b0:    {disp32} jmp       _jmp_addr_0x0070f5c0                          // 0x0070f5b0    e90b000000
                         nop                                                              // 0x0070f5b5    90
                         nop                                                              // 0x0070f5b6    90
                         nop                                                              // 0x0070f5b7    90
                         nop                                                              // 0x0070f5b8    90
                         nop                                                              // 0x0070f5b9    90
                         nop                                                              // 0x0070f5ba    90
                         nop                                                              // 0x0070f5bb    90
                         nop                                                              // 0x0070f5bc    90
                         nop                                                              // 0x0070f5bd    90
                         nop                                                              // 0x0070f5be    90
                         nop                                                              // 0x0070f5bf    90
_jmp_addr_0x0070f5c0:    {disp32} mov       dword ptr [data_bytes + 0x3d301c], 0xffffffff // 0x0070f5c0    c7051c90d900ffffffff
                         ret                                                              // 0x0070f5ca    c3
                         nop                                                              // 0x0070f5cb    90
                         nop                                                              // 0x0070f5cc    90
                         nop                                                              // 0x0070f5cd    90
                         nop                                                              // 0x0070f5ce    90
                         nop                                                              // 0x0070f5cf    90
_globl_ct_0x0070f5d0:    {disp32} jmp       _jmp_addr_0x0070f5e0                          // 0x0070f5d0    e90b000000
                         nop                                                              // 0x0070f5d5    90
                         nop                                                              // 0x0070f5d6    90
                         nop                                                              // 0x0070f5d7    90
                         nop                                                              // 0x0070f5d8    90
                         nop                                                              // 0x0070f5d9    90
                         nop                                                              // 0x0070f5da    90
                         nop                                                              // 0x0070f5db    90
                         nop                                                              // 0x0070f5dc    90
                         nop                                                              // 0x0070f5dd    90
                         nop                                                              // 0x0070f5de    90
                         nop                                                              // 0x0070f5df    90
_jmp_addr_0x0070f5e0:    {disp32} fld       dword ptr [rdata_bytes + 0x99b34]             // 0x0070f5e0    d905342b9400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99b30]             // 0x0070f5e6    d80d302b9400
                         {disp32} fstp      dword ptr [data_bytes + 0x3d3018]             // 0x0070f5ec    d91d1890d900
                         ret                                                              // 0x0070f5f2    c3
                         nop                                                              // 0x0070f5f3    90
                         nop                                                              // 0x0070f5f4    90
                         nop                                                              // 0x0070f5f5    90
                         nop                                                              // 0x0070f5f6    90
                         nop                                                              // 0x0070f5f7    90
                         nop                                                              // 0x0070f5f8    90
                         nop                                                              // 0x0070f5f9    90
                         nop                                                              // 0x0070f5fa    90
                         nop                                                              // 0x0070f5fb    90
                         nop                                                              // 0x0070f5fc    90
                         nop                                                              // 0x0070f5fd    90
                         nop                                                              // 0x0070f5fe    90
                         nop                                                              // 0x0070f5ff    90
_jmp_addr_0x0070f600:    push               esi                                           // 0x0070f600    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0070f601    8b742408
                         mov                eax, dword ptr [esi]                          // 0x0070f605    8b06
                         push               edi                                           // 0x0070f607    57
                         push               0x0                                           // 0x0070f608    6a00
                         mov.s              ecx, esi                                      // 0x0070f60a    8bce
                         call               dword ptr [eax + 0x440]                       // 0x0070f60c    ff9040040000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0070f612    8b442414
                         test               eax, eax                                      // 0x0070f616    85c0
                         {disp8} jne        _jmp_addr_0x0070f676                          // 0x0070f618    755c
                         mov                edx, dword ptr [esi]                          // 0x0070f61a    8b16
                         mov.s              ecx, esi                                      // 0x0070f61c    8bce
                         call               dword ptr [edx + 0x404]                       // 0x0070f61e    ff9204040000
                         test               eax, eax                                      // 0x0070f624    85c0
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0070f626    8b7c2410
                         {disp8} jne        _jmp_addr_0x0070f647                          // 0x0070f62a    751b
                         mov                eax, dword ptr [esi]                          // 0x0070f62c    8b06
                         mov.s              ecx, esi                                      // 0x0070f62e    8bce
                         call               dword ptr [eax + 0x48c]                       // 0x0070f630    ff908c040000
                         test               eax, eax                                      // 0x0070f636    85c0
                         {disp8} je         _jmp_addr_0x0070f676                          // 0x0070f638    743c
                         push               edi                                           // 0x0070f63a    57
                         call               _jmp_addr_0x0070d440                          // 0x0070f63b    e800deffff
                         add                esp, 0x04                                     // 0x0070f640    83c404
                         test               eax, eax                                      // 0x0070f643    85c0
                         {disp8} je         _jmp_addr_0x0070f676                          // 0x0070f645    742f
_jmp_addr_0x0070f647:    push               edi                                           // 0x0070f647    57
                         call               _jmp_addr_0x0070d440                          // 0x0070f648    e8f3ddffff
                         add                esp, 0x04                                     // 0x0070f64d    83c404
                         test               eax, eax                                      // 0x0070f650    85c0
                         {disp8} jne        _jmp_addr_0x0070f661                          // 0x0070f652    750d
                         push               0x00c20ab4                                    // 0x0070f654    68b40ac200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070f659    e8526cfeff
                         add                esp, 0x04                                     // 0x0070f65e    83c404
_jmp_addr_0x0070f661:    push               edi                                           // 0x0070f661    57
                         call               _jmp_addr_0x0070d440                          // 0x0070f662    e8d9ddffff
                         mov                edx, dword ptr [esi]                          // 0x0070f667    8b16
                         add                esp, 0x04                                     // 0x0070f669    83c404
                         push               0x0                                           // 0x0070f66c    6a00
                         mov.s              ecx, esi                                      // 0x0070f66e    8bce
                         call               dword ptr [edx + 0xc]                         // 0x0070f670    ff520c
                         pop                edi                                           // 0x0070f673    5f
                         pop                esi                                           // 0x0070f674    5e
                         ret                                                              // 0x0070f675    c3
_jmp_addr_0x0070f676:    {disp32} mov       ecx, dword ptr [_global]                      // 0x0070f676    8b0d203bcd00
                         push               esi                                           // 0x0070f67c    56
                         call               _jmp_addr_0x00429340                          // 0x0070f67d    e8be9cd1ff
                         mov                eax, dword ptr [esi]                          // 0x0070f682    8b06
                         mov.s              ecx, esi                                      // 0x0070f684    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x0070f686    ff90e8040000
                         cmp                eax, 0x29                                     // 0x0070f68c    83f829
                         {disp32} ja        _jmp_addr_0x0070f743                          // 0x0070f68f    0f87ae000000
                         xor.s              ecx, ecx                                      // 0x0070f695    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0070f76c]               // 0x0070f697    8a886cf77000
                         jmp                dword ptr [ecx*4 + 0x70f754]                  // 0x0070f69d    ff248d54f77000
                         pop                edi                                           // 0x0070f6a4    5f
                         {disp32} mov       dword ptr [esi + 0x000002fc], 0x00000001      // 0x0070f6a5    c786fc02000001000000
                         pop                esi                                           // 0x0070f6af    5e
                         ret                                                              // 0x0070f6b0    c3
                         test               byte ptr [esi + 0x24], 0x40                   // 0x0070f6b1    f6462440
                         push               0x20                                          // 0x0070f6b5    6a20
                         push               esi                                           // 0x0070f6b7    56
                         {disp8} je         _jmp_addr_0x0070f6cc                          // 0x0070f6b8    7412
                         call               _jmp_addr_0x006f82c0                          // 0x0070f6ba    e8018cfeff
                         add                esp, 0x08                                     // 0x0070f6bf    83c408
                         mov.s              ecx, esi                                      // 0x0070f6c2    8bce
                         call               _jmp_addr_0x0041aa00                          // 0x0070f6c4    e837b3d0ff
                         pop                edi                                           // 0x0070f6c9    5f
                         pop                esi                                           // 0x0070f6ca    5e
                         ret                                                              // 0x0070f6cb    c3
_jmp_addr_0x0070f6cc:    call               _jmp_addr_0x006f82e0                          // 0x0070f6cc    e80f8cfeff
                         add                esp, 0x08                                     // 0x0070f6d1    83c408
                         mov.s              ecx, esi                                      // 0x0070f6d4    8bce
                         call               _jmp_addr_0x0041aa00                          // 0x0070f6d6    e825b3d0ff
                         pop                edi                                           // 0x0070f6db    5f
                         pop                esi                                           // 0x0070f6dc    5e
                         ret                                                              // 0x0070f6dd    c3
                         mov                edx, dword ptr [esi]                          // 0x0070f6de    8b16
                         mov.s              ecx, esi                                      // 0x0070f6e0    8bce
                         call               dword ptr [edx + 0x178]                       // 0x0070f6e2    ff9278010000
                         test               eax, eax                                      // 0x0070f6e8    85c0
                         {disp8} jne        _jmp_addr_0x0070f6ff                          // 0x0070f6ea    7513
                         test               byte ptr [esi + 0x24], 0x40                   // 0x0070f6ec    f6462440
                         {disp8} jne        _jmp_addr_0x0070f6ff                          // 0x0070f6f0    750d
                         push               0x00c20a98                                    // 0x0070f6f2    68980ac200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070f6f7    e8b46bfeff
                         add                esp, 0x04                                     // 0x0070f6fc    83c404
_jmp_addr_0x0070f6ff:    mov                eax, dword ptr [esi]                          // 0x0070f6ff    8b06
                         mov.s              ecx, esi                                      // 0x0070f701    8bce
                         call               dword ptr [eax + 0x178]                       // 0x0070f703    ff9078010000
                         test               byte ptr [esi + 0x24], 0x40                   // 0x0070f709    f6462440
                         push               0x000000a3                                    // 0x0070f70d    68a3000000
                         push               esi                                           // 0x0070f712    56
                         {disp8} je         _jmp_addr_0x0070f727                          // 0x0070f713    7412
                         call               _jmp_addr_0x006f82c0                          // 0x0070f715    e8a68bfeff
                         add                esp, 0x08                                     // 0x0070f71a    83c408
                         mov.s              ecx, esi                                      // 0x0070f71d    8bce
                         call               ?ReleaseFromScript@Villager@@QAEXXZ           // 0x0070f71f    e8ac3a0400
                         pop                edi                                           // 0x0070f724    5f
                         pop                esi                                           // 0x0070f725    5e
                         ret                                                              // 0x0070f726    c3
_jmp_addr_0x0070f727:    call               _jmp_addr_0x006f82e0                          // 0x0070f727    e8b48bfeff
                         add                esp, 0x08                                     // 0x0070f72c    83c408
                         mov.s              ecx, esi                                      // 0x0070f72f    8bce
                         call               ?ReleaseFromScript@Villager@@QAEXXZ           // 0x0070f731    e89a3a0400
                         pop                edi                                           // 0x0070f736    5f
                         pop                esi                                           // 0x0070f737    5e
                         ret                                                              // 0x0070f738    c3
                         mov.s              ecx, esi                                      // 0x0070f739    8bce
                         call               _jmp_addr_0x004f7060                          // 0x0070f73b    e82079deff
                         pop                edi                                           // 0x0070f740    5f
                         pop                esi                                           // 0x0070f741    5e
                         ret                                                              // 0x0070f742    c3
_jmp_addr_0x0070f743:    push               0x00c20a7c                                    // 0x0070f743    687c0ac200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070f748    e8636bfeff
                         add                esp, 0x04                                     // 0x0070f74d    83c404
                         pop                edi                                           // 0x0070f750    5f
                         pop                esi                                           // 0x0070f751    5e
                         ret                                                              // 0x0070f752    c3

// Snippet: db, [0x0070f753, 0x0070f754)
.byte 0x90                        // 0x0070f753

// Snippet: jmptbl, [0x0070f754, 0x0070f76c)
.byte 0x50, 0xf7, 0x70, 0x00      // 0x0070f754
.byte 0xde, 0xf6, 0x70, 0x00      // 0x0070f758
.byte 0xb1, 0xf6, 0x70, 0x00      // 0x0070f75c
.byte 0x39, 0xf7, 0x70, 0x00      // 0x0070f760
.byte 0xa4, 0xf6, 0x70, 0x00      // 0x0070f764
.byte 0x43, 0xf7, 0x70, 0x00      // 0x0070f768

// Snippet: ijmptbl, [0x0070f76c, 0x0070f796)
.byte 0x00, 0x00, 0x00, 0x00      // 0x0070f76c
.byte 0x01, 0x01, 0x02, 0x00      // 0x0070f770
.byte 0x00, 0x00, 0x00, 0x00      // 0x0070f774
.byte 0x03, 0x00, 0x00, 0x00      // 0x0070f778
.byte 0x00, 0x00, 0x00, 0x00      // 0x0070f77c
.byte 0x00, 0x02, 0x00, 0x00      // 0x0070f780
.byte 0x05, 0x00, 0x00, 0x00      // 0x0070f784
.byte 0x04, 0x00, 0x00, 0x05      // 0x0070f788
.byte 0x00, 0x00, 0x05, 0x00      // 0x0070f78c
.byte 0x00, 0x00, 0x00, 0x00      // 0x0070f790
.byte 0x00, 0x00                  // 0x0070f794

// Snippet: db, [0x0070f796, 0x0070f7a0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0070f796
.byte 0x90, 0x90, 0x90, 0x90      // 0x0070f79a
.byte 0x90, 0x90                  // 0x0070f79e

