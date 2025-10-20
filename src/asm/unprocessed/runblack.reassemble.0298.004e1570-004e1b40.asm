.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern @__ct__21CreatureActionContextFR15CreatureContextf@16
.extern _jmp_addr_0x004d74a0
.extern _jmp_addr_0x004dca60
.extern _jmp_addr_0x004f21e0
.extern _sprintf

.globl _jmp_addr_0x004e1570
.globl _jmp_addr_0x004e15a0
.globl _jmp_addr_0x004e15e0
.globl _jmp_addr_0x004e1670

start_0x004e1570_0x004e1b40:
// Snippet: asm, [0x004e1570, 0x004e1b24)
_jmp_addr_0x004e1570:    push               esi                                                  // 0x004e1570    56
                         push               0x1                                                  // 0x004e1571    6a01
                         mov.s              esi, ecx                                             // 0x004e1573    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00020d18]                    // 0x004e1575    8b8e180d0200
                         push               0x1                                                  // 0x004e157b    6a01
                         push               0x00bdf998                                           // 0x004e157d    6898f9bd00
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x004e1582    e8a941f9ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00020d18]                    // 0x004e1587    8b8e180d0200
                         mov                eax, dword ptr [ecx]                                 // 0x004e158d    8b01
                         call               dword ptr [eax + 0x8c8]                              // 0x004e158f    ff90c8080000
                         pop                esi                                                  // 0x004e1595    5e
                         ret                                                                     // 0x004e1596    c3
                         nop                                                                     // 0x004e1597    90
                         nop                                                                     // 0x004e1598    90
                         nop                                                                     // 0x004e1599    90
                         nop                                                                     // 0x004e159a    90
                         nop                                                                     // 0x004e159b    90
                         nop                                                                     // 0x004e159c    90
                         nop                                                                     // 0x004e159d    90
                         nop                                                                     // 0x004e159e    90
                         nop                                                                     // 0x004e159f    90
_jmp_addr_0x004e15a0:    {disp8} mov        edx, dword ptr [esp + 0x04]                          // 0x004e15a0    8b542404
                         {disp8} mov        eax, dword ptr [edx + 0x58]                          // 0x004e15a4    8b4258
                         cmp                eax, 0x3d                                            // 0x004e15a7    83f83d
                         {disp8} jl         _jmp_addr_0x004e15b1                                 // 0x004e15aa    7c05
                         xor.s              eax, eax                                             // 0x004e15ac    33c0
                         ret                0x000c                                               // 0x004e15ae    c20c00
_jmp_addr_0x004e15b1:    push               esi                                                  // 0x004e15b1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                          // 0x004e15b2    8b74240c
                         push               esi                                                  // 0x004e15b6    56
                         push               eax                                                  // 0x004e15b7    50
                         {disp8} mov        eax, dword ptr [edx + 0x10]                          // 0x004e15b8    8b4210
                         {disp32} mov       edx, dword ptr [ecx + 0x00020d18]                    // 0x004e15bb    8b91180d0200
                         push               eax                                                  // 0x004e15c1    50
                         {disp8} mov        eax, dword ptr [edx + 0x28]                          // 0x004e15c2    8b4228
                         push               eax                                                  // 0x004e15c5    50
                         add                ecx, 0x8                                             // 0x004e15c6    83c108
                         call               _jmp_addr_0x004dca60                                 // 0x004e15c9    e892b4ffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004e15ce    8b442410
                         pop                esi                                                  // 0x004e15d2    5e
                         ret                0x000c                                               // 0x004e15d3    c20c00
                         nop                                                                     // 0x004e15d6    90
                         nop                                                                     // 0x004e15d7    90
                         nop                                                                     // 0x004e15d8    90
                         nop                                                                     // 0x004e15d9    90
                         nop                                                                     // 0x004e15da    90
                         nop                                                                     // 0x004e15db    90
                         nop                                                                     // 0x004e15dc    90
                         nop                                                                     // 0x004e15dd    90
                         nop                                                                     // 0x004e15de    90
                         nop                                                                     // 0x004e15df    90
_jmp_addr_0x004e15e0:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x004e15e0    8b442408
                         sub                esp, 0x18                                            // 0x004e15e4    83ec18
                         push               esi                                                  // 0x004e15e7    56
                         push               edi                                                  // 0x004e15e8    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                          // 0x004e15e9    8b7c2424
                         push               eax                                                  // 0x004e15ed    50
                         mov.s              esi, ecx                                             // 0x004e15ee    8bf1
                         push               edi                                                  // 0x004e15f0    57
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                          // 0x004e15f1    8d4c2410
                         call               @__ct__21CreatureActionContextFR15CreatureContextf@16// 0x004e15f5    e86623feff
                         {disp8} mov        edi, dword ptr [edi + 0x20]                          // 0x004e15fa    8b7f20
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x004e15fd    8d4c2408
                         push               ecx                                                  // 0x004e1601    51
                         push               edi                                                  // 0x004e1602    57
                         {disp32} lea       ecx, dword ptr [esi + 0x00002d38]                    // 0x004e1603    8d8e382d0000
                         call               _jmp_addr_0x004f21e0                                 // 0x004e1609    e8d20b0100
                         {disp32} fld       dword ptr [esi + edi * 0x4 + 0x000025b8]             // 0x004e160e    d984beb8250000
                         {disp8} fsubr      dword ptr [esp + 0x28]                               // 0x004e1615    d86c2428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ba04]                    // 0x004e1619    d80d044a8c00
                         {disp32} fadd      dword ptr [esi + edi * 0x4 + 0x000025b8]             // 0x004e161f    d884beb8250000
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]                     // 0x004e1626    d81578b68a00
                         {disp32} fst       dword ptr [esi + edi * 0x4 + 0x000025b8]             // 0x004e162c    d994beb8250000
                         fnstsw             ax                                                   // 0x004e1633    dfe0
                         test               ah, 0x01                                             // 0x004e1635    f6c401
                         {disp8} je         _jmp_addr_0x004e164f                                 // 0x004e1638    7415
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x000025b8], 0xbf800000 // 0x004e163a    c784beb8250000000080bf
                         fstp               st(0)                                                // 0x004e1645    ddd8
                         pop                edi                                                  // 0x004e1647    5f
                         pop                esi                                                  // 0x004e1648    5e
                         add                esp, 0x18                                            // 0x004e1649    83c418
                         ret                0x0008                                               // 0x004e164c    c20800
_jmp_addr_0x004e164f:    {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x004e164f    d81d90a38a00
                         fnstsw             ax                                                   // 0x004e1655    dfe0
                         test               ah, 0x41                                             // 0x004e1657    f6c441
                         {disp8} jne        _jmp_addr_0x004e1667                                 // 0x004e165a    750b
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x000025b8], 0x3f800000 // 0x004e165c    c784beb82500000000803f
_jmp_addr_0x004e1667:    pop                edi                                                  // 0x004e1667    5f
                         pop                esi                                                  // 0x004e1668    5e
                         add                esp, 0x18                                            // 0x004e1669    83c418
                         ret                0x0008                                               // 0x004e166c    c20800
                         nop                                                                     // 0x004e166f    90
_jmp_addr_0x004e1670:    sub                esp, 0x00000904                                      // 0x004e1670    81ec04090000
                         push               ebx                                                  // 0x004e1676    53
                         push               ebp                                                  // 0x004e1677    55
                         push               edi                                                  // 0x004e1678    57
                         {disp32} mov       edi, dword ptr [esp + 0x00000920]                    // 0x004e1679    8bbc2420090000
                         cmp                edi, 0x02                                            // 0x004e1680    83ff02
                         mov.s              ebp, ecx                                             // 0x004e1683    8be9
                         {disp8} jne        _jmp_addr_0x004e1694                                 // 0x004e1685    750d
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc64]               // 0x004e1687    a1643ccd00
                         test               eax, eax                                             // 0x004e168c    85c0
                         {disp32} je        _jmp_addr_0x004e1b18                                 // 0x004e168e    0f8484040000
_jmp_addr_0x004e1694:    {disp32} mov       eax, dword ptr [esp + 0x00000918]                    // 0x004e1694    8b842418090000
                         or                 ecx, 0xffffffff                                      // 0x004e169b    83c9ff
                         inc                eax                                                  // 0x004e169e    40
                         {disp32} mov       dword ptr [ebp + 0x00016b00], eax                    // 0x004e169f    8985006b0100
                         shl                edi, 8                                               // 0x004e16a5    c1e708
                         add                edi, 0x008d010c                                      // 0x004e16a8    81c70c018d00
                         xor.s              eax, eax                                             // 0x004e16ae    33c0
                         repne scasb                                                             // 0x004e16b0    f2ae
                         not                ecx                                                  // 0x004e16b2    f7d1
                         sub.s              edi, ecx                                             // 0x004e16b4    2bf9
                         {disp32} mov       ebx, dword ptr [esp + 0x00000914]                    // 0x004e16b6    8b9c2414090000
                         mov.s              eax, ecx                                             // 0x004e16bd    8bc1
                         shr                ecx, 2                                               // 0x004e16bf    c1e902
                         push               esi                                                  // 0x004e16c2    56
                         {disp32} lea       edx, dword ptr [ebp + 0x00016b04]                    // 0x004e16c3    8d95046b0100
                         mov.s              esi, edi                                             // 0x004e16c9    8bf7
                         mov.s              edi, edx                                             // 0x004e16cb    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e16cd    f3a5
                         mov.s              ecx, eax                                             // 0x004e16cf    8bc8
                         and                ecx, 0x03                                            // 0x004e16d1    83e103
                         rep movsb                                                               // 0x004e16d4    f3a4
                         {disp32} mov       ecx, dword ptr [ebp + 0x000185c4]                    // 0x004e16d6    8b8dc4850100
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x004e16dc    894c2410
                         {disp8} mov        ecx, dword ptr [ebx + 0x18]                          // 0x004e16e0    8b4b18
                         mov                edx, dword ptr [ecx]                                 // 0x004e16e3    8b11
                         call               dword ptr [edx + 0x2c]                               // 0x004e16e5    ff522c
                         shl                eax, 6                                               // 0x004e16e8    c1e006
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x004e16eb    d9442410
                         add                eax, 0x008cbf68                                      // 0x004e16ef    0568bf8c00
                         push               eax                                                  // 0x004e16f4    50
                         {disp8} mov        eax, dword ptr [ebx + 0x10]                          // 0x004e16f5    8b4310
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]              // 0x004e16f8    8d0cc500000000
                         sub.s              ecx, eax                                             // 0x004e16ff    2bc8
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                          // 0x004e1701    8b4320
                         shl                ecx, 6                                               // 0x004e1704    c1e106
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x004e1707    8d1480
                         add                ecx, 0x00c67f10                                      // 0x004e170a    81c1107fc600
                         push               ecx                                                  // 0x004e1710    51
                         shl                edx, 4                                               // 0x004e1711    c1e204
                         {disp32} mov       eax, dword ptr [edx + 0x009d1678]                    // 0x004e1714    8b8278169d00
                         push               eax                                                  // 0x004e171a    50
                         sub                esp, 0x08                                            // 0x004e171b    83ec08
                         {disp32} lea       ecx, dword ptr [ebp + 0x00016c04]                    // 0x004e171e    8d8d046c0100
                         fstp               qword ptr [esp]                                      // 0x004e1724    dd1c24
                         push               0x00bdfa6c                                           // 0x004e1727    686cfabd00
                         push               ecx                                                  // 0x004e172c    51
                         call               _sprintf                                             // 0x004e172d    e8a0402e00
                         {disp32} fld       dword ptr [ebp + 0x000185c4]                         // 0x004e1732    d985c4850100
                         add                esp, 0x1c                                            // 0x004e1738    83c41c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004e173b    d81d98a38a00
                         mov                edi, 0x00bdfa60                                      // 0x004e1741    bf60fabd00
                         fnstsw             ax                                                   // 0x004e1746    dfe0
                         test               ah, 0x41                                             // 0x004e1748    f6c441
                         {disp8} je         _jmp_addr_0x004e1752                                 // 0x004e174b    7405
                         mov                edi, 0x00bdfa54                                      // 0x004e174d    bf54fabd00
_jmp_addr_0x004e1752:    {disp32} fld       dword ptr [ebp + 0x000185c4]                         // 0x004e1752    d985c4850100
                         or                 ecx, 0xffffffff                                      // 0x004e1758    83c9ff
                         xor.s              eax, eax                                             // 0x004e175b    33c0
                         repne scasb                                                             // 0x004e175d    f2ae
                         not                ecx                                                  // 0x004e175f    f7d1
                         sub.s              edi, ecx                                             // 0x004e1761    2bf9
                         mov.s              eax, ecx                                             // 0x004e1763    8bc1
                         mov.s              esi, edi                                             // 0x004e1765    8bf7
                         shr                ecx, 2                                               // 0x004e1767    c1e902
                         {disp32} lea       edx, dword ptr [esp + 0x00000714]                    // 0x004e176a    8d942414070000
                         mov.s              edi, edx                                             // 0x004e1771    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e1773    f3a5
                         mov.s              ecx, eax                                             // 0x004e1775    8bc8
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004e1777    d81d98a38a00
                         and                ecx, 0x03                                            // 0x004e177d    83e103
                         rep movsb                                                               // 0x004e1780    f3a4
                         fnstsw             ax                                                   // 0x004e1782    dfe0
                         test               ah, 0x41                                             // 0x004e1784    f6c441
                         mov                edi, 0x00bdfa4c                                      // 0x004e1787    bf4cfabd00
                         {disp8} je         _jmp_addr_0x004e1793                                 // 0x004e178c    7405
                         mov                edi, 0x00bdfa44                                      // 0x004e178e    bf44fabd00
_jmp_addr_0x004e1793:    {disp32} fld       dword ptr [ebp + 0x000185c4]                         // 0x004e1793    d985c4850100
                         or                 ecx, 0xffffffff                                      // 0x004e1799    83c9ff
                         xor.s              eax, eax                                             // 0x004e179c    33c0
                         repne scasb                                                             // 0x004e179e    f2ae
                         not                ecx                                                  // 0x004e17a0    f7d1
                         sub.s              edi, ecx                                             // 0x004e17a2    2bf9
                         mov.s              eax, ecx                                             // 0x004e17a4    8bc1
                         mov.s              esi, edi                                             // 0x004e17a6    8bf7
                         shr                ecx, 2                                               // 0x004e17a8    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x004e17ab    8d542414
                         mov.s              edi, edx                                             // 0x004e17af    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e17b1    f3a5
                         mov.s              ecx, eax                                             // 0x004e17b3    8bc8
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004e17b5    d81d98a38a00
                         and                ecx, 0x03                                            // 0x004e17bb    83e103
                         rep movsb                                                               // 0x004e17be    f3a4
                         fnstsw             ax                                                   // 0x004e17c0    dfe0
                         test               ah, 0x41                                             // 0x004e17c2    f6c441
                         mov                edi, 0x00bdfa40                                      // 0x004e17c5    bf40fabd00
                         {disp8} je         _jmp_addr_0x004e17d1                                 // 0x004e17ca    7405
                         mov                edi, 0x00bdfa38                                      // 0x004e17cc    bf38fabd00
_jmp_addr_0x004e17d1:    {disp32} fld       dword ptr [ebp + 0x000185c4]                         // 0x004e17d1    d985c4850100
                         or                 ecx, 0xffffffff                                      // 0x004e17d7    83c9ff
                         xor.s              eax, eax                                             // 0x004e17da    33c0
                         repne scasb                                                             // 0x004e17dc    f2ae
                         not                ecx                                                  // 0x004e17de    f7d1
                         sub.s              edi, ecx                                             // 0x004e17e0    2bf9
                         mov.s              eax, ecx                                             // 0x004e17e2    8bc1
                         mov.s              esi, edi                                             // 0x004e17e4    8bf7
                         shr                ecx, 2                                               // 0x004e17e6    c1e902
                         {disp32} lea       edx, dword ptr [esp + 0x00000814]                    // 0x004e17e9    8d942414080000
                         mov.s              edi, edx                                             // 0x004e17f0    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e17f2    f3a5
                         mov.s              ecx, eax                                             // 0x004e17f4    8bc8
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004e17f6    d81d98a38a00
                         and                ecx, 0x03                                            // 0x004e17fc    83e103
                         rep movsb                                                               // 0x004e17ff    f3a4
                         fnstsw             ax                                                   // 0x004e1801    dfe0
                         test               ah, 0x41                                             // 0x004e1803    f6c441
                         mov                edi, 0x00bdfa34                                      // 0x004e1806    bf34fabd00
                         {disp8} je         _jmp_addr_0x004e1812                                 // 0x004e180b    7405
                         mov                edi, 0x00bdfa2c                                      // 0x004e180d    bf2cfabd00
_jmp_addr_0x004e1812:    or                 ecx, 0xffffffff                                      // 0x004e1812    83c9ff
                         xor.s              eax, eax                                             // 0x004e1815    33c0
                         repne scasb                                                             // 0x004e1817    f2ae
                         not                ecx                                                  // 0x004e1819    f7d1
                         sub.s              edi, ecx                                             // 0x004e181b    2bf9
                         mov.s              eax, ecx                                             // 0x004e181d    8bc1
                         shr                ecx, 2                                               // 0x004e181f    c1e902
                         mov.s              esi, edi                                             // 0x004e1822    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x00000814]                    // 0x004e1824    8d942414080000
                         mov.s              edi, edx                                             // 0x004e182b    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e182d    f3a5
                         mov.s              ecx, eax                                             // 0x004e182f    8bc8
                         and                ecx, 0x03                                            // 0x004e1831    83e103
                         rep movsb                                                               // 0x004e1834    f3a4
                         {disp8} mov        eax, dword ptr [ebx + 0x10]                          // 0x004e1836    8b4310
                         or                 ecx, 0xffffffff                                      // 0x004e1839    83c9ff
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]              // 0x004e183c    8d14c500000000
                         sub.s              edx, eax                                             // 0x004e1843    2bd0
                         shl                edx, 6                                               // 0x004e1845    c1e206
                         xor.s              eax, eax                                             // 0x004e1848    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x00c67f50]                    // 0x004e184a    8dba507fc600
                         repne scasb                                                             // 0x004e1850    f2ae
                         not                ecx                                                  // 0x004e1852    f7d1
                         sub.s              edi, ecx                                             // 0x004e1854    2bf9
                         mov.s              eax, ecx                                             // 0x004e1856    8bc1
                         shr                ecx, 2                                               // 0x004e1858    c1e902
                         {disp32} lea       esi, dword ptr [esp + 0x00000614]                    // 0x004e185b    8db42414060000
                         {disp8} mov        dword ptr [esp + 0x10], esi                          // 0x004e1862    89742410
                         mov.s              esi, edi                                             // 0x004e1866    8bf7
                         {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x004e1868    8b7c2410
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e186c    f3a5
                         mov.s              ecx, eax                                             // 0x004e186e    8bc8
                         and                ecx, 0x03                                            // 0x004e1870    83e103
                         rep movsb                                                               // 0x004e1873    f3a4
                         or                 ecx, 0xffffffff                                      // 0x004e1875    83c9ff
                         xor.s              eax, eax                                             // 0x004e1878    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x00c67fd0]                    // 0x004e187a    8dbad07fc600
                         repne scasb                                                             // 0x004e1880    f2ae
                         not                ecx                                                  // 0x004e1882    f7d1
                         sub.s              edi, ecx                                             // 0x004e1884    2bf9
                         mov.s              eax, ecx                                             // 0x004e1886    8bc1
                         shr                ecx, 2                                               // 0x004e1888    c1e902
                         {disp32} lea       esi, dword ptr [esp + 0x00000314]                    // 0x004e188b    8db42414030000
                         {disp8} mov        dword ptr [esp + 0x10], esi                          // 0x004e1892    89742410
                         mov.s              esi, edi                                             // 0x004e1896    8bf7
                         {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x004e1898    8b7c2410
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e189c    f3a5
                         mov.s              ecx, eax                                             // 0x004e189e    8bc8
                         and                ecx, 0x03                                            // 0x004e18a0    83e103
                         rep movsb                                                               // 0x004e18a3    f3a4
                         or                 ecx, 0xffffffff                                      // 0x004e18a5    83c9ff
                         xor.s              eax, eax                                             // 0x004e18a8    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x00c68010]                    // 0x004e18aa    8dba1080c600
                         repne scasb                                                             // 0x004e18b0    f2ae
                         not                ecx                                                  // 0x004e18b2    f7d1
                         sub.s              edi, ecx                                             // 0x004e18b4    2bf9
                         mov.s              eax, ecx                                             // 0x004e18b6    8bc1
                         shr                ecx, 2                                               // 0x004e18b8    c1e902
                         mov.s              esi, edi                                             // 0x004e18bb    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x00000414]                    // 0x004e18bd    8d942414040000
                         mov.s              edi, edx                                             // 0x004e18c4    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e18c6    f3a5
                         mov.s              ecx, eax                                             // 0x004e18c8    8bc8
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                          // 0x004e18ca    8b4314
                         and                ecx, 0x03                                            // 0x004e18cd    83e103
                         test               eax, eax                                             // 0x004e18d0    85c0
                         rep movsb                                                               // 0x004e18d2    f3a4
                         {disp32} mov       esi, dword ptr [esp + 0x00000920]                    // 0x004e18d4    8bb42420090000
                         {disp8} je         _jmp_addr_0x004e1912                                 // 0x004e18db    7435
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                          // 0x004e18dd    8b4830
                         cmp                ecx, dword ptr [ebp + 0x00020d18]                    // 0x004e18e0    3b8d180d0200
                         {disp8} je         _jmp_addr_0x004e1912                                 // 0x004e18e6    742a
                         test               esi, esi                                             // 0x004e18e8    85f6
                         {disp8} je         _jmp_addr_0x004e18f5                                 // 0x004e18ea    7409
                         mov.s              ecx, esi                                             // 0x004e18ec    8bce
                         call               _jmp_addr_0x004d74a0                                 // 0x004e18ee    e8ad5bffff
                         {disp8} jmp        _jmp_addr_0x004e18fa                                 // 0x004e18f3    eb05
_jmp_addr_0x004e18f5:    mov                eax, 0x00bdfa24                                      // 0x004e18f5    b824fabd00
_jmp_addr_0x004e18fa:    push               eax                                                  // 0x004e18fa    50
                         {disp32} lea       edx, dword ptr [esp + 0x00000118]                    // 0x004e18fb    8d942418010000
                         push               0x009c8c40                                           // 0x004e1902    68408c9c00
                         push               edx                                                  // 0x004e1907    52
                         call               _sprintf                                             // 0x004e1908    e8c53e2e00
                         add                esp, 0x0c                                            // 0x004e190d    83c40c
                         {disp8} jmp        _jmp_addr_0x004e191a                                 // 0x004e1910    eb08
_jmp_addr_0x004e1912:    {disp32} mov       byte ptr [esp + 0x00000114], 0x00                    // 0x004e1912    c684241401000000
_jmp_addr_0x004e191a:    test               esi, esi                                             // 0x004e191a    85f6
                         {disp8} je         _jmp_addr_0x004e194b                                 // 0x004e191c    742d
                         {disp8} mov        eax, dword ptr [ebx + 0x18]                          // 0x004e191e    8b4318
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                          // 0x004e1921    8b4830
                         cmp                ecx, dword ptr [ebp + 0x00020d18]                    // 0x004e1924    3b8d180d0200
                         {disp8} je         _jmp_addr_0x004e194b                                 // 0x004e192a    741f
                         mov.s              ecx, esi                                             // 0x004e192c    8bce
                         call               _jmp_addr_0x004d74a0                                 // 0x004e192e    e86d5bffff
                         push               eax                                                  // 0x004e1933    50
                         {disp32} lea       edx, dword ptr [esp + 0x00000218]                    // 0x004e1934    8d942418020000
                         push               0x009c8c40                                           // 0x004e193b    68408c9c00
                         push               edx                                                  // 0x004e1940    52
                         call               _sprintf                                             // 0x004e1941    e88c3e2e00
                         add                esp, 0x0c                                            // 0x004e1946    83c40c
                         {disp8} jmp        _jmp_addr_0x004e1953                                 // 0x004e1949    eb08
_jmp_addr_0x004e194b:    {disp32} mov       byte ptr [esp + 0x00000214], 0x00                    // 0x004e194b    c684241402000000
_jmp_addr_0x004e1953:    {disp8} mov        eax, dword ptr [ebx + 0x20]                          // 0x004e1953    8b4320
                         or                 ecx, 0xffffffff                                      // 0x004e1956    83c9ff
                         lea                eax, dword ptr [eax + eax * 0x4]                     // 0x004e1959    8d0480
                         shl                eax, 4                                               // 0x004e195c    c1e004
                         {disp32} mov       edi, dword ptr [eax + 0x009d1678]                    // 0x004e195f    8bb878169d00
                         xor.s              eax, eax                                             // 0x004e1965    33c0
                         repne scasb                                                             // 0x004e1967    f2ae
                         not                ecx                                                  // 0x004e1969    f7d1
                         sub.s              edi, ecx                                             // 0x004e196b    2bf9
                         mov.s              eax, ecx                                             // 0x004e196d    8bc1
                         shr                ecx, 2                                               // 0x004e196f    c1e902
                         mov.s              esi, edi                                             // 0x004e1972    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x00000514]                    // 0x004e1974    8d942414050000
                         mov.s              edi, edx                                             // 0x004e197b    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004e197d    f3a5
                         mov.s              ecx, eax                                             // 0x004e197f    8bc8
                         {disp32} mov       eax, dword ptr [ebp + 0x00018710]                    // 0x004e1981    8b8510870100
                         and                ecx, 0x03                                            // 0x004e1987    83e103
                         cmp                eax, 0x03                                            // 0x004e198a    83f803
                         rep movsb                                                               // 0x004e198d    f3a4
                         pop                esi                                                  // 0x004e198f    5e
                         {disp32} ja        _jmp_addr_0x004e1af9                                 // 0x004e1990    0f8763010000
                         jmp                dword ptr [eax*4 + 0x4e1b24]                         // 0x004e1996    ff2485241b4e00
                         {disp32} mov       eax, dword ptr [esp + 0x00000918]                    // 0x004e199d    8b842418090000
                         {disp32} lea       ecx, dword ptr [esp + 0x00000610]                    // 0x004e19a4    8d8c2410060000
                         push               ecx                                                  // 0x004e19ab    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000714]                    // 0x004e19ac    8d942414070000
                         push               edx                                                  // 0x004e19b3    52
                         shl                eax, 8                                               // 0x004e19b4    c1e008
                         {disp32} lea       eax, dword ptr [eax + ebp * 0x1 + 0x00016d04]        // 0x004e19b7    8d8428046d0100
                         push               0x00bdfa0c                                           // 0x004e19be    680cfabd00
                         push               eax                                                  // 0x004e19c3    50
                         call               _sprintf                                             // 0x004e19c4    e8093e2e00
                         add                esp, 0x10                                            // 0x004e19c9    83c410
                         pop                edi                                                  // 0x004e19cc    5f
                         pop                ebp                                                  // 0x004e19cd    5d
                         pop                ebx                                                  // 0x004e19ce    5b
                         add                esp, 0x00000904                                      // 0x004e19cf    81c404090000
                         ret                0x0010                                               // 0x004e19d5    c21000
                         {disp32} lea       ecx, dword ptr [esp + 0x00000310]                    // 0x004e19d8    8d8c2410030000
                         push               ecx                                                  // 0x004e19df    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000114]                    // 0x004e19e0    8d942414010000
                         push               edx                                                  // 0x004e19e7    52
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x004e19e8    8d442418
                         push               eax                                                  // 0x004e19ec    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000924]                    // 0x004e19ed    8b842424090000
                         shl                eax, 8                                               // 0x004e19f4    c1e008
                         {disp32} lea       ecx, dword ptr [eax + ebp * 0x1 + 0x00016d04]        // 0x004e19f7    8d8c28046d0100
                         push               0x00bdf9ec                                           // 0x004e19fe    68ecf9bd00
                         push               ecx                                                  // 0x004e1a03    51
                         call               _sprintf                                             // 0x004e1a04    e8c93d2e00
                         add                esp, 0x14                                            // 0x004e1a09    83c414
                         pop                edi                                                  // 0x004e1a0c    5f
                         pop                ebp                                                  // 0x004e1a0d    5d
                         pop                ebx                                                  // 0x004e1a0e    5b
                         add                esp, 0x00000904                                      // 0x004e1a0f    81c404090000
                         ret                0x0010                                               // 0x004e1a15    c21000
                         {disp32} lea       edx, dword ptr [esp + 0x00000310]                    // 0x004e1a18    8d942410030000
                         push               edx                                                  // 0x004e1a1f    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000214]                    // 0x004e1a20    8d842414020000
                         push               eax                                                  // 0x004e1a27    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000920]                    // 0x004e1a28    8b842420090000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x004e1a2f    8d4c2418
                         push               ecx                                                  // 0x004e1a33    51
                         shl                eax, 8                                               // 0x004e1a34    c1e008
                         {disp32} lea       edx, dword ptr [eax + ebp * 0x1 + 0x00016d04]        // 0x004e1a37    8d9428046d0100
                         push               0x00bdf9ec                                           // 0x004e1a3e    68ecf9bd00
                         push               edx                                                  // 0x004e1a43    52
                         call               _sprintf                                             // 0x004e1a44    e8893d2e00
                         add                esp, 0x14                                            // 0x004e1a49    83c414
                         pop                edi                                                  // 0x004e1a4c    5f
                         pop                ebp                                                  // 0x004e1a4d    5d
                         pop                ebx                                                  // 0x004e1a4e    5b
                         add                esp, 0x00000904                                      // 0x004e1a4f    81c404090000
                         ret                0x0010                                               // 0x004e1a55    c21000
                         {disp8} mov        ebx, dword ptr [ebx + 0x10]                          // 0x004e1a58    8b5b10
                         lea                eax, dword ptr [ebx + ebx * 0x4]                     // 0x004e1a5b    8d049b
                         {disp32} mov       ecx, dword ptr [eax * 0x8 + 0x00c87870]              // 0x004e1a5e    8b0cc57078c800
                         test               ecx, ecx                                             // 0x004e1a65    85c9
                         {disp8} jne        _jmp_addr_0x004e1ab1                                 // 0x004e1a67    7548
                         {disp32} lea       ecx, dword ptr [esp + 0x00000110]                    // 0x004e1a69    8d8c2410010000
                         push               ecx                                                  // 0x004e1a70    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000414]                    // 0x004e1a71    8d942414040000
                         push               edx                                                  // 0x004e1a78    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000518]                    // 0x004e1a79    8d842418050000
                         push               eax                                                  // 0x004e1a80    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000924]                    // 0x004e1a81    8b842424090000
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x004e1a88    8d4c241c
                         push               ecx                                                  // 0x004e1a8c    51
                         shl                eax, 8                                               // 0x004e1a8d    c1e008
                         {disp32} lea       edx, dword ptr [eax + ebp * 0x1 + 0x00016d04]        // 0x004e1a90    8d9428046d0100
                         push               0x00bdf9c8                                           // 0x004e1a97    68c8f9bd00
                         push               edx                                                  // 0x004e1a9c    52
                         call               _sprintf                                             // 0x004e1a9d    e8303d2e00
                         add                esp, 0x18                                            // 0x004e1aa2    83c418
                         pop                edi                                                  // 0x004e1aa5    5f
                         pop                ebp                                                  // 0x004e1aa6    5d
                         pop                ebx                                                  // 0x004e1aa7    5b
                         add                esp, 0x00000904                                      // 0x004e1aa8    81c404090000
                         ret                0x0010                                               // 0x004e1aae    c21000
_jmp_addr_0x004e1ab1:    {disp32} lea       eax, dword ptr [esp + 0x00000210]                    // 0x004e1ab1    8d842410020000
                         push               eax                                                  // 0x004e1ab8    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000414]                    // 0x004e1ab9    8d8c2414040000
                         push               ecx                                                  // 0x004e1ac0    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000518]                    // 0x004e1ac1    8d942418050000
                         push               edx                                                  // 0x004e1ac8    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x004e1ac9    8d44241c
                         push               eax                                                  // 0x004e1acd    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000928]                    // 0x004e1ace    8b842428090000
                         shl                eax, 8                                               // 0x004e1ad5    c1e008
                         {disp32} lea       ecx, dword ptr [eax + ebp * 0x1 + 0x00016d04]        // 0x004e1ad8    8d8c28046d0100
                         push               0x00bdf9c8                                           // 0x004e1adf    68c8f9bd00
                         push               ecx                                                  // 0x004e1ae4    51
                         call               _sprintf                                             // 0x004e1ae5    e8e83c2e00
                         add                esp, 0x18                                            // 0x004e1aea    83c418
                         pop                edi                                                  // 0x004e1aed    5f
                         pop                ebp                                                  // 0x004e1aee    5d
                         pop                ebx                                                  // 0x004e1aef    5b
                         add                esp, 0x00000904                                      // 0x004e1af0    81c404090000
                         ret                0x0010                                               // 0x004e1af6    c21000
_jmp_addr_0x004e1af9:    {disp32} mov       eax, dword ptr [esp + 0x00000918]                    // 0x004e1af9    8b842418090000
                         shl                eax, 8                                               // 0x004e1b00    c1e008
                         {disp32} lea       edx, dword ptr [eax + ebp * 0x1 + 0x00016d04]        // 0x004e1b03    8d9428046d0100
                         push               0x00bdf9a8                                           // 0x004e1b0a    68a8f9bd00
                         push               edx                                                  // 0x004e1b0f    52
                         call               _sprintf                                             // 0x004e1b10    e8bd3c2e00
                         add                esp, 0x08                                            // 0x004e1b15    83c408
_jmp_addr_0x004e1b18:    pop                edi                                                  // 0x004e1b18    5f
                         pop                ebp                                                  // 0x004e1b19    5d
                         pop                ebx                                                  // 0x004e1b1a    5b
                         add                esp, 0x00000904                                      // 0x004e1b1b    81c404090000
                         ret                0x0010                                               // 0x004e1b21    c21000

// Snippet: jmptbl, [0x004e1b24, 0x004e1b34)
.byte 0x9d, 0x19, 0x4e, 0x00      // 0x004e1b24
.byte 0xd8, 0x19, 0x4e, 0x00      // 0x004e1b28
.byte 0x18, 0x1a, 0x4e, 0x00      // 0x004e1b2c
.byte 0x58, 0x1a, 0x4e, 0x00      // 0x004e1b30

// Snippet: db, [0x004e1b34, 0x004e1b40)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004e1b34
.byte 0x90, 0x90, 0x90, 0x90      // 0x004e1b38
.byte 0x90, 0x90, 0x90, 0x90      // 0x004e1b3c

