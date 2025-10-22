.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0047f3a0
.extern _jmp_addr_0x00482d40
.extern _jmp_addr_0x004831b0
.extern ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x00484b00
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x00486160
.extern _jmp_addr_0x0048b790
.extern _jmp_addr_0x0048cd40
.extern _jmp_addr_0x004ede40
.extern _jmp_addr_0x004edff0
.extern _jmp_addr_0x004ee130
.extern _jmp_addr_0x004ee530
.extern _jmp_addr_0x004ee900
.extern _jmp_addr_0x004eea90
.extern _jmp_addr_0x005e6980
.extern _jmp_addr_0x00617a80
.extern @GetAnim__9MorphableFll@16
.extern _jmp_addr_0x00646950
.extern ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x007120e0
.extern _jmp_addr_0x00712330
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x00845c20

.globl _jmp_addr_0x00480530
.globl _jmp_addr_0x004806c0
.globl _jmp_addr_0x004806d0
.globl _jmp_addr_0x004806e0
.globl _jmp_addr_0x00480730
.globl _jmp_addr_0x00480810
.globl _jmp_addr_0x00480900
.globl _jmp_addr_0x00480a10
.globl _jmp_addr_0x00480a60
.globl _jmp_addr_0x00480ac0
.globl _jmp_addr_0x00480c00
.globl _jmp_addr_0x00480c60
.globl _jmp_addr_0x00480c90
.globl _jmp_addr_0x00480d30
.globl _jmp_addr_0x00480d40
.globl _jmp_addr_0x00480e10
.globl _jmp_addr_0x00480fc0
.globl _jmp_addr_0x00481030
.globl _jmp_addr_0x00481040
.globl _jmp_addr_0x004810d0
.globl _jmp_addr_0x00481160
.globl _jmp_addr_0x00481190
.globl _jmp_addr_0x004811a0
.globl _jmp_addr_0x00481390
.globl _jmp_addr_0x004813b0
.globl _jmp_addr_0x004813d0
.globl @GetBonePos__12LH3DCreatureFl@12
.globl _jmp_addr_0x00481410

start_0x00480530_0x00481760:
// Snippet: asm, [0x00480530, 0x0048172c)
_jmp_addr_0x00480530:    sub                esp, 0x08                                // 0x00480530    83ec08
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00480533    d944240c
                         push               esi                                      // 0x00480537    56
                         {disp32} fmul      dword ptr [_rdata_float0p5]              // 0x00480538    d80db4a38a00
                         push               edi                                      // 0x0048053e    57
                         mov.s              esi, ecx                                 // 0x0048053f    8bf1
                         fld                st(0)                                    // 0x00480541    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fac]        // 0x00480543    d80dacef8c00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x26024]        // 0x00480549    d82d24f08c00
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x0048054f    d95c240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2611c]        // 0x00480553    d80d1cf18c00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x23d4]         // 0x00480559    d805d4b38a00
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x0048055f    d95c2408
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00480563    d9442414
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x33f4]         // 0x00480567    d81df4c38a00
                         fnstsw             ax                                       // 0x0048056d    dfe0
                         test               ah, 0x41                                 // 0x0048056f    f6c441
                         {disp8} jne        _jmp_addr_0x00480593                     // 0x00480572    751f
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00480574    d9442414
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2418]         // 0x00480578    d81d18b48a00
                         fnstsw             ax                                       // 0x0048057e    dfe0
                         test               ah, 0x01                                 // 0x00480580    f6c401
                         {disp8} je         _jmp_addr_0x0048058b                     // 0x00480583    7406
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00480585    d9442414
                         {disp8} jmp        _jmp_addr_0x00480599                     // 0x00480589    eb0e
_jmp_addr_0x0048058b:    {disp32} fld       dword ptr [rdata_bytes + 0x2418]         // 0x0048058b    d90518b48a00
                         {disp8} jmp        _jmp_addr_0x00480599                     // 0x00480591    eb06
_jmp_addr_0x00480593:    {disp32} fld       dword ptr [rdata_bytes + 0x33f4]         // 0x00480593    d905f4c38a00
_jmp_addr_0x00480599:    {disp32} fst       dword ptr [esi + 0x00000090]             // 0x00480599    d99690000000
                         fld                st(0)                                    // 0x0048059f    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]        // 0x004805a1    d80d402c8c00
                         {disp32} fdiv      dword ptr [esi + 0x0000008c]             // 0x004805a7    d8b68c000000
                         {disp8} fst        dword ptr [esp + 0x14]                   // 0x004805ad    d9542414
                         {disp32} fstp      dword ptr [esi + 0x00000094]             // 0x004805b1    d99e94000000
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x004805b7    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c70]        // 0x004805bb    d80d702c8c00
                         {disp32} fstp      dword ptr [esi + 0x00004844]             // 0x004805c1    d99e44480000
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x004805c7    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e658]        // 0x004805cb    d80d58768c00
                         {disp32} fst       dword ptr [esi + 0x00004848]             // 0x004805d1    d99648480000
                         {disp32} fld       dword ptr [esi + 0x00004838]             // 0x004805d7    d98638480000
                         fld                st(1)                                    // 0x004805dd    d9c1
                         fcompp                                                      // 0x004805df    ded9
                         fnstsw             ax                                       // 0x004805e1    dfe0
                         test               ah, 0x01                                 // 0x004805e3    f6c401
                         {disp8} jne        _jmp_addr_0x004805f0                     // 0x004805e6    7508
                         fstp               st(0)                                    // 0x004805e8    ddd8
                         {disp32} fld       dword ptr [esi + 0x00004838]             // 0x004805ea    d98638480000
_jmp_addr_0x004805f0:    {disp32} fstp      dword ptr [esi + 0x00004838]             // 0x004805f0    d99e38480000
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]        // 0x004805f6    8b8e34480000
                         test               ecx, ecx                                 // 0x004805fc    85c9
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x004805fe    d944240c
                         {disp32} fmul      dword ptr [esi + 0x0000485c]             // 0x00480602    d88e5c480000
                         {disp32} mov       dword ptr [esi + 0x0000484c], 0x41400000 // 0x00480608    c7864c48000000004041
                         {disp32} fstp      dword ptr [esi + 0x00004858]             // 0x00480612    d99e58480000
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00480618    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]        // 0x0048061c    d80da0368c00
                         {disp32} fstp      dword ptr [esi + 0x00004850]             // 0x00480622    d99e50480000
                         fsqrt                                                       // 0x00480628    d9fa
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x1390]         // 0x0048062a    d83d90a38a00
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x26e4]         // 0x00480630    d83de4b68a00
                         {disp32} fst       dword ptr [esi + 0x00004990]             // 0x00480636    d99690490000
                         {disp32} fstp      dword ptr [esi + 0x0000498c]             // 0x0048063c    d99e8c490000
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00480642    d9442414
                         {disp32} fmul      dword ptr [esi + 0x00005224]             // 0x00480646    d88e24520000
                         {disp32} fstp      dword ptr [esi + 0x00005228]             // 0x0048064c    d99e28520000
                         {disp8} je         _jmp_addr_0x004806a9                     // 0x00480652    7455
                         mov                eax, dword ptr [ecx]                     // 0x00480654    8b01
                         call               dword ptr [eax + 0x1c]                   // 0x00480656    ff501c
                         test               eax, eax                                 // 0x00480659    85c0
                         {disp8} je         _jmp_addr_0x004806a9                     // 0x0048065b    744c
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]        // 0x0048065d    8b8e34480000
                         mov                edx, dword ptr [ecx]                     // 0x00480663    8b11
                         push               0x0                                      // 0x00480665    6a00
                         call               dword ptr [edx + 0x1c]                   // 0x00480667    ff521c
                         mov.s              ecx, eax                                 // 0x0048066a    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                     // 0x0048066c    e84fa41c00
                         mov.s              edi, eax                                 // 0x00480671    8bf8
                         test               edi, edi                                 // 0x00480673    85ff
                         {disp8} je         _jmp_addr_0x004806a9                     // 0x00480675    7432
_jmp_addr_0x00480677:    {disp32} mov       ecx, dword ptr [edi + 0x0000012c]        // 0x00480677    8b8f2c010000
                         {disp8} mov        eax, dword ptr [ecx + 0x24]              // 0x0048067d    8b4124
                         test               eax, eax                                 // 0x00480680    85c0
                         {disp8} jne        _jmp_addr_0x00480690                     // 0x00480682    750c
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]        // 0x00480684    8b8634480000
                         push               eax                                      // 0x0048068a    50
                         call               _jmp_addr_0x005e6980                     // 0x0048068b    e8f0621600
_jmp_addr_0x00480690:    {disp32} mov       ecx, dword ptr [esi + 0x00004834]        // 0x00480690    8b8e34480000
                         mov                edx, dword ptr [ecx]                     // 0x00480696    8b11
                         push               edi                                      // 0x00480698    57
                         call               dword ptr [edx + 0x1c]                   // 0x00480699    ff521c
                         mov.s              ecx, eax                                 // 0x0048069c    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                     // 0x0048069e    e81da41c00
                         mov.s              edi, eax                                 // 0x004806a3    8bf8
                         test               edi, edi                                 // 0x004806a5    85ff
                         {disp8} jne        _jmp_addr_0x00480677                     // 0x004806a7    75ce
_jmp_addr_0x004806a9:    pop                edi                                      // 0x004806a9    5f
                         pop                esi                                      // 0x004806aa    5e
                         add                esp, 0x08                                // 0x004806ab    83c408
                         ret                0x0004                                   // 0x004806ae    c20400
                         nop                                                         // 0x004806b1    90
                         nop                                                         // 0x004806b2    90
                         nop                                                         // 0x004806b3    90
                         nop                                                         // 0x004806b4    90
                         nop                                                         // 0x004806b5    90
                         nop                                                         // 0x004806b6    90
                         nop                                                         // 0x004806b7    90
                         nop                                                         // 0x004806b8    90
                         nop                                                         // 0x004806b9    90
                         nop                                                         // 0x004806ba    90
                         nop                                                         // 0x004806bb    90
                         nop                                                         // 0x004806bc    90
                         nop                                                         // 0x004806bd    90
                         nop                                                         // 0x004806be    90
                         nop                                                         // 0x004806bf    90
_jmp_addr_0x004806c0:    {disp32} mov       dword ptr [ecx + 0x0000526c], 0x00000001 // 0x004806c0    c7816c52000001000000
                         ret                                                         // 0x004806ca    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                     // 0x004806cb    e8a911f8ff
_jmp_addr_0x004806d0:    {disp32} mov       dword ptr [ecx + 0x0000526c], 0x00000000 // 0x004806d0    c7816c52000000000000
                         ret                                                         // 0x004806da    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                     // 0x004806db    e89911f8ff
_jmp_addr_0x004806e0:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x004806e0    8b442404
                         test               eax, eax                                 // 0x004806e4    85c0
                         push               esi                                      // 0x004806e6    56
                         push               edi                                      // 0x004806e7    57
                         mov.s              edi, ecx                                 // 0x004806e8    8bf9
                         {disp32} mov       dword ptr [edi + 0x00005270], 0x00000001 // 0x004806ea    c7877052000001000000
                         {disp8} je         _jmp_addr_0x004806fc                     // 0x004806f4    7406
                         push               eax                                      // 0x004806f6    50
                         call               _jmp_addr_0x00484b00                     // 0x004806f7    e804440000
_jmp_addr_0x004806fc:    {disp32} mov       eax, dword ptr [edi + 0x000047b8]        // 0x004806fc    8b87b8470000
                         {disp32} mov       esi, dword ptr [edi + 0x00005178]        // 0x00480702    8bb778510000
                         {disp32} mov       edi, dword ptr [edi + 0x00005180]        // 0x00480708    8bbf80510000
                         lea                ecx, dword ptr [eax + eax * 0x2]         // 0x0048070e    8d0c40
                         shl                ecx, 4                                   // 0x00480711    c1e104
                         mov.s              eax, ecx                                 // 0x00480714    8bc1
                         shr                ecx, 2                                   // 0x00480716    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]             // 0x00480719    f3a5
                         mov.s              ecx, eax                                 // 0x0048071b    8bc8
                         and                ecx, 0x03                                // 0x0048071d    83e103
                         rep movsb                                                   // 0x00480720    f3a4
                         pop                edi                                      // 0x00480722    5f
                         pop                esi                                      // 0x00480723    5e
                         ret                0x0004                                   // 0x00480724    c20400
                         nop                                                         // 0x00480727    90
                         nop                                                         // 0x00480728    90
                         nop                                                         // 0x00480729    90
                         nop                                                         // 0x0048072a    90
                         nop                                                         // 0x0048072b    90
                         nop                                                         // 0x0048072c    90
                         nop                                                         // 0x0048072d    90
                         nop                                                         // 0x0048072e    90
                         nop                                                         // 0x0048072f    90
_jmp_addr_0x00480730:    push               esi                                      // 0x00480730    56
                         mov.s              esi, ecx                                 // 0x00480731    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005270]        // 0x00480733    8b8670520000
                         test               eax, eax                                 // 0x00480739    85c0
                         {disp8} je         _jmp_addr_0x0048074c                     // 0x0048073b    740f
                         call               _jmp_addr_0x004831b0                     // 0x0048073d    e86e2a0000
                         {disp32} mov       dword ptr [esi + 0x00005270], 0x00000000 // 0x00480742    c7867052000000000000
_jmp_addr_0x0048074c:    pop                esi                                      // 0x0048074c    5e
                         ret                                                         // 0x0048074d    c3
                         nop                                                         // 0x0048074e    90
                         nop                                                         // 0x0048074f    90
_jmp_addr_0x00480750:    sub                esp, 0x18                                // 0x00480750    83ec18
                         push               esi                                      // 0x00480753    56
                         mov.s              esi, ecx                                 // 0x00480754    8bf1
                         call               _jmp_addr_0x004ede40                     // 0x00480756    e8e5d60600
                         {disp32} fld       dword ptr [esi + 0x00004948]             // 0x0048075b    d98648490000
                         {disp32} fsub      dword ptr [esi + 0x00004954]             // 0x00480761    d8a654490000
                         {disp8} mov        eax, dword ptr [esp + 0x24]              // 0x00480767    8b442424
                         {disp32} fld       dword ptr [esi + 0x0000494c]             // 0x0048076b    d9864c490000
                         {disp32} fsub      dword ptr [esi + 0x00004958]             // 0x00480771    d8a658490000
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x00480777    d95c2408
                         {disp32} fld       dword ptr [esi + 0x00004950]             // 0x0048077b    d98650490000
                         {disp32} fsub      dword ptr [esi + 0x0000495c]             // 0x00480781    d8a65c490000
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00480787    d95c240c
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x0048078b    d84c2420
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x0048078f    d9442408
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x00480793    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00480797    d95c2414
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x0048079b    d944240c
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x0048079f    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x004807a3    d95c2418
                         {disp32} fadd      dword ptr [esi + 0x00004954]             // 0x004807a7    d88654490000
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x004807ad    d9442414
                         {disp32} fadd      dword ptr [esi + 0x00004958]             // 0x004807b1    d88658490000
                         {disp8} fst        dword ptr [esp + 0x08]                   // 0x004807b7    d9542408
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x004807bb    d9442418
                         {disp32} fadd      dword ptr [esi + 0x0000495c]             // 0x004807bf    d8865c490000
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x004807c5    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x004807c9    8b4c240c
                         fld                st(1)                                    // 0x004807cd    d9c1
                         fstp               dword ptr [eax]                          // 0x004807cf    d918
                         {disp8} mov        dword ptr [eax + 0x08], ecx              // 0x004807d1    894808
                         {disp8} fstp       dword ptr [eax + 0x04]                   // 0x004807d4    d95804
                         {disp32} mov       edx, dword ptr [esi + 0x00000094]        // 0x004807d7    8b9694000000
                         {disp8} mov        dword ptr [esp + 0x20], edx              // 0x004807dd    89542420
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x004807e1    d84c2420
                         pop                esi                                      // 0x004807e5    5e
                         fstp               dword ptr [eax]                          // 0x004807e6    d918
                         {disp8} fld        dword ptr [esp + 0x04]                   // 0x004807e8    d9442404
                         {disp8} fmul       dword ptr [esp + 0x1c]                   // 0x004807ec    d84c241c
                         {disp8} fstp       dword ptr [eax + 0x04]                   // 0x004807f0    d95804
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x004807f3    d9442408
                         {disp8} fmul       dword ptr [esp + 0x1c]                   // 0x004807f7    d84c241c
                         {disp8} fstp       dword ptr [eax + 0x08]                   // 0x004807fb    d95808
                         add                esp, 0x18                                // 0x004807fe    83c418
                         ret                0x0008                                   // 0x00480801    c20800
                         nop                                                         // 0x00480804    90
                         nop                                                         // 0x00480805    90
                         nop                                                         // 0x00480806    90
                         nop                                                         // 0x00480807    90
                         nop                                                         // 0x00480808    90
                         nop                                                         // 0x00480809    90
                         nop                                                         // 0x0048080a    90
                         nop                                                         // 0x0048080b    90
                         nop                                                         // 0x0048080c    90
                         nop                                                         // 0x0048080d    90
                         nop                                                         // 0x0048080e    90
                         nop                                                         // 0x0048080f    90
_jmp_addr_0x00480810:    sub                esp, 0x34                                // 0x00480810    83ec34
                         push               esi                                      // 0x00480813    56
                         mov.s              esi, ecx                                 // 0x00480814    8bf1
                         call               _jmp_addr_0x004edff0                     // 0x00480816    e8d5d70600
                         {disp8} fld        dword ptr [esp + 0x44]                   // 0x0048081b    d9442444
                         fcos                                                        // 0x0048081f    d9ff
                         {disp32} mov       ecx, dword ptr [esi + 0x000049bc]        // 0x00480821    8b8ebc490000
                         {disp8} mov        eax, dword ptr [esp + 0x3c]              // 0x00480827    8b44243c
                         mov                dword ptr [eax], ecx                     // 0x0048082b    8908
                         {disp32} mov       edx, dword ptr [esi + 0x000049c0]        // 0x0048082d    8b96c0490000
                         {disp8} mov        dword ptr [eax + 0x04], edx              // 0x00480833    895004
                         {disp32} mov       ecx, dword ptr [esi + 0x000049c4]        // 0x00480836    8b8ec4490000
                         {disp8} mov        dword ptr [eax + 0x08], ecx              // 0x0048083c    894808
                         {disp8} mov        cl, byte ptr [esp + 0x40]                // 0x0048083f    8a4c2440
                         test               cl, cl                                   // 0x00480843    84c9
                         {disp8} fld        dword ptr [esp + 0x44]                   // 0x00480845    d9442444
                         fsin                                                        // 0x00480849    d9fe
                         fld                st(0)                                    // 0x0048084b    d9c0
                         fchs                                                        // 0x0048084d    d9e0
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x0048084f    d95c2420
                         {disp8} jne        _jmp_addr_0x0048085b                     // 0x00480853    7506
                         fld                dword ptr [eax]                          // 0x00480855    d900
                         fchs                                                        // 0x00480857    d9e0
                         fstp               dword ptr [eax]                          // 0x00480859    d918
_jmp_addr_0x0048085b:    {disp32} mov       edx, dword ptr [esi + 0x00000094]        // 0x0048085b    8b9694000000
                         {disp8} mov        dword ptr [esp + 0x40], edx              // 0x00480861    89542440
                         {disp8} fld        dword ptr [esp + 0x40]                   // 0x00480865    d9442440
                         fmul               dword ptr [eax]                          // 0x00480869    d808
                         fst                dword ptr [eax]                          // 0x0048086b    d910
                         {disp8} fld        dword ptr [esp + 0x40]                   // 0x0048086d    d9442440
                         {disp8} fmul       dword ptr [eax + 0x04]                   // 0x00480871    d84804
                         {disp8} fst        dword ptr [esp + 0x44]                   // 0x00480874    d9542444
                         {disp8} fstp       dword ptr [eax + 0x04]                   // 0x00480878    d95804
                         {disp8} fld        dword ptr [esp + 0x40]                   // 0x0048087b    d9442440
                         {disp8} fmul       dword ptr [eax + 0x08]                   // 0x0048087f    d84808
                         {disp8} fst        dword ptr [esp + 0x40]                   // 0x00480882    d9542440
                         {disp8} mov        ecx, dword ptr [esp + 0x40]              // 0x00480886    8b4c2440
                         {disp8} fstp       dword ptr [eax + 0x08]                   // 0x0048088a    d95808
                         {disp8} fld        dword ptr [esp + 0x44]                   // 0x0048088d    d9442444
                         {disp8} mov        dword ptr [esp + 0x40], ecx              // 0x00480891    894c2440
                         fld                st(3)                                    // 0x00480895    d9c3
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000       // 0x00480897    c744244400000000
                         fmul               st, st(2)                                // 0x0048089f    d8ca
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x004808a1    d9442420
                         {disp8} fmul       dword ptr [esp + 0x40]                   // 0x004808a5    d84c2440
                         faddp              st(1), st                                // 0x004808a9    dec1
                         {disp8} fadd       dword ptr [esp + 0x44]                   // 0x004808ab    d8442444
                         {disp8} fst        dword ptr [esp + 0x3c]                   // 0x004808af    d954243c
                         fstp               dword ptr [eax]                          // 0x004808b3    d918
                         {disp8} fst        dword ptr [esp + 0x04]                   // 0x004808b5    d9542404
                         {disp8} fstp       dword ptr [eax + 0x04]                   // 0x004808b9    d95804
                         fxch               st(2)                                    // 0x004808bc    d9ca
                         {disp8} fmul       dword ptr [esp + 0x40]                   // 0x004808be    d84c2440
                         fxch               st(1)                                    // 0x004808c2    d9c9
                         fmul               st, st(2)                                // 0x004808c4    d8ca
                         faddp              st(1), st                                // 0x004808c6    dec1
                         {disp8} fadd       dword ptr [esp + 0x44]                   // 0x004808c8    d8442444
                         fxch               st(1)                                    // 0x004808cc    d9c9
                         fstp               st(0)                                    // 0x004808ce    ddd8
                         {disp8} fst        dword ptr [eax + 0x08]                   // 0x004808d0    d95008
                         {disp8} fld        dword ptr [esp + 0x3c]                   // 0x004808d3    d944243c
                         {disp8} fadd       dword ptr [esi + 0x78]                   // 0x004808d7    d84678
                         fstp               dword ptr [eax]                          // 0x004808da    d918
                         {disp8} fld        dword ptr [esp + 0x04]                   // 0x004808dc    d9442404
                         {disp8} fadd       dword ptr [esi + 0x7c]                   // 0x004808e0    d8467c
                         {disp8} fstp       dword ptr [eax + 0x04]                   // 0x004808e3    d95804
                         {disp32} fadd      dword ptr [esi + 0x00000080]             // 0x004808e6    d88680000000
                         pop                esi                                      // 0x004808ec    5e
                         {disp8} fstp       dword ptr [eax + 0x08]                   // 0x004808ed    d95808
                         add                esp, 0x34                                // 0x004808f0    83c434
                         ret                0x000c                                   // 0x004808f3    c20c00
                         nop                                                         // 0x004808f6    90
                         nop                                                         // 0x004808f7    90
                         nop                                                         // 0x004808f8    90
                         nop                                                         // 0x004808f9    90
                         nop                                                         // 0x004808fa    90
                         nop                                                         // 0x004808fb    90
                         nop                                                         // 0x004808fc    90
                         nop                                                         // 0x004808fd    90
                         nop                                                         // 0x004808fe    90
                         nop                                                         // 0x004808ff    90
_jmp_addr_0x00480900:    sub                esp, 0x3c                                // 0x00480900    83ec3c
                         push               esi                                      // 0x00480903    56
                         push               edi                                      // 0x00480904    57
                         {disp8} mov        edi, dword ptr [esp + 0x48]              // 0x00480905    8b7c2448
                         {disp8} lea        eax, dword ptr [esp + 0x08]              // 0x00480909    8d442408
                         push               eax                                      // 0x0048090d    50
                         mov.s              esi, ecx                                 // 0x0048090e    8bf1
                         push               0x3f800000                               // 0x00480910    680000803f
                         mov.s              ecx, edi                                 // 0x00480915    8bcf
                         call               _jmp_addr_0x00480750                     // 0x00480917    e834feffff
                         {disp8} lea        ecx, dword ptr [esp + 0x14]              // 0x0048091c    8d4c2414
                         push               ecx                                      // 0x00480920    51
                         push               0x3f800000                               // 0x00480921    680000803f
                         mov.s              ecx, esi                                 // 0x00480926    8bce
                         call               _jmp_addr_0x00480750                     // 0x00480928    e823feffff
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x0048092d    d9442418
                         {disp8} fcomp      dword ptr [esp + 0x0c]                   // 0x00480931    d85c240c
                         fnstsw             ax                                       // 0x00480935    dfe0
                         test               ah, 0x41                                 // 0x00480937    f6c441
                         {disp8} jne        _jmp_addr_0x0048096c                     // 0x0048093a    7530
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x0048093c    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x00480940    8b442418
                         {disp8} mov        dword ptr [esp + 0x2c], edx              // 0x00480944    8954242c
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00480948    8b54241c
                         {disp8} mov        dword ptr [esp + 0x30], eax              // 0x0048094c    89442430
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00480950    8b442408
                         {disp8} mov        dword ptr [esp + 0x34], edx              // 0x00480954    89542434
                         {disp8} mov        edx, dword ptr [esp + 0x0c]              // 0x00480958    8b54240c
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x0048095c    89442420
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x00480960    8b442410
                         mov.s              ecx, esi                                 // 0x00480964    8bce
                         {disp8} mov        dword ptr [esp + 0x24], edx              // 0x00480966    89542424
                         {disp8} jmp        _jmp_addr_0x0048099a                     // 0x0048096a    eb2e
_jmp_addr_0x0048096c:    {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x0048096c    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00480970    8b44240c
                         {disp8} mov        dword ptr [esp + 0x2c], edx              // 0x00480974    8954242c
                         {disp8} mov        edx, dword ptr [esp + 0x10]              // 0x00480978    8b542410
                         {disp8} mov        dword ptr [esp + 0x30], eax              // 0x0048097c    89442430
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00480980    8b442414
                         {disp8} mov        dword ptr [esp + 0x34], edx              // 0x00480984    89542434
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00480988    8b542418
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x0048098c    89442420
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x00480990    8b44241c
                         mov.s              ecx, edi                                 // 0x00480994    8bcf
                         {disp8} mov        dword ptr [esp + 0x24], edx              // 0x00480996    89542424
_jmp_addr_0x0048099a:    {disp8} lea        edx, dword ptr [esp + 0x38]              // 0x0048099a    8d542438
                         push               edx                                      // 0x0048099e    52
                         push               0x0                                      // 0x0048099f    6a00
                         {disp8} mov        dword ptr [esp + 0x30], eax              // 0x004809a1    89442430
                         call               _jmp_addr_0x00480750                     // 0x004809a5    e8a6fdffff
                         {disp8} fld        dword ptr [esp + 0x3c]                   // 0x004809aa    d944243c
                         {disp8} fcomp      dword ptr [esp + 0x24]                   // 0x004809ae    d85c2424
                         fnstsw             ax                                       // 0x004809b2    dfe0
                         test               ah, 0x41                                 // 0x004809b4    f6c441
                         {disp8} jne        _jmp_addr_0x004809c3                     // 0x004809b7    750a
                         pop                edi                                      // 0x004809b9    5f
                         xor.s              eax, eax                                 // 0x004809ba    33c0
                         pop                esi                                      // 0x004809bc    5e
                         add                esp, 0x3c                                // 0x004809bd    83c43c
                         ret                0x0004                                   // 0x004809c0    c20400
_jmp_addr_0x004809c3:    {disp8} fld        dword ptr [esp + 0x18]                   // 0x004809c3    d9442418
                         {disp8} fcomp      dword ptr [esp + 0x0c]                   // 0x004809c7    d85c240c
                         fnstsw             ax                                       // 0x004809cb    dfe0
                         test               ah, 0x41                                 // 0x004809cd    f6c441
                         {disp8} jne        _jmp_addr_0x004809f7                     // 0x004809d0    7525
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x004809d2    d944240c
                         pop                edi                                      // 0x004809d6    5f
                         {disp8} fsub       dword ptr [esp + 0x38]                   // 0x004809d7    d8642438
                         mov                eax, 0x00000001                          // 0x004809db    b801000000
                         {disp8} fld        dword ptr [esp + 0x2c]                   // 0x004809e0    d944242c
                         {disp8} fsub       dword ptr [esp + 0x38]                   // 0x004809e4    d8642438
                         fdivp              st(1), st                                // 0x004809e8    def9
                         {disp32} fstp      dword ptr [esi + 0x00004980]             // 0x004809ea    d99e80490000
                         pop                esi                                      // 0x004809f0    5e
                         add                esp, 0x3c                                // 0x004809f1    83c43c
                         ret                0x0004                                   // 0x004809f4    c20400
_jmp_addr_0x004809f7:    pop                edi                                      // 0x004809f7    5f
                         {disp32} mov       dword ptr [esi + 0x00004980], 0x3f800000 // 0x004809f8    c786804900000000803f
                         mov                eax, 0x00000001                          // 0x00480a02    b801000000
                         pop                esi                                      // 0x00480a07    5e
                         add                esp, 0x3c                                // 0x00480a08    83c43c
                         ret                0x0004                                   // 0x00480a0b    c20400
                         nop                                                         // 0x00480a0e    90
                         nop                                                         // 0x00480a0f    90
_jmp_addr_0x00480a10:    sub                esp, 0x10                                // 0x00480a10    83ec10
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00480a13    8b442414
                         push               esi                                      // 0x00480a17    56
                         mov.s              esi, ecx                                 // 0x00480a18    8bf1
                         push               eax                                      // 0x00480a1a    50
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x00480a1b    c744240800000000
                         call               _jmp_addr_0x00480900                     // 0x00480a23    e8d8feffff
                         test               eax, eax                                 // 0x00480a28    85c0
                         {disp8} je         _jmp_addr_0x00480a4c                     // 0x00480a2a    7420
                         {disp32} mov       edx, dword ptr [esi + 0x00004980]        // 0x00480a2c    8b9680490000
                         {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x00480a32    8d4c2408
                         push               ecx                                      // 0x00480a36    51
                         push               edx                                      // 0x00480a37    52
                         mov.s              ecx, esi                                 // 0x00480a38    8bce
                         call               _jmp_addr_0x00480750                     // 0x00480a3a    e811fdffff
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x00480a3f    d9442410
                         fchs                                                        // 0x00480a43    d9e0
                         pop                esi                                      // 0x00480a45    5e
                         add                esp, 0x10                                // 0x00480a46    83c410
                         ret                0x0004                                   // 0x00480a49    c20400
_jmp_addr_0x00480a4c:    {disp8} fld        dword ptr [esp + 0x04]                   // 0x00480a4c    d9442404
                         pop                esi                                      // 0x00480a50    5e
                         add                esp, 0x10                                // 0x00480a51    83c410
                         ret                0x0004                                   // 0x00480a54    c20400
                         nop                                                         // 0x00480a57    90
                         nop                                                         // 0x00480a58    90
                         nop                                                         // 0x00480a59    90
                         nop                                                         // 0x00480a5a    90
                         nop                                                         // 0x00480a5b    90
                         nop                                                         // 0x00480a5c    90
                         nop                                                         // 0x00480a5d    90
                         nop                                                         // 0x00480a5e    90
                         nop                                                         // 0x00480a5f    90
_jmp_addr_0x00480a60:    {disp32} mov       eax, dword ptr [ecx + 0x00004834]        // 0x00480a60    8b8134480000
                         test               eax, eax                                 // 0x00480a66    85c0
                         {disp8} je         _jmp_addr_0x00480a8a                     // 0x00480a68    7420
                         {disp32} mov       edx, dword ptr [eax + 0x000012a8]        // 0x00480a6a    8b90a8120000
                         test               edx, edx                                 // 0x00480a70    85d2
                         {disp8} jne        _jmp_addr_0x00480a8a                     // 0x00480a72    7516
                         {disp32} mov       eax, dword ptr [eax + 0x00000160]        // 0x00480a74    8b8060010000
                         {disp8} fld        dword ptr [eax + 0x6c]                   // 0x00480a7a    d9406c
                         {disp32} fdiv      dword ptr [ecx + 0x00000090]             // 0x00480a7d    d8b190000000
                         {disp32} fmul      dword ptr [ecx + 0x00005228]             // 0x00480a83    d88928520000
                         ret                                                         // 0x00480a89    c3
_jmp_addr_0x00480a8a:    {disp32} fld       dword ptr [ecx + 0x00005228]             // 0x00480a8a    d98128520000
                         ret                                                         // 0x00480a90    c3
                         nop                                                         // 0x00480a91    90
                         nop                                                         // 0x00480a92    90
                         nop                                                         // 0x00480a93    90
                         nop                                                         // 0x00480a94    90
                         nop                                                         // 0x00480a95    90
                         nop                                                         // 0x00480a96    90
                         nop                                                         // 0x00480a97    90
                         nop                                                         // 0x00480a98    90
                         nop                                                         // 0x00480a99    90
                         nop                                                         // 0x00480a9a    90
                         nop                                                         // 0x00480a9b    90
                         nop                                                         // 0x00480a9c    90
                         nop                                                         // 0x00480a9d    90
                         nop                                                         // 0x00480a9e    90
                         nop                                                         // 0x00480a9f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00480aa0    8b442404
                         push               eax                                      // 0x00480aa4    50
                         call               _jmp_addr_0x00646950                     // 0x00480aa5    e8a65e1c00
                         add                esp, 0x04                                // 0x00480aaa    83c404
                         neg                eax                                      // 0x00480aad    f7d8
                         sbb.s              eax, eax                                 // 0x00480aaf    1bc0
                         neg                eax                                      // 0x00480ab1    f7d8
                         ret                0x0004                                   // 0x00480ab3    c20400
                         nop                                                         // 0x00480ab6    90
                         nop                                                         // 0x00480ab7    90
                         nop                                                         // 0x00480ab8    90
                         nop                                                         // 0x00480ab9    90
                         nop                                                         // 0x00480aba    90
                         nop                                                         // 0x00480abb    90
                         nop                                                         // 0x00480abc    90
                         nop                                                         // 0x00480abd    90
                         nop                                                         // 0x00480abe    90
                         nop                                                         // 0x00480abf    90
_jmp_addr_0x00480ac0:    push               esi                                      // 0x00480ac0    56
                         push               edi                                      // 0x00480ac1    57
                         push               0x0                                      // 0x00480ac2    6a00
                         mov.s              esi, ecx                                 // 0x00480ac4    8bf1
                         push               0x000000e7                               // 0x00480ac6    68e7000000
                         call               @GetAnim__9MorphableFll@16               // 0x00480acb    e8808b1900
                         test               eax, eax                                 // 0x00480ad0    85c0
                         {disp32} je        _jmp_addr_0x00480bef                     // 0x00480ad2    0f8417010000
                         push               0x0                                      // 0x00480ad8    6a00
                         push               0x000000e6                               // 0x00480ada    68e6000000
                         mov.s              ecx, esi                                 // 0x00480adf    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480ae1    e86a8b1900
                         test               eax, eax                                 // 0x00480ae6    85c0
                         {disp32} je        _jmp_addr_0x00480bef                     // 0x00480ae8    0f8401010000
                         push               0x0                                      // 0x00480aee    6a00
                         push               0x000000e5                               // 0x00480af0    68e5000000
                         mov.s              ecx, esi                                 // 0x00480af5    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480af7    e8548b1900
                         test               eax, eax                                 // 0x00480afc    85c0
                         {disp32} je        _jmp_addr_0x00480bef                     // 0x00480afe    0f84eb000000
                         push               0x0                                      // 0x00480b04    6a00
                         push               0x000000e4                               // 0x00480b06    68e4000000
                         mov.s              ecx, esi                                 // 0x00480b0b    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480b0d    e83e8b1900
                         test               eax, eax                                 // 0x00480b12    85c0
                         {disp32} je        _jmp_addr_0x00480bef                     // 0x00480b14    0f84d5000000
                         {disp32} mov       eax, dword ptr [esi + 0x000051ec]        // 0x00480b1a    8b86ec510000
                         test               eax, eax                                 // 0x00480b20    85c0
                         {disp32} jne       _jmp_addr_0x00480bef                     // 0x00480b22    0f85c7000000
                         mov.s              ecx, esi                                 // 0x00480b28    8bce
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00480b2a    e8a1370000
                         test               eax, eax                                 // 0x00480b2f    85c0
                         {disp32} jne       _jmp_addr_0x00480bef                     // 0x00480b31    0f85b8000000
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00480b37    8b7c240c
                         push               edi                                      // 0x00480b3b    57
                         call               _jmp_addr_0x00646950                     // 0x00480b3c    e80f5e1c00
                         add                esp, 0x04                                // 0x00480b41    83c404
                         test               eax, eax                                 // 0x00480b44    85c0
                         {disp32} je        _jmp_addr_0x00480bef                     // 0x00480b46    0f84a3000000
                         {disp32} fld       dword ptr [eax + 0x00000108]             // 0x00480b4c    d98008010000
                         {disp32} lea       ecx, dword ptr [eax + 0x00000104]        // 0x00480b52    8d8804010000
                         fld                dword ptr [ecx]                          // 0x00480b58    d901
                         fld                st(0)                                    // 0x00480b5a    d9c0
                         fmul               st, st(1)                                // 0x00480b5c    d8c9
                         fld                st(2)                                    // 0x00480b5e    d9c2
                         fmul               st, st(3)                                // 0x00480b60    d8cb
                         faddp              st(1), st                                // 0x00480b62    dec1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00480b64    d81d90a38a00
                         fnstsw             ax                                       // 0x00480b6a    dfe0
                         fstp               st(0)                                    // 0x00480b6c    ddd8
                         test               ah, 0x01                                 // 0x00480b6e    f6c401
                         fstp               st(0)                                    // 0x00480b71    ddd8
                         {disp8} jne        _jmp_addr_0x00480bef                     // 0x00480b73    757a
                         push               ecx                                      // 0x00480b75    51
                         {disp32} mov       dword ptr [esi + 0x000048cc], edi        // 0x00480b76    89becc480000
                         call               _jmp_addr_0x007faa50                     // 0x00480b7c    e8cf9e3700
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]        // 0x00480b81    d805a0368c00
                         fstp               dword ptr [esp]                          // 0x00480b87    d91c24
                         call               _jmp_addr_0x007faaf0                     // 0x00480b8a    e8619f3700
                         {disp8} fst        dword ptr [esp + 0x10]                   // 0x00480b8f    d9542410
                         {disp32} fsub      dword ptr [esi + 0x00000084]             // 0x00480b93    d8a684000000
                         fstp               dword ptr [esp]                          // 0x00480b99    d91c24
                         call               _jmp_addr_0x007faaf0                     // 0x00480b9c    e84f9f3700
                         fabs                                                        // 0x00480ba1    d9e1
                         add                esp, 0x04                                // 0x00480ba3    83c404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ea08]        // 0x00480ba6    d81d087a8c00
                         fnstsw             ax                                       // 0x00480bac    dfe0
                         test               ah, 0x41                                 // 0x00480bae    f6c441
                         {disp8} jne        _jmp_addr_0x00480bcb                     // 0x00480bb1    7518
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00480bb3    8b44240c
                         push               eax                                      // 0x00480bb7    50
                         mov.s              ecx, esi                                 // 0x00480bb8    8bce
                         {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000000 // 0x00480bba    c7868c51000000000000
                         call               _jmp_addr_0x0048b790                     // 0x00480bc4    e8c7ab0000
                         {disp8} jmp        _jmp_addr_0x00480bd5                     // 0x00480bc9    eb0a
_jmp_addr_0x00480bcb:    {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000001 // 0x00480bcb    c7868c51000001000000
_jmp_addr_0x00480bd5:    mov.s              ecx, esi                                 // 0x00480bd5    8bce
                         call               _jmp_addr_0x004ee900                     // 0x00480bd7    e824dd0600
                         push               0x13                                     // 0x00480bdc    6a13
                         mov.s              ecx, esi                                 // 0x00480bde    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00480be0    e8db420000
                         pop                edi                                      // 0x00480be5    5f
                         mov                eax, 0x00000001                          // 0x00480be6    b801000000
                         pop                esi                                      // 0x00480beb    5e
                         ret                0x0004                                   // 0x00480bec    c20400
_jmp_addr_0x00480bef:    pop                edi                                      // 0x00480bef    5f
                         xor.s              eax, eax                                 // 0x00480bf0    33c0
                         pop                esi                                      // 0x00480bf2    5e
                         ret                0x0004                                   // 0x00480bf3    c20400
                         nop                                                         // 0x00480bf6    90
                         nop                                                         // 0x00480bf7    90
                         nop                                                         // 0x00480bf8    90
                         nop                                                         // 0x00480bf9    90
                         nop                                                         // 0x00480bfa    90
                         nop                                                         // 0x00480bfb    90
                         nop                                                         // 0x00480bfc    90
                         nop                                                         // 0x00480bfd    90
                         nop                                                         // 0x00480bfe    90
                         nop                                                         // 0x00480bff    90
_jmp_addr_0x00480c00:    push               esi                                      // 0x00480c00    56
                         push               0x0                                      // 0x00480c01    6a00
                         mov.s              esi, ecx                                 // 0x00480c03    8bf1
                         push               0x75                                     // 0x00480c05    6a75
                         call               @GetAnim__9MorphableFll@16               // 0x00480c07    e8448a1900
                         test               eax, eax                                 // 0x00480c0c    85c0
                         {disp8} jne        _jmp_addr_0x00480c14                     // 0x00480c0e    7504
                         pop                esi                                      // 0x00480c10    5e
                         ret                0x0004                                   // 0x00480c11    c20400
_jmp_addr_0x00480c14:    mov.s              ecx, esi                                 // 0x00480c14    8bce
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00480c16    e8b5360000
                         test               eax, eax                                 // 0x00480c1b    85c0
                         {disp8} je         _jmp_addr_0x00480c25                     // 0x00480c1d    7406
                         xor.s              eax, eax                                 // 0x00480c1f    33c0
                         pop                esi                                      // 0x00480c21    5e
                         ret                0x0004                                   // 0x00480c22    c20400
_jmp_addr_0x00480c25:    {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00480c25    8b442408
                         mov.s              ecx, esi                                 // 0x00480c29    8bce
                         {disp32} mov       dword ptr [esi + 0x000048cc], eax        // 0x00480c2b    8986cc480000
                         call               _jmp_addr_0x004eea90                     // 0x00480c31    e85ade0600
                         push               0x12                                     // 0x00480c36    6a12
                         mov.s              ecx, esi                                 // 0x00480c38    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x00480c3a    e881420000
                         mov                eax, 0x00000001                          // 0x00480c3f    b801000000
                         pop                esi                                      // 0x00480c44    5e
                         ret                0x0004                                   // 0x00480c45    c20400
                         nop                                                         // 0x00480c48    90
                         nop                                                         // 0x00480c49    90
                         nop                                                         // 0x00480c4a    90
                         nop                                                         // 0x00480c4b    90
                         nop                                                         // 0x00480c4c    90
                         nop                                                         // 0x00480c4d    90
                         nop                                                         // 0x00480c4e    90
                         nop                                                         // 0x00480c4f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00480c50    8b442404
                         {disp32} mov       dword ptr [ecx + 0x00005218], eax        // 0x00480c54    898118520000
                         ret                0x0004                                   // 0x00480c5a    c20400
                         nop                                                         // 0x00480c5d    90
                         nop                                                         // 0x00480c5e    90
                         nop                                                         // 0x00480c5f    90
_jmp_addr_0x00480c60:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00480c60    8b442404
                         {disp32} mov       dword ptr [ecx + 0x000049b0], eax        // 0x00480c64    8981b0490000
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00480c6a    8b442408
                         test               eax, eax                                 // 0x00480c6e    85c0
                         {disp8} jne        _jmp_addr_0x00480c77                     // 0x00480c70    7505
                         mov                eax, 0x0036ee80                          // 0x00480c72    b880ee3600
_jmp_addr_0x00480c77:    {disp32} mov       dword ptr [ecx + 0x000049b4], eax        // 0x00480c77    8981b4490000
                         mov                eax, 0x00000001                          // 0x00480c7d    b801000000
                         ret                0x0008                                   // 0x00480c82    c20800
                         nop                                                         // 0x00480c85    90
                         nop                                                         // 0x00480c86    90
                         nop                                                         // 0x00480c87    90
                         nop                                                         // 0x00480c88    90
                         nop                                                         // 0x00480c89    90
                         nop                                                         // 0x00480c8a    90
                         nop                                                         // 0x00480c8b    90
                         nop                                                         // 0x00480c8c    90
                         nop                                                         // 0x00480c8d    90
                         nop                                                         // 0x00480c8e    90
                         nop                                                         // 0x00480c8f    90
_jmp_addr_0x00480c90:    sub                esp, 0x0c                                // 0x00480c90    83ec0c
                         push               esi                                      // 0x00480c93    56
                         mov.s              esi, ecx                                 // 0x00480c94    8bf1
                         call               _jmp_addr_0x00482d40                     // 0x00480c96    e8a5200000
                         test               eax, eax                                 // 0x00480c9b    85c0
                         {disp8} jne        _jmp_addr_0x00480caa                     // 0x00480c9d    750b
                         {disp32} fld       dword ptr [esi + 0x00000084]             // 0x00480c9f    d98684000000
                         pop                esi                                      // 0x00480ca5    5e
                         add                esp, 0x0c                                // 0x00480ca6    83c40c
                         ret                                                         // 0x00480ca9    c3
_jmp_addr_0x00480caa:    {disp32} fld       dword ptr [esi + 0x000048c0]             // 0x00480caa    d986c0480000
                         {disp8} fcomp      dword ptr [esi + 0x78]                   // 0x00480cb0    d85e78
                         fnstsw             ax                                       // 0x00480cb3    dfe0
                         test               ah, 0x40                                 // 0x00480cb5    f6c440
                         {disp8} je         _jmp_addr_0x00480ce8                     // 0x00480cb8    742e
                         {disp32} fld       dword ptr [esi + 0x000048c4]             // 0x00480cba    d986c4480000
                         {disp8} fcomp      dword ptr [esi + 0x7c]                   // 0x00480cc0    d85e7c
                         fnstsw             ax                                       // 0x00480cc3    dfe0
                         test               ah, 0x40                                 // 0x00480cc5    f6c440
                         {disp8} je         _jmp_addr_0x00480ce8                     // 0x00480cc8    741e
                         {disp32} fld       dword ptr [esi + 0x000048c8]             // 0x00480cca    d986c8480000
                         {disp32} fcomp     dword ptr [esi + 0x00000080]             // 0x00480cd0    d89e80000000
                         fnstsw             ax                                       // 0x00480cd6    dfe0
                         test               ah, 0x40                                 // 0x00480cd8    f6c440
                         {disp8} je         _jmp_addr_0x00480ce8                     // 0x00480cdb    740b
                         {disp32} fld       dword ptr [esi + 0x00000084]             // 0x00480cdd    d98684000000
                         pop                esi                                      // 0x00480ce3    5e
                         add                esp, 0x0c                                // 0x00480ce4    83c40c
                         ret                                                         // 0x00480ce7    c3
_jmp_addr_0x00480ce8:    {disp32} fld       dword ptr [esi + 0x000048c0]             // 0x00480ce8    d986c0480000
                         {disp8} lea        eax, dword ptr [esp + 0x04]              // 0x00480cee    8d442404
                         {disp8} fsub       dword ptr [esi + 0x78]                   // 0x00480cf2    d86678
                         push               eax                                      // 0x00480cf5    50
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x00480cf6    d95c2408
                         {disp32} fld       dword ptr [esi + 0x000048c4]             // 0x00480cfa    d986c4480000
                         {disp8} fsub       dword ptr [esi + 0x7c]                   // 0x00480d00    d8667c
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00480d03    d95c240c
                         {disp32} fld       dword ptr [esi + 0x000048c8]             // 0x00480d07    d986c8480000
                         {disp32} fsub      dword ptr [esi + 0x00000080]             // 0x00480d0d    d8a680000000
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00480d13    d95c2410
                         call               _jmp_addr_0x007faa50                     // 0x00480d17    e8349d3700
                         add                esp, 0x04                                // 0x00480d1c    83c404
                         pop                esi                                      // 0x00480d1f    5e
                         add                esp, 0x0c                                // 0x00480d20    83c40c
                         ret                                                         // 0x00480d23    c3
                         nop                                                         // 0x00480d24    90
                         nop                                                         // 0x00480d25    90
                         nop                                                         // 0x00480d26    90
                         nop                                                         // 0x00480d27    90
                         nop                                                         // 0x00480d28    90
                         nop                                                         // 0x00480d29    90
                         nop                                                         // 0x00480d2a    90
                         nop                                                         // 0x00480d2b    90
                         nop                                                         // 0x00480d2c    90
                         nop                                                         // 0x00480d2d    90
                         nop                                                         // 0x00480d2e    90
                         nop                                                         // 0x00480d2f    90
_jmp_addr_0x00480d30:    {disp32} mov       edx, dword ptr [ecx + 0x000049ac]        // 0x00480d30    8b91ac490000
                         xor.s              eax, eax                                 // 0x00480d36    33c0
                         test               edx, edx                                 // 0x00480d38    85d2
                         setne              al                                       // 0x00480d3a    0f95c0
                         ret                                                         // 0x00480d3d    c3
                         nop                                                         // 0x00480d3e    90
                         nop                                                         // 0x00480d3f    90
_jmp_addr_0x00480d40:    push               esi                                      // 0x00480d40    56
                         mov.s              esi, ecx                                 // 0x00480d41    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000049b4]        // 0x00480d43    8b86b4490000
                         test               eax, eax                                 // 0x00480d49    85c0
                         {disp8} jle        _jmp_addr_0x00480d64                     // 0x00480d4b    7e17
                         sub                eax, dword ptr [esi + 0x000048b4]        // 0x00480d4d    2b86b4480000
                         mov                ecx, 0x00000000                          // 0x00480d53    b900000000
                         sets               cl                                       // 0x00480d58    0f98c1
                         dec                ecx                                      // 0x00480d5b    49
                         and.s              eax, ecx                                 // 0x00480d5c    23c1
                         {disp32} mov       dword ptr [esi + 0x000049b4], eax        // 0x00480d5e    8986b4490000
_jmp_addr_0x00480d64:    {disp32} mov       eax, dword ptr [esi + 0x000049b4]        // 0x00480d64    8b86b4490000
                         test               eax, eax                                 // 0x00480d6a    85c0
                         {disp8} jne        _jmp_addr_0x00480d78                     // 0x00480d6c    750a
                         {disp32} mov       dword ptr [esi + 0x000049b0], 0x00000000 // 0x00480d6e    c786b049000000000000
_jmp_addr_0x00480d78:    {disp32} mov       edx, dword ptr [esi + 0x000049b0]        // 0x00480d78    8b96b0490000
                         {disp32} mov       eax, dword ptr [esi + 0x000049ac]        // 0x00480d7e    8b86ac490000
                         cmp.s              edx, eax                                 // 0x00480d84    3bd0
                         {disp8} je         _jmp_addr_0x00480dce                     // 0x00480d86    7446
                         test               eax, eax                                 // 0x00480d88    85c0
                         {disp8} je         _jmp_addr_0x00480dbc                     // 0x00480d8a    7430
                         test               edx, edx                                 // 0x00480d8c    85d2
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b4]        // 0x00480d8e    8b8eb4480000
                         {disp8} jne        _jmp_addr_0x00480d99                     // 0x00480d94    7503
                         sar                ecx, 2                                   // 0x00480d96    c1f902
_jmp_addr_0x00480d99:    {disp32} mov       eax, dword ptr [esi + 0x000049b8]        // 0x00480d99    8b86b8490000
                         sub.s              eax, ecx                                 // 0x00480d9f    2bc1
                         mov                ecx, 0x00000000                          // 0x00480da1    b900000000
                         sets               cl                                       // 0x00480da6    0f98c1
                         dec                ecx                                      // 0x00480da9    49
                         and.s              eax, ecx                                 // 0x00480daa    23c1
                         test               eax, eax                                 // 0x00480dac    85c0
                         {disp32} mov       dword ptr [esi + 0x000049b8], eax        // 0x00480dae    8986b8490000
                         {disp8} jne        _jmp_addr_0x00480dbc                     // 0x00480db4    7506
                         {disp32} mov       dword ptr [esi + 0x000049ac], eax        // 0x00480db6    8986ac490000
_jmp_addr_0x00480dbc:    {disp32} mov       eax, dword ptr [esi + 0x000049ac]        // 0x00480dbc    8b86ac490000
                         test               eax, eax                                 // 0x00480dc2    85c0
                         {disp8} jne        _jmp_addr_0x00480e02                     // 0x00480dc4    753c
                         {disp32} mov       dword ptr [esi + 0x000049ac], edx        // 0x00480dc6    8996ac490000
                         pop                esi                                      // 0x00480dcc    5e
                         ret                                                         // 0x00480dcd    c3
_jmp_addr_0x00480dce:    test               eax, eax                                 // 0x00480dce    85c0
                         {disp8} je         _jmp_addr_0x00480e02                     // 0x00480dd0    7430
                         push               0x0                                      // 0x00480dd2    6a00
                         push               eax                                      // 0x00480dd4    50
                         mov.s              ecx, esi                                 // 0x00480dd5    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480dd7    e874881900
                         test               eax, eax                                 // 0x00480ddc    85c0
                         {disp8} je         _jmp_addr_0x00480e02                     // 0x00480dde    7422
                         {disp32} mov       edx, dword ptr [esi + 0x000048b4]        // 0x00480de0    8b96b4480000
                         {disp32} mov       eax, dword ptr [esi + 0x000049b8]        // 0x00480de6    8b86b8490000
                         {disp32} mov       ecx, dword ptr [esi + 0x000049ac]        // 0x00480dec    8b8eac490000
                         push               edx                                      // 0x00480df2    52
                         push               eax                                      // 0x00480df3    50
                         push               ecx                                      // 0x00480df4    51
                         mov.s              ecx, esi                                 // 0x00480df5    8bce
                         call               _jmp_addr_0x00617a80                     // 0x00480df7    e8846c1900
                         {disp32} mov       dword ptr [esi + 0x000049b8], eax        // 0x00480dfc    8986b8490000
_jmp_addr_0x00480e02:    pop                esi                                      // 0x00480e02    5e
                         ret                                                         // 0x00480e03    c3
                         nop                                                         // 0x00480e04    90
                         nop                                                         // 0x00480e05    90
                         nop                                                         // 0x00480e06    90
                         nop                                                         // 0x00480e07    90
                         nop                                                         // 0x00480e08    90
                         nop                                                         // 0x00480e09    90
                         nop                                                         // 0x00480e0a    90
                         nop                                                         // 0x00480e0b    90
                         nop                                                         // 0x00480e0c    90
                         nop                                                         // 0x00480e0d    90
                         nop                                                         // 0x00480e0e    90
                         nop                                                         // 0x00480e0f    90
_jmp_addr_0x00480e10:    sub                esp, 0x0c                                // 0x00480e10    83ec0c
                         push               ebp                                      // 0x00480e13    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]              // 0x00480e14    8b6c2418
                         cmp                ebp, 0x0e                                // 0x00480e18    83fd0e
                         push               esi                                      // 0x00480e1b    56
                         mov.s              esi, ecx                                 // 0x00480e1c    8bf1
                         push               0x0                                      // 0x00480e1e    6a00
                         {disp8} jne        _jmp_addr_0x00480e5f                     // 0x00480e20    753d
                         push               0x54                                     // 0x00480e22    6a54
                         call               @GetAnim__9MorphableFll@16               // 0x00480e24    e827881900
                         test               eax, eax                                 // 0x00480e29    85c0
                         {disp8} je         _jmp_addr_0x00480e56                     // 0x00480e2b    7429
                         push               0x0                                      // 0x00480e2d    6a00
                         push               0x53                                     // 0x00480e2f    6a53
                         mov.s              ecx, esi                                 // 0x00480e31    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480e33    e818881900
                         test               eax, eax                                 // 0x00480e38    85c0
                         {disp8} je         _jmp_addr_0x00480e56                     // 0x00480e3a    741a
                         push               0x0                                      // 0x00480e3c    6a00
                         push               0x52                                     // 0x00480e3e    6a52
                         mov.s              ecx, esi                                 // 0x00480e40    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480e42    e809881900
                         test               eax, eax                                 // 0x00480e47    85c0
                         {disp8} je         _jmp_addr_0x00480e56                     // 0x00480e49    740b
                         push               0x0                                      // 0x00480e4b    6a00
                         push               0x51                                     // 0x00480e4d    6a51
                         mov.s              ecx, esi                                 // 0x00480e4f    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480e51    e8fa871900
_jmp_addr_0x00480e56:    mov.s              ecx, esi                                 // 0x00480e56    8bce
                         call               _jmp_addr_0x004ee130                     // 0x00480e58    e8d3d20600
                         {disp8} jmp        _jmp_addr_0x00480e9c                     // 0x00480e5d    eb3d
_jmp_addr_0x00480e5f:    push               0x74                                     // 0x00480e5f    6a74
                         mov.s              ecx, esi                                 // 0x00480e61    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480e63    e8e8871900
                         test               eax, eax                                 // 0x00480e68    85c0
                         {disp8} je         _jmp_addr_0x00480e95                     // 0x00480e6a    7429
                         push               0x0                                      // 0x00480e6c    6a00
                         push               0x73                                     // 0x00480e6e    6a73
                         mov.s              ecx, esi                                 // 0x00480e70    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480e72    e8d9871900
                         test               eax, eax                                 // 0x00480e77    85c0
                         {disp8} je         _jmp_addr_0x00480e95                     // 0x00480e79    741a
                         push               0x0                                      // 0x00480e7b    6a00
                         push               0x72                                     // 0x00480e7d    6a72
                         mov.s              ecx, esi                                 // 0x00480e7f    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480e81    e8ca871900
                         test               eax, eax                                 // 0x00480e86    85c0
                         {disp8} je         _jmp_addr_0x00480e95                     // 0x00480e88    740b
                         push               0x0                                      // 0x00480e8a    6a00
                         push               0x71                                     // 0x00480e8c    6a71
                         mov.s              ecx, esi                                 // 0x00480e8e    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480e90    e8bb871900
_jmp_addr_0x00480e95:    mov.s              ecx, esi                                 // 0x00480e95    8bce
                         call               _jmp_addr_0x004ee530                     // 0x00480e97    e894d60600
_jmp_addr_0x00480e9c:    mov.s              ecx, esi                                 // 0x00480e9c    8bce
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00480e9e    e82d340000
                         test               eax, eax                                 // 0x00480ea3    85c0
                         {disp32} jne       _jmp_addr_0x00480fb1                     // 0x00480ea5    0f8506010000
                         cmp                ebp, 0x0e                                // 0x00480eab    83fd0e
                         {disp8} jne        _jmp_addr_0x00480ebe                     // 0x00480eae    750e
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]        // 0x00480eb0    8b86d0480000
                         test               eax, eax                                 // 0x00480eb6    85c0
                         {disp32} jne       _jmp_addr_0x00480fb1                     // 0x00480eb8    0f85f3000000
_jmp_addr_0x00480ebe:    push               ebx                                      // 0x00480ebe    53
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]              // 0x00480ebf    8b5c241c
                         push               edi                                      // 0x00480ec3    57
                         {disp8} lea        edi, dword ptr [ebx + 0x14]              // 0x00480ec4    8d7b14
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000 // 0x00480ec7    c786d047000000000000
                         {disp8} mov        eax, dword ptr [edi + 0x08]              // 0x00480ed1    8b4708
                         mov.s              ecx, edi                                 // 0x00480ed4    8bcf
                         {disp8} mov        dword ptr [esp + 0x24], eax              // 0x00480ed6    89442424
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x00480eda    e8b1213800
                         {disp8} fadd       dword ptr [esp + 0x24]                   // 0x00480edf    d8442424
                         push               0x0                                      // 0x00480ee3    6a00
                         push               0x009c8de8                               // 0x00480ee5    68e88d9c00
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00480eea    d95c241c
                         push               0x009c7f50                               // 0x00480eee    68507f9c00
                         fild               dword ptr [edi]                          // 0x00480ef3    db07
                         push               0x0                                      // 0x00480ef5    6a00
                         push               ebx                                      // 0x00480ef7    53
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x00480ef8    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x00480efe    d95c2424
                         {disp8} fild       dword ptr [edi + 0x04]                   // 0x00480f02    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x00480f05    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                   // 0x00480f0b    d95c242c
                         call               ___RTDynamicCast                         // 0x00480f0f    e8054b3400
                         mov.s              edi, eax                                 // 0x00480f14    8bf8
                         add                esp, 0x14                                // 0x00480f16    83c414
                         test               edi, edi                                 // 0x00480f19    85ff
                         {disp8} je         _jmp_addr_0x00480f6c                     // 0x00480f1b    744f
                         mov                edx, dword ptr [edi]                     // 0x00480f1d    8b17
                         mov.s              ecx, edi                                 // 0x00480f1f    8bcf
                         call               dword ptr [edx + 0x174]                  // 0x00480f21    ff9274010000
                         test               eax, eax                                 // 0x00480f27    85c0
                         {disp8} je         _jmp_addr_0x00480f6c                     // 0x00480f29    7441
                         cmp                ebp, 0x0e                                // 0x00480f2b    83fd0e
                         {disp8} jne        _jmp_addr_0x00480f3c                     // 0x00480f2e    750c
                         {disp32} mov       eax, dword ptr [esi + 0x00004a34]        // 0x00480f30    8b86344a0000
                         {disp8} mov        dword ptr [esp + 0x24], eax              // 0x00480f36    89442424
                         {disp8} jmp        _jmp_addr_0x00480f46                     // 0x00480f3a    eb0a
_jmp_addr_0x00480f3c:    {disp32} mov       ecx, dword ptr [esi + 0x00004a84]        // 0x00480f3c    8b8e844a0000
                         {disp8} mov        dword ptr [esp + 0x24], ecx              // 0x00480f42    894c2424
_jmp_addr_0x00480f46:    {disp32} fld       dword ptr [esi + 0x00000090]             // 0x00480f46    d98690000000
                         {disp8} lea        edx, dword ptr [esp + 0x10]              // 0x00480f4c    8d542410
                         fadd.s             st(0), st(0)                             // 0x00480f50    dcc0
                         push               edx                                      // 0x00480f52    52
                         push               ecx                                      // 0x00480f53    51
                         fsqrt                                                       // 0x00480f54    d9fa
                         {disp32} fmul      qword ptr [rdata_bytes + 0x26120]        // 0x00480f56    dc0d20f18c00
                         {disp8} fimul      dword ptr [esp + 0x2c]                   // 0x00480f5c    da4c242c
                         fstp               dword ptr [esp]                          // 0x00480f60    d91c24
                         push               edi                                      // 0x00480f63    57
                         call               _jmp_addr_0x0047f3a0                     // 0x00480f64    e837e4ffff
                         add                esp, 0x0c                                // 0x00480f69    83c40c
_jmp_addr_0x00480f6c:    {disp8} lea        eax, dword ptr [esp + 0x20]              // 0x00480f6c    8d442420
                         push               eax                                      // 0x00480f70    50
                         push               ebp                                      // 0x00480f71    55
                         {disp8} lea        ecx, dword ptr [esp + 0x18]              // 0x00480f72    8d4c2418
                         push               ecx                                      // 0x00480f76    51
                         mov.s              ecx, esi                                 // 0x00480f77    8bce
                         call               _jmp_addr_0x00486160                     // 0x00480f79    e8e2510000
                         test               eax, eax                                 // 0x00480f7e    85c0
                         {disp32} mov       dword ptr [esi + 0x0000518c], eax        // 0x00480f80    89868c510000
                         {disp8} jne        _jmp_addr_0x00480f94                     // 0x00480f86    750c
                         {disp8} mov        edx, dword ptr [esp + 0x20]              // 0x00480f88    8b542420
                         push               edx                                      // 0x00480f8c    52
                         mov.s              ecx, esi                                 // 0x00480f8d    8bce
                         call               _jmp_addr_0x0048b790                     // 0x00480f8f    e8fca70000
_jmp_addr_0x00480f94:    push               ebp                                      // 0x00480f94    55
                         mov.s              ecx, esi                                 // 0x00480f95    8bce
                         {disp32} mov       dword ptr [esi + 0x000048cc], ebx        // 0x00480f97    899ecc480000
                         call               _jmp_addr_0x00484ec0                     // 0x00480f9d    e81e3f0000
                         pop                edi                                      // 0x00480fa2    5f
                         pop                ebx                                      // 0x00480fa3    5b
                         pop                esi                                      // 0x00480fa4    5e
                         mov                eax, 0x00000001                          // 0x00480fa5    b801000000
                         pop                ebp                                      // 0x00480faa    5d
                         add                esp, 0x0c                                // 0x00480fab    83c40c
                         ret                0x0008                                   // 0x00480fae    c20800
_jmp_addr_0x00480fb1:    pop                esi                                      // 0x00480fb1    5e
                         xor.s              eax, eax                                 // 0x00480fb2    33c0
                         pop                ebp                                      // 0x00480fb4    5d
                         add                esp, 0x0c                                // 0x00480fb5    83c40c
                         ret                0x0008                                   // 0x00480fb8    c20800
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                     // 0x00480fbb    e8b908f8ff
_jmp_addr_0x00480fc0:    push               esi                                      // 0x00480fc0    56
                         mov.s              esi, ecx                                 // 0x00480fc1    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00480fc3    e808330000
                         test               eax, eax                                 // 0x00480fc8    85c0
                         {disp8} jne        _jmp_addr_0x00481029                     // 0x00480fca    755d
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]        // 0x00480fcc    8b86d0480000
                         test               eax, eax                                 // 0x00480fd2    85c0
                         {disp8} jne        _jmp_addr_0x00481029                     // 0x00480fd4    7553
                         mov.s              ecx, esi                                 // 0x00480fd6    8bce
                         call               _jmp_addr_0x004edff0                     // 0x00480fd8    e813d00600
                         push               0x0                                      // 0x00480fdd    6a00
                         push               0x56                                     // 0x00480fdf    6a56
                         mov.s              ecx, esi                                 // 0x00480fe1    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00480fe3    e868861900
                         test               eax, eax                                 // 0x00480fe8    85c0
                         {disp8} je         _jmp_addr_0x00481029                     // 0x00480fea    743d
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00480fec    8b442408
                         test               eax, eax                                 // 0x00480ff0    85c0
                         {disp8} je         _jmp_addr_0x00481029                     // 0x00480ff2    7435
                         {disp32} mov       ecx, dword ptr [esi + 0x00005794]        // 0x00480ff4    8b8e94570000
                         {disp32} mov       dword ptr [esi + 0x000048cc], eax        // 0x00480ffa    8986cc480000
                         xor.s              eax, eax                                 // 0x00481000    33c0
                         test               ecx, ecx                                 // 0x00481002    85c9
                         sete               al                                       // 0x00481004    0f94c0
                         push               0xf                                      // 0x00481007    6a0f
                         mov.s              ecx, esi                                 // 0x00481009    8bce
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000 // 0x0048100b    c786d047000000000000
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax        // 0x00481015    89862c520000
                         call               _jmp_addr_0x00484ec0                     // 0x0048101b    e8a03e0000
                         mov                eax, 0x00000001                          // 0x00481020    b801000000
                         pop                esi                                      // 0x00481025    5e
                         ret                0x0004                                   // 0x00481026    c20400
_jmp_addr_0x00481029:    xor.s              eax, eax                                 // 0x00481029    33c0
                         pop                esi                                      // 0x0048102b    5e
                         ret                0x0004                                   // 0x0048102c    c20400
                         nop                                                         // 0x0048102f    90
_jmp_addr_0x00481030:    {disp32} mov       edx, dword ptr [ecx + 0x00004994]        // 0x00481030    8b9194490000
                         xor.s              eax, eax                                 // 0x00481036    33c0
                         cmp                edx, 0x0f                                // 0x00481038    83fa0f
                         sete               al                                       // 0x0048103b    0f94c0
                         ret                                                         // 0x0048103e    c3
                         nop                                                         // 0x0048103f    90
_jmp_addr_0x00481040:    push               ebx                                      // 0x00481040    53
                         push               ebp                                      // 0x00481041    55
                         push               esi                                      // 0x00481042    56
                         mov.s              esi, ecx                                 // 0x00481043    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x00481045    8b8684510000
                         mov                ecx, dword ptr [eax]                     // 0x0048104b    8b08
                         push               edi                                      // 0x0048104d    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]              // 0x0048104e    8b7c2414
                         push               ecx                                      // 0x00481052    51
                         mov.s              ecx, edi                                 // 0x00481053    8bcf
                         call               _jmp_addr_0x007120e0                     // 0x00481055    e886102900
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x0048105a    8b8684510000
                         mov                ecx, dword ptr [eax]                     // 0x00481060    8b08
                         xor.s              ebx, ebx                                 // 0x00481062    33db
                         test               ecx, ecx                                 // 0x00481064    85c9
                         {disp8} jbe        _jmp_addr_0x00481088                     // 0x00481066    7620
                         mov                ebp, 0x00000008                          // 0x00481068    bd08000000
_jmp_addr_0x0048106d:    mov                edx, dword ptr [eax + ebp * 0x1]         // 0x0048106d    8b1428
                         push               edx                                      // 0x00481070    52
                         mov.s              ecx, edi                                 // 0x00481071    8bcf
                         call               _jmp_addr_0x007120e0                     // 0x00481073    e868102900
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x00481078    8b8684510000
                         mov                ecx, dword ptr [eax]                     // 0x0048107e    8b08
                         inc                ebx                                      // 0x00481080    43
                         add                ebp, 0x04                                // 0x00481081    83c504
                         cmp.s              ebx, ecx                                 // 0x00481084    3bd9
                         .byte              0x72, 0xe5// {disp8} jb _jmp_addr_0x0048106d // 0x00481086    72e5
_jmp_addr_0x00481088:    {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x00481088    8b8684510000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]              // 0x0048108e    8b4804
                         push               ecx                                      // 0x00481091    51
                         mov.s              ecx, edi                                 // 0x00481092    8bcf
                         call               _jmp_addr_0x007120e0                     // 0x00481094    e847102900
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x00481099    8b8684510000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]              // 0x0048109f    8b4804
                         xor.s              ebx, ebx                                 // 0x004810a2    33db
                         test               ecx, ecx                                 // 0x004810a4    85c9
                         {disp8} jbe        _jmp_addr_0x004810c9                     // 0x004810a6    7621
                         mov                ebp, 0x00001008                          // 0x004810a8    bd08100000
_jmp_addr_0x004810ad:    mov                edx, dword ptr [eax + ebp * 0x1]         // 0x004810ad    8b1428
                         push               edx                                      // 0x004810b0    52
                         mov.s              ecx, edi                                 // 0x004810b1    8bcf
                         call               _jmp_addr_0x007120e0                     // 0x004810b3    e828102900
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x004810b8    8b8684510000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]              // 0x004810be    8b4804
                         inc                ebx                                      // 0x004810c1    43
                         add                ebp, 0x04                                // 0x004810c2    83c504
                         cmp.s              ebx, ecx                                 // 0x004810c5    3bd9
                         .byte              0x72, 0xe4// {disp8} jb _jmp_addr_0x004810ad // 0x004810c7    72e4
_jmp_addr_0x004810c9:    pop                edi                                      // 0x004810c9    5f
                         pop                esi                                      // 0x004810ca    5e
                         pop                ebp                                      // 0x004810cb    5d
                         pop                ebx                                      // 0x004810cc    5b
                         ret                0x0004                                   // 0x004810cd    c20400
_jmp_addr_0x004810d0:    push               ebx                                      // 0x004810d0    53
                         push               ebp                                      // 0x004810d1    55
                         push               esi                                      // 0x004810d2    56
                         mov.s              esi, ecx                                 // 0x004810d3    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x004810d5    8b8684510000
                         push               edi                                      // 0x004810db    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]              // 0x004810dc    8b7c2414
                         push               eax                                      // 0x004810e0    50
                         mov.s              ecx, edi                                 // 0x004810e1    8bcf
                         call               _jmp_addr_0x00712330                     // 0x004810e3    e848122900
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x004810e8    8b8684510000
                         mov                ecx, dword ptr [eax]                     // 0x004810ee    8b08
                         xor.s              ebx, ebx                                 // 0x004810f0    33db
                         test               ecx, ecx                                 // 0x004810f2    85c9
                         {disp8} jbe        _jmp_addr_0x00481116                     // 0x004810f4    7620
                         mov                ebp, 0x00000008                          // 0x004810f6    bd08000000
_jmp_addr_0x004810fb:    lea                ecx, dword ptr [eax + ebp * 0x1]         // 0x004810fb    8d0c28
                         push               ecx                                      // 0x004810fe    51
                         mov.s              ecx, edi                                 // 0x004810ff    8bcf
                         call               _jmp_addr_0x00712330                     // 0x00481101    e82a122900
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x00481106    8b8684510000
                         mov                ecx, dword ptr [eax]                     // 0x0048110c    8b08
                         inc                ebx                                      // 0x0048110e    43
                         add                ebp, 0x04                                // 0x0048110f    83c504
                         cmp.s              ebx, ecx                                 // 0x00481112    3bd9
                         .byte              0x72, 0xe5// {disp8} jb _jmp_addr_0x004810fb // 0x00481114    72e5
_jmp_addr_0x00481116:    {disp32} mov       edx, dword ptr [esi + 0x00005184]        // 0x00481116    8b9684510000
                         add                edx, 0x04                                // 0x0048111c    83c204
                         push               edx                                      // 0x0048111f    52
                         mov.s              ecx, edi                                 // 0x00481120    8bcf
                         call               _jmp_addr_0x00712330                     // 0x00481122    e809122900
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x00481127    8b8684510000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]              // 0x0048112d    8b4804
                         xor.s              ebx, ebx                                 // 0x00481130    33db
                         test               ecx, ecx                                 // 0x00481132    85c9
                         {disp8} jbe        _jmp_addr_0x00481156                     // 0x00481134    7620
                         mov                ebp, 0x00001008                          // 0x00481136    bd08100000
_jmp_addr_0x0048113b:    add.s              eax, ebp                                 // 0x0048113b    03c5
                         push               eax                                      // 0x0048113d    50
                         mov.s              ecx, edi                                 // 0x0048113e    8bcf
                         call               _jmp_addr_0x00712330                     // 0x00481140    e8eb112900
                         {disp32} mov       eax, dword ptr [esi + 0x00005184]        // 0x00481145    8b8684510000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]              // 0x0048114b    8b4804
                         inc                ebx                                      // 0x0048114e    43
                         add                ebp, 0x04                                // 0x0048114f    83c504
                         cmp.s              ebx, ecx                                 // 0x00481152    3bd9
                         .byte              0x72, 0xe5// {disp8} jb _jmp_addr_0x0048113b // 0x00481154    72e5
_jmp_addr_0x00481156:    pop                edi                                      // 0x00481156    5f
                         pop                esi                                      // 0x00481157    5e
                         pop                ebp                                      // 0x00481158    5d
                         pop                ebx                                      // 0x00481159    5b
                         ret                0x0004                                   // 0x0048115a    c20400
                         nop                                                         // 0x0048115d    90
                         nop                                                         // 0x0048115e    90
                         nop                                                         // 0x0048115f    90
_jmp_addr_0x00481160:    push               esi                                      // 0x00481160    56
                         mov.s              esi, ecx                                 // 0x00481161    8bf1
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00481163    e868310000
                         test               eax, eax                                 // 0x00481168    85c0
                         {disp8} jne        _jmp_addr_0x0048118a                     // 0x0048116a    751e
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x0048116c    8b442408
                         push               eax                                      // 0x00481170    50
                         mov.s              ecx, esi                                 // 0x00481171    8bce
                         call               _jmp_addr_0x0048b790                     // 0x00481173    e818a60000
                         push               0x23                                     // 0x00481178    6a23
                         mov.s              ecx, esi                                 // 0x0048117a    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x0048117c    e83f3d0000
                         mov                eax, 0x00000001                          // 0x00481181    b801000000
                         pop                esi                                      // 0x00481186    5e
                         ret                0x0004                                   // 0x00481187    c20400
_jmp_addr_0x0048118a:    xor.s              eax, eax                                 // 0x0048118a    33c0
                         pop                esi                                      // 0x0048118c    5e
                         ret                0x0004                                   // 0x0048118d    c20400
_jmp_addr_0x00481190:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00481190    d90598a38a00
                         ret                0x0004                                   // 0x00481196    c20400
                         nop                                                         // 0x00481199    90
                         nop                                                         // 0x0048119a    90
                         nop                                                         // 0x0048119b    90
                         nop                                                         // 0x0048119c    90
                         nop                                                         // 0x0048119d    90
                         nop                                                         // 0x0048119e    90
                         nop                                                         // 0x0048119f    90
_jmp_addr_0x004811a0:    sub                esp, 0x0c                                // 0x004811a0    83ec0c
                         push               esi                                      // 0x004811a3    56
                         mov.s              esi, ecx                                 // 0x004811a4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]        // 0x004811a6    8b86d0480000
                         test               eax, eax                                 // 0x004811ac    85c0
                         {disp8} jne        _jmp_addr_0x004811b9                     // 0x004811ae    7509
                         xor.s              eax, eax                                 // 0x004811b0    33c0
                         pop                esi                                      // 0x004811b2    5e
                         add                esp, 0x0c                                // 0x004811b3    83c40c
                         ret                0x0008                                   // 0x004811b6    c20800
_jmp_addr_0x004811b9:    mov.s              ecx, esi                                 // 0x004811b9    8bce
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x004811bb    e810310000
                         test               eax, eax                                 // 0x004811c0    85c0
                         {disp8} je         _jmp_addr_0x004811cd                     // 0x004811c2    7409
                         xor.s              eax, eax                                 // 0x004811c4    33c0
                         pop                esi                                      // 0x004811c6    5e
                         add                esp, 0x0c                                // 0x004811c7    83c40c
                         ret                0x0008                                   // 0x004811ca    c20800
_jmp_addr_0x004811cd:    {disp32} mov       ecx, dword ptr [esi + 0x000048d0]        // 0x004811cd    8b8ed0480000
                         mov                eax, dword ptr [ecx]                     // 0x004811d3    8b01
                         call               dword ptr [eax + 0x34]                   // 0x004811d5    ff5034
                         test               eax, eax                                 // 0x004811d8    85c0
                         {disp8} je         _jmp_addr_0x004811e5                     // 0x004811da    7409
                         xor.s              eax, eax                                 // 0x004811dc    33c0
                         pop                esi                                      // 0x004811de    5e
                         add                esp, 0x0c                                // 0x004811df    83c40c
                         ret                0x0008                                   // 0x004811e2    c20800
_jmp_addr_0x004811e5:    {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x004811e5    8b4c2414
                         push               edi                                      // 0x004811e9    57
                         mov.s              eax, ecx                                 // 0x004811ea    8bc1
                         mov                edi, dword ptr [eax]                     // 0x004811ec    8b38
                         {disp32} lea       edx, dword ptr [esi + 0x00005720]        // 0x004811ee    8d9620570000
                         mov                dword ptr [edx], edi                     // 0x004811f4    893a
                         {disp8} mov        edi, dword ptr [eax + 0x04]              // 0x004811f6    8b7804
                         {disp8} mov        dword ptr [edx + 0x04], edi              // 0x004811f9    897a04
                         {disp8} mov        eax, dword ptr [eax + 0x08]              // 0x004811fc    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax              // 0x004811ff    894208
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00481202    8b54241c
                         {disp32} mov       dword ptr [esi + 0x0000572c], edx        // 0x00481206    89962c570000
                         {disp8} fld        dword ptr [esi + 0x78]                   // 0x0048120c    d94678
                         fsub               dword ptr [ecx]                          // 0x0048120f    d821
                         pop                edi                                      // 0x00481211    5f
                         {disp32} fld       dword ptr [esi + 0x00000080]             // 0x00481212    d98680000000
                         {disp8} fsub       dword ptr [ecx + 0x08]                   // 0x00481218    d86108
                         fld                st(0)                                    // 0x0048121b    d9c0
                         fmul               st, st(1)                                // 0x0048121d    d8c9
                         fld                st(2)                                    // 0x0048121f    d9c2
                         fmul               st, st(3)                                // 0x00481221    d8cb
                         faddp              st(1), st                                // 0x00481223    dec1
                         fsqrt                                                       // 0x00481225    d9fa
                         fstp               st(2)                                    // 0x00481227    ddda
                         fstp               st(0)                                    // 0x00481229    ddd8
                         {disp32} fld       dword ptr [esi + 0x00000090]             // 0x0048122b    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]        // 0x00481231    d80d402c8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26128]        // 0x00481237    d80d28f18c00
                         fcompp                                                      // 0x0048123d    ded9
                         fnstsw             ax                                       // 0x0048123f    dfe0
                         test               ah, 0x41                                 // 0x00481241    f6c441
                         {disp8} jne        _jmp_addr_0x0048124f                     // 0x00481244    7509
                         xor.s              eax, eax                                 // 0x00481246    33c0
                         pop                esi                                      // 0x00481248    5e
                         add                esp, 0x0c                                // 0x00481249    83c40c
                         ret                0x0008                                   // 0x0048124c    c20800
_jmp_addr_0x0048124f:    fld                dword ptr [ecx]                          // 0x0048124f    d901
                         {disp8} lea        eax, dword ptr [esp + 0x04]              // 0x00481251    8d442404
                         {disp8} fsub       dword ptr [esi + 0x78]                   // 0x00481255    d86678
                         push               eax                                      // 0x00481258    50
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x00481259    d95c2408
                         {disp8} fld        dword ptr [ecx + 0x04]                   // 0x0048125d    d94104
                         {disp8} fsub       dword ptr [esi + 0x7c]                   // 0x00481260    d8667c
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00481263    d95c240c
                         {disp8} fld        dword ptr [ecx + 0x08]                   // 0x00481267    d94108
                         {disp32} fsub      dword ptr [esi + 0x00000080]             // 0x0048126a    d8a680000000
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00481270    d95c2410
                         call               _jmp_addr_0x007faa50                     // 0x00481274    e8d7973700
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00481279    d95c2418
                         {disp32} fld       dword ptr [esi + 0x00000084]             // 0x0048127d    d98684000000
                         {disp8} fsub       dword ptr [esp + 0x18]                   // 0x00481283    d8642418
                         fstp               dword ptr [esp]                          // 0x00481287    d91c24
                         call               _jmp_addr_0x007faaf0                     // 0x0048128a    e861983700
                         fabs                                                        // 0x0048128f    d9e1
                         add                esp, 0x04                                // 0x00481291    83c404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]        // 0x00481294    d81d40588c00
                         fnstsw             ax                                       // 0x0048129a    dfe0
                         test               ah, 0x41                                 // 0x0048129c    f6c441
                         {disp8} jne        _jmp_addr_0x004812b9                     // 0x0048129f    7518
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x004812a1    8b4c2414
                         push               ecx                                      // 0x004812a5    51
                         mov.s              ecx, esi                                 // 0x004812a6    8bce
                         {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000000 // 0x004812a8    c7868c51000000000000
                         call               _jmp_addr_0x0048b790                     // 0x004812b2    e8d9a40000
                         {disp8} jmp        _jmp_addr_0x004812c0                     // 0x004812b7    eb07
_jmp_addr_0x004812b9:    mov.s              ecx, esi                                 // 0x004812b9    8bce
                         call               _jmp_addr_0x0048cd40                     // 0x004812bb    e880ba0000
_jmp_addr_0x004812c0:    push               0xd                                      // 0x004812c0    6a0d
                         mov.s              ecx, esi                                 // 0x004812c2    8bce
                         call               _jmp_addr_0x00484ec0                     // 0x004812c4    e8f73b0000
                         mov                eax, 0x00000001                          // 0x004812c9    b801000000
                         pop                esi                                      // 0x004812ce    5e
                         add                esp, 0x0c                                // 0x004812cf    83c40c
                         ret                0x0008                                   // 0x004812d2    c20800
                         nop                                                         // 0x004812d5    90
                         nop                                                         // 0x004812d6    90
                         nop                                                         // 0x004812d7    90
                         nop                                                         // 0x004812d8    90
                         nop                                                         // 0x004812d9    90
                         nop                                                         // 0x004812da    90
                         nop                                                         // 0x004812db    90
                         nop                                                         // 0x004812dc    90
                         nop                                                         // 0x004812dd    90
                         nop                                                         // 0x004812de    90
                         nop                                                         // 0x004812df    90
                         sub                esp, 0x18                                // 0x004812e0    83ec18
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x004812e3    8b44241c
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x004812e7    8d0440
                         push               esi                                      // 0x004812ea    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000047f4]        // 0x004812eb    8bb1f4470000
                         {disp32} mov       ecx, dword ptr [ecx + 0x000047b8]        // 0x004812f1    8b89b8470000
                         shl                eax, 4                                   // 0x004812f7    c1e004
                         {disp8} fld        dword ptr [eax + esi * 0x1 + 0x24]       // 0x004812fa    d9443024
                         add.s              eax, esi                                 // 0x004812fe    03c6
                         {disp8} fstp       dword ptr [esp + 0x04]                   // 0x00481300    d95c2404
                         {disp8} fld        dword ptr [eax + 0x28]                   // 0x00481304    d94028
                         push               edi                                      // 0x00481307    57
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00481308    d95c240c
                         {disp8} fld        dword ptr [eax + 0x2c]                   // 0x0048130c    d9402c
                         or                 edi, 0xffffffff                          // 0x0048130f    83cfff
                         xor.s              edx, edx                                 // 0x00481312    33d2
                         test               ecx, ecx                                 // 0x00481314    85c9
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00481316    d95c2410
                         {disp8} mov        dword ptr [esp + 0x24], 0x42c80000       // 0x0048131a    c74424240000c842
                         {disp8} jle        _jmp_addr_0x00481382                     // 0x00481322    7e5e
                         add                esi, 0x28                                // 0x00481324    83c628
_jmp_addr_0x00481327:    {disp8} fld        dword ptr [esi + -0x04]                  // 0x00481327    d946fc
                         fchs                                                        // 0x0048132a    d9e0
                         fld                dword ptr [esi]                          // 0x0048132c    d906
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x0048132e    d95c2418
                         {disp8} fld        dword ptr [esi + 0x04]                   // 0x00481332    d94604
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00481335    d95c241c
                         {disp8} fsub       dword ptr [esp + 0x08]                   // 0x00481339    d8642408
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x0048133d    d9442418
                         {disp8} fsub       dword ptr [esp + 0x0c]                   // 0x00481341    d864240c
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x00481345    d944241c
                         {disp8} fsub       dword ptr [esp + 0x10]                   // 0x00481349    d8642410
                         fld                st(0)                                    // 0x0048134d    d9c0
                         fmul               st, st(1)                                // 0x0048134f    d8c9
                         fld                st(2)                                    // 0x00481351    d9c2
                         fmul               st, st(3)                                // 0x00481353    d8cb
                         faddp              st(1), st                                // 0x00481355    dec1
                         fld                st(3)                                    // 0x00481357    d9c3
                         fmul               st, st(4)                                // 0x00481359    d8cc
                         faddp              st(1), st                                // 0x0048135b    dec1
                         fsqrt                                                       // 0x0048135d    d9fa
                         fstp               st(3)                                    // 0x0048135f    dddb
                         fstp               st(0)                                    // 0x00481361    ddd8
                         fstp               st(0)                                    // 0x00481363    ddd8
                         {disp8} fcom       dword ptr [esp + 0x24]                   // 0x00481365    d8542424
                         fnstsw             ax                                       // 0x00481369    dfe0
                         test               ah, 0x01                                 // 0x0048136b    f6c401
                         {disp8} je         _jmp_addr_0x00481378                     // 0x0048136e    7408
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x00481370    d95c2424
                         mov.s              edi, edx                                 // 0x00481374    8bfa
                         {disp8} jmp        _jmp_addr_0x0048137a                     // 0x00481376    eb02
_jmp_addr_0x00481378:    fstp               st(0)                                    // 0x00481378    ddd8
_jmp_addr_0x0048137a:    inc                edx                                      // 0x0048137a    42
                         add                esi, 0x30                                // 0x0048137b    83c630
                         cmp.s              edx, ecx                                 // 0x0048137e    3bd1
                         {disp8} jl         _jmp_addr_0x00481327                     // 0x00481380    7ca5
_jmp_addr_0x00481382:    mov.s              eax, edi                                 // 0x00481382    8bc7
                         pop                edi                                      // 0x00481384    5f
                         pop                esi                                      // 0x00481385    5e
                         add                esp, 0x18                                // 0x00481386    83c418
                         ret                0x0004                                   // 0x00481389    c20400
                         nop                                                         // 0x0048138c    90
                         nop                                                         // 0x0048138d    90
                         nop                                                         // 0x0048138e    90
                         nop                                                         // 0x0048138f    90
_jmp_addr_0x00481390:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00481390    8b442404
                         cmp                eax, -0x01                               // 0x00481394    83f8ff
                         {disp8} jne        _jmp_addr_0x0048139e                     // 0x00481397    7505
                         or.s               eax, eax                                 // 0x00481399    0bc0
                         ret                0x0004                                   // 0x0048139b    c20400
_jmp_addr_0x0048139e:    {disp32} mov       ecx, dword ptr [ecx + 0x000051f0]        // 0x0048139e    8b89f0510000
                         mov                eax, dword ptr [ecx + eax * 0x4]         // 0x004813a4    8b0481
                         ret                0x0004                                   // 0x004813a7    c20400
                         call               dword ptr [__imp__GetOpenFileNameA@4]    // 0x004813aa    ff1570998a00
_jmp_addr_0x004813b0:    push               esi                                      // 0x004813b0    56
                         mov.s              esi, ecx                                 // 0x004813b1    8bf1
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ    // 0x004813b3    e8f82e0000
                         {disp32} mov       esi, dword ptr [esi + 0x000051b8]        // 0x004813b8    8bb6b8510000
                         lea                ecx, dword ptr [esi + esi * 0x2]         // 0x004813be    8d0c76
                         shl                ecx, 4                                   // 0x004813c1    c1e104
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x24]  // 0x004813c4    8d440824
                         pop                esi                                      // 0x004813c8    5e
                         ret                                                         // 0x004813c9    c3
                         call               dword ptr [__imp__DirectDrawEnumerateA@4]// 0x004813ca    ff1528908a00
_jmp_addr_0x004813d0:    push               esi                                      // 0x004813d0    56
                         mov.s              esi, ecx                                 // 0x004813d1    8bf1
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ    // 0x004813d3    e8d82e0000
                         {disp32} mov       esi, dword ptr [esi + 0x000051d8]        // 0x004813d8    8bb6d8510000
                         lea                ecx, dword ptr [esi + esi * 0x2]         // 0x004813de    8d0c76
                         shl                ecx, 4                                   // 0x004813e1    c1e104
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x24]  // 0x004813e4    8d440824
                         pop                esi                                      // 0x004813e8    5e
                         ret                                                         // 0x004813e9    c3
                         call               dword ptr [__imp__DirectInputCreateA@4]  // 0x004813ea    ff1534908a00
@GetBonePos__12LH3DCreatureFl@12:    call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ    // 0x004813f0    e8bb2e0000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]              // 0x004813f5    8b4c2404
                         lea                ecx, dword ptr [ecx + ecx * 0x2]         // 0x004813f9    8d0c49
                         shl                ecx, 4                                   // 0x004813fc    c1e104
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x24]  // 0x004813ff    8d440824
                         ret                0x0004                                   // 0x00481403    c20400
                         nop                                                         // 0x00481406    90
                         nop                                                         // 0x00481407    90
                         nop                                                         // 0x00481408    90
                         nop                                                         // 0x00481409    90
                         nop                                                         // 0x0048140a    90
                         nop                                                         // 0x0048140b    90
                         nop                                                         // 0x0048140c    90
                         nop                                                         // 0x0048140d    90
                         nop                                                         // 0x0048140e    90
                         nop                                                         // 0x0048140f    90
_jmp_addr_0x00481410:    {disp32} mov       eax, dword ptr [data_bytes + 0x29e204]   // 0x00481410    a10442c600
                         sub                esp, 0x28                                // 0x00481415    83ec28
                         test               eax, eax                                 // 0x00481418    85c0
                         push               ebx                                      // 0x0048141a    53
                         push               ebp                                      // 0x0048141b    55
                         push               esi                                      // 0x0048141c    56
                         push               edi                                      // 0x0048141d    57
                         mov.s              esi, ecx                                 // 0x0048141e    8bf1
                         {disp8} je         _jmp_addr_0x0048142a                     // 0x00481420    7408
                         cmp.s              eax, esi                                 // 0x00481422    3bc6
                         {disp32} jne       _jmp_addr_0x00481724                     // 0x00481424    0f85fa020000
_jmp_addr_0x0048142a:    {disp32} fld       dword ptr [esi + 0x0000009c]             // 0x0048142a    d9869c000000
                         {disp32} fcomp     dword ptr [__real@3e4ccccd]              // 0x00481430    d81d44b28a00
                         fnstsw             ax                                       // 0x00481436    dfe0
                         test               ah, 0x41                                 // 0x00481438    f6c441
                         {disp32} jne       _jmp_addr_0x004815b0                     // 0x0048143b    0f856f010000
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]              // 0x00481441    8b5c241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000       // 0x00481445    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000       // 0x0048144d    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000       // 0x00481455    c744242800000000
                         xor.s              ebp, ebp                                 // 0x0048145d    33ed
_jmp_addr_0x0048145f:    push               0x65                                     // 0x0048145f    6a65
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00481461    e80ad12500
                         sub                eax, 0x32                                // 0x00481466    83e832
                         {disp8} mov        dword ptr [esp + 0x14], eax              // 0x00481469    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                   // 0x0048146d    db442414
                         push               0x65                                     // 0x00481471    6a65
                         {disp32} fmul      dword ptr [rdata_bytes + 0x22930]        // 0x00481473    d80d30b98c00
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x00481479    d95c2424
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x0048147d    e8eed02500
                         sub                eax, 0x32                                // 0x00481482    83e832
                         {disp8} mov        dword ptr [esp + 0x18], eax              // 0x00481485    89442418
                         {disp8} fild       dword ptr [esp + 0x18]                   // 0x00481489    db442418
                         push               0x65                                     // 0x0048148d    6a65
                         {disp32} fmul      dword ptr [rdata_bytes + 0x22930]        // 0x0048148f    d80d30b98c00
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x00481495    d95c2424
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00481499    e8d2d02500
                         sub                eax, 0x32                                // 0x0048149e    83e832
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x004814a1    8944241c
                         {disp8} fild       dword ptr [esp + 0x1c]                   // 0x004814a5    db44241c
                         {disp32} mov       eax, dword ptr [esi + 0x000047b8]        // 0x004814a9    8b86b8470000
                         push               eax                                      // 0x004814af    50
                         {disp32} fmul      dword ptr [rdata_bytes + 0x22930]        // 0x004814b0    d80d30b98c00
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x004814b6    d95c2424
                         {disp32} fld       dword ptr [esi + 0x00000090]             // 0x004814ba    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26138]        // 0x004814c0    d80d38f18c00
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x004814c6    d95c2420
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x004814ca    e8a1d02500
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x004814cf    d9442420
                         {disp32} mov       edx, dword ptr [esi + 0x00005178]        // 0x004814d3    8b9678510000
                         {disp8} fmul       dword ptr [esp + 0x24]                   // 0x004814d9    d84c2424
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x004814dd    8d0440
                         shl                eax, 4                                   // 0x004814e0    c1e004
                         add.s              eax, edx                                 // 0x004814e3    03c2
                         {disp8} fadd       dword ptr [eax + 0x2c]                   // 0x004814e5    d8402c
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x004814e8    d9442420
                         {disp8} fmul       dword ptr [esp + 0x28]                   // 0x004814ec    d84c2428
                         {disp8} fadd       dword ptr [eax + 0x28]                   // 0x004814f0    d84028
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x004814f3    d9442420
                         {disp8} fmul       dword ptr [esp + 0x2c]                   // 0x004814f7    d84c242c
                         {disp8} fadd       dword ptr [eax + 0x24]                   // 0x004814fb    d84024
                         {disp8} fstp       dword ptr [esp + 0x3c]                   // 0x004814fe    d95c243c
                         {disp8} fstp       dword ptr [esp + 0x40]                   // 0x00481502    d95c2440
                         {disp8} fstp       dword ptr [esp + 0x44]                   // 0x00481506    d95c2444
                         {disp32} fld       dword ptr [esi + 0x0000009c]             // 0x0048150a    d9869c000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26134]        // 0x00481510    d80d34f18c00
                         call               _jmp_addr_0x007a1400                     // 0x00481516    e8e5fe3100
                         mov.s              edi, eax                                 // 0x0048151b    8bf8
                         push               0x6                                      // 0x0048151d    6a06
                         shl                edi, 0x18                                // 0x0048151f    c1e718
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00481522    e849d02500
                         add                esp, 0x14                                // 0x00481527    83c414
                         cmp                eax, 0x05                                // 0x0048152a    83f805
                         {disp8} ja         _jmp_addr_0x0048155e                     // 0x0048152d    772f
                         jmp                dword ptr [eax*4 + 0x48172c]             // 0x0048152f    ff24852c174800
                         mov                ebx, 0x00ff9090                          // 0x00481536    bb9090ff00
                         {disp8} jmp        _jmp_addr_0x0048155e                     // 0x0048153b    eb21
                         mov                ebx, 0x0090ff90                          // 0x0048153d    bb90ff9000
                         {disp8} jmp        _jmp_addr_0x0048155e                     // 0x00481542    eb1a
                         mov                ebx, 0x009090ff                          // 0x00481544    bbff909000
                         {disp8} jmp        _jmp_addr_0x0048155e                     // 0x00481549    eb13
                         mov                ebx, 0x00ffff90                          // 0x0048154b    bb90ffff00
                         {disp8} jmp        _jmp_addr_0x0048155e                     // 0x00481550    eb0c
                         mov                ebx, 0x0090ffff                          // 0x00481552    bbffff9000
                         {disp8} jmp        _jmp_addr_0x0048155e                     // 0x00481557    eb05
                         mov                ebx, 0x00ff90ff                          // 0x00481559    bbff90ff00
_jmp_addr_0x0048155e:    push               0x2                                      // 0x0048155e    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00481560    e80bd02500
                         {disp32} fld       dword ptr [esi + 0x00000090]             // 0x00481565    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e4]         // 0x0048156b    d80de4b68a00
                         add                esp, 0x04                                // 0x00481571    83c404
                         neg                eax                                      // 0x00481574    f7d8
                         sbb.s              eax, eax                                 // 0x00481576    1bc0
                         add                eax, 0x02                                // 0x00481578    83c002
                         push               eax                                      // 0x0048157b    50
                         push               ecx                                      // 0x0048157c    51
                         fstp               dword ptr [esp]                          // 0x0048157d    d91c24
                         lea                ecx, dword ptr [ebx + edi * 0x1]         // 0x00481580    8d0c3b
                         push               ecx                                      // 0x00481583    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]              // 0x00481584    8d54242c
                         push               edx                                      // 0x00481588    52
                         {disp8} lea        eax, dword ptr [esp + 0x3c]              // 0x00481589    8d44243c
                         push               eax                                      // 0x0048158d    50
                         call               _jmp_addr_0x00845c20                     // 0x0048158e    e88d463c00
                         add                esp, 0x14                                // 0x00481593    83c414
                         inc                ebp                                      // 0x00481596    45
                         {disp8} mov        dword ptr [esp + 0x1c], ebp              // 0x00481597    896c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                   // 0x0048159b    db44241c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]        // 0x0048159f    d81d502c8c00
                         fnstsw             ax                                       // 0x004815a5    dfe0
                         test               ah, 0x01                                 // 0x004815a7    f6c401
                         {disp32} jne       _jmp_addr_0x0048145f                     // 0x004815aa    0f85affeffff
_jmp_addr_0x004815b0:    {disp32} fld       dword ptr [esi + 0x0000009c]             // 0x004815b0    d9869c000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26130]        // 0x004815b6    d81d30f18c00
                         fnstsw             ax                                       // 0x004815bc    dfe0
                         test               ah, 0x01                                 // 0x004815be    f6c401
                         {disp32} je        _jmp_addr_0x00481724                     // 0x004815c1    0f845d010000
                         {disp32} fld       dword ptr [esi + 0x0000009c]             // 0x004815c7    d9869c000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000       // 0x004815cd    c744242c00000000
                         fchs                                                        // 0x004815d5    d9e0
                         {disp8} mov        dword ptr [esp + 0x30], 0x40000000       // 0x004815d7    c744243000000040
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2612c]        // 0x004815df    d80d2cf18c00
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000       // 0x004815e5    c744243400000000
                         xor.s              ebp, ebp                                 // 0x004815ed    33ed
                         call               _jmp_addr_0x007a1400                     // 0x004815ef    e80cfe3100
                         {disp8} mov        edi, dword ptr [esp + 0x1c]              // 0x004815f4    8b7c241c
                         mov.s              ebx, eax                                 // 0x004815f8    8bd8
                         shl                ebx, 0x18                                // 0x004815fa    c1e318
_jmp_addr_0x004815fd:    push               0x65                                     // 0x004815fd    6a65
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x004815ff    e86ccf2500
                         sub                eax, 0x32                                // 0x00481604    83e832
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x00481607    89442420
                         {disp8} fild       dword ptr [esp + 0x20]                   // 0x0048160b    db442420
                         push               0x65                                     // 0x0048160f    6a65
                         {disp32} fmul      dword ptr [rdata_bytes + 0x22930]        // 0x00481611    d80d30b98c00
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00481617    d95c241c
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x0048161b    e850cf2500
                         sub                eax, 0x32                                // 0x00481620    83e832
                         {disp8} mov        dword ptr [esp + 0x24], eax              // 0x00481623    89442424
                         {disp8} fild       dword ptr [esp + 0x24]                   // 0x00481627    db442424
                         push               0x65                                     // 0x0048162b    6a65
                         {disp32} fmul      dword ptr [rdata_bytes + 0x22930]        // 0x0048162d    d80d30b98c00
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x00481633    d95c2424
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00481637    e834cf2500
                         {disp32} mov       ecx, dword ptr [esi + 0x000047b8]        // 0x0048163c    8b8eb8470000
                         sub                eax, 0x32                                // 0x00481642    83e832
                         {disp8} mov        dword ptr [esp + 0x28], eax              // 0x00481645    89442428
                         {disp8} fild       dword ptr [esp + 0x28]                   // 0x00481649    db442428
                         push               ecx                                      // 0x0048164d    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x22930]        // 0x0048164e    d80d30b98c00
                         {disp8} fstp       dword ptr [esp + 0x2c]                   // 0x00481654    d95c242c
                         {disp32} fld       dword ptr [esi + 0x00000090]             // 0x00481658    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26138]        // 0x0048165e    d80d38f18c00
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x00481664    d95c2420
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x00481668    e803cf2500
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x0048166d    d9442420
                         {disp32} mov       ecx, dword ptr [esi + 0x00005178]        // 0x00481671    8b8e78510000
                         {disp8} fmul       dword ptr [esp + 0x2c]                   // 0x00481677    d84c242c
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x0048167b    8d0440
                         shl                eax, 4                                   // 0x0048167e    c1e004
                         add.s              eax, ecx                                 // 0x00481681    03c1
                         {disp8} fadd       dword ptr [eax + 0x2c]                   // 0x00481683    d8402c
                         push               0x6                                      // 0x00481686    6a06
                         {disp8} fld        dword ptr [esp + 0x24]                   // 0x00481688    d9442424
                         {disp8} fmul       dword ptr [esp + 0x2c]                   // 0x0048168c    d84c242c
                         {disp8} fadd       dword ptr [eax + 0x28]                   // 0x00481690    d84028
                         {disp8} fld        dword ptr [esp + 0x24]                   // 0x00481693    d9442424
                         {disp8} fmul       dword ptr [esp + 0x28]                   // 0x00481697    d84c2428
                         {disp8} fadd       dword ptr [eax + 0x24]                   // 0x0048169b    d84024
                         {disp8} fstp       dword ptr [esp + 0x34]                   // 0x0048169e    d95c2434
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x004816a2    d95c2438
                         {disp8} fstp       dword ptr [esp + 0x3c]                   // 0x004816a6    d95c243c
                         call               ?LocalRand@GRand@@SAIJ@Z                 // 0x004816aa    e8c1ce2500
                         add                esp, 0x14                                // 0x004816af    83c414
                         cmp                eax, 0x05                                // 0x004816b2    83f805
                         {disp8} ja         _jmp_addr_0x004816e6                     // 0x004816b5    772f
                         jmp                dword ptr [eax*4 + 0x481744]             // 0x004816b7    ff248544174800
                         mov                edi, 0x00300000                          // 0x004816be    bf00003000
                         {disp8} jmp        _jmp_addr_0x004816e6                     // 0x004816c3    eb21
                         mov                edi, 0x00003000                          // 0x004816c5    bf00300000
                         {disp8} jmp        _jmp_addr_0x004816e6                     // 0x004816ca    eb1a
                         mov                edi, 0x00000030                          // 0x004816cc    bf30000000
                         {disp8} jmp        _jmp_addr_0x004816e6                     // 0x004816d1    eb13
                         mov                edi, 0x00303000                          // 0x004816d3    bf00303000
                         {disp8} jmp        _jmp_addr_0x004816e6                     // 0x004816d8    eb0c
                         mov                edi, 0x00003030                          // 0x004816da    bf30300000
                         {disp8} jmp        _jmp_addr_0x004816e6                     // 0x004816df    eb05
                         mov                edi, 0x00300030                          // 0x004816e1    bf30003000
_jmp_addr_0x004816e6:    {disp32} fld       dword ptr [esi + 0x00000090]             // 0x004816e6    d98690000000
                         push               0x3                                      // 0x004816ec    6a03
                         push               ecx                                      // 0x004816ee    51
                         fadd.s             st(0), st(0)                             // 0x004816ef    dcc0
                         lea                edx, dword ptr [edi + ebx * 0x1]         // 0x004816f1    8d141f
                         {disp8} lea        eax, dword ptr [esp + 0x34]              // 0x004816f4    8d442434
                         fstp               dword ptr [esp]                          // 0x004816f8    d91c24
                         push               edx                                      // 0x004816fb    52
                         push               eax                                      // 0x004816fc    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]              // 0x004816fd    8d4c2430
                         push               ecx                                      // 0x00481701    51
                         call               _jmp_addr_0x00845c20                     // 0x00481702    e819453c00
                         add                esp, 0x14                                // 0x00481707    83c414
                         inc                ebp                                      // 0x0048170a    45
                         {disp8} mov        dword ptr [esp + 0x1c], ebp              // 0x0048170b    896c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                   // 0x0048170f    db44241c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]        // 0x00481713    d81d502c8c00
                         fnstsw             ax                                       // 0x00481719    dfe0
                         test               ah, 0x01                                 // 0x0048171b    f6c401
                         {disp32} jne       _jmp_addr_0x004815fd                     // 0x0048171e    0f85d9feffff
_jmp_addr_0x00481724:    pop                edi                                      // 0x00481724    5f
                         pop                esi                                      // 0x00481725    5e
                         pop                ebp                                      // 0x00481726    5d
                         pop                ebx                                      // 0x00481727    5b
                         add                esp, 0x28                                // 0x00481728    83c428
                         ret                                                         // 0x0048172b    c3

// Snippet: jmptbl, [0x0048172c, 0x0048175c)
.byte 0x36, 0x15, 0x48, 0x00      // 0x0048172c
.byte 0x3d, 0x15, 0x48, 0x00      // 0x00481730
.byte 0x44, 0x15, 0x48, 0x00      // 0x00481734
.byte 0x4b, 0x15, 0x48, 0x00      // 0x00481738
.byte 0x52, 0x15, 0x48, 0x00      // 0x0048173c
.byte 0x59, 0x15, 0x48, 0x00      // 0x00481740
.byte 0xbe, 0x16, 0x48, 0x00      // 0x00481744
.byte 0xc5, 0x16, 0x48, 0x00      // 0x00481748
.byte 0xcc, 0x16, 0x48, 0x00      // 0x0048174c
.byte 0xd3, 0x16, 0x48, 0x00      // 0x00481750
.byte 0xda, 0x16, 0x48, 0x00      // 0x00481754
.byte 0xe1, 0x16, 0x48, 0x00      // 0x00481758

// Snippet: db, [0x0048175c, 0x00481760)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048175c

