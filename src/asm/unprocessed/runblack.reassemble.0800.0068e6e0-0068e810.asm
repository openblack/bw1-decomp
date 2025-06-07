.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0068e230
.extern _jmp_addr_0x0068e2d0
.extern _jmp_addr_0x0068e300
.extern _jmp_addr_0x0068e340

.globl _jmp_addr_0x0068e6e0

start_0x0068e6e0_0x0068e810:
// Snippet: asm, [0x0068e6e0, 0x0068e7b6)
_jmp_addr_0x0068e6e0:    {disp8} mov        eax, dword ptr [esp + 0x04]        // 0x0068e6e0    8b442404
                         push               esi                                // 0x0068e6e4    56
                         add                eax, -0x5f                         // 0x0068e6e5    83c0a1
                         xor.s              esi, esi                           // 0x0068e6e8    33f6
                         cmp                eax, 0x0e                          // 0x0068e6ea    83f80e
                         push               edi                                // 0x0068e6ed    57
                         mov.s              edi, ecx                           // 0x0068e6ee    8bf9
                         {disp8} ja         _jmp_addr_0x0068e711               // 0x0068e6f0    771f
                         xor.s              ecx, ecx                           // 0x0068e6f2    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0068e7c4]    // 0x0068e6f4    8a88c4e76800
                         jmp                dword ptr [ecx*4 + 0x68e7b8]       // 0x0068e6fa    ff248db8e76800
                         xor.s              esi, esi                           // 0x0068e701    33f6
                         {disp8} jmp        _jmp_addr_0x0068e711               // 0x0068e703    eb0c
                         mov                esi, 0x00000002                    // 0x0068e705    be02000000
                         {disp8} jmp        _jmp_addr_0x0068e711               // 0x0068e70a    eb05
                         mov                esi, 0x00000001                    // 0x0068e70c    be01000000
_jmp_addr_0x0068e711:    cmp                eax, 0x0e                          // 0x0068e711    83f80e
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000 // 0x0068e714    c744240c00000000
                         {disp8} ja         _jmp_addr_0x0068e755               // 0x0068e71c    7737
                         jmp                dword ptr [eax*4 + 0x68e7d4]       // 0x0068e71e    ff2485d4e76800
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000 // 0x0068e725    c744240c00000000
                         {disp8} jmp        _jmp_addr_0x0068e755               // 0x0068e72d    eb26
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3e800000 // 0x0068e72f    c744240c0000803e
                         {disp8} jmp        _jmp_addr_0x0068e755               // 0x0068e737    eb1c
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3f000000 // 0x0068e739    c744240c0000003f
                         {disp8} jmp        _jmp_addr_0x0068e755               // 0x0068e741    eb12
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3f400000 // 0x0068e743    c744240c0000403f
                         {disp8} jmp        _jmp_addr_0x0068e755               // 0x0068e74b    eb08
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3f800000 // 0x0068e74d    c744240c0000803f
_jmp_addr_0x0068e755:    {disp32} mov       eax, dword ptr [edi + 0x000057b0]  // 0x0068e755    8b87b0570000
                         test               eax, eax                           // 0x0068e75b    85c0
                         {disp8} jne        _jmp_addr_0x0068e76a               // 0x0068e75d    750b
                         call               _jmp_addr_0x0068e230               // 0x0068e75f    e8ccfaffff
                         {disp32} mov       dword ptr [edi + 0x000057b0], eax  // 0x0068e764    8987b0570000
_jmp_addr_0x0068e76a:    {disp8} fld        dword ptr [esp + 0x0c]             // 0x0068e76a    d944240c
                         {disp32} mov       ecx, dword ptr [edi + 0x000057b0]  // 0x0068e76e    8b8fb0570000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]        // 0x0068e774    d81d98a38a00
                         push               esi                                // 0x0068e77a    56
                         fnstsw             ax                                 // 0x0068e77b    dfe0
                         test               ah, 0x40                           // 0x0068e77d    f6c440
                         {disp8} je         _jmp_addr_0x0068e78c               // 0x0068e780    740a
                         call               _jmp_addr_0x0068e2d0               // 0x0068e782    e849fbffff
                         pop                edi                                // 0x0068e787    5f
                         pop                esi                                // 0x0068e788    5e
                         ret                0x0004                             // 0x0068e789    c20400
_jmp_addr_0x0068e78c:    call               _jmp_addr_0x0068e300               // 0x0068e78c    e86ffbffff
                         {disp8} fld        dword ptr [esp + 0x0c]             // 0x0068e791    d944240c
                         push               0x3f800000                         // 0x0068e795    680000803f
                         fadd.s             st(0), st(0)                       // 0x0068e79a    dcc0
                         push               ecx                                // 0x0068e79c    51
                         {disp32} mov       ecx, dword ptr [edi + 0x000057b0]  // 0x0068e79d    8b8fb0570000
                         fstp               dword ptr [esp]                    // 0x0068e7a3    d91c24
                         push               0x3f800000                         // 0x0068e7a6    680000803f
                         push               esi                                // 0x0068e7ab    56
                         call               _jmp_addr_0x0068e340               // 0x0068e7ac    e88ffbffff
                         pop                edi                                // 0x0068e7b1    5f
                         pop                esi                                // 0x0068e7b2    5e
                         ret                0x0004                             // 0x0068e7b3    c20400

// Snippet: db, [0x0068e7b6, 0x0068e7b8)
.byte 0x8b, 0xff                  // 0x0068e7b6

// Snippet: jmptbl, [0x0068e7b8, 0x0068e7c4)
.byte 0x01, 0xe7, 0x68, 0x00      // 0x0068e7b8
.byte 0x05, 0xe7, 0x68, 0x00      // 0x0068e7bc
.byte 0x0c, 0xe7, 0x68, 0x00      // 0x0068e7c0

// Snippet: ijmptbl, [0x0068e7c4, 0x0068e7d3)
.byte 0x00, 0x00, 0x00, 0x00      // 0x0068e7c4
.byte 0x00, 0x01, 0x01, 0x01      // 0x0068e7c8
.byte 0x01, 0x01, 0x02, 0x02      // 0x0068e7cc
.byte 0x02, 0x02, 0x02            // 0x0068e7d0

// Snippet: db, [0x0068e7d3, 0x0068e7d4)
.byte 0x90                        // 0x0068e7d3

// Snippet: jmptbl, [0x0068e7d4, 0x0068e810)
.byte 0x25, 0xe7, 0x68, 0x00      // 0x0068e7d4
.byte 0x2f, 0xe7, 0x68, 0x00      // 0x0068e7d8
.byte 0x39, 0xe7, 0x68, 0x00      // 0x0068e7dc
.byte 0x43, 0xe7, 0x68, 0x00      // 0x0068e7e0
.byte 0x4d, 0xe7, 0x68, 0x00      // 0x0068e7e4
.byte 0x25, 0xe7, 0x68, 0x00      // 0x0068e7e8
.byte 0x2f, 0xe7, 0x68, 0x00      // 0x0068e7ec
.byte 0x39, 0xe7, 0x68, 0x00      // 0x0068e7f0
.byte 0x43, 0xe7, 0x68, 0x00      // 0x0068e7f4
.byte 0x4d, 0xe7, 0x68, 0x00      // 0x0068e7f8
.byte 0x25, 0xe7, 0x68, 0x00      // 0x0068e7fc
.byte 0x2f, 0xe7, 0x68, 0x00      // 0x0068e800
.byte 0x39, 0xe7, 0x68, 0x00      // 0x0068e804
.byte 0x43, 0xe7, 0x68, 0x00      // 0x0068e808
.byte 0x4d, 0xe7, 0x68, 0x00      // 0x0068e80c

