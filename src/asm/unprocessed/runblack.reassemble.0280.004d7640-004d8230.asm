.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z
.extern _jmp_addr_0x004d8980
.extern _jmp_addr_0x004d8b50
.extern _jmp_addr_0x004d8bb0
.extern _jmp_addr_0x004de730
.extern _jmp_addr_0x004de800
.extern _jmp_addr_0x004e2380
.extern _jmp_addr_0x004e2890
.extern _jmp_addr_0x004f12e0
.extern ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ
.extern ?IsNeutral@GPlayer@@QAE_NXZ
.extern _jmp_addr_0x00745ea0
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern ___RTDynamicCast

.globl _jmp_addr_0x004d7640
.globl _jmp_addr_0x004d7670
.globl _jmp_addr_0x004d76f0
.globl _jmp_addr_0x004d7720
.globl _jmp_addr_0x004d7770
.globl _jmp_addr_0x004d7810
.globl _jmp_addr_0x004d78f0
.globl _jmp_addr_0x004d7930
.globl _jmp_addr_0x004d7af0
.globl _jmp_addr_0x004d7b50
.globl _jmp_addr_0x004d7b80
.globl ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z
.globl _jmp_addr_0x004d7d90
.globl _jmp_addr_0x004d7e80

.globl _globl_ct_0x004d7790
.globl _globl_ct_0x004d77c0
.globl _globl_ct_0x004d77f0
.globl ??_GCreatureBelief@@UAEPAXI@Z
.globl ??_GAllocatedBeliefList@@UAEPAXI@Z

start_0x004d7640_0x004d8230:
// Snippet: asm, [0x004d7640, 0x004d8200)
_jmp_addr_0x004d7640:    {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x004d7640    8b410c
                         test               eax, eax                                      // 0x004d7643    85c0
                         {disp8} je         _jmp_addr_0x004d765a                          // 0x004d7645    7413
                         mov                edx, 0x00000006                               // 0x004d7647    ba06000000
_jmp_addr_0x004d764c:    cmp                dword ptr [ecx + 0x10], edx                   // 0x004d764c    395110
                         {disp8} je         _jmp_addr_0x004d765d                          // 0x004d764f    740c
                         mov.s              ecx, eax                                      // 0x004d7651    8bc8
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                   // 0x004d7653    8b400c
                         test               eax, eax                                      // 0x004d7656    85c0
                         {disp8} jne        _jmp_addr_0x004d764c                          // 0x004d7658    75f2
_jmp_addr_0x004d765a:    xor.s              eax, eax                                      // 0x004d765a    33c0
                         ret                                                              // 0x004d765c    c3
_jmp_addr_0x004d765d:    {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x004d765d    8b4114
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00bded5c]       // 0x004d7660    8b04855cedbd00
                         ret                                                              // 0x004d7667    c3
                         nop                                                              // 0x004d7668    90
                         nop                                                              // 0x004d7669    90
                         nop                                                              // 0x004d766a    90
                         nop                                                              // 0x004d766b    90
                         nop                                                              // 0x004d766c    90
                         nop                                                              // 0x004d766d    90
                         nop                                                              // 0x004d766e    90
                         nop                                                              // 0x004d766f    90
_jmp_addr_0x004d7670:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x004d7670    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004d7674    d81d98a38a00
                         fnstsw             ax                                            // 0x004d767a    dfe0
                         test               ah, 0x01                                      // 0x004d767c    f6c401
                         {disp8} je         _jmp_addr_0x004d7693                          // 0x004d767f    7412
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x004d7681    d9442404
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x004d7685    d80590a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2699c]             // 0x004d768b    d80d9cf98c00
                         {disp8} jmp        _jmp_addr_0x004d76a9                          // 0x004d7691    eb16
_jmp_addr_0x004d7693:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x004d7693    d90590a38a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2699c]             // 0x004d7699    d8259cf98c00
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x004d769f    d84c2404
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2699c]             // 0x004d76a3    d8059cf98c00
_jmp_addr_0x004d76a9:    {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x004d76a9    d81598a38a00
                         fnstsw             ax                                            // 0x004d76af    dfe0
                         test               ah, 0x01                                      // 0x004d76b1    f6c401
                         {disp8} je         _jmp_addr_0x004d76c1                          // 0x004d76b4    740b
                         fstp               st(0)                                         // 0x004d76b6    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004d76b8    d90598a38a00
                         ret                0x0004                                        // 0x004d76be    c20400
_jmp_addr_0x004d76c1:    {disp32} fld       dword ptr [rdata_bytes + 0x2699c]             // 0x004d76c1    d9059cf98c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26998]             // 0x004d76c7    d80d98f98c00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x004d76cd    d95c2404
                         {disp8} fcom       dword ptr [esp + 0x04]                        // 0x004d76d1    d8542404
                         fnstsw             ax                                            // 0x004d76d5    dfe0
                         test               ah, 0x41                                      // 0x004d76d7    f6c441
                         {disp8} jne        _jmp_addr_0x004d76e2                          // 0x004d76da    7506
                         fstp               st(0)                                         // 0x004d76dc    ddd8
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x004d76de    d9442404
_jmp_addr_0x004d76e2:    ret                0x0004                                        // 0x004d76e2    c20400
                         nop                                                              // 0x004d76e5    90
                         nop                                                              // 0x004d76e6    90
                         nop                                                              // 0x004d76e7    90
                         nop                                                              // 0x004d76e8    90
                         nop                                                              // 0x004d76e9    90
                         nop                                                              // 0x004d76ea    90
                         nop                                                              // 0x004d76eb    90
                         nop                                                              // 0x004d76ec    90
                         nop                                                              // 0x004d76ed    90
                         nop                                                              // 0x004d76ee    90
                         nop                                                              // 0x004d76ef    90
_jmp_addr_0x004d76f0:    {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x004d76f0    8b5104
                         test               edx, edx                                      // 0x004d76f3    85d2
                         {disp8} ja         _jmp_addr_0x004d76fc                          // 0x004d76f5    7705
                         xor.s              eax, eax                                      // 0x004d76f7    33c0
                         ret                0x0004                                        // 0x004d76f9    c20400
_jmp_addr_0x004d76fc:    mov                eax, dword ptr [ecx]                          // 0x004d76fc    8b01
                         test               eax, eax                                      // 0x004d76fe    85c0
                         {disp8} jne        _jmp_addr_0x004d7705                          // 0x004d7700    7503
                         ret                0x0004                                        // 0x004d7702    c20400
_jmp_addr_0x004d7705:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004d7705    8b4c2404
                         cmp.s              ecx, edx                                      // 0x004d7709    3bca
                         {disp8} jl         _jmp_addr_0x004d7712                          // 0x004d770b    7c05
                         xor.s              eax, eax                                      // 0x004d770d    33c0
                         ret                0x0004                                        // 0x004d770f    c20400
_jmp_addr_0x004d7712:    test               ecx, ecx                                      // 0x004d7712    85c9
                         {disp8} jle        _jmp_addr_0x004d771b                          // 0x004d7714    7e05
_jmp_addr_0x004d7716:    dec                ecx                                           // 0x004d7716    49
                         mov                eax, dword ptr [eax]                          // 0x004d7717    8b00
                         {disp8} jne        _jmp_addr_0x004d7716                          // 0x004d7719    75fb
_jmp_addr_0x004d771b:    ret                0x0004                                        // 0x004d771b    c20400
                         nop                                                              // 0x004d771e    90
                         nop                                                              // 0x004d771f    90
_jmp_addr_0x004d7720:    push               ebx                                           // 0x004d7720    53
                         push               ebp                                           // 0x004d7721    55
                         push               esi                                           // 0x004d7722    56
                         mov.s              esi, ecx                                      // 0x004d7723    8bf1
                         mov                eax, dword ptr [esi]                          // 0x004d7725    8b06
                         xor.s              ebp, ebp                                      // 0x004d7727    33ed
                         test               eax, eax                                      // 0x004d7729    85c0
                         push               edi                                           // 0x004d772b    57
                         {disp8} je         _jmp_addr_0x004d7766                          // 0x004d772c    7438
                         {disp8} mov        bl, byte ptr [esp + 0x18]                     // 0x004d772e    8a5c2418
_jmp_addr_0x004d7732:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004d7732    8b4c2414
                         cmp                dword ptr [eax + 0x04], ecx                   // 0x004d7736    394804
                         mov                edi, dword ptr [eax]                          // 0x004d7739    8b38
                         {disp8} jne        _jmp_addr_0x004d775e                          // 0x004d773b    7521
                         cmp                eax, dword ptr [esi]                          // 0x004d773d    3b06
                         {disp8} jne        _jmp_addr_0x004d7745                          // 0x004d773f    7504
                         mov                dword ptr [esi], edi                          // 0x004d7741    893e
                         {disp8} jmp        _jmp_addr_0x004d7748                          // 0x004d7743    eb03
_jmp_addr_0x004d7745:    {disp8} mov        dword ptr [ebp + 0x00], edi                   // 0x004d7745    897d00
_jmp_addr_0x004d7748:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x004d7748    8b4e04
                         dec                ecx                                           // 0x004d774b    49
                         push               eax                                           // 0x004d774c    50
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x004d774d    894e04
                         call               ??3@YAXPAX@Z                                  // 0x004d7750    e843772d00
                         add                esp, 0x04                                     // 0x004d7755    83c404
                         test               bl, bl                                        // 0x004d7758    84db
                         {disp8} jne        _jmp_addr_0x004d7766                          // 0x004d775a    750a
                         {disp8} jmp        _jmp_addr_0x004d7760                          // 0x004d775c    eb02
_jmp_addr_0x004d775e:    mov.s              ebp, eax                                      // 0x004d775e    8be8
_jmp_addr_0x004d7760:    test               edi, edi                                      // 0x004d7760    85ff
                         mov.s              eax, edi                                      // 0x004d7762    8bc7
                         {disp8} jne        _jmp_addr_0x004d7732                          // 0x004d7764    75cc
_jmp_addr_0x004d7766:    pop                edi                                           // 0x004d7766    5f
                         pop                esi                                           // 0x004d7767    5e
                         pop                ebp                                           // 0x004d7768    5d
                         pop                ebx                                           // 0x004d7769    5b
                         ret                0x0008                                        // 0x004d776a    c20800
                         nop                                                              // 0x004d776d    90
                         nop                                                              // 0x004d776e    90
                         nop                                                              // 0x004d776f    90
_jmp_addr_0x004d7770:    mov                ecx, dword ptr [ecx]                          // 0x004d7770    8b09
                         test               ecx, ecx                                      // 0x004d7772    85c9
                         {disp8} je         _jmp_addr_0x004d777f                          // 0x004d7774    7409
_jmp_addr_0x004d7776:    mov.s              eax, ecx                                      // 0x004d7776    8bc1
                         mov                ecx, dword ptr [ecx]                          // 0x004d7778    8b09
                         test               ecx, ecx                                      // 0x004d777a    85c9
                         {disp8} jne        _jmp_addr_0x004d7776                          // 0x004d777c    75f8
                         ret                                                              // 0x004d777e    c3
_jmp_addr_0x004d777f:    xor.s              eax, eax                                      // 0x004d777f    33c0
                         ret                                                              // 0x004d7781    c3
                         nop                                                              // 0x004d7782    90
                         nop                                                              // 0x004d7783    90
                         nop                                                              // 0x004d7784    90
                         nop                                                              // 0x004d7785    90
                         nop                                                              // 0x004d7786    90
                         nop                                                              // 0x004d7787    90
                         nop                                                              // 0x004d7788    90
                         nop                                                              // 0x004d7789    90
                         nop                                                              // 0x004d778a    90
                         nop                                                              // 0x004d778b    90
                         nop                                                              // 0x004d778c    90
                         nop                                                              // 0x004d778d    90
                         nop                                                              // 0x004d778e    90
                         nop                                                              // 0x004d778f    90
_globl_ct_0x004d7790:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x004d7790    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x004d7796    b001
                         test               al, cl                                        // 0x004d7798    84c8
                         {disp8} jne        _jmp_addr_0x004d77a4                          // 0x004d779a    7508
                         or.s               cl, al                                        // 0x004d779c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x004d779e    880d34c9fa00
_jmp_addr_0x004d77a4:    {disp32} jmp       _jmp_addr_0x004d77b0                          // 0x004d77a4    e907000000
                         nop                                                              // 0x004d77a9    90
                         nop                                                              // 0x004d77aa    90
                         nop                                                              // 0x004d77ab    90
                         nop                                                              // 0x004d77ac    90
                         nop                                                              // 0x004d77ad    90
                         nop                                                              // 0x004d77ae    90
                         nop                                                              // 0x004d77af    90
_jmp_addr_0x004d77b0:    push               0x00407870                                    // 0x004d77b0    6870784000
                         call               _atexit                                       // 0x004d77b5    e8d7df2e00
                         pop                ecx                                           // 0x004d77ba    59
                         ret                                                              // 0x004d77bb    c3
                         nop                                                              // 0x004d77bc    90
                         nop                                                              // 0x004d77bd    90
                         nop                                                              // 0x004d77be    90
                         nop                                                              // 0x004d77bf    90
_globl_ct_0x004d77c0:    {disp32} jmp       _jmp_addr_0x004d77d0                          // 0x004d77c0    e90b000000
                         nop                                                              // 0x004d77c5    90
                         nop                                                              // 0x004d77c6    90
                         nop                                                              // 0x004d77c7    90
                         nop                                                              // 0x004d77c8    90
                         nop                                                              // 0x004d77c9    90
                         nop                                                              // 0x004d77ca    90
                         nop                                                              // 0x004d77cb    90
                         nop                                                              // 0x004d77cc    90
                         nop                                                              // 0x004d77cd    90
                         nop                                                              // 0x004d77ce    90
                         nop                                                              // 0x004d77cf    90
_jmp_addr_0x004d77d0:    {disp32} fld       dword ptr [rdata_bytes + 0x26e08]             // 0x004d77d0    d90508fe8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e04]             // 0x004d77d6    d80d04fe8c00
                         {disp32} fstp      dword ptr [data_bytes + 0x2be394]             // 0x004d77dc    d91d9443c800
                         ret                                                              // 0x004d77e2    c3
                         nop                                                              // 0x004d77e3    90
                         nop                                                              // 0x004d77e4    90
                         nop                                                              // 0x004d77e5    90
                         nop                                                              // 0x004d77e6    90
                         nop                                                              // 0x004d77e7    90
                         nop                                                              // 0x004d77e8    90
                         nop                                                              // 0x004d77e9    90
                         nop                                                              // 0x004d77ea    90
                         nop                                                              // 0x004d77eb    90
                         nop                                                              // 0x004d77ec    90
                         nop                                                              // 0x004d77ed    90
                         nop                                                              // 0x004d77ee    90
                         nop                                                              // 0x004d77ef    90
_globl_ct_0x004d77f0:    {disp32} jmp       _jmp_addr_0x004d7800                          // 0x004d77f0    e90b000000
                         nop                                                              // 0x004d77f5    90
                         nop                                                              // 0x004d77f6    90
                         nop                                                              // 0x004d77f7    90
                         nop                                                              // 0x004d77f8    90
                         nop                                                              // 0x004d77f9    90
                         nop                                                              // 0x004d77fa    90
                         nop                                                              // 0x004d77fb    90
                         nop                                                              // 0x004d77fc    90
                         nop                                                              // 0x004d77fd    90
                         nop                                                              // 0x004d77fe    90
                         nop                                                              // 0x004d77ff    90
_jmp_addr_0x004d7800:    {disp32} mov       dword ptr [data_bytes + 0x2be390], 0xffffffff // 0x004d7800    c7059043c800ffffffff
                         ret                                                              // 0x004d780a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004d780b    e869a0f2ff
_jmp_addr_0x004d7810:    push               esi                                           // 0x004d7810    56
                         mov.s              esi, ecx                                      // 0x004d7811    8bf1
                         push               edi                                           // 0x004d7813    57
                         xor.s              edi, edi                                      // 0x004d7814    33ff
                         {disp8} mov        dword ptr [esi + 0x04], edi                   // 0x004d7816    897e04
                         {disp8} mov        dword ptr [esi + 0x1c], edi                   // 0x004d7819    897e1c
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x004d781c    897e18
                         {disp8} mov        dword ptr [esi + 0x24], edi                   // 0x004d781f    897e24
                         {disp8} mov        dword ptr [esi + 0x28], edi                   // 0x004d7822    897e28
                         {disp8} mov        dword ptr [esi + 0x2c], edi                   // 0x004d7825    897e2c
                         mov                dword ptr [esi], 0x008cfe10                   // 0x004d7828    c70610fe8c00
                         {disp8} mov        dword ptr [esi + 0x14], edi                   // 0x004d782e    897e14
                         {disp8} mov        dword ptr [esi + 0x10], edi                   // 0x004d7831    897e10
                         {disp8} mov        dword ptr [esi + 0x0c], edi                   // 0x004d7834    897e0c
                         {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x004d7837    897e08
                         {disp8} mov        dword ptr [esi + 0x20], edi                   // 0x004d783a    897e20
                         {disp8} mov        dword ptr [esi + 0x30], edi                   // 0x004d783d    897e30
                         {disp8} mov        dword ptr [esi + 0x38], edi                   // 0x004d7840    897e38
                         {disp8} mov        dword ptr [esi + 0x34], edi                   // 0x004d7843    897e34
                         {disp8} mov        dword ptr [esi + 0x3c], edi                   // 0x004d7846    897e3c
                         {disp8} mov        dword ptr [esi + 0x48], edi                   // 0x004d7849    897e48
_jmp_addr_0x004d784c:    mov.s              eax, edi                                      // 0x004d784c    8bc7
                         cdq                                                              // 0x004d784e    99
                         and                edx, 0x07                                     // 0x004d784f    83e207
                         add.s              eax, edx                                      // 0x004d7852    03c2
                         sar                eax, 3                                        // 0x004d7854    c1f803
                         mov.s              ecx, edi                                      // 0x004d7857    8bcf
                         and                ecx, 0x80000007                               // 0x004d7859    81e107000080
                         {disp8} lea        eax, dword ptr [eax + esi * 0x1 + 0x40]       // 0x004d785f    8d443040
                         {disp8} jns        _jmp_addr_0x004d786a                          // 0x004d7863    7905
                         dec                ecx                                           // 0x004d7865    49
                         or                 ecx, 0xfffffff8                               // 0x004d7866    83c9f8
                         inc                ecx                                           // 0x004d7869    41
_jmp_addr_0x004d786a:    mov                dl, 0x01                                      // 0x004d786a    b201
                         shl                dl, cl                                        // 0x004d786c    d2e2
                         mov                cl, byte ptr [eax]                            // 0x004d786e    8a08
                         not                dl                                            // 0x004d7870    f6d2
                         and.s              cl, dl                                        // 0x004d7872    22ca
                         inc                edi                                           // 0x004d7874    47
                         cmp                edi, 0x28                                     // 0x004d7875    83ff28
                         mov                byte ptr [eax], cl                            // 0x004d7878    8808
                         .byte              0x72, 0xd0// {disp8} jb _jmp_addr_0x004d784c  // 0x004d787a    72d0
                         pop                edi                                           // 0x004d787c    5f
                         mov.s              eax, esi                                      // 0x004d787d    8bc6
                         pop                esi                                           // 0x004d787f    5e
                         ret                                                              // 0x004d7880    c3
                         nop                                                              // 0x004d7881    90
                         nop                                                              // 0x004d7882    90
                         nop                                                              // 0x004d7883    90
                         nop                                                              // 0x004d7884    90
                         nop                                                              // 0x004d7885    90
                         nop                                                              // 0x004d7886    90
                         nop                                                              // 0x004d7887    90
                         nop                                                              // 0x004d7888    90
                         nop                                                              // 0x004d7889    90
                         nop                                                              // 0x004d788a    90
                         nop                                                              // 0x004d788b    90
                         nop                                                              // 0x004d788c    90
                         nop                                                              // 0x004d788d    90
                         nop                                                              // 0x004d788e    90
                         nop                                                              // 0x004d788f    90
                         xor.s              eax, eax                                      // 0x004d7890    33c0
                         ret                                                              // 0x004d7892    c3
                         nop                                                              // 0x004d7893    90
                         nop                                                              // 0x004d7894    90
                         nop                                                              // 0x004d7895    90
                         nop                                                              // 0x004d7896    90
                         nop                                                              // 0x004d7897    90
                         nop                                                              // 0x004d7898    90
                         nop                                                              // 0x004d7899    90
                         nop                                                              // 0x004d789a    90
                         nop                                                              // 0x004d789b    90
                         nop                                                              // 0x004d789c    90
                         nop                                                              // 0x004d789d    90
                         nop                                                              // 0x004d789e    90
                         nop                                                              // 0x004d789f    90
                         xor.s              eax, eax                                      // 0x004d78a0    33c0
                         ret                0x0004                                        // 0x004d78a2    c20400
                         nop                                                              // 0x004d78a5    90
                         nop                                                              // 0x004d78a6    90
                         nop                                                              // 0x004d78a7    90
                         nop                                                              // 0x004d78a8    90
                         nop                                                              // 0x004d78a9    90
                         nop                                                              // 0x004d78aa    90
                         nop                                                              // 0x004d78ab    90
                         nop                                                              // 0x004d78ac    90
                         nop                                                              // 0x004d78ad    90
                         nop                                                              // 0x004d78ae    90
                         nop                                                              // 0x004d78af    90
                         xor.s              eax, eax                                      // 0x004d78b0    33c0
                         ret                0x0004                                        // 0x004d78b2    c20400
                         nop                                                              // 0x004d78b5    90
                         nop                                                              // 0x004d78b6    90
                         nop                                                              // 0x004d78b7    90
                         nop                                                              // 0x004d78b8    90
                         nop                                                              // 0x004d78b9    90
                         nop                                                              // 0x004d78ba    90
                         nop                                                              // 0x004d78bb    90
                         nop                                                              // 0x004d78bc    90
                         nop                                                              // 0x004d78bd    90
                         nop                                                              // 0x004d78be    90
                         nop                                                              // 0x004d78bf    90
                         xor.s              eax, eax                                      // 0x004d78c0    33c0
                         ret                0x0010                                        // 0x004d78c2    c21000
                         nop                                                              // 0x004d78c5    90
                         nop                                                              // 0x004d78c6    90
                         nop                                                              // 0x004d78c7    90
                         nop                                                              // 0x004d78c8    90
                         nop                                                              // 0x004d78c9    90
                         nop                                                              // 0x004d78ca    90
                         nop                                                              // 0x004d78cb    90
                         nop                                                              // 0x004d78cc    90
                         nop                                                              // 0x004d78cd    90
                         nop                                                              // 0x004d78ce    90
                         nop                                                              // 0x004d78cf    90
??_GCreatureBelief@@UAEPAXI@Z:
                         push               esi                                           // 0x004d78d0    56
                         mov.s              esi, ecx                                      // 0x004d78d1    8bf1
                         call               _jmp_addr_0x004d8b50                          // 0x004d78d3    e878120000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x004d78d8    f644240801
                         {disp8} je         _jmp_addr_0x004d78ea                          // 0x004d78dd    740b
                         push               0x4c                                          // 0x004d78df    6a4c
                         push               esi                                           // 0x004d78e1    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x004d78e2    e889f0f5ff
                         add                esp, 0x08                                     // 0x004d78e7    83c408
_jmp_addr_0x004d78ea:    mov.s              eax, esi                                      // 0x004d78ea    8bc6
                         pop                esi                                           // 0x004d78ec    5e
                         ret                0x0004                                        // 0x004d78ed    c20400
_jmp_addr_0x004d78f0:    mov.s              eax, ecx                                      // 0x004d78f0    8bc1
                         xor.s              ecx, ecx                                      // 0x004d78f2    33c9
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x004d78f4    894804
                         mov                dword ptr [eax], 0x008cfe58                   // 0x004d78f7    c70058fe8c00
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x004d78fd    89480c
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x004d7900    894808
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x004d7903    894814
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x004d7906    894810
                         ret                                                              // 0x004d7909    c3
                         call               dword ptr [__imp__GetCommandLineA@0]          // 0x004d790a    ff1548918a00
??_GAllocatedBeliefList@@UAEPAXI@Z:
                         push               esi                                           // 0x004d7910    56
                         mov.s              esi, ecx                                      // 0x004d7911    8bf1
                         call               _jmp_addr_0x00436960                          // 0x004d7913    e848f0f5ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x004d7918    f644240801
                         {disp8} je         _jmp_addr_0x004d792a                          // 0x004d791d    740b
                         push               0x18                                          // 0x004d791f    6a18
                         push               esi                                           // 0x004d7921    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x004d7922    e849f0f5ff
                         add                esp, 0x08                                     // 0x004d7927    83c408
_jmp_addr_0x004d792a:    mov.s              eax, esi                                      // 0x004d792a    8bc6
                         pop                esi                                           // 0x004d792c    5e
                         ret                0x0004                                        // 0x004d792d    c20400
_jmp_addr_0x004d7930:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004d7930    8b442404
                         {disp8} mov        dword ptr [eax + 0x48], 0x00000000            // 0x004d7934    c7404800000000
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x004d793b    8b5110
                         {disp8} mov        dword ptr [eax + 0x10], edx                   // 0x004d793e    895010
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x004d7941    894110
                         {disp8} inc        dword ptr [ecx + 0x08]                        // 0x004d7944    ff4108
                         ret                0x0004                                        // 0x004d7947    c20400
                         call               dword ptr [rdata_bytes + 0x704]               // 0x004d794a    ff1504978a00
_jmp_addr_0x004d7950:    sub                esp, 0x08                                     // 0x004d7950    83ec08
                         push               ebx                                           // 0x004d7953    53
                         push               ebp                                           // 0x004d7954    55
                         mov.s              ebp, ecx                                      // 0x004d7955    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                   // 0x004d7957    8b450c
                         cmp                eax, dword ptr [ebp + 0x08]                   // 0x004d795a    3b4508
                         push               esi                                           // 0x004d795d    56
                         push               edi                                           // 0x004d795e    57
                         {disp8} jae        _jmp_addr_0x004d79a4                          // 0x004d795f    7343
                         {disp8} mov        eax, dword ptr [ebp + 0x10]                   // 0x004d7961    8b4510
                         test               eax, eax                                      // 0x004d7964    85c0
                         {disp8} je         _jmp_addr_0x004d7976                          // 0x004d7966    740e
_jmp_addr_0x004d7968:    {disp8} mov        ecx, dword ptr [eax + 0x48]                   // 0x004d7968    8b4848
                         test               ecx, ecx                                      // 0x004d796b    85c9
                         {disp8} je         _jmp_addr_0x004d7982                          // 0x004d796d    7413
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x004d796f    8b4010
                         test               eax, eax                                      // 0x004d7972    85c0
                         {disp8} jne        _jmp_addr_0x004d7968                          // 0x004d7974    75f2
_jmp_addr_0x004d7976:    pop                edi                                           // 0x004d7976    5f
                         pop                esi                                           // 0x004d7977    5e
                         pop                ebp                                           // 0x004d7978    5d
                         xor.s              eax, eax                                      // 0x004d7979    33c0
                         pop                ebx                                           // 0x004d797b    5b
                         add                esp, 0x08                                     // 0x004d797c    83c408
                         ret                0x0004                                        // 0x004d797f    c20400
_jmp_addr_0x004d7982:    {disp8} mov        ecx, dword ptr [ebp + 0x14]                   // 0x004d7982    8b4d14
                         test               ecx, ecx                                      // 0x004d7985    85c9
                         {disp8} jne        _jmp_addr_0x004d798c                          // 0x004d7987    7503
                         {disp8} mov        dword ptr [ebp + 0x14], eax                   // 0x004d7989    894514
_jmp_addr_0x004d798c:    {disp8} mov        dword ptr [eax + 0x48], 0x00000001            // 0x004d798c    c7404801000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                   // 0x004d7993    8b4d0c
                         pop                edi                                           // 0x004d7996    5f
                         inc                ecx                                           // 0x004d7997    41
                         pop                esi                                           // 0x004d7998    5e
                         {disp8} mov        dword ptr [ebp + 0x0c], ecx                   // 0x004d7999    894d0c
                         pop                ebp                                           // 0x004d799c    5d
                         pop                ebx                                           // 0x004d799d    5b
                         add                esp, 0x08                                     // 0x004d799e    83c408
                         ret                0x0004                                        // 0x004d79a1    c20400
_jmp_addr_0x004d79a4:    {disp8} mov        esi, dword ptr [ebp + 0x14]                   // 0x004d79a4    8b7514
                         mov                edx, dword ptr [esi]                          // 0x004d79a7    8b16
                         mov.s              ecx, esi                                      // 0x004d79a9    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x004d79ab    ff522c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004d79ae    8b4c241c
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004d79b2    8d0440
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x8 + 0x00002240] // 0x004d79b5    8b94c140220000
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x004d79bc    89542414
                         xor.s              ebx, ebx                                      // 0x004d79c0    33db
_jmp_addr_0x004d79c2:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004d79c2    8b4c241c
                         push               esi                                           // 0x004d79c6    56
                         call               _jmp_addr_0x004d7d90                          // 0x004d79c7    e8c4030000
                         test               eax, eax                                      // 0x004d79cc    85c0
                         {disp8} jne        _jmp_addr_0x004d7a05                          // 0x004d79ce    7535
                         xor.s              edi, edi                                      // 0x004d79d0    33ff
_jmp_addr_0x004d79d2:    mov.s              ecx, edi                                      // 0x004d79d2    8bcf
                         and                ecx, 0x80000007                               // 0x004d79d4    81e107000080
                         {disp8} jns        _jmp_addr_0x004d79e1                          // 0x004d79da    7905
                         dec                ecx                                           // 0x004d79dc    49
                         or                 ecx, 0xfffffff8                               // 0x004d79dd    83c9f8
                         inc                ecx                                           // 0x004d79e0    41
_jmp_addr_0x004d79e1:    mov                edx, 0x00000001                               // 0x004d79e1    ba01000000
                         shl                edx, cl                                       // 0x004d79e6    d3e2
                         mov.s              eax, edi                                      // 0x004d79e8    8bc7
                         mov.s              ecx, edx                                      // 0x004d79ea    8bca
                         cdq                                                              // 0x004d79ec    99
                         and                edx, 0x07                                     // 0x004d79ed    83e207
                         add.s              eax, edx                                      // 0x004d79f0    03c2
                         sar                eax, 3                                        // 0x004d79f2    c1f803
                         {disp8} mov        al, byte ptr [eax + esi * 0x1 + 0x40]         // 0x004d79f5    8a443040
                         test               al, cl                                        // 0x004d79f9    84c8
                         {disp8} jne        _jmp_addr_0x004d7a05                          // 0x004d79fb    7508
                         inc                edi                                           // 0x004d79fd    47
                         cmp                edi, 0x28                                     // 0x004d79fe    83ff28
                         {disp8} jae        _jmp_addr_0x004d7a1e                          // 0x004d7a01    731b
                         {disp8} jmp        _jmp_addr_0x004d79d2                          // 0x004d7a03    ebcd
_jmp_addr_0x004d7a05:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004d7a05    8b442414
                         inc                ebx                                           // 0x004d7a09    43
                         cmp.s              ebx, eax                                      // 0x004d7a0a    3bd8
                         {disp32} jae       _jmp_addr_0x004d7976                          // 0x004d7a0c    0f8364ffffff
                         {disp8} mov        esi, dword ptr [esi + 0x10]                   // 0x004d7a12    8b7610
                         test               esi, esi                                      // 0x004d7a15    85f6
                         {disp8} jne        _jmp_addr_0x004d79c2                          // 0x004d7a17    75a9
                         {disp8} mov        esi, dword ptr [ebp + 0x10]                   // 0x004d7a19    8b7510
                         {disp8} jmp        _jmp_addr_0x004d79c2                          // 0x004d7a1c    eba4
_jmp_addr_0x004d7a1e:    mov.s              ecx, esi                                      // 0x004d7a1e    8bce
                         call               _jmp_addr_0x004d7a60                          // 0x004d7a20    e83b000000
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x004d7a25    8b4e30
                         mov                edx, dword ptr [ecx]                          // 0x004d7a28    8b11
                         push               esi                                           // 0x004d7a2a    56
                         call               dword ptr [edx + 0x110]                       // 0x004d7a2b    ff9210010000
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x004d7a31    8b4c2420
                         add                eax, 0x000001b4                               // 0x004d7a35    05b4010000
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x004d7a3a    8d0480
                         lea                ecx, dword ptr [ecx + eax * 0x4]              // 0x004d7a3d    8d0c81
                         call               _jmp_addr_0x004d8980                          // 0x004d7a40    e83b0f0000
                         pop                edi                                           // 0x004d7a45    5f
                         mov.s              eax, esi                                      // 0x004d7a46    8bc6
                         pop                esi                                           // 0x004d7a48    5e
                         pop                ebp                                           // 0x004d7a49    5d
                         pop                ebx                                           // 0x004d7a4a    5b
                         add                esp, 0x08                                     // 0x004d7a4b    83c408
                         ret                0x0004                                        // 0x004d7a4e    c20400
                         nop                                                              // 0x004d7a51    90
                         nop                                                              // 0x004d7a52    90
                         nop                                                              // 0x004d7a53    90
                         nop                                                              // 0x004d7a54    90
                         nop                                                              // 0x004d7a55    90
                         nop                                                              // 0x004d7a56    90
                         nop                                                              // 0x004d7a57    90
                         nop                                                              // 0x004d7a58    90
                         nop                                                              // 0x004d7a59    90
                         nop                                                              // 0x004d7a5a    90
                         nop                                                              // 0x004d7a5b    90
                         nop                                                              // 0x004d7a5c    90
                         nop                                                              // 0x004d7a5d    90
                         nop                                                              // 0x004d7a5e    90
                         nop                                                              // 0x004d7a5f    90
_jmp_addr_0x004d7a60:    push               ebp                                           // 0x004d7a60    55
                         push               esi                                           // 0x004d7a61    56
                         push               edi                                           // 0x004d7a62    57
                         xor.s              ebp, ebp                                      // 0x004d7a63    33ed
                         mov.s              edi, ecx                                      // 0x004d7a65    8bf9
                         xor.s              esi, esi                                      // 0x004d7a67    33f6
_jmp_addr_0x004d7a69:    mov.s              eax, esi                                      // 0x004d7a69    8bc6
                         cdq                                                              // 0x004d7a6b    99
                         and                edx, 0x07                                     // 0x004d7a6c    83e207
                         add.s              eax, edx                                      // 0x004d7a6f    03c2
                         sar                eax, 3                                        // 0x004d7a71    c1f803
                         mov.s              ecx, esi                                      // 0x004d7a74    8bce
                         and                ecx, 0x80000007                               // 0x004d7a76    81e107000080
                         {disp8} lea        eax, dword ptr [eax + edi * 0x1 + 0x40]       // 0x004d7a7c    8d443840
                         {disp8} jns        _jmp_addr_0x004d7a87                          // 0x004d7a80    7905
                         dec                ecx                                           // 0x004d7a82    49
                         or                 ecx, 0xfffffff8                               // 0x004d7a83    83c9f8
                         inc                ecx                                           // 0x004d7a86    41
_jmp_addr_0x004d7a87:    mov                dl, 0x01                                      // 0x004d7a87    b201
                         shl                dl, cl                                        // 0x004d7a89    d2e2
                         mov                cl, byte ptr [eax]                            // 0x004d7a8b    8a08
                         not                dl                                            // 0x004d7a8d    f6d2
                         and.s              cl, dl                                        // 0x004d7a8f    22ca
                         inc                esi                                           // 0x004d7a91    46
                         cmp                esi, 0x28                                     // 0x004d7a92    83fe28
                         mov                byte ptr [eax], cl                            // 0x004d7a95    8808
                         .byte              0x72, 0xd0// {disp8} jb _jmp_addr_0x004d7a69  // 0x004d7a97    72d0
                         {disp8} mov        dword ptr [edi + 0x20], ebp                   // 0x004d7a99    896f20
                         {disp8} mov        dword ptr [edi + 0x34], ebp                   // 0x004d7a9c    896f34
                         {disp8} mov        dword ptr [edi + 0x38], ebp                   // 0x004d7a9f    896f38
                         {disp8} mov        dword ptr [edi + 0x3c], ebp                   // 0x004d7aa2    896f3c
                         pop                edi                                           // 0x004d7aa5    5f
                         pop                esi                                           // 0x004d7aa6    5e
                         pop                ebp                                           // 0x004d7aa7    5d
                         ret                                                              // 0x004d7aa8    c3
                         nop                                                              // 0x004d7aa9    90
                         nop                                                              // 0x004d7aaa    90
                         nop                                                              // 0x004d7aab    90
                         nop                                                              // 0x004d7aac    90
                         nop                                                              // 0x004d7aad    90
                         nop                                                              // 0x004d7aae    90
                         nop                                                              // 0x004d7aaf    90
_jmp_addr_0x004d7ab0:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x004d7ab0    8b542404
                         {disp8} mov        dword ptr [edx + 0x48], 0x00000000            // 0x004d7ab4    c7424800000000
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x004d7abb    8b4114
                         cmp.s              edx, eax                                      // 0x004d7abe    3bd0
                         {disp8} jne        _jmp_addr_0x004d7ad2                          // 0x004d7ac0    7510
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x004d7ac2    8b4010
                         test               eax, eax                                      // 0x004d7ac5    85c0
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x004d7ac7    894114
                         {disp8} jne        _jmp_addr_0x004d7ad2                          // 0x004d7aca    7506
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x004d7acc    8b4110
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x004d7acf    894114
_jmp_addr_0x004d7ad2:    dec                dword ptr [ecx + 0x0c]                        // 0x004d7ad2    ff490c
                         {disp8} jne        _jmp_addr_0x004d7ade                          // 0x004d7ad5    7507
                         {disp8} mov        dword ptr [ecx + 0x14], 0x00000000            // 0x004d7ad7    c7411400000000
_jmp_addr_0x004d7ade:    ret                0x0004                                        // 0x004d7ade    c20400
                         nop                                                              // 0x004d7ae1    90
                         nop                                                              // 0x004d7ae2    90
                         nop                                                              // 0x004d7ae3    90
                         nop                                                              // 0x004d7ae4    90
                         nop                                                              // 0x004d7ae5    90
                         nop                                                              // 0x004d7ae6    90
                         nop                                                              // 0x004d7ae7    90
                         nop                                                              // 0x004d7ae8    90
                         nop                                                              // 0x004d7ae9    90
                         nop                                                              // 0x004d7aea    90
                         nop                                                              // 0x004d7aeb    90
                         nop                                                              // 0x004d7aec    90
                         nop                                                              // 0x004d7aed    90
                         nop                                                              // 0x004d7aee    90
                         nop                                                              // 0x004d7aef    90
_jmp_addr_0x004d7af0:    push               ecx                                           // 0x004d7af0    51
                         add                ecx, 0x00002418                               // 0x004d7af1    81c118240000
                         call               _jmp_addr_0x004d7950                          // 0x004d7af7    e854feffff
                         ret                                                              // 0x004d7afc    c3
                         nop                                                              // 0x004d7afd    90
                         nop                                                              // 0x004d7afe    90
                         nop                                                              // 0x004d7aff    90
_jmp_addr_0x004d7b00:    push               esi                                           // 0x004d7b00    56
                         push               edi                                           // 0x004d7b01    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004d7b02    8b7c240c
                         mov                eax, dword ptr [edi]                          // 0x004d7b06    8b07
                         mov.s              esi, ecx                                      // 0x004d7b08    8bf1
                         mov.s              ecx, edi                                      // 0x004d7b0a    8bcf
                         call               dword ptr [eax + 0x10c]                       // 0x004d7b0c    ff900c010000
                         cmp                eax, 0x18                                     // 0x004d7b12    83f818
                         {disp8} jge        _jmp_addr_0x004d7b3d                          // 0x004d7b15    7d26
                         {disp32} lea       ecx, dword ptr [eax + eax * 0x2 + 0x00000447] // 0x004d7b17    8d8c4047040000
                         push               esi                                           // 0x004d7b1e    56
                         lea                ecx, dword ptr [esi + ecx * 0x8]              // 0x004d7b1f    8d0cce
                         call               _jmp_addr_0x004d7950                          // 0x004d7b22    e829feffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004d7b27    8b542410
                         mov.s              esi, eax                                      // 0x004d7b2b    8bf0
                         push               edx                                           // 0x004d7b2d    52
                         push               edi                                           // 0x004d7b2e    57
                         mov.s              ecx, esi                                      // 0x004d7b2f    8bce
                         call               _jmp_addr_0x004d7e20                          // 0x004d7b31    e8ea020000
                         pop                edi                                           // 0x004d7b36    5f
                         mov.s              eax, esi                                      // 0x004d7b37    8bc6
                         pop                esi                                           // 0x004d7b39    5e
                         ret                0x0008                                        // 0x004d7b3a    c20800
_jmp_addr_0x004d7b3d:    pop                edi                                           // 0x004d7b3d    5f
                         xor.s              eax, eax                                      // 0x004d7b3e    33c0
                         pop                esi                                           // 0x004d7b40    5e
                         ret                0x0008                                        // 0x004d7b41    c20800
                         nop                                                              // 0x004d7b44    90
                         nop                                                              // 0x004d7b45    90
                         nop                                                              // 0x004d7b46    90
                         nop                                                              // 0x004d7b47    90
                         nop                                                              // 0x004d7b48    90
                         nop                                                              // 0x004d7b49    90
                         nop                                                              // 0x004d7b4a    90
                         nop                                                              // 0x004d7b4b    90
                         nop                                                              // 0x004d7b4c    90
                         nop                                                              // 0x004d7b4d    90
                         nop                                                              // 0x004d7b4e    90
                         nop                                                              // 0x004d7b4f    90
_jmp_addr_0x004d7b50:    push               esi                                           // 0x004d7b50    56
                         mov.s              esi, ecx                                      // 0x004d7b51    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x004d7b53    8b4c2408
                         mov                eax, dword ptr [ecx]                          // 0x004d7b57    8b01
                         push               ecx                                           // 0x004d7b59    51
                         call               dword ptr [eax + 0x2c]                        // 0x004d7b5a    ff502c
                         add                eax, 0x0000016d                               // 0x004d7b5d    056d010000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x004d7b62    8d0c40
                         lea                ecx, dword ptr [esi + ecx * 0x8]              // 0x004d7b65    8d0cce
                         call               _jmp_addr_0x004d7ab0                          // 0x004d7b68    e843ffffff
                         pop                esi                                           // 0x004d7b6d    5e
                         ret                0x0004                                        // 0x004d7b6e    c20400
                         nop                                                              // 0x004d7b71    90
                         nop                                                              // 0x004d7b72    90
                         nop                                                              // 0x004d7b73    90
                         nop                                                              // 0x004d7b74    90
                         nop                                                              // 0x004d7b75    90
                         nop                                                              // 0x004d7b76    90
                         nop                                                              // 0x004d7b77    90
                         nop                                                              // 0x004d7b78    90
                         nop                                                              // 0x004d7b79    90
                         nop                                                              // 0x004d7b7a    90
                         nop                                                              // 0x004d7b7b    90
                         nop                                                              // 0x004d7b7c    90
                         nop                                                              // 0x004d7b7d    90
                         nop                                                              // 0x004d7b7e    90
                         nop                                                              // 0x004d7b7f    90
_jmp_addr_0x004d7b80:    push               esi                                           // 0x004d7b80    56
                         mov.s              esi, ecx                                      // 0x004d7b81    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x004d7b83    8b4c2408
                         mov                eax, dword ptr [ecx]                          // 0x004d7b87    8b01
                         push               ecx                                           // 0x004d7b89    51
                         call               dword ptr [eax + 0x110]                       // 0x004d7b8a    ff9010010000
                         add                eax, 0x000001b4                               // 0x004d7b90    05b4010000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x004d7b95    8d0c80
                         lea                ecx, dword ptr [esi + ecx * 0x4]              // 0x004d7b98    8d0c8e
                         call               ?GetBeliefAboutObject@CreatureBeliefList@@QAEPAXPAVGameThingWithPos@@@Z                          // 0x004d7b9b    e810000000
                         pop                esi                                           // 0x004d7ba0    5e
                         ret                0x0004                                        // 0x004d7ba1    c20400
                         nop                                                              // 0x004d7ba4    90
                         nop                                                              // 0x004d7ba5    90
                         nop                                                              // 0x004d7ba6    90
                         nop                                                              // 0x004d7ba7    90
                         nop                                                              // 0x004d7ba8    90
                         nop                                                              // 0x004d7ba9    90
                         nop                                                              // 0x004d7baa    90
                         nop                                                              // 0x004d7bab    90
                         nop                                                              // 0x004d7bac    90
                         nop                                                              // 0x004d7bad    90
                         nop                                                              // 0x004d7bae    90
                         nop                                                              // 0x004d7baf    90
?GetBeliefAboutObject@CreatureBeliefList@@QAEPAXPAVGameThingWithPos@@@Z:
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x004d7bb0    8b4108
                         test               eax, eax                                      // 0x004d7bb3    85c0
                         {disp8} je         _jmp_addr_0x004d7bc7                          // 0x004d7bb5    7410
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004d7bb7    8b4c2404
_jmp_addr_0x004d7bbb:    cmp                ecx, dword ptr [eax + 0x30]                   // 0x004d7bbb    3b4830
                         {disp8} je         _jmp_addr_0x004d7bc9                          // 0x004d7bbe    7409
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x004d7bc0    8b4008
                         test               eax, eax                                      // 0x004d7bc3    85c0
                         {disp8} jne        _jmp_addr_0x004d7bbb                          // 0x004d7bc5    75f4
_jmp_addr_0x004d7bc7:    xor.s              eax, eax                                      // 0x004d7bc7    33c0
_jmp_addr_0x004d7bc9:    ret                0x0004                                        // 0x004d7bc9    c20400
                         nop                                                              // 0x004d7bcc    90
                         nop                                                              // 0x004d7bcd    90
                         nop                                                              // 0x004d7bce    90
                         nop                                                              // 0x004d7bcf    90
?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z:
                         push               esi                                           // 0x004d7bd0    56
                         push               edi                                           // 0x004d7bd1    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x004d7bd2    8b7c2410
                         mov                eax, dword ptr [edi]                          // 0x004d7bd6    8b07
                         mov.s              esi, ecx                                      // 0x004d7bd8    8bf1
                         mov.s              ecx, edi                                      // 0x004d7bda    8bcf
                         call               dword ptr [eax + 0x174]                       // 0x004d7bdc    ff9074010000
                         test               eax, eax                                      // 0x004d7be2    85c0
                         {disp8} je         _jmp_addr_0x004d7c45                          // 0x004d7be4    745f
                         cmp                edi, dword ptr [esi + 0x00020d18]             // 0x004d7be6    3bbe180d0200
                         {disp8} je         _jmp_addr_0x004d7c45                          // 0x004d7bec    7457
                         {disp32} fld       dword ptr [esi + 0x0001d3d8]                  // 0x004d7bee    d986d8d30100
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x004d7bf4    d81db4a38a00
                         fnstsw             ax                                            // 0x004d7bfa    dfe0
                         test               ah, 0x41                                      // 0x004d7bfc    f6c441
                         {disp8} je         _jmp_addr_0x004d7c45                          // 0x004d7bff    7444
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x004d7c01    8d4f14
                         mov                eax, dword ptr [ecx]                          // 0x004d7c04    8b01
                         {disp32} lea       edx, dword ptr [esi + 0x0001d3c8]             // 0x004d7c06    8d96c8d30100
                         mov                dword ptr [edx], eax                          // 0x004d7c0c    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x004d7c0e    8b4104
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x004d7c11    894204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x004d7c14    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x004d7c17    894a08
                         mov                edx, dword ptr [edi]                          // 0x004d7c1a    8b17
                         mov.s              ecx, edi                                      // 0x004d7c1c    8bcf
                         call               dword ptr [edx + 0x42c]                       // 0x004d7c1e    ff922c040000
                         {disp32} fstp      dword ptr [esi + 0x0001d3d0]                  // 0x004d7c24    d99ed0d30100
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004d7c2a    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x004d7c2f    8b88405a2000
                         {disp32} mov       dword ptr [esi + 0x0001d3d4], ecx             // 0x004d7c35    898ed4d30100
                         {disp32} mov       dword ptr [esi + 0x0001d3d8], 0x3f000000      // 0x004d7c3b    c786d8d301000000003f
_jmp_addr_0x004d7c45:    {disp32} mov       eax, dword ptr [esi + 0x00000f58]             // 0x004d7c45    8b86580f0000
                         test               eax, eax                                      // 0x004d7c4b    85c0
                         mov                ecx, 0x00000001                               // 0x004d7c4d    b901000000
                         {disp8} je         _jmp_addr_0x004d7c5f                          // 0x004d7c52    740b
                         cmp                edi, dword ptr [eax + 0x30]                   // 0x004d7c54    3b7830
                         {disp8} jne        _jmp_addr_0x004d7c5f                          // 0x004d7c57    7506
                         {disp32} mov       dword ptr [esi + 0x0001aa60], ecx             // 0x004d7c59    898e60aa0100
_jmp_addr_0x004d7c5f:    {disp32} mov       eax, dword ptr [esi + 0x00000f5c]             // 0x004d7c5f    8b865c0f0000
                         test               eax, eax                                      // 0x004d7c65    85c0
                         {disp8} je         _jmp_addr_0x004d7c74                          // 0x004d7c67    740b
                         cmp                edi, dword ptr [eax + 0x30]                   // 0x004d7c69    3b7830
                         {disp8} jne        _jmp_addr_0x004d7c74                          // 0x004d7c6c    7506
                         {disp32} mov       dword ptr [esi + 0x0001aa68], ecx             // 0x004d7c6e    898e68aa0100
_jmp_addr_0x004d7c74:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x004d7c74    8b54240c
                         mov                eax, dword ptr [edi]                          // 0x004d7c78    8b07
                         push               edi                                           // 0x004d7c7a    57
                         push               edx                                           // 0x004d7c7b    52
                         mov.s              ecx, edi                                      // 0x004d7c7c    8bcf
                         call               dword ptr [eax + 0x110]                       // 0x004d7c7e    ff9010010000
                         add                eax, 0x000001b4                               // 0x004d7c84    05b4010000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x004d7c89    8d0c80
                         lea                ecx, dword ptr [esi + ecx * 0x4]              // 0x004d7c8c    8d0c8e
                         call               ?AddBeliefAboutObject@CreatureBeliefList@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004d7c8f    e84c000000
                         pop                edi                                           // 0x004d7c94    5f
                         pop                esi                                           // 0x004d7c95    5e
                         ret                0x0008                                        // 0x004d7c96    c20800
                         nop                                                              // 0x004d7c99    90
                         nop                                                              // 0x004d7c9a    90
                         nop                                                              // 0x004d7c9b    90
                         nop                                                              // 0x004d7c9c    90
                         nop                                                              // 0x004d7c9d    90
                         nop                                                              // 0x004d7c9e    90
                         nop                                                              // 0x004d7c9f    90
                         push               esi                                           // 0x004d7ca0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x004d7ca1    8b742408
                         xor.s              edx, edx                                      // 0x004d7ca5    33d2
                         add                ecx, 0x00002218                               // 0x004d7ca7    81c118220000
_jmp_addr_0x004d7cad:    mov                eax, dword ptr [ecx]                          // 0x004d7cad    8b01
                         test               eax, eax                                      // 0x004d7caf    85c0
                         {disp8} je         _jmp_addr_0x004d7cbf                          // 0x004d7cb1    740c
_jmp_addr_0x004d7cb3:    cmp                dword ptr [eax + 0x30], esi                   // 0x004d7cb3    397030
                         {disp8} je         _jmp_addr_0x004d7cce                          // 0x004d7cb6    7416
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x004d7cb8    8b4008
                         test               eax, eax                                      // 0x004d7cbb    85c0
                         {disp8} jne        _jmp_addr_0x004d7cb3                          // 0x004d7cbd    75f4
_jmp_addr_0x004d7cbf:    inc                edx                                           // 0x004d7cbf    42
                         add                ecx, 0x14                                     // 0x004d7cc0    83c114
                         cmp                edx, 0x02                                     // 0x004d7cc3    83fa02
                         .byte              0x72, 0xe5// {disp8} jb _jmp_addr_0x004d7cad  // 0x004d7cc6    72e5
                         xor.s              eax, eax                                      // 0x004d7cc8    33c0
                         pop                esi                                           // 0x004d7cca    5e
                         ret                0x0004                                        // 0x004d7ccb    c20400
_jmp_addr_0x004d7cce:    mov                eax, 0x00000001                               // 0x004d7cce    b801000000
                         pop                esi                                           // 0x004d7cd3    5e
                         ret                0x0004                                        // 0x004d7cd4    c20400
                         nop                                                              // 0x004d7cd7    90
                         nop                                                              // 0x004d7cd8    90
                         nop                                                              // 0x004d7cd9    90
                         nop                                                              // 0x004d7cda    90
                         nop                                                              // 0x004d7cdb    90
                         nop                                                              // 0x004d7cdc    90
                         nop                                                              // 0x004d7cdd    90
                         nop                                                              // 0x004d7cde    90
                         nop                                                              // 0x004d7cdf    90
?AddBeliefAboutObject@CreatureBeliefList@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z:
                         push               ebx                                           // 0x004d7ce0    53
                         push               ebp                                           // 0x004d7ce1    55
                         push               esi                                           // 0x004d7ce2    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004d7ce3    8b742410
                         test               esi, esi                                      // 0x004d7ce7    85f6
                         push               edi                                           // 0x004d7ce9    57
                         mov.s              ebp, ecx                                      // 0x004d7cea    8be9
                         {disp8} je         _jmp_addr_0x004d7d52                          // 0x004d7cec    7464
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x004d7cee    8b5c2418
                         push               ebx                                           // 0x004d7cf2    53
                         call               ?GetBeliefAboutObject@CreatureBeliefList@@QAEPAXPAVGameThingWithPos@@@Z                          // 0x004d7cf3    e8b8feffff
                         mov.s              edi, eax                                      // 0x004d7cf8    8bf8
                         test               edi, edi                                      // 0x004d7cfa    85ff
                         {disp8} je         _jmp_addr_0x004d7d18                          // 0x004d7cfc    741a
                         mov                eax, dword ptr [esi]                          // 0x004d7cfe    8b06
                         mov                ebp, dword ptr [edi]                          // 0x004d7d00    8b2f
                         mov.s              ecx, esi                                      // 0x004d7d02    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x004d7d04    ff501c
                         push               eax                                           // 0x004d7d07    50
                         push               ebx                                           // 0x004d7d08    53
                         push               esi                                           // 0x004d7d09    56
                         mov.s              ecx, edi                                      // 0x004d7d0a    8bcf
                         call               dword ptr [ebp + 0x28]                        // 0x004d7d0c    ff5528
                         mov.s              eax, edi                                      // 0x004d7d0f    8bc7
                         pop                edi                                           // 0x004d7d11    5f
                         pop                esi                                           // 0x004d7d12    5e
                         pop                ebp                                           // 0x004d7d13    5d
                         pop                ebx                                           // 0x004d7d14    5b
                         ret                0x0008                                        // 0x004d7d15    c20800
_jmp_addr_0x004d7d18:    mov                edx, dword ptr [esi]                          // 0x004d7d18    8b16
                         mov.s              ecx, esi                                      // 0x004d7d1a    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x004d7d1c    ff521c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004d7d1f    8b8e64010000
                         push               eax                                           // 0x004d7d25    50
                         push               ebx                                           // 0x004d7d26    53
                         call               _jmp_addr_0x004d7b00                          // 0x004d7d27    e8d4fdffff
                         mov.s              edi, eax                                      // 0x004d7d2c    8bf8
                         test               edi, edi                                      // 0x004d7d2e    85ff
                         {disp8} je         _jmp_addr_0x004d7d49                          // 0x004d7d30    7417
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x004d7d32    8b8664010000
                         push               eax                                           // 0x004d7d38    50
                         push               edi                                           // 0x004d7d39    57
                         mov.s              ecx, ebp                                      // 0x004d7d3a    8bcd
                         call               _jmp_addr_0x004d7d60                          // 0x004d7d3c    e81f000000
                         push               edi                                           // 0x004d7d41    57
                         mov.s              ecx, esi                                      // 0x004d7d42    8bce
                         call               _jmp_addr_0x004d8bb0                          // 0x004d7d44    e8670e0000
_jmp_addr_0x004d7d49:    mov.s              eax, edi                                      // 0x004d7d49    8bc7
                         pop                edi                                           // 0x004d7d4b    5f
                         pop                esi                                           // 0x004d7d4c    5e
                         pop                ebp                                           // 0x004d7d4d    5d
                         pop                ebx                                           // 0x004d7d4e    5b
                         ret                0x0008                                        // 0x004d7d4f    c20800
_jmp_addr_0x004d7d52:    pop                edi                                           // 0x004d7d52    5f
                         pop                esi                                           // 0x004d7d53    5e
                         pop                ebp                                           // 0x004d7d54    5d
                         xor.s              eax, eax                                      // 0x004d7d55    33c0
                         pop                ebx                                           // 0x004d7d57    5b
                         ret                0x0008                                        // 0x004d7d58    c20800
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004d7d5b    e8199bf2ff
_jmp_addr_0x004d7d60:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004d7d60    8b442404
                         {disp8} mov        dword ptr [eax + 0x0c], 0x00000000            // 0x004d7d64    c7400c00000000
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x004d7d6b    8b5108
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x004d7d6e    895008
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x004d7d71    8b5108
                         test               edx, edx                                      // 0x004d7d74    85d2
                         {disp8} je         _jmp_addr_0x004d7d7b                          // 0x004d7d76    7403
                         {disp8} mov        dword ptr [edx + 0x0c], eax                   // 0x004d7d78    89420c
_jmp_addr_0x004d7d7b:    {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x004d7d7b    8b510c
                         test               edx, edx                                      // 0x004d7d7e    85d2
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x004d7d80    894108
                         {disp8} jne        _jmp_addr_0x004d7d88                          // 0x004d7d83    7503
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x004d7d85    89410c
_jmp_addr_0x004d7d88:    {disp8} inc        dword ptr [ecx + 0x10]                        // 0x004d7d88    ff4110
                         ret                0x0008                                        // 0x004d7d8b    c20800
                         nop                                                              // 0x004d7d8e    90
                         nop                                                              // 0x004d7d8f    90
_jmp_addr_0x004d7d90:    push               esi                                           // 0x004d7d90    56
                         mov.s              esi, ecx                                      // 0x004d7d91    8bf1
                         push               edi                                           // 0x004d7d93    57
                         {disp32} lea       ecx, dword ptr [esi + 0x00000f48]             // 0x004d7d94    8d8e480f0000
                         call               _jmp_addr_0x004f12e0                          // 0x004d7d9a    e841950100
                         test               eax, eax                                      // 0x004d7d9f    85c0
                         {disp8} je         _jmp_addr_0x004d7dbe                          // 0x004d7da1    741b
                         {disp32} mov       eax, dword ptr [esi + 0x00000fbc]             // 0x004d7da3    8b86bc0f0000
                         test               eax, eax                                      // 0x004d7da9    85c0
                         {disp8} jbe        _jmp_addr_0x004d7dbe                          // 0x004d7dab    7611
                         cmp                dword ptr [esi + 0x00000fb4], eax             // 0x004d7dad    3986b40f0000
                         {disp8} jae        _jmp_addr_0x004d7dbe                          // 0x004d7db3    7309
                         cmp                dword ptr [esi + 0x00000fb8], 0x03            // 0x004d7db5    83beb80f000003
                         {disp8} jl         _jmp_addr_0x004d7dc5                          // 0x004d7dbc    7c07
_jmp_addr_0x004d7dbe:    pop                edi                                           // 0x004d7dbe    5f
                         xor.s              eax, eax                                      // 0x004d7dbf    33c0
                         pop                esi                                           // 0x004d7dc1    5e
                         ret                0x0004                                        // 0x004d7dc2    c20400
_jmp_addr_0x004d7dc5:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004d7dc5    8b7c240c
                         cmp                edi, dword ptr [esi + 0x00000f54]             // 0x004d7dc9    3bbe540f0000
                         {disp8} je         _jmp_addr_0x004d7e11                          // 0x004d7dcf    7440
                         cmp                edi, dword ptr [esi + 0x00000f58]             // 0x004d7dd1    3bbe580f0000
                         {disp8} je         _jmp_addr_0x004d7e11                          // 0x004d7dd7    7438
                         cmp                edi, dword ptr [esi + 0x00000f5c]             // 0x004d7dd9    3bbe5c0f0000
                         {disp8} je         _jmp_addr_0x004d7e11                          // 0x004d7ddf    7430
                         {disp32} mov       eax, dword ptr [esi + 0x00000fb4]             // 0x004d7de1    8b86b40f0000
                         {disp32} mov       edx, dword ptr [esi + 0x00000fbc]             // 0x004d7de7    8b96bc0f0000
                         cmp.s              eax, edx                                      // 0x004d7ded    3bc2
                         {disp8} jae        _jmp_addr_0x004d7e0a                          // 0x004d7def    7319
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x004d7df1    8d0c40
                         shl                ecx, 5                                        // 0x004d7df4    c1e105
                         {disp32} lea       ecx, dword ptr [ecx + esi * 0x1 + 0x00000fdc] // 0x004d7df7    8d8c31dc0f0000
_jmp_addr_0x004d7dfe:    cmp                dword ptr [ecx], edi                          // 0x004d7dfe    3939
                         {disp8} je         _jmp_addr_0x004d7e11                          // 0x004d7e00    740f
                         inc                eax                                           // 0x004d7e02    40
                         add                ecx, 0x60                                     // 0x004d7e03    83c160
                         cmp.s              eax, edx                                      // 0x004d7e06    3bc2
                         .byte              0x72, 0xf4// {disp8} jb _jmp_addr_0x004d7dfe  // 0x004d7e08    72f4
_jmp_addr_0x004d7e0a:    pop                edi                                           // 0x004d7e0a    5f
                         xor.s              eax, eax                                      // 0x004d7e0b    33c0
                         pop                esi                                           // 0x004d7e0d    5e
                         ret                0x0004                                        // 0x004d7e0e    c20400
_jmp_addr_0x004d7e11:    pop                edi                                           // 0x004d7e11    5f
                         mov                eax, 0x00000001                               // 0x004d7e12    b801000000
                         pop                esi                                           // 0x004d7e17    5e
                         ret                0x0004                                        // 0x004d7e18    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004d7e1b    e8599af2ff
_jmp_addr_0x004d7e20:    push               ebx                                           // 0x004d7e20    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x004d7e21    8b5c2408
                         push               esi                                           // 0x004d7e25    56
                         mov.s              esi, ecx                                      // 0x004d7e26    8bf1
                         {disp8} lea        eax, dword ptr [ebx + 0x14]                   // 0x004d7e28    8d4314
                         mov                edx, dword ptr [eax]                          // 0x004d7e2b    8b10
                         {disp8} lea        ecx, dword ptr [esi + 0x24]                   // 0x004d7e2d    8d4e24
                         mov                dword ptr [ecx], edx                          // 0x004d7e30    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x004d7e32    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x004d7e35    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x004d7e38    8b4008
                         mov                edx, dword ptr [esi]                          // 0x004d7e3b    8b16
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x004d7e3d    894108
                         push               edi                                           // 0x004d7e40    57
                         mov.s              ecx, esi                                      // 0x004d7e41    8bce
                         {disp8} mov        dword ptr [esi + 0x30], ebx                   // 0x004d7e43    895e30
                         xor.s              edi, edi                                      // 0x004d7e46    33ff
                         call               dword ptr [edx + 0x1c]                        // 0x004d7e48    ff521c
                         test               eax, eax                                      // 0x004d7e4b    85c0
                         {disp8} jbe        _jmp_addr_0x004d7e72                          // 0x004d7e4d    7623
                         push               ebp                                           // 0x004d7e4f    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x004d7e50    8b6c2418
_jmp_addr_0x004d7e54:    mov                eax, dword ptr [esi]                          // 0x004d7e54    8b06
                         push               edi                                           // 0x004d7e56    57
                         mov.s              ecx, esi                                      // 0x004d7e57    8bce
                         call               dword ptr [eax + 0x20]                        // 0x004d7e59    ff5020
                         mov                edx, dword ptr [eax]                          // 0x004d7e5c    8b10
                         push               ebp                                           // 0x004d7e5e    55
                         push               ebx                                           // 0x004d7e5f    53
                         mov.s              ecx, eax                                      // 0x004d7e60    8bc8
                         call               dword ptr [edx + 0x28]                        // 0x004d7e62    ff5228
                         mov                eax, dword ptr [esi]                          // 0x004d7e65    8b06
                         mov.s              ecx, esi                                      // 0x004d7e67    8bce
                         inc                edi                                           // 0x004d7e69    47
                         call               dword ptr [eax + 0x1c]                        // 0x004d7e6a    ff501c
                         cmp.s              edi, eax                                      // 0x004d7e6d    3bf8
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x004d7e54  // 0x004d7e6f    72e3
                         pop                ebp                                           // 0x004d7e71    5d
_jmp_addr_0x004d7e72:    pop                edi                                           // 0x004d7e72    5f
                         pop                esi                                           // 0x004d7e73    5e
                         pop                ebx                                           // 0x004d7e74    5b
                         ret                0x0008                                        // 0x004d7e75    c20800
                         nop                                                              // 0x004d7e78    90
                         nop                                                              // 0x004d7e79    90
                         nop                                                              // 0x004d7e7a    90
                         nop                                                              // 0x004d7e7b    90
                         nop                                                              // 0x004d7e7c    90
                         nop                                                              // 0x004d7e7d    90
                         nop                                                              // 0x004d7e7e    90
                         nop                                                              // 0x004d7e7f    90
_jmp_addr_0x004d7e80:    push               ebx                                           // 0x004d7e80    53
                         push               ebp                                           // 0x004d7e81    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x004d7e82    8b6c2410
                         push               esi                                           // 0x004d7e86    56
                         mov.s              esi, ecx                                      // 0x004d7e87    8bf1
                         {disp8} lea        eax, dword ptr [ebp + 0x14]                   // 0x004d7e89    8d4514
                         mov                edx, dword ptr [eax]                          // 0x004d7e8c    8b10
                         {disp8} lea        ecx, dword ptr [esi + 0x24]                   // 0x004d7e8e    8d4e24
                         mov                dword ptr [ecx], edx                          // 0x004d7e91    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x004d7e93    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x004d7e96    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x004d7e99    8b4008
                         mov                edx, dword ptr [esi]                          // 0x004d7e9c    8b16
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x004d7e9e    894108
                         push               edi                                           // 0x004d7ea1    57
                         mov.s              ecx, esi                                      // 0x004d7ea2    8bce
                         xor.s              ebx, ebx                                      // 0x004d7ea4    33db
                         call               dword ptr [edx + 0x1c]                        // 0x004d7ea6    ff521c
                         test               eax, eax                                      // 0x004d7ea9    85c0
                         {disp8} jbe        _jmp_addr_0x004d7ee2                          // 0x004d7eab    7635
_jmp_addr_0x004d7ead:    mov                eax, dword ptr [esi]                          // 0x004d7ead    8b06
                         push               ebx                                           // 0x004d7eaf    53
                         mov.s              ecx, esi                                      // 0x004d7eb0    8bce
                         call               dword ptr [eax + 0x20]                        // 0x004d7eb2    ff5020
                         mov.s              edi, eax                                      // 0x004d7eb5    8bf8
                         mov                edx, dword ptr [edi]                          // 0x004d7eb7    8b17
                         mov.s              ecx, edi                                      // 0x004d7eb9    8bcf
                         call               dword ptr [edx + 0x30]                        // 0x004d7ebb    ff5230
                         test               eax, eax                                      // 0x004d7ebe    85c0
                         {disp8} je         _jmp_addr_0x004d7ed6                          // 0x004d7ec0    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004d7ec2    8b4c241c
                         mov                eax, dword ptr [edi]                          // 0x004d7ec6    8b07
                         push               ecx                                           // 0x004d7ec8    51
                         push               ebp                                           // 0x004d7ec9    55
                         mov.s              ecx, edi                                      // 0x004d7eca    8bcf
                         call               dword ptr [eax + 0x28]                        // 0x004d7ecc    ff5028
                         mov                edx, dword ptr [edi]                          // 0x004d7ecf    8b17
                         mov.s              ecx, edi                                      // 0x004d7ed1    8bcf
                         call               dword ptr [edx + 0x20]                        // 0x004d7ed3    ff5220
_jmp_addr_0x004d7ed6:    mov                eax, dword ptr [esi]                          // 0x004d7ed6    8b06
                         mov.s              ecx, esi                                      // 0x004d7ed8    8bce
                         inc                ebx                                           // 0x004d7eda    43
                         call               dword ptr [eax + 0x1c]                        // 0x004d7edb    ff501c
                         cmp.s              ebx, eax                                      // 0x004d7ede    3bd8
                         .byte              0x72, 0xcb// {disp8} jb _jmp_addr_0x004d7ead  // 0x004d7ee0    72cb
_jmp_addr_0x004d7ee2:    {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x004d7ee2    8b4e30
                         mov                edx, dword ptr [ecx]                          // 0x004d7ee5    8b11
                         call               dword ptr [edx + 0x1dc]                       // 0x004d7ee7    ff92dc010000
                         test               eax, eax                                      // 0x004d7eed    85c0
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x004d7eef    8b7c2414
                         {disp8} je         _jmp_addr_0x004d7f23                          // 0x004d7ef3    742e
                         cmp                dword ptr [esi + 0x30], edi                   // 0x004d7ef5    397e30
                         {disp8} je         _jmp_addr_0x004d7f23                          // 0x004d7ef8    7429
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004d7efa    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]             // 0x004d7eff    8b80405a2000
                         {disp8} mov        ebx, dword ptr [esi + 0x3c]                   // 0x004d7f05    8b5e3c
                         mov.s              ecx, eax                                      // 0x004d7f08    8bc8
                         sub.s              ecx, ebx                                      // 0x004d7f0a    2bcb
                         cmp                ecx, 0x000000c8                               // 0x004d7f0c    81f9c8000000
                         {disp8} jbe        _jmp_addr_0x004d7f23                          // 0x004d7f12    760f
                         {disp8} mov        dword ptr [esi + 0x3c], eax                   // 0x004d7f14    89463c
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x004d7f17    8b8f64010000
                         push               esi                                           // 0x004d7f1d    56
                         call               _jmp_addr_0x004de800                          // 0x004d7f1e    e8dd680000
_jmp_addr_0x004d7f23:    {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x004d7f23    8b4e30
                         mov                edx, dword ptr [ecx]                          // 0x004d7f26    8b11
                         push               edi                                           // 0x004d7f28    57
                         call               dword ptr [edx + 0x3b4]                       // 0x004d7f29    ff92b4030000
                         test               eax, eax                                      // 0x004d7f2f    85c0
                         {disp8} je         _jmp_addr_0x004d7f48                          // 0x004d7f31    7415
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x004d7f33    8b8f64010000
                         push               0x3f000000                                    // 0x004d7f39    680000003f
                         push               0xc                                           // 0x004d7f3e    6a0c
                         add                ecx, 0x8                                      // 0x004d7f40    83c108
                         call               _jmp_addr_0x004de730                          // 0x004d7f43    e8e8670000
_jmp_addr_0x004d7f48:    {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x004d7f48    8b4e30
                         mov                eax, dword ptr [ecx]                          // 0x004d7f4b    8b01
                         push               edi                                           // 0x004d7f4d    57
                         call               dword ptr [eax + 0x394]                       // 0x004d7f4e    ff9094030000
                         test               eax, eax                                      // 0x004d7f54    85c0
                         {disp8} je         _jmp_addr_0x004d7f6d                          // 0x004d7f56    7415
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x004d7f58    8b8f64010000
                         push               0x3e99999a                                    // 0x004d7f5e    689a99993e
                         push               0x3c                                          // 0x004d7f63    6a3c
                         add                ecx, 0x8                                      // 0x004d7f65    83c108
                         call               _jmp_addr_0x004de730                          // 0x004d7f68    e8c3670000
_jmp_addr_0x004d7f6d:    pop                edi                                           // 0x004d7f6d    5f
                         pop                esi                                           // 0x004d7f6e    5e
                         pop                ebp                                           // 0x004d7f6f    5d
                         pop                ebx                                           // 0x004d7f70    5b
                         ret                0x000c                                        // 0x004d7f71    c20c00
                         nop                                                              // 0x004d7f74    90
                         nop                                                              // 0x004d7f75    90
                         nop                                                              // 0x004d7f76    90
                         nop                                                              // 0x004d7f77    90
                         nop                                                              // 0x004d7f78    90
                         nop                                                              // 0x004d7f79    90
                         nop                                                              // 0x004d7f7a    90
                         nop                                                              // 0x004d7f7b    90
                         nop                                                              // 0x004d7f7c    90
                         nop                                                              // 0x004d7f7d    90
                         nop                                                              // 0x004d7f7e    90
                         nop                                                              // 0x004d7f7f    90
                         {disp8} mov        ecx, dword ptr [ecx + 0x30]                   // 0x004d7f80    8b4930
                         push               0x0                                           // 0x004d7f83    6a00
                         push               0x009d10b8                                    // 0x004d7f85    68b8109d00
                         push               0x009c7f30                                    // 0x004d7f8a    68307f9c00
                         push               0x0                                           // 0x004d7f8f    6a00
                         push               ecx                                           // 0x004d7f91    51
                         call               ___RTDynamicCast                              // 0x004d7f92    e882da2e00
                         add                esp, 0x14                                     // 0x004d7f97    83c414
                         test               eax, eax                                      // 0x004d7f9a    85c0
                         {disp8} je         _jmp_addr_0x004d7fb9                          // 0x004d7f9c    741b
                         {disp32} mov       eax, dword ptr [eax + 0x000000cc]             // 0x004d7f9e    8b80cc000000
                         test               eax, eax                                      // 0x004d7fa4    85c0
                         {disp8} je         _jmp_addr_0x004d7fb9                          // 0x004d7fa6    7411
                         push               eax                                           // 0x004d7fa8    50
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004d7fa9    8b442408
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]             // 0x004d7fad    8b8864010000
                         push               eax                                           // 0x004d7fb3    50
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004d7fb4    e817fcffff
_jmp_addr_0x004d7fb9:    ret                0x000c                                        // 0x004d7fb9    c20c00
                         nop                                                              // 0x004d7fbc    90
                         nop                                                              // 0x004d7fbd    90
                         nop                                                              // 0x004d7fbe    90
                         nop                                                              // 0x004d7fbf    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x004d7fc0    8b44240c
                         sub                esp, 0x08                                     // 0x004d7fc4    83ec08
                         push               esi                                           // 0x004d7fc7    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x004d7fc8    8b742414
                         push               edi                                           // 0x004d7fcc    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x004d7fcd    8b7c2414
                         push               eax                                           // 0x004d7fd1    50
                         push               esi                                           // 0x004d7fd2    56
                         push               edi                                           // 0x004d7fd3    57
                         call               _jmp_addr_0x004d7e80                          // 0x004d7fd4    e8a7feffff
                         test               byte ptr [edi + 0x25], 0x04                   // 0x004d7fd9    f6472504
                         {disp8} jne        _jmp_addr_0x004d805e                          // 0x004d7fdd    757f
                         push               0x0                                           // 0x004d7fdf    6a00
                         push               0x009cfa40                                    // 0x004d7fe1    6840fa9c00
                         push               0x009c7f30                                    // 0x004d7fe6    68307f9c00
                         push               0x0                                           // 0x004d7feb    6a00
                         push               esi                                           // 0x004d7fed    56
                         call               ___RTDynamicCast                              // 0x004d7fee    e826da2e00
                         mov.s              esi, eax                                      // 0x004d7ff3    8bf0
                         xor.s              edx, edx                                      // 0x004d7ff5    33d2
                         mov                eax, 0x000003e8                               // 0x004d7ff7    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x004d7ffc    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x004d8002    c744242000000000
                         add                esp, 0x14                                     // 0x004d800a    83c414
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x004d800d    89442408
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x004d8011    df6c2408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e658]             // 0x004d8015    d80d58768c00
                         call               _jmp_addr_0x007a1400                          // 0x004d801b    e8e0932c00
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x004d8020    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x004d8024    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x004d802c    df6c2408
                         push               0x0                                           // 0x004d8030    6a00
                         {disp8} lea        ecx, dword ptr [esi + 0x34]                   // 0x004d8032    8d4e34
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x004d8035    d83d90a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x004d803b    d95c2420
                         call               _jmp_addr_0x00745ea0                          // 0x004d803f    e85cde2600
                         cmp                eax, -0x01                                    // 0x004d8044    83f8ff
                         {disp8} je         _jmp_addr_0x004d805e                          // 0x004d8047    7415
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004d8049    8b4c241c
                         push               ecx                                           // 0x004d804d    51
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x004d804e    8b8f64010000
                         push               0x3                                           // 0x004d8054    6a03
                         add                ecx, 0x8                                      // 0x004d8056    83c108
                         call               _jmp_addr_0x004de730                          // 0x004d8059    e8d2660000
_jmp_addr_0x004d805e:    pop                edi                                           // 0x004d805e    5f
                         pop                esi                                           // 0x004d805f    5e
                         add                esp, 0x08                                     // 0x004d8060    83c408
                         ret                0x000c                                        // 0x004d8063    c20c00
                         nop                                                              // 0x004d8066    90
                         nop                                                              // 0x004d8067    90
                         nop                                                              // 0x004d8068    90
                         nop                                                              // 0x004d8069    90
                         nop                                                              // 0x004d806a    90
                         nop                                                              // 0x004d806b    90
                         nop                                                              // 0x004d806c    90
                         nop                                                              // 0x004d806d    90
                         nop                                                              // 0x004d806e    90
                         nop                                                              // 0x004d806f    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x004d8070    8b44240c
                         push               ebp                                           // 0x004d8074    55
                         push               esi                                           // 0x004d8075    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004d8076    8b742410
                         push               edi                                           // 0x004d807a    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x004d807b    8b7c2410
                         push               eax                                           // 0x004d807f    50
                         push               esi                                           // 0x004d8080    56
                         mov.s              ebp, ecx                                      // 0x004d8081    8be9
                         push               edi                                           // 0x004d8083    57
                         call               _jmp_addr_0x004d7e80                          // 0x004d8084    e8f7fdffff
                         cmp                dword ptr [edi + 0x00001268], 0x03            // 0x004d8089    83bf6812000003
                         {disp32} jl        _jmp_addr_0x004d81fa                          // 0x004d8090    0f8c64010000
                         test               byte ptr [edi + 0x25], 0x04                   // 0x004d8096    f6472504
                         {disp32} jne       _jmp_addr_0x004d81fa                          // 0x004d809a    0f855a010000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x004d80a0    8b8f64010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000f50]             // 0x004d80a6    8b81500f0000
                         cmp                eax, 0x27                                     // 0x004d80ac    83f827
                         {disp8} ja         _jmp_addr_0x004d80c0                          // 0x004d80af    770f
                         xor.s              edx, edx                                      // 0x004d80b1    33d2
                         {disp32} mov       dl, byte ptr [eax + 0x004d8208]               // 0x004d80b3    8a9008824d00
                         jmp                dword ptr [edx*4 + 0x4d8200]                  // 0x004d80b9    ff249500824d00
_jmp_addr_0x004d80c0:    push               ebx                                           // 0x004d80c0    53
                         push               0x0                                           // 0x004d80c1    6a00
                         push               0x009cafc8                                    // 0x004d80c3    68c8af9c00
                         push               0x009c7f30                                    // 0x004d80c8    68307f9c00
                         push               0x0                                           // 0x004d80cd    6a00
                         push               esi                                           // 0x004d80cf    56
                         call               ___RTDynamicCast                              // 0x004d80d0    e844d92e00
                         mov.s              ebx, eax                                      // 0x004d80d5    8bd8
                         add                esp, 0x14                                     // 0x004d80d7    83c414
                         mov.s              ecx, ebx                                      // 0x004d80da    8bcb
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x004d80dc    e80fa71100
                         and                eax, 0x000000ff                               // 0x004d80e1    25ff000000
                         mov.s              esi, eax                                      // 0x004d80e6    8bf0
                         cmp                esi, 0x17                                     // 0x004d80e8    83fe17
                         {disp8} jne        _jmp_addr_0x004d80f7                          // 0x004d80eb    750a
                         xor.s              eax, eax                                      // 0x004d80ed    33c0
                         {disp32} mov       al, byte ptr [ebx + 0x0000008d]               // 0x004d80ef    8a838d000000
                         mov.s              esi, eax                                      // 0x004d80f5    8bf0
_jmp_addr_0x004d80f7:    cmp                esi, 0x21                                     // 0x004d80f7    83fe21
                         {disp8} jne        _jmp_addr_0x004d8121                          // 0x004d80fa    7525
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000080]             // 0x004d80fc    8d8b80000000
                         push               ecx                                           // 0x004d8102    51
                         {disp8} lea        edx, dword ptr [ebx + 0x14]                   // 0x004d8103    8d5314
                         push               edx                                           // 0x004d8106    52
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x004d8107    e8644c2700
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26300]             // 0x004d810c    d81d00f38c00
                         add                esp, 0x08                                     // 0x004d8112    83c408
                         fnstsw             ax                                            // 0x004d8115    dfe0
                         test               ah, 0x41                                      // 0x004d8117    f6c441
                         {disp8} jne        _jmp_addr_0x004d8121                          // 0x004d811a    7505
                         mov                esi, 0x000000a3                               // 0x004d811c    bea3000000
_jmp_addr_0x004d8121:    lea                eax, dword ptr [esi + esi * 0x2]              // 0x004d8121    8d0476
                         shl                eax, 3                                        // 0x004d8124    c1e003
                         sub.s              eax, esi                                      // 0x004d8127    2bc6
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004d8129    8d0440
                         {disp32} mov       esi, dword ptr [eax * 0x4 + 0x00db9f58]       // 0x004d812c    8b3485589fdb00
                         cmp                esi, 0x06                                     // 0x004d8133    83fe06
                         {disp8} je         _jmp_addr_0x004d8171                          // 0x004d8136    7439
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x004d8138    8b8764010000
                         push               esi                                           // 0x004d813e    56
                         push               0x0                                           // 0x004d813f    6a00
                         {disp32} lea       ecx, dword ptr [eax + 0x0001a9fc]             // 0x004d8141    8d88fca90100
                         call               _jmp_addr_0x004e2890                          // 0x004d8147    e844a70000
                         test               eax, eax                                      // 0x004d814c    85c0
                         {disp8} jne        _jmp_addr_0x004d8171                          // 0x004d814e    7521
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x004d8150    8b8f64010000
                         push               esi                                           // 0x004d8156    56
                         push               eax                                           // 0x004d8157    50
                         call               _jmp_addr_0x004e2380                          // 0x004d8158    e823a20000
                         push               0x1                                           // 0x004d815d    6a01
                         push               0x0                                           // 0x004d815f    6a00
                         push               0x0                                           // 0x004d8161    6a00
                         push               ebp                                           // 0x004d8163    55
                         push               0x4f                                          // 0x004d8164    6a4f
                         push               0x0                                           // 0x004d8166    6a00
                         push               0x6                                           // 0x004d8168    6a06
                         mov.s              ecx, edi                                      // 0x004d816a    8bcf
                         call               ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z                          // 0x004d816c    e8dfc2feff
_jmp_addr_0x004d8171:    mov                edx, dword ptr [ebx]                          // 0x004d8171    8b13
                         mov.s              ecx, ebx                                      // 0x004d8173    8bcb
                         call               dword ptr [edx + 0x48]                        // 0x004d8175    ff5248
                         test               eax, eax                                      // 0x004d8178    85c0
                         pop                ebx                                           // 0x004d817a    5b
                         {disp8} je         _jmp_addr_0x004d81fa                          // 0x004d817b    747d
                         mov                edx, dword ptr [eax]                          // 0x004d817d    8b10
                         mov.s              ecx, eax                                      // 0x004d817f    8bc8
                         call               dword ptr [edx + 0x1c]                        // 0x004d8181    ff521c
                         mov.s              esi, eax                                      // 0x004d8184    8bf0
                         mov.s              ecx, esi                                      // 0x004d8186    8bce
                         call               ?IsNeutral@GPlayer@@QAE_NXZ                   // 0x004d8188    e8732a1700
                         test               eax, eax                                      // 0x004d818d    85c0
                         {disp8} jne        _jmp_addr_0x004d819c                          // 0x004d818f    750b
                         mov                eax, dword ptr [edi]                          // 0x004d8191    8b07
                         mov.s              ecx, edi                                      // 0x004d8193    8bcf
                         call               dword ptr [eax + 0x1c]                        // 0x004d8195    ff501c
                         cmp.s              esi, eax                                      // 0x004d8198    3bf0
                         {disp8} je         _jmp_addr_0x004d81fa                          // 0x004d819a    745e
_jmp_addr_0x004d819c:    {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x004d819c    8b8764010000
                         {disp32} fld       dword ptr [eax + 0x0000070c]                  // 0x004d81a2    d9800c070000
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x004d81a8    d805b4a38a00
                         {disp32} fstp      dword ptr [eax + 0x0000070c]                  // 0x004d81ae    d9980c070000
                         {disp32} mov       edi, dword ptr [edi + 0x00000164]             // 0x004d81b4    8bbf64010000
                         {disp32} fld       dword ptr [edi + 0x0000070c]                  // 0x004d81ba    d9870c070000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004d81c0    d81d98a38a00
                         fnstsw             ax                                            // 0x004d81c6    dfe0
                         test               ah, 0x01                                      // 0x004d81c8    f6c401
                         {disp8} je         _jmp_addr_0x004d81dd                          // 0x004d81cb    7410
                         {disp32} mov       dword ptr [edi + 0x0000070c], 0x00000000      // 0x004d81cd    c7870c07000000000000
                         pop                edi                                           // 0x004d81d7    5f
                         pop                esi                                           // 0x004d81d8    5e
                         pop                ebp                                           // 0x004d81d9    5d
                         ret                0x000c                                        // 0x004d81da    c20c00
_jmp_addr_0x004d81dd:    {disp32} fld       dword ptr [edi + 0x0000070c]                  // 0x004d81dd    d9870c070000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x004d81e3    d81d90a38a00
                         fnstsw             ax                                            // 0x004d81e9    dfe0
                         test               ah, 0x41                                      // 0x004d81eb    f6c441
                         {disp8} jne        _jmp_addr_0x004d81fa                          // 0x004d81ee    750a
                         {disp32} mov       dword ptr [edi + 0x0000070c], 0x3f800000      // 0x004d81f0    c7870c0700000000803f
_jmp_addr_0x004d81fa:    pop                edi                                           // 0x004d81fa    5f
                         pop                esi                                           // 0x004d81fb    5e
                         pop                ebp                                           // 0x004d81fc    5d
                         ret                0x000c                                        // 0x004d81fd    c20c00

// Snippet: jmptbl, [0x004d8200, 0x004d8208)
.byte 0xfa, 0x81, 0x4d, 0x00      // 0x004d8200
.byte 0xc0, 0x80, 0x4d, 0x00      // 0x004d8204

// Snippet: ijmptbl, [0x004d8208, 0x004d8230)
.byte 0x00, 0x00, 0x00, 0x00      // 0x004d8208
.byte 0x00, 0x00, 0x01, 0x00      // 0x004d820c
.byte 0x00, 0x01, 0x01, 0x00      // 0x004d8210
.byte 0x01, 0x01, 0x00, 0x00      // 0x004d8214
.byte 0x00, 0x01, 0x01, 0x00      // 0x004d8218
.byte 0x00, 0x00, 0x00, 0x00      // 0x004d821c
.byte 0x01, 0x00, 0x00, 0x01      // 0x004d8220
.byte 0x01, 0x01, 0x01, 0x01      // 0x004d8224
.byte 0x01, 0x01, 0x01, 0x01      // 0x004d8228
.byte 0x01, 0x01, 0x01, 0x00      // 0x004d822c

