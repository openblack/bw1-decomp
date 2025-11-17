.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern  ??3@YAXPAX@Z
.extern ___RTDynamicCast
.extern _atexit
.extern _jmp_addr_0x007436f0
.extern _jmp_addr_0x00743720

.globl ?SetupReactToCreature@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl _globl_ct_0x007675b0
.globl _globl_ct_0x007675e0
.globl _globl_ct_0x00767610

_globl_ct_0x007675b0:    {disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]          // 0x007675b0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x007675b6    b001
                         test               al, cl                                        // 0x007675b8    84c8
                         {disp8} jne        _jmp_addr_0x007675c4                          // 0x007675ba    7508
                         or.s               cl, al                                        // 0x007675bc    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x5e6934], cl          // 0x007675be    880d34c9fa00
_jmp_addr_0x007675c4:    {disp32} jmp       _jmp_addr_0x007675d0                          // 0x007675c4    e907000000
                         nop                                                              // 0x007675c9    90
                         nop                                                              // 0x007675ca    90
                         nop                                                              // 0x007675cb    90
                         nop                                                              // 0x007675cc    90
                         nop                                                              // 0x007675cd    90
                         nop                                                              // 0x007675ce    90
                         nop                                                              // 0x007675cf    90
_jmp_addr_0x007675d0:    push               0x00407870                                    // 0x007675d0    6870784000
                         call               _atexit                                       // 0x007675d5    e8b7e10500
                         pop                ecx                                           // 0x007675da    59
                         ret                                                              // 0x007675db    c3
                         nop                                                              // 0x007675dc    90
                         nop                                                              // 0x007675dd    90
                         nop                                                              // 0x007675de    90
                         nop                                                              // 0x007675df    90
_globl_ct_0x007675e0:    {disp32} jmp       _jmp_addr_0x007675f0                          // 0x007675e0    e90b000000
                         nop                                                              // 0x007675e5    90
                         nop                                                              // 0x007675e6    90
                         nop                                                              // 0x007675e7    90
                         nop                                                              // 0x007675e8    90
                         nop                                                              // 0x007675e9    90
                         nop                                                              // 0x007675ea    90
                         nop                                                              // 0x007675eb    90
                         nop                                                              // 0x007675ec    90
                         nop                                                              // 0x007675ed    90
                         nop                                                              // 0x007675ee    90
                         nop                                                              // 0x007675ef    90
_jmp_addr_0x007675f0:    {disp32} fld       dword ptr [rdata_bytes + 0xf19ec]             // 0x007675f0    d905eca99900
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf19e8]             // 0x007675f6    d80de8a99900
                         {disp32} fstp      dword ptr [data_bytes + 0x3f3e40]             // 0x007675fc    d91d409edb00
                         ret                                                              // 0x00767602    c3
                         nop                                                              // 0x00767603    90
                         nop                                                              // 0x00767604    90
                         nop                                                              // 0x00767605    90
                         nop                                                              // 0x00767606    90
                         nop                                                              // 0x00767607    90
                         nop                                                              // 0x00767608    90
                         nop                                                              // 0x00767609    90
                         nop                                                              // 0x0076760a    90
                         nop                                                              // 0x0076760b    90
                         nop                                                              // 0x0076760c    90
                         nop                                                              // 0x0076760d    90
                         nop                                                              // 0x0076760e    90
                         nop                                                              // 0x0076760f    90
_globl_ct_0x00767610:    {disp32} jmp       _jmp_addr_0x00767620                          // 0x00767610    e90b000000
                         nop                                                              // 0x00767615    90
                         nop                                                              // 0x00767616    90
                         nop                                                              // 0x00767617    90
                         nop                                                              // 0x00767618    90
                         nop                                                              // 0x00767619    90
                         nop                                                              // 0x0076761a    90
                         nop                                                              // 0x0076761b    90
                         nop                                                              // 0x0076761c    90
                         nop                                                              // 0x0076761d    90
                         nop                                                              // 0x0076761e    90
                         nop                                                              // 0x0076761f    90
_jmp_addr_0x00767620:    {disp32} mov       dword ptr [data_bytes + 0x3f3e3c], 0xffffffff // 0x00767620    c7053c9edb00ffffffff
                         ret                                                              // 0x0076762a    c3
                         nop                                                              // 0x0076762b    90
                         nop                                                              // 0x0076762c    90
                         nop                                                              // 0x0076762d    90
                         nop                                                              // 0x0076762e    90
                         nop                                                              // 0x0076762f    90
?SetupReactToCreature@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00767630    8b442404
                         push               ebx                                           // 0x00767634    53
                         push               esi                                           // 0x00767635    56
                         push               edi                                           // 0x00767636    57
                         push               0x0                                           // 0x00767637    6a00
                         push               0x009c8060                                    // 0x00767639    6860809c00
                         push               0x009c7f30                                    // 0x0076763e    68307f9c00
                         push               0x0                                           // 0x00767643    6a00
                         push               eax                                           // 0x00767645    50
                         mov.s              esi, ecx                                      // 0x00767646    8bf1
                         call               ___RTDynamicCast                              // 0x00767648    e8cce30500
                         mov.s              edi, eax                                      // 0x0076764d    8bf8
                         mov                edx, dword ptr [edi]                          // 0x0076764f    8b17
                         add                esp, 0x14                                     // 0x00767651    83c414
                         mov.s              ecx, edi                                      // 0x00767654    8bcf
                         call               dword ptr [edx + 0x2c]                        // 0x00767656    ff522c
                         test               eax, eax                                      // 0x00767659    85c0
                         {disp8} je         _jmp_addr_0x007676ba                          // 0x0076765b    745d
                         {disp32} mov       dword ptr [esi + 0x000000bc], edi             // 0x0076765d    89bebc000000
                         mov                eax, dword ptr [esi]                          // 0x00767663    8b06
                         mov.s              ecx, esi                                      // 0x00767665    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00767667    ff5048
                         mov.s              ebx, eax                                      // 0x0076766a    8bd8
                         test               ebx, ebx                                      // 0x0076766c    85db
                         {disp8} je         _jmp_addr_0x007676a6                          // 0x0076766e    7436
                         push               edi                                           // 0x00767670    57
                         mov.s              ecx, ebx                                      // 0x00767671    8bcb
                         call               _jmp_addr_0x00743720                          // 0x00767673    e8a8c0fdff
                         push               edi                                           // 0x00767678    57
                         mov.s              ecx, ebx                                      // 0x00767679    8bcb
                         call               _jmp_addr_0x007436f0                          // 0x0076767b    e870c0fdff
                         cmp                eax, 0x04                                     // 0x00767680    83f804
                         {disp8} ja         _jmp_addr_0x007676ba                          // 0x00767683    7735
                         jmp                dword ptr [eax*4 + 0x7676c0]                  // 0x00767685    ff2485c0767600
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0076768c    8b442414
                         mov                edx, dword ptr [esi]                          // 0x00767690    8b16
                         push               0x0000009f                                    // 0x00767692    689f000000
                         push               eax                                           // 0x00767697    50
                         mov.s              ecx, esi                                      // 0x00767698    8bce
                         call               dword ptr [edx + 0x990]                       // 0x0076769a    ff9290090000
                         pop                edi                                           // 0x007676a0    5f
                         pop                esi                                           // 0x007676a1    5e
                         pop                ebx                                           // 0x007676a2    5b
                         ret                0x0008                                        // 0x007676a3    c20800
_jmp_addr_0x007676a6:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x007676a6    8b442414
                         mov                edx, dword ptr [esi]                          // 0x007676aa    8b16
                         push               0x00000092                                    // 0x007676ac    6892000000
                         push               eax                                           // 0x007676b1    50
                         mov.s              ecx, esi                                      // 0x007676b2    8bce
                         call               dword ptr [edx + 0x990]                       // 0x007676b4    ff9290090000
_jmp_addr_0x007676ba:    pop                edi                                           // 0x007676ba    5f
                         pop                esi                                           // 0x007676bb    5e
                         pop                ebx                                           // 0x007676bc    5b
                         ret                0x0008                                        // 0x007676bd    c20800

// Snippet: jmptbl, [0x007676c0, 0x007676d4)
.byte 0xa6, 0x76, 0x76, 0x00      // 0x007676c0
.byte 0xba, 0x76, 0x76, 0x00      // 0x007676c4
.byte 0xa6, 0x76, 0x76, 0x00      // 0x007676c8
.byte 0x8c, 0x76, 0x76, 0x00      // 0x007676cc
.byte 0xa6, 0x76, 0x76, 0x00      // 0x007676d0

// Snippet: db, [0x007676d4, 0x007676e0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007676d4
.byte 0x90, 0x90, 0x90, 0x90      // 0x007676d8
.byte 0x90, 0x90, 0x90, 0x90      // 0x007676dc

