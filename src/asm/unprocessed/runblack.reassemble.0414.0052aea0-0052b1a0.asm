.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern @GetLHPoint__9MapCoordsCFv@12

.globl _jmp_addr_0x0052af90

start_0x0052aea0_0x0052b1a0:
// Snippet: asm, [0x0052aea0, 0x0052b189)
_jmp_addr_0x0052aea0:    sub                esp, 0x54                                // 0x0052aea0    83ec54
                         {disp8} mov        eax, dword ptr [esp + 0x5c]              // 0x0052aea3    8b44245c
                         mov                ecx, dword ptr [eax]                     // 0x0052aea7    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]              // 0x0052aea9    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]              // 0x0052aeac    8b4008
                         {disp8} mov        dword ptr [esp + 0x0c], ecx              // 0x0052aeaf    894c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x58]              // 0x0052aeb3    8b4c2458
                         {disp8} mov        dword ptr [esp + 0x10], edx              // 0x0052aeb7    89542410
                         mov                edx, dword ptr [ecx]                     // 0x0052aebb    8b11
                         {disp8} mov        dword ptr [esp + 0x14], eax              // 0x0052aebd    89442414
                         {disp8} mov        eax, dword ptr [ecx + 0x04]              // 0x0052aec1    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x0052aec4    8b4908
                         {disp8} mov        dword ptr [esp + 0x18], edx              // 0x0052aec7    89542418
                         push               esi                                      // 0x0052aecb    56
                         {disp8} lea        edx, dword ptr [esp + 0x40]              // 0x0052aecc    8d542440
                         {disp8} mov        dword ptr [esp + 0x24], ecx              // 0x0052aed0    894c2424
                         push               edx                                      // 0x0052aed4    52
                         {disp8} lea        ecx, dword ptr [esp + 0x14]              // 0x0052aed5    8d4c2414
                         {disp8} mov        dword ptr [esp + 0x24], eax              // 0x0052aed9    89442424
                         call               @GetLHPoint__9MapCoordsCFv@12            // 0x0052aedd    e85ead0d00
                         mov.s              esi, eax                                 // 0x0052aee2    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x4c]              // 0x0052aee4    8d44244c
                         push               eax                                      // 0x0052aee8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]              // 0x0052aee9    8d4c2420
                         call               @GetLHPoint__9MapCoordsCFv@12            // 0x0052aeed    e84ead0d00
                         fld                dword ptr [esi]                          // 0x0052aef2    d906
                         fsub               dword ptr [eax]                          // 0x0052aef4    d820
                         {disp8} fld        dword ptr [esi + 0x04]                   // 0x0052aef6    d94604
                         {disp8} fsub       dword ptr [eax + 0x04]                   // 0x0052aef9    d86004
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x0052aefc    d95c2408
                         {disp8} fld        dword ptr [esi + 0x08]                   // 0x0052af00    d94608
                         {disp8} fsub       dword ptr [eax + 0x08]                   // 0x0052af03    d86008
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x0052af06    d95c240c
                         {disp8} fmul       dword ptr [esp + 0x64]                   // 0x0052af0a    d84c2464
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x0052af0e    d9442408
                         {disp8} fmul       dword ptr [esp + 0x64]                   // 0x0052af12    d84c2464
                         {disp8} fstp       dword ptr [esp + 0x2c]                   // 0x0052af16    d95c242c
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x0052af1a    d944240c
                         {disp8} fmul       dword ptr [esp + 0x64]                   // 0x0052af1e    d84c2464
                         {disp8} fstp       dword ptr [esp + 0x30]                   // 0x0052af22    d95c2430
                         fadd               dword ptr [eax]                          // 0x0052af26    d800
                         {disp8} fstp       dword ptr [esp + 0x04]                   // 0x0052af28    d95c2404
                         {disp8} fld        dword ptr [esp + 0x2c]                   // 0x0052af2c    d944242c
                         {disp8} mov        ecx, dword ptr [esp + 0x04]              // 0x0052af30    8b4c2404
                         {disp8} fadd       dword ptr [eax + 0x04]                   // 0x0052af34    d84004
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x0052af37    d95c2408
                         {disp8} fld        dword ptr [esp + 0x30]                   // 0x0052af3b    d9442430
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x0052af3f    8b542408
                         {disp8} fadd       dword ptr [eax + 0x08]                   // 0x0052af43    d84008
                         {disp8} mov        dword ptr [esp + 0x34], ecx              // 0x0052af46    894c2434
                         {disp8} lea        ecx, dword ptr [esp + 0x34]              // 0x0052af4a    8d4c2434
                         push               ecx                                      // 0x0052af4e    51
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x0052af4f    d95c2410
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x0052af53    8b442410
                         {disp8} lea        ecx, dword ptr [esp + 0x50]              // 0x0052af57    8d4c2450
                         {disp8} mov        dword ptr [esp + 0x3c], edx              // 0x0052af5b    8954243c
                         {disp8} mov        dword ptr [esp + 0x40], eax              // 0x0052af5f    89442440
                         call               @__ct__9MapCoordsFRC7LHPoint@12          // 0x0052af63    e8f8810d00
                         mov                ecx, dword ptr [eax]                     // 0x0052af68    8b08
                         {disp8} mov        edx, dword ptr [esp + 0x68]              // 0x0052af6a    8b542468
                         mov                dword ptr [edx], ecx                     // 0x0052af6e    890a
                         {disp8} mov        ecx, dword ptr [eax + 0x04]              // 0x0052af70    8b4804
                         {disp8} mov        dword ptr [edx + 0x04], ecx              // 0x0052af73    894a04
                         {disp8} mov        eax, dword ptr [eax + 0x08]              // 0x0052af76    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax              // 0x0052af79    894208
                         pop                esi                                      // 0x0052af7c    5e
                         add                esp, 0x54                                // 0x0052af7d    83c454
                         ret                                                         // 0x0052af80    c3
                         nop                                                         // 0x0052af81    90
                         nop                                                         // 0x0052af82    90
                         nop                                                         // 0x0052af83    90
                         nop                                                         // 0x0052af84    90
                         nop                                                         // 0x0052af85    90
                         nop                                                         // 0x0052af86    90
                         nop                                                         // 0x0052af87    90
                         nop                                                         // 0x0052af88    90
                         nop                                                         // 0x0052af89    90
                         nop                                                         // 0x0052af8a    90
                         nop                                                         // 0x0052af8b    90
                         nop                                                         // 0x0052af8c    90
                         nop                                                         // 0x0052af8d    90
                         nop                                                         // 0x0052af8e    90
                         nop                                                         // 0x0052af8f    90
_jmp_addr_0x0052af90:    sub                esp, 0x0c                                // 0x0052af90    83ec0c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]   // 0x0052af93    a1381ad000
                         push               esi                                      // 0x0052af98    56
                         push               edi                                      // 0x0052af99    57
                         xor.s              edi, edi                                 // 0x0052af9a    33ff
                         {disp8} mov        dword ptr [esp + 0x08], eax              // 0x0052af9c    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], edi              // 0x0052afa0    897c240c
                         {disp8} fild       qword ptr [esp + 0x08]                   // 0x0052afa4    df6c2408
                         mov.s              esi, ecx                                 // 0x0052afa8    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x5c]              // 0x0052afaa    8b465c
                         cmp                eax, 0x03                                // 0x0052afad    83f803
                         {disp32} fmul      dword ptr [_rdata_float0p001]            // 0x0052afb0    d80db0a38a00
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x0052afb6    d95c2408
                         {disp32} ja        _jmp_addr_0x0052b183                     // 0x0052afba    0f87c3010000
                         jmp                dword ptr [eax*4 + 0x52b18c]             // 0x0052afc0    ff24858cb15200
                         {disp32} mov       dword ptr [esi + 0x00000098], edi        // 0x0052afc7    89be98000000
                         pop                edi                                      // 0x0052afcd    5f
                         pop                esi                                      // 0x0052afce    5e
                         add                esp, 0x0c                                // 0x0052afcf    83c40c
                         ret                                                         // 0x0052afd2    c3
                         pop                edi                                      // 0x0052afd3    5f
                         {disp32} mov       dword ptr [esi + 0x00000098], 0x3f800000 // 0x0052afd4    c786980000000000803f
                         pop                esi                                      // 0x0052afde    5e
                         add                esp, 0x0c                                // 0x0052afdf    83c40c
                         ret                                                         // 0x0052afe2    c3
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x0052afe3    d9442408
                         {disp32} fdiv      dword ptr [esi + 0x0000009c]             // 0x0052afe7    d8b69c000000
                         {disp32} fadd      dword ptr [esi + 0x00000098]             // 0x0052afed    d88698000000
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x0052aff3    d81590a38a00
                         {disp32} fst       dword ptr [esi + 0x00000098]             // 0x0052aff9    d99698000000
                         fnstsw             ax                                       // 0x0052afff    dfe0
                         test               ah, 0x01                                 // 0x0052b001    f6c401
                         {disp8} jne        _jmp_addr_0x0052b00e                     // 0x0052b004    7508
                         fstp               st(0)                                    // 0x0052b006    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x0052b008    d90590a38a00
_jmp_addr_0x0052b00e:    {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x0052b00e    d81590a38a00
                         {disp32} fst       dword ptr [esi + 0x00000098]             // 0x0052b014    d99698000000
                         fnstsw             ax                                       // 0x0052b01a    dfe0
                         test               ah, 0x40                                 // 0x0052b01c    f6c440
                         {disp8} je         _jmp_addr_0x0052b050                     // 0x0052b01f    742f
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x0052b021    8d4e14
                         fstp               st(0)                                    // 0x0052b024    ddd8
                         mov                eax, dword ptr [ecx]                     // 0x0052b026    8b01
                         {disp8} lea        edx, dword ptr [esi + 0x78]              // 0x0052b028    8d5678
                         mov                dword ptr [edx], eax                     // 0x0052b02b    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]              // 0x0052b02d    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x0052b030    8b4908
                         {disp8} mov        dword ptr [edx + 0x04], eax              // 0x0052b033    894204
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x0052b036    894a08
                         mov                edx, dword ptr [esi]                     // 0x0052b039    8b16
                         {disp8} lea        eax, dword ptr [esi + 0x60]              // 0x0052b03b    8d4660
                         push               eax                                      // 0x0052b03e    50
                         mov.s              ecx, esi                                 // 0x0052b03f    8bce
                         call               dword ptr [edx + 0x55c]                  // 0x0052b041    ff925c050000
                         {disp8} mov        dword ptr [esi + 0x5c], edi              // 0x0052b047    897e5c
                         pop                edi                                      // 0x0052b04a    5f
                         pop                esi                                      // 0x0052b04b    5e
                         add                esp, 0x0c                                // 0x0052b04c    83c40c
                         ret                                                         // 0x0052b04f    c3
_jmp_addr_0x0052b050:    fld                st(0)                                    // 0x0052b050    d9c0
                         {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x0052b052    8d4c2408
                         fadd.s             st(0), st(0)                             // 0x0052b056    dcc0
                         push               ecx                                      // 0x0052b058    51
                         push               ecx                                      // 0x0052b059    51
                         {disp8} lea        edx, dword ptr [esi + 0x60]              // 0x0052b05a    8d5660
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x19c50]        // 0x0052b05d    d82d502c8c00
                         {disp8} lea        eax, dword ptr [esi + 0x6c]              // 0x0052b063    8d466c
                         {disp8} mov        dword ptr [esp + 0x10], edi              // 0x0052b066    897c2410
                         {disp8} mov        dword ptr [esp + 0x14], edi              // 0x0052b06a    897c2414
                         fmul               st, st(1)                                // 0x0052b06e    d8c9
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000       // 0x0052b070    c744241800000000
                         fmul               st, st(1)                                // 0x0052b078    d8c9
                         fstp               dword ptr [esp]                          // 0x0052b07a    d91c24
                         push               edx                                      // 0x0052b07d    52
                         push               eax                                      // 0x0052b07e    50
                         fstp               st(0)                                    // 0x0052b07f    ddd8
                         call               _jmp_addr_0x0052aea0                     // 0x0052b081    e81afeffff
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x0052b086    8d4e14
                         mov                eax, dword ptr [ecx]                     // 0x0052b089    8b01
                         {disp8} lea        edx, dword ptr [esi + 0x78]              // 0x0052b08b    8d5678
                         mov                dword ptr [edx], eax                     // 0x0052b08e    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]              // 0x0052b090    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x0052b093    8b4908
                         {disp8} mov        dword ptr [edx + 0x04], eax              // 0x0052b096    894204
                         add                esp, 0x10                                // 0x0052b099    83c410
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x0052b09c    894a08
                         mov                edx, dword ptr [esi]                     // 0x0052b09f    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x08]              // 0x0052b0a1    8d442408
                         push               eax                                      // 0x0052b0a5    50
                         mov.s              ecx, esi                                 // 0x0052b0a6    8bce
                         call               dword ptr [edx + 0x55c]                  // 0x0052b0a8    ff925c050000
                         pop                edi                                      // 0x0052b0ae    5f
                         pop                esi                                      // 0x0052b0af    5e
                         add                esp, 0x0c                                // 0x0052b0b0    83c40c
                         ret                                                         // 0x0052b0b3    c3
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x0052b0b4    d9442408
                         {disp32} fdiv      dword ptr [esi + 0x0000009c]             // 0x0052b0b8    d8b69c000000
                         {disp32} fadd      dword ptr [esi + 0x00000098]             // 0x0052b0be    d88698000000
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x0052b0c4    d81590a38a00
                         {disp32} fst       dword ptr [esi + 0x00000098]             // 0x0052b0ca    d99698000000
                         fnstsw             ax                                       // 0x0052b0d0    dfe0
                         test               ah, 0x01                                 // 0x0052b0d2    f6c401
                         {disp8} jne        _jmp_addr_0x0052b0df                     // 0x0052b0d5    7508
                         fstp               st(0)                                    // 0x0052b0d7    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x0052b0d9    d90590a38a00
_jmp_addr_0x0052b0df:    {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x0052b0df    d81590a38a00
                         {disp32} fst       dword ptr [esi + 0x00000098]             // 0x0052b0e5    d99698000000
                         fnstsw             ax                                       // 0x0052b0eb    dfe0
                         test               ah, 0x40                                 // 0x0052b0ed    f6c440
                         {disp8} je         _jmp_addr_0x0052b125                     // 0x0052b0f0    7433
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x0052b0f2    8d4e14
                         fstp               st(0)                                    // 0x0052b0f5    ddd8
                         mov                eax, dword ptr [ecx]                     // 0x0052b0f7    8b01
                         {disp8} lea        edx, dword ptr [esi + 0x78]              // 0x0052b0f9    8d5678
                         mov                dword ptr [edx], eax                     // 0x0052b0fc    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]              // 0x0052b0fe    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x0052b101    8b4908
                         {disp8} mov        dword ptr [edx + 0x04], eax              // 0x0052b104    894204
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x0052b107    894a08
                         mov                edx, dword ptr [esi]                     // 0x0052b10a    8b16
                         {disp8} lea        eax, dword ptr [esi + 0x6c]              // 0x0052b10c    8d466c
                         push               eax                                      // 0x0052b10f    50
                         mov.s              ecx, esi                                 // 0x0052b110    8bce
                         call               dword ptr [edx + 0x55c]                  // 0x0052b112    ff925c050000
                         pop                edi                                      // 0x0052b118    5f
                         {disp8} mov        dword ptr [esi + 0x5c], 0x00000001       // 0x0052b119    c7465c01000000
                         pop                esi                                      // 0x0052b120    5e
                         add                esp, 0x0c                                // 0x0052b121    83c40c
                         ret                                                         // 0x0052b124    c3
_jmp_addr_0x0052b125:    fld                st(0)                                    // 0x0052b125    d9c0
                         {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x0052b127    8d4c2408
                         fadd.s             st(0), st(0)                             // 0x0052b12b    dcc0
                         push               ecx                                      // 0x0052b12d    51
                         push               ecx                                      // 0x0052b12e    51
                         {disp8} lea        edx, dword ptr [esi + 0x6c]              // 0x0052b12f    8d566c
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x19c50]        // 0x0052b132    d82d502c8c00
                         {disp8} lea        eax, dword ptr [esi + 0x60]              // 0x0052b138    8d4660
                         {disp8} mov        dword ptr [esp + 0x10], edi              // 0x0052b13b    897c2410
                         {disp8} mov        dword ptr [esp + 0x14], edi              // 0x0052b13f    897c2414
                         fmul               st, st(1)                                // 0x0052b143    d8c9
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000       // 0x0052b145    c744241800000000
                         fmul               st, st(1)                                // 0x0052b14d    d8c9
                         fstp               dword ptr [esp]                          // 0x0052b14f    d91c24
                         push               edx                                      // 0x0052b152    52
                         push               eax                                      // 0x0052b153    50
                         fstp               st(0)                                    // 0x0052b154    ddd8
                         call               _jmp_addr_0x0052aea0                     // 0x0052b156    e845fdffff
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x0052b15b    8d4e14
                         mov                eax, dword ptr [ecx]                     // 0x0052b15e    8b01
                         {disp8} lea        edx, dword ptr [esi + 0x78]              // 0x0052b160    8d5678
                         mov                dword ptr [edx], eax                     // 0x0052b163    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]              // 0x0052b165    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x0052b168    8b4908
                         {disp8} mov        dword ptr [edx + 0x04], eax              // 0x0052b16b    894204
                         add                esp, 0x10                                // 0x0052b16e    83c410
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x0052b171    894a08
                         mov                edx, dword ptr [esi]                     // 0x0052b174    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x08]              // 0x0052b176    8d442408
                         push               eax                                      // 0x0052b17a    50
                         mov.s              ecx, esi                                 // 0x0052b17b    8bce
                         call               dword ptr [edx + 0x55c]                  // 0x0052b17d    ff925c050000
_jmp_addr_0x0052b183:    pop                edi                                      // 0x0052b183    5f
                         pop                esi                                      // 0x0052b184    5e
                         add                esp, 0x0c                                // 0x0052b185    83c40c
                         ret                                                         // 0x0052b188    c3

// Snippet: db, [0x0052b189, 0x0052b18c)
.byte 0x8d, 0x49, 0x00            // 0x0052b189

// Snippet: jmptbl, [0x0052b18c, 0x0052b19c)
.byte 0xc7, 0xaf, 0x52, 0x00      // 0x0052b18c
.byte 0xd3, 0xaf, 0x52, 0x00      // 0x0052b190
.byte 0xe3, 0xaf, 0x52, 0x00      // 0x0052b194
.byte 0xb4, 0xb0, 0x52, 0x00      // 0x0052b198

// Snippet: db, [0x0052b19c, 0x0052b1a0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0052b19c

