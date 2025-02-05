.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x00551ee0

start_0x00551ee0_0x005525e0:
// Snippet: asm, [0x00551ee0, 0x0055251f)
_jmp_addr_0x00551ee0:    push              ecx                                     // 0x00551ee0    51
                         mov.s             edx, ecx                                // 0x00551ee1    8bd1
                         xor.s             eax, eax                                // 0x00551ee3    33c0
                         push              ebx                                     // 0x00551ee5    53
                         {disp8} mov       ebx, dword ptr [esp + 0x10]             // 0x00551ee6    8b5c2410
                         {disp32} mov      byte ptr [edx + 0x00005979], 0x00       // 0x00551eea    c6827959000000
                         push              ebp                                     // 0x00551ef1    55
                         {disp8} mov       ebp, dword ptr [esp + 0x10]             // 0x00551ef2    8b6c2410
                         push              edi                                     // 0x00551ef6    57
                         mov               ecx, 0x00000044                         // 0x00551ef7    b944000000
                         mov.s             edi, ebp                                // 0x00551efc    8bfd
                         rep stosd                                                 // 0x00551efe    f3ab
                         {disp32} mov      al, byte ptr [edx + 0x00005979]         // 0x00551f00    8a8279590000
                         {disp8} mov       byte ptr [esp + 0x14], 0x00             // 0x00551f06    c644241400
                         mov.s             ecx, eax                                // 0x00551f0b    8bc8
                         and               ecx, 0x000000ff                         // 0x00551f0d    81e1ff000000
                         mov               cl, byte ptr [ecx + ebx * 0x1]          // 0x00551f13    8a0c19
                         inc               al                                      // 0x00551f16    fec0
                         {disp32} mov      byte ptr [edx + 0x00005979], al         // 0x00551f18    888279590000
                         {disp8} mov       byte ptr [esp + 0x18], cl               // 0x00551f1e    884c2418
                         and               eax, 0x000000ff                         // 0x00551f22    25ff000000
                         mov               al, byte ptr [eax + ebx * 0x1]          // 0x00551f27    8a0418
                         {disp8} mov       byte ptr [ebp + 0x01], al               // 0x00551f2a    884501
                         {disp32} inc      byte ptr [edx + 0x00005979]             // 0x00551f2d    fe8279590000
                         {disp8} mov       eax, dword ptr [esp + 0x18]             // 0x00551f33    8b442418
                         and               eax, 0x000000ff                         // 0x00551f37    25ff000000
                         lea               ecx, dword ptr [eax + eax * 0x2]        // 0x00551f3c    8d0c40
                         shl               ecx, 3                                  // 0x00551f3f    c1e103
                         sub.s             ecx, eax                                // 0x00551f42    2bc8
                         shl               ecx, 1                                  // 0x00551f44    d1e1
                         {disp32} mov      eax, dword ptr [ecx * 0x4 + 0x00bea9b4] // 0x00551f46    8b048db4a9be00
                         test              eax, eax                                // 0x00551f4d    85c0
                         {disp8} mov       dword ptr [esp + 0x0c], ecx             // 0x00551f4f    894c240c
                         {disp32} lea      ecx, dword ptr [ecx * 0x4 + 0x00bea9b4] // 0x00551f53    8d0c8db4a9be00
                         {disp32} je       _jmp_addr_0x0055250e                    // 0x00551f5a    0f84ae050000
                         push              esi                                     // 0x00551f60    56
                         mov               al, 0x04                                // 0x00551f61    b004
_jmp_addr_0x00551f63:    mov               ecx, dword ptr [ecx]                    // 0x00551f63    8b09
                         dec               ecx                                     // 0x00551f65    49
                         cmp               ecx, 0x2c                               // 0x00551f66    83f92c
                         {disp32} ja       _jmp_addr_0x005524dd                    // 0x00551f69    0f876e050000
                         jmp               dword ptr [ecx*4 + 0x552520]            // 0x00551f6f    ff248d20255500
                         xor.s             ecx, ecx                                // 0x00551f76    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00551f78    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00551f7e    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x08], ecx             // 0x00551f81    894d08
                         add               byte ptr [edx + 0x00005979], al         // 0x00551f84    008279590000
                         {disp8} mov       esi, dword ptr [ebp + 0x08]             // 0x00551f8a    8b7508
                         xor.s             ecx, ecx                                // 0x00551f8d    33c9
                         test              esi, esi                                // 0x00551f8f    85f6
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00551f91    8a8a79590000
                         {disp8} je        _jmp_addr_0x00551fb0                    // 0x00551f97    7417
                         and               ecx, 0x000000ff                         // 0x00551f99    81e1ff000000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00551f9f    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x0c], ecx             // 0x00551fa2    894d0c
                         add               byte ptr [edx + 0x00005979], al         // 0x00551fa5    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00551fab    e92d050000
_jmp_addr_0x00551fb0:    {disp8} mov       dword ptr [ebp + 0x0c], 0x00000000      // 0x00551fb0    c7450c00000000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00551fb7    e921050000
                         xor.s             ecx, ecx                                // 0x00551fbc    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00551fbe    8a8a79590000
                         mov               esi, dword ptr [ecx + ebx * 0x1]        // 0x00551fc4    8b3419
                         {disp8} mov       dword ptr [ebp + 0x10], esi             // 0x00551fc7    897510
                         {disp8} mov       ecx, dword ptr [ecx + ebx * 0x1 + 0x04] // 0x00551fca    8b4c1904
                         {disp8} mov       dword ptr [ebp + 0x14], ecx             // 0x00551fce    894d14
                         add               byte ptr [edx + 0x00005979], 0x08       // 0x00551fd1    80827959000008
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00551fd8    e900050000
                         xor.s             ecx, ecx                                // 0x00551fdd    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00551fdf    8a8a79590000
                         {disp8} lea       edi, dword ptr [ebp + 0x10]             // 0x00551fe5    8d7d10
                         mov.s             esi, ecx                                // 0x00551fe8    8bf1
                         add.s             esi, ebx                                // 0x00551fea    03f3
                         mov               ecx, 0x00000006                         // 0x00551fec    b906000000
                         rep movsd         es:[edi], dword ptr ds:[esi]            // 0x00551ff1    f3a5
                         add               byte ptr [edx + 0x00005979], 0x18       // 0x00551ff3    80827959000018
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00551ffa    e9de040000
                         xor.s             ecx, ecx                                // 0x00551fff    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552001    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00552007    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x10], ecx             // 0x0055200a    894d10
                         add               byte ptr [edx + 0x00005979], al         // 0x0055200d    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00552013    e9c5040000
                         xor.s             ecx, ecx                                // 0x00552018    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055201a    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00552020    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x40], ecx             // 0x00552023    894d40
                         add               byte ptr [edx + 0x00005979], al         // 0x00552026    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x0055202c    e9ac040000
                         xor.s             ecx, ecx                                // 0x00552031    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552033    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00552039    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x44], ecx             // 0x0055203c    894d44
                         add               byte ptr [edx + 0x00005979], al         // 0x0055203f    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00552045    e993040000
                         xor.s             ecx, ecx                                // 0x0055204a    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055204c    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00552052    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x14], ecx             // 0x00552055    894d14
                         add               byte ptr [edx + 0x00005979], al         // 0x00552058    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x0055205e    e97a040000
                         xor.s             ecx, ecx                                // 0x00552063    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552065    8a8a79590000
                         {disp8} lea       esi, dword ptr [ebp + 0x10]             // 0x0055206b    8d7510
                         add.s             ecx, ebx                                // 0x0055206e    03cb
                         {disp32} jmp      _jmp_addr_0x0055231d                    // 0x00552070    e9a8020000
                         xor.s             ecx, ecx                                // 0x00552075    33c9
                         {disp8} mov       dword ptr [ebp + 0x20], 0x00000000      // 0x00552077    c7452000000000
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055207e    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00552084    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x1c], ecx             // 0x00552087    894d1c
                         add               byte ptr [edx + 0x00005979], al         // 0x0055208a    008279590000
                         xor.s             ecx, ecx                                // 0x00552090    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552092    8a8a79590000
                         and               ecx, 0x000000ff                         // 0x00552098    81e1ff000000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x0055209e    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x24], ecx             // 0x005520a1    894d24
                         add               byte ptr [edx + 0x00005979], al         // 0x005520a4    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005520aa    e92e040000
                         xor.s             ecx, ecx                                // 0x005520af    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005520b1    8a8a79590000
                         {disp8} lea       esi, dword ptr [ebp + 0x1c]             // 0x005520b7    8d751c
                         add.s             ecx, ebx                                // 0x005520ba    03cb
                         {disp32} jmp      _jmp_addr_0x0055231d                    // 0x005520bc    e95c020000
                         xor.s             ecx, ecx                                // 0x005520c1    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005520c3    8a8a79590000
                         {disp8} lea       esi, dword ptr [ebp + 0x28]             // 0x005520c9    8d7528
                         add.s             ecx, ebx                                // 0x005520cc    03cb
                         {disp32} jmp      _jmp_addr_0x0055231d                    // 0x005520ce    e94a020000
                         xor.s             ecx, ecx                                // 0x005520d3    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005520d5    8a8a79590000
                         {disp8} lea       esi, dword ptr [ebp + 0x34]             // 0x005520db    8d7534
                         add.s             ecx, ebx                                // 0x005520de    03cb
                         {disp32} jmp      _jmp_addr_0x0055231d                    // 0x005520e0    e938020000
                         xor.s             ecx, ecx                                // 0x005520e5    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005520e7    8a8a79590000
                         mov               cl, byte ptr [ecx + ebx * 0x1]          // 0x005520ed    8a0c19
                         {disp8} mov       byte ptr [ebp + 0x40], cl               // 0x005520f0    884d40
                         {disp32} inc      byte ptr [edx + 0x00005979]             // 0x005520f3    fe8279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005520f9    e9df030000
                         xor.s             eax, eax                                // 0x005520fe    33c0
                         {disp32} mov      al, byte ptr [edx + 0x00005979]         // 0x00552100    8a8279590000
                         {disp8} lea       edi, dword ptr [ebp + 0x11]             // 0x00552106    8d7d11
                         mov               cl, byte ptr [eax + ebx * 0x1]          // 0x00552109    8a0c18
                         {disp8} mov       byte ptr [ebp + 0x10], cl               // 0x0055210c    884d10
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055210f    8a8a79590000
                         inc               cl                                      // 0x00552115    fec1
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x00552117    888a79590000
                         mov.s             al, cl                                  // 0x0055211d    8ac1
                         xor.s             ecx, ecx                                // 0x0055211f    33c9
                         {disp8} mov       cl, byte ptr [ebp + 0x10]               // 0x00552121    8a4d10
                         mov.s             esi, eax                                // 0x00552124    8bf0
                         and               esi, 0x000000ff                         // 0x00552126    81e6ff000000
                         mov.s             eax, ecx                                // 0x0055212c    8bc1
                         shr               ecx, 2                                  // 0x0055212e    c1e902
                         add.s             esi, ebx                                // 0x00552131    03f3
                         rep movsd         es:[edi], dword ptr ds:[esi]            // 0x00552133    f3a5
                         mov.s             ecx, eax                                // 0x00552135    8bc8
                         and               ecx, 0x03                               // 0x00552137    83e103
                         rep movsb                                                 // 0x0055213a    f3a4
                         {disp8} mov       cl, byte ptr [ebp + 0x10]               // 0x0055213c    8a4d10
                         add               byte ptr [edx + 0x00005979], cl         // 0x0055213f    008a79590000
                         {disp32} jmp      _jmp_addr_0x005524db                    // 0x00552145    e991030000
                         xor.s             ecx, ecx                                // 0x0055214a    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055214c    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00552152    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x18], ecx             // 0x00552155    894d18
                         add               byte ptr [edx + 0x00005979], al         // 0x00552158    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x0055215e    e97a030000
                         xor.s             ecx, ecx                                // 0x00552163    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552165    8a8a79590000
                         {disp8} lea       edi, dword ptr [ebp + 0x10]             // 0x0055216b    8d7d10
                         mov.s             esi, ecx                                // 0x0055216e    8bf1
                         add.s             esi, ebx                                // 0x00552170    03f3
                         mov               ecx, 0x00000005                         // 0x00552172    b905000000
                         rep movsd         es:[edi], dword ptr ds:[esi]            // 0x00552177    f3a5
                         add               byte ptr [edx + 0x00005979], 0x14       // 0x00552179    80827959000014
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00552180    e958030000
                         xor.s             ecx, ecx                                // 0x00552185    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552187    8a8a79590000
                         {disp8} lea       edi, dword ptr [ebp + 0x08]             // 0x0055218d    8d7d08
                         mov.s             esi, ecx                                // 0x00552190    8bf1
                         add.s             esi, ebx                                // 0x00552192    03f3
                         mov               ecx, 0x0000000c                         // 0x00552194    b90c000000
                         rep movsd         es:[edi], dword ptr ds:[esi]            // 0x00552199    f3a5
                         add               byte ptr [edx + 0x00005979], 0x30       // 0x0055219b    80827959000030
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005521a2    e936030000
                         xor.s             ecx, ecx                                // 0x005521a7    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005521a9    8a8a79590000
                         mov               cx, word ptr [ecx + ebx * 0x1]          // 0x005521af    668b0c19
                         {disp8} mov       word ptr [ebp + 0x08], cx               // 0x005521b3    66894d08
                         add               byte ptr [edx + 0x00005979], 0x02       // 0x005521b7    80827959000002
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005521be    e91a030000
                         xor.s             ecx, ecx                                // 0x005521c3    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005521c5    8a8a79590000
                         mov               cx, word ptr [ecx + ebx * 0x1]          // 0x005521cb    668b0c19
                         {disp8} mov       word ptr [ebp + 0x0a], cx               // 0x005521cf    66894d0a
                         add               byte ptr [edx + 0x00005979], 0x02       // 0x005521d3    80827959000002
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005521da    e9fe020000
                         xor.s             ecx, ecx                                // 0x005521df    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005521e1    8a8a79590000
                         mov               cl, byte ptr [ecx + ebx * 0x1]          // 0x005521e7    8a0c19
                         {disp8} mov       byte ptr [ebp + 0x0c], cl               // 0x005521ea    884d0c
                         {disp32} inc      byte ptr [edx + 0x00005979]             // 0x005521ed    fe8279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005521f3    e9e5020000
                         xor.s             ecx, ecx                                // 0x005521f8    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005521fa    8a8a79590000
                         mov               cl, byte ptr [ecx + ebx * 0x1]          // 0x00552200    8a0c19
                         {disp8} mov       byte ptr [ebp + 0x0d], cl               // 0x00552203    884d0d
                         {disp32} inc      byte ptr [edx + 0x00005979]             // 0x00552206    fe8279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x0055220c    e9cc020000
                         xor.s             ecx, ecx                                // 0x00552211    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552213    8a8a79590000
                         mov               cl, byte ptr [ecx + ebx * 0x1]          // 0x00552219    8a0c19
                         {disp8} mov       byte ptr [ebp + 0x0e], cl               // 0x0055221c    884d0e
                         {disp32} inc      byte ptr [edx + 0x00005979]             // 0x0055221f    fe8279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00552225    e9b3020000
                         xor.s             ecx, ecx                                // 0x0055222a    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055222c    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x00552232    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x08], ecx             // 0x00552235    894d08
                         add               byte ptr [edx + 0x00005979], al         // 0x00552238    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x0055223e    e99a020000
                         xor.s             ecx, ecx                                // 0x00552243    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552245    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x0055224b    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x0c], ecx             // 0x0055224e    894d0c
                         add               byte ptr [edx + 0x00005979], al         // 0x00552251    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00552257    e981020000
                         xor.s             ecx, ecx                                // 0x0055225c    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055225e    8a8a79590000
                         mov               cx, word ptr [ecx + ebx * 0x1]          // 0x00552264    668b0c19
                         {disp8} mov       word ptr [ebp + 0x0a], cx               // 0x00552268    66894d0a
                         add               byte ptr [edx + 0x00005979], 0x02       // 0x0055226c    80827959000002
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00552273    e965020000
                         xor.s             ecx, ecx                                // 0x00552278    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055227a    8a8a79590000
                         mov               cx, word ptr [ecx + ebx * 0x1]          // 0x00552280    668b0c19
                         {disp8} mov       word ptr [ebp + 0x0c], cx               // 0x00552284    66894d0c
                         add               byte ptr [edx + 0x00005979], 0x02       // 0x00552288    80827959000002
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x0055228f    e949020000
                         xor.s             ecx, ecx                                // 0x00552294    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552296    8a8a79590000
                         mov               cx, word ptr [ecx + ebx * 0x1]          // 0x0055229c    668b0c19
                         {disp8} mov       word ptr [ebp + 0x0e], cx               // 0x005522a0    66894d0e
                         add               byte ptr [edx + 0x00005979], 0x02       // 0x005522a4    80827959000002
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005522ab    e92d020000
                         xor.s             ecx, ecx                                // 0x005522b0    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005522b2    8a8a79590000
                         mov               cx, word ptr [ecx + ebx * 0x1]          // 0x005522b8    668b0c19
                         {disp8} mov       word ptr [ebp + 0x14], cx               // 0x005522bc    66894d14
                         add               byte ptr [edx + 0x00005979], 0x02       // 0x005522c0    80827959000002
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005522c7    e911020000
                         xor.s             ecx, ecx                                // 0x005522cc    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005522ce    8a8a79590000
                         mov               cx, word ptr [ecx + ebx * 0x1]          // 0x005522d4    668b0c19
                         {disp8} mov       word ptr [ebp + 0x16], cx               // 0x005522d8    66894d16
                         add               byte ptr [edx + 0x00005979], 0x02       // 0x005522dc    80827959000002
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x005522e3    e9f5010000
                         xor.s             ecx, ecx                                // 0x005522e8    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005522ea    8a8a79590000
                         {disp8} lea       esi, dword ptr [ebp + 0x08]             // 0x005522f0    8d7508
                         add.s             ecx, ebx                                // 0x005522f3    03cb
                         {disp8} jmp       _jmp_addr_0x0055231d                    // 0x005522f5    eb26
                         xor.s             ecx, ecx                                // 0x005522f7    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005522f9    8a8a79590000
                         mov               ecx, dword ptr [ecx + ebx * 0x1]        // 0x005522ff    8b0c19
                         {disp8} mov       dword ptr [ebp + 0x14], ecx             // 0x00552302    894d14
                         add               byte ptr [edx + 0x00005979], al         // 0x00552305    008279590000
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x0055230b    e9cd010000
                         xor.s             ecx, ecx                                // 0x00552310    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552312    8a8a79590000
                         {disp8} lea       esi, dword ptr [ebp + 0x14]             // 0x00552318    8d7514
                         add.s             ecx, ebx                                // 0x0055231b    03cb
_jmp_addr_0x0055231d:    mov               edi, dword ptr [ecx]                    // 0x0055231d    8b39
                         mov               dword ptr [esi], edi                    // 0x0055231f    893e
                         {disp8} mov       edi, dword ptr [ecx + 0x04]             // 0x00552321    8b7904
                         {disp8} mov       dword ptr [esi + 0x04], edi             // 0x00552324    897e04
                         {disp8} mov       ecx, dword ptr [ecx + 0x08]             // 0x00552327    8b4908
                         {disp8} mov       dword ptr [esi + 0x08], ecx             // 0x0055232a    894e08
                         add               byte ptr [edx + 0x00005979], 0x0c       // 0x0055232d    8082795900000c
                         {disp32} jmp      _jmp_addr_0x005524dd                    // 0x00552334    e9a4010000
                         xor.s             ecx, ecx                                // 0x00552339    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x0055233b    8a8a79590000
                         mov.s             eax, ecx                                // 0x00552341    8bc1
                         and               eax, 0x000000ff                         // 0x00552343    25ff000000
                         mov               si, word ptr [eax + ebx * 0x1]          // 0x00552348    668b3418
                         add               cl, 0x02                                // 0x0055234c    80c102
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x0055234f    888a79590000
                         and               esi, 0x0000ffff                         // 0x00552355    81e6ffff0000
                         mov.s             eax, ecx                                // 0x0055235b    8bc1
                         add               cl, 0x02                                // 0x0055235d    80c102
                         and               eax, 0x000000ff                         // 0x00552360    25ff000000
                         mov               di, word ptr [eax + ebx * 0x1]          // 0x00552365    668b3c18
                         {disp8} mov       dword ptr [esp + 0x1c], esi             // 0x00552369    8974241c
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x0055236d    db44241c
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x00552371    888a79590000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x00552377    d80da8f88d00
                         mov.s             eax, ecx                                // 0x0055237d    8bc1
                         and               eax, 0x000000ff                         // 0x0055237f    25ff000000
                         mov               ax, word ptr [eax + ebx * 0x1]          // 0x00552384    668b0418
                         add               cl, 0x02                                // 0x00552388    80c102
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x0055238b    888a79590000
                         {disp8} fstp      dword ptr [ebp + 0x1c]                  // 0x00552391    d95d1c
                         and               edi, 0x0000ffff                         // 0x00552394    81e7ffff0000
                         {disp8} mov       dword ptr [esp + 0x1c], edi             // 0x0055239a    897c241c
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x0055239e    db44241c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x005523a2    d80da8f88d00
                         and               eax, 0x0000ffff                         // 0x005523a8    25ffff0000
                         {disp8} mov       dword ptr [esp + 0x1c], eax             // 0x005523ad    8944241c
                         {disp8} fstp      dword ptr [ebp + 0x20]                  // 0x005523b1    d95d20
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x005523b4    db44241c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x005523b8    d80da8f88d00
                         {disp8} fstp      dword ptr [ebp + 0x24]                  // 0x005523be    d95d24
                         {disp32} jmp      _jmp_addr_0x005524db                    // 0x005523c1    e915010000
                         xor.s             ecx, ecx                                // 0x005523c6    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x005523c8    8a8a79590000
                         mov.s             eax, ecx                                // 0x005523ce    8bc1
                         and               eax, 0x000000ff                         // 0x005523d0    25ff000000
                         mov               si, word ptr [eax + ebx * 0x1]          // 0x005523d5    668b3418
                         add               cl, 0x02                                // 0x005523d9    80c102
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x005523dc    888a79590000
                         and               esi, 0x0000ffff                         // 0x005523e2    81e6ffff0000
                         mov.s             eax, ecx                                // 0x005523e8    8bc1
                         add               cl, 0x02                                // 0x005523ea    80c102
                         and               eax, 0x000000ff                         // 0x005523ed    25ff000000
                         mov               di, word ptr [eax + ebx * 0x1]          // 0x005523f2    668b3c18
                         {disp8} mov       dword ptr [esp + 0x1c], esi             // 0x005523f6    8974241c
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x005523fa    db44241c
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x005523fe    888a79590000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x00552404    d80da8f88d00
                         mov.s             eax, ecx                                // 0x0055240a    8bc1
                         and               eax, 0x000000ff                         // 0x0055240c    25ff000000
                         mov               ax, word ptr [eax + ebx * 0x1]          // 0x00552411    668b0418
                         add               cl, 0x02                                // 0x00552415    80c102
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x00552418    888a79590000
                         {disp8} fstp      dword ptr [ebp + 0x28]                  // 0x0055241e    d95d28
                         and               edi, 0x0000ffff                         // 0x00552421    81e7ffff0000
                         {disp8} mov       dword ptr [esp + 0x1c], edi             // 0x00552427    897c241c
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x0055242b    db44241c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x0055242f    d80da8f88d00
                         and               eax, 0x0000ffff                         // 0x00552435    25ffff0000
                         {disp8} mov       dword ptr [esp + 0x1c], eax             // 0x0055243a    8944241c
                         {disp8} fstp      dword ptr [ebp + 0x2c]                  // 0x0055243e    d95d2c
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x00552441    db44241c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x00552445    d80da8f88d00
                         {disp8} fstp      dword ptr [ebp + 0x30]                  // 0x0055244b    d95d30
                         {disp32} jmp      _jmp_addr_0x005524db                    // 0x0055244e    e988000000
                         xor.s             ecx, ecx                                // 0x00552453    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00005979]         // 0x00552455    8a8a79590000
                         mov.s             eax, ecx                                // 0x0055245b    8bc1
                         and               eax, 0x000000ff                         // 0x0055245d    25ff000000
                         mov               si, word ptr [eax + ebx * 0x1]          // 0x00552462    668b3418
                         add               cl, 0x02                                // 0x00552466    80c102
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x00552469    888a79590000
                         and               esi, 0x0000ffff                         // 0x0055246f    81e6ffff0000
                         mov.s             eax, ecx                                // 0x00552475    8bc1
                         add               cl, 0x02                                // 0x00552477    80c102
                         and               eax, 0x000000ff                         // 0x0055247a    25ff000000
                         mov               di, word ptr [eax + ebx * 0x1]          // 0x0055247f    668b3c18
                         {disp8} mov       dword ptr [esp + 0x1c], esi             // 0x00552483    8974241c
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x00552487    db44241c
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x0055248b    888a79590000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x00552491    d80da8f88d00
                         mov.s             eax, ecx                                // 0x00552497    8bc1
                         and               eax, 0x000000ff                         // 0x00552499    25ff000000
                         mov               ax, word ptr [eax + ebx * 0x1]          // 0x0055249e    668b0418
                         add               cl, 0x02                                // 0x005524a2    80c102
                         {disp32} mov      byte ptr [edx + 0x00005979], cl         // 0x005524a5    888a79590000
                         {disp8} fstp      dword ptr [ebp + 0x34]                  // 0x005524ab    d95d34
                         and               edi, 0x0000ffff                         // 0x005524ae    81e7ffff0000
                         {disp8} mov       dword ptr [esp + 0x1c], edi             // 0x005524b4    897c241c
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x005524b8    db44241c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x005524bc    d80da8f88d00
                         and               eax, 0x0000ffff                         // 0x005524c2    25ffff0000
                         {disp8} mov       dword ptr [esp + 0x1c], eax             // 0x005524c7    8944241c
                         {disp8} fstp      dword ptr [ebp + 0x38]                  // 0x005524cb    d95d38
                         {disp8} fild      dword ptr [esp + 0x1c]                  // 0x005524ce    db44241c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x368a8]       // 0x005524d2    d80da8f88d00
                         {disp8} fstp      dword ptr [ebp + 0x3c]                  // 0x005524d8    d95d3c
_jmp_addr_0x005524db:    mov               al, 0x04                                // 0x005524db    b004
_jmp_addr_0x005524dd:    {disp8} mov       cl, byte ptr [esp + 0x18]               // 0x005524dd    8a4c2418
                         {disp8} mov       edi, dword ptr [esp + 0x10]             // 0x005524e1    8b7c2410
                         inc               cl                                      // 0x005524e5    fec1
                         {disp8} mov       byte ptr [esp + 0x18], cl               // 0x005524e7    884c2418
                         {disp8} mov       ecx, dword ptr [esp + 0x18]             // 0x005524eb    8b4c2418
                         and               ecx, 0x000000ff                         // 0x005524ef    81e1ff000000
                         add.s             ecx, edi                                // 0x005524f5    03cf
                         {disp32} mov      esi, dword ptr [ecx * 0x4 + 0x00bea9b4] // 0x005524f7    8b348db4a9be00
                         test              esi, esi                                // 0x005524fe    85f6
                         {disp32} lea      ecx, dword ptr [ecx * 0x4 + 0x00bea9b4] // 0x00552500    8d0c8db4a9be00
                         {disp32} jne      _jmp_addr_0x00551f63                    // 0x00552507    0f8556faffff
                         pop               esi                                     // 0x0055250d    5e
_jmp_addr_0x0055250e:    xor.s             eax, eax                                // 0x0055250e    33c0
                         {disp32} mov      al, byte ptr [edx + 0x00005979]         // 0x00552510    8a8279590000
                         pop               edi                                     // 0x00552516    5f
                         pop               ebp                                     // 0x00552517    5d
                         add.s             eax, ebx                                // 0x00552518    03c3
                         pop               ebx                                     // 0x0055251a    5b
                         pop               ecx                                     // 0x0055251b    59
                         ret               0x0008                                  // 0x0055251c    c20800

// Snippet: db, [0x0055251f, 0x00552520)
.byte 0x90                        // 0x0055251f

// Snippet: jmptbl, [0x00552520, 0x005525d4)
.byte 0x76, 0x1f, 0x55, 0x00      // 0x00552520
.byte 0xdd, 0x24, 0x55, 0x00      // 0x00552524
.byte 0xbc, 0x1f, 0x55, 0x00      // 0x00552528
.byte 0xdd, 0x1f, 0x55, 0x00      // 0x0055252c
.byte 0xff, 0x1f, 0x55, 0x00      // 0x00552530
.byte 0x4a, 0x20, 0x55, 0x00      // 0x00552534
.byte 0x63, 0x20, 0x55, 0x00      // 0x00552538
.byte 0xaf, 0x20, 0x55, 0x00      // 0x0055253c
.byte 0xc1, 0x20, 0x55, 0x00      // 0x00552540
.byte 0x75, 0x20, 0x55, 0x00      // 0x00552544
.byte 0xd3, 0x20, 0x55, 0x00      // 0x00552548
.byte 0x18, 0x20, 0x55, 0x00      // 0x0055254c
.byte 0x31, 0x20, 0x55, 0x00      // 0x00552550
.byte 0xe5, 0x20, 0x55, 0x00      // 0x00552554
.byte 0xfe, 0x20, 0x55, 0x00      // 0x00552558
.byte 0x63, 0x20, 0x55, 0x00      // 0x0055255c
.byte 0xff, 0x1f, 0x55, 0x00      // 0x00552560
.byte 0x4a, 0x20, 0x55, 0x00      // 0x00552564
.byte 0x4a, 0x21, 0x55, 0x00      // 0x00552568
.byte 0x63, 0x21, 0x55, 0x00      // 0x0055256c
.byte 0x85, 0x21, 0x55, 0x00      // 0x00552570
.byte 0xa7, 0x21, 0x55, 0x00      // 0x00552574
.byte 0xc3, 0x21, 0x55, 0x00      // 0x00552578
.byte 0xdf, 0x21, 0x55, 0x00      // 0x0055257c
.byte 0xf8, 0x21, 0x55, 0x00      // 0x00552580
.byte 0x11, 0x22, 0x55, 0x00      // 0x00552584
.byte 0x2a, 0x22, 0x55, 0x00      // 0x00552588
.byte 0x43, 0x22, 0x55, 0x00      // 0x0055258c
.byte 0xa7, 0x21, 0x55, 0x00      // 0x00552590
.byte 0x5c, 0x22, 0x55, 0x00      // 0x00552594
.byte 0x78, 0x22, 0x55, 0x00      // 0x00552598
.byte 0x94, 0x22, 0x55, 0x00      // 0x0055259c
.byte 0xa7, 0x21, 0x55, 0x00      // 0x005525a0
.byte 0x5c, 0x22, 0x55, 0x00      // 0x005525a4
.byte 0x78, 0x22, 0x55, 0x00      // 0x005525a8
.byte 0x94, 0x22, 0x55, 0x00      // 0x005525ac
.byte 0x43, 0x22, 0x55, 0x00      // 0x005525b0
.byte 0xe8, 0x22, 0x55, 0x00      // 0x005525b4
.byte 0xb0, 0x22, 0x55, 0x00      // 0x005525b8
.byte 0xcc, 0x22, 0x55, 0x00      // 0x005525bc
.byte 0xf7, 0x22, 0x55, 0x00      // 0x005525c0
.byte 0x10, 0x23, 0x55, 0x00      // 0x005525c4
.byte 0x39, 0x23, 0x55, 0x00      // 0x005525c8
.byte 0xc6, 0x23, 0x55, 0x00      // 0x005525cc
.byte 0x53, 0x24, 0x55, 0x00      // 0x005525d0

// Snippet: db, [0x005525d4, 0x005525e0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005525d4
.byte 0x90, 0x90, 0x90, 0x90      // 0x005525d8
.byte 0x90, 0x90, 0x90, 0x90      // 0x005525dc

