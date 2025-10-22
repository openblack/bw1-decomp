.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?MoveAlongRoute@RPFollow@@QAEXXZ
.extern @GetLength__9RouteNodeFP7RPAvoid@12

start_0x008648b0_0x00864990:
// Snippet: asm, [0x008648b0, 0x00864979)
                         push               ecx                               // 0x008648b0    51
                         push               esi                               // 0x008648b1    56
                         mov.s              esi, ecx                          // 0x008648b2    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00064054] // 0x008648b4    8b8654400600
                         cmp                eax, 0x04                         // 0x008648ba    83f804
                         {disp32} ja        _jmp_addr_0x00864976              // 0x008648bd    0f87b3000000
                         jmp                dword ptr [eax*4 + 0x86497c]      // 0x008648c3    ff24857c498600
                         {disp32} mov       ecx, dword ptr [esi + 0x00064070] // 0x008648ca    8b8e70400600
                         {disp32} fld       dword ptr [esi + 0x0006403c]      // 0x008648d0    d9863c400600
                         {disp8} mov        eax, dword ptr [ecx + 0x24]       // 0x008648d6    8b4124
                         test               eax, eax                          // 0x008648d9    85c0
                         {disp8} jne        _jmp_addr_0x0086490c              // 0x008648db    752f
                         push               esi                               // 0x008648dd    56
                         fstp               st(0)                             // 0x008648de    ddd8
                         call               @GetLength__9RouteNodeFP7RPAvoid@12              // 0x008648e0    e8bb480000
                         {disp32} fsub      dword ptr [esi + 0x00064038]      // 0x008648e5    d8a638400600
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabc0] // 0x008648eb    d80dc03b9a00
                         fadd.s             st(0), st(0)                      // 0x008648f1    dcc0
                         fsqrt                                                // 0x008648f3    d9fa
                         {disp32} fld       dword ptr [__real@3dcccccd]       // 0x008648f5    d9052cb28a00
                         fcomp              st(1)                             // 0x008648fb    d8d9
                         fnstsw             ax                                // 0x008648fd    dfe0
                         test               ah, 0x41                          // 0x008648ff    f6c441
                         {disp8} jne        _jmp_addr_0x0086490c              // 0x00864902    7508
                         fstp               st(0)                             // 0x00864904    ddd8
                         {disp32} fld       dword ptr [__real@3dcccccd]       // 0x00864906    d9052cb28a00
_jmp_addr_0x0086490c:    {disp32} fld       dword ptr [esi + 0x00064034]      // 0x0086490c    d98634400600
                         {disp32} fcomp     dword ptr [esi + 0x0006403c]      // 0x00864912    d89e3c400600
                         fnstsw             ax                                // 0x00864918    dfe0
                         test               ah, 0x01                          // 0x0086491a    f6c401
                         {disp8} je         _jmp_addr_0x00864950              // 0x0086491d    7431
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabbc] // 0x0086491f    d905bc3b9a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabc0] // 0x00864925    d80dc03b9a00
                         {disp32} fadd      dword ptr [esi + 0x00064034]      // 0x0086492b    d88634400600
                         {disp32} fld       dword ptr [esi + 0x0006403c]      // 0x00864931    d9863c400600
                         {disp8} fst        dword ptr [esp + 0x04]            // 0x00864937    d9542404
                         fcomp              st(1)                             // 0x0086493b    d8d9
                         fnstsw             ax                                // 0x0086493d    dfe0
                         test               ah, 0x01                          // 0x0086493f    f6c401
                         {disp8} je         _jmp_addr_0x0086494a              // 0x00864942    7406
                         fstp               st(0)                             // 0x00864944    ddd8
                         {disp8} fld        dword ptr [esp + 0x04]            // 0x00864946    d9442404
_jmp_addr_0x0086494a:    {disp32} fstp      dword ptr [esi + 0x00064034]      // 0x0086494a    d99e34400600
_jmp_addr_0x00864950:    {disp32} fcom      dword ptr [esi + 0x00064034]      // 0x00864950    d89634400600
                         fnstsw             ax                                // 0x00864956    dfe0
                         test               ah, 0x01                          // 0x00864958    f6c401
                         {disp8} je         _jmp_addr_0x0086496d              // 0x0086495b    7410
                         mov.s              ecx, esi                          // 0x0086495d    8bce
                         {disp32} fstp      dword ptr [esi + 0x00064034]      // 0x0086495f    d99e34400600
                         call               ?MoveAlongRoute@RPFollow@@QAEXXZ  // 0x00864965    e826000000
                         pop                esi                               // 0x0086496a    5e
                         pop                ecx                               // 0x0086496b    59
                         ret                                                  // 0x0086496c    c3
_jmp_addr_0x0086496d:    mov.s              ecx, esi                          // 0x0086496d    8bce
                         fstp               st(0)                             // 0x0086496f    ddd8
                         call               ?MoveAlongRoute@RPFollow@@QAEXXZ  // 0x00864971    e81a000000
_jmp_addr_0x00864976:    pop                esi                               // 0x00864976    5e
                         pop                ecx                               // 0x00864977    59
                         ret                                                  // 0x00864978    c3

// Snippet: db, [0x00864979, 0x0086497c)
.byte 0x8d, 0x49, 0x00            // 0x00864979

// Snippet: jmptbl, [0x0086497c, 0x00864990)
.byte 0x76, 0x49, 0x86, 0x00      // 0x0086497c
.byte 0x76, 0x49, 0x86, 0x00      // 0x00864980
.byte 0x76, 0x49, 0x86, 0x00      // 0x00864984
.byte 0xca, 0x48, 0x86, 0x00      // 0x00864988
.byte 0xca, 0x48, 0x86, 0x00      // 0x0086498c

