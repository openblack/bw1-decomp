.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004146f0
.extern _jmp_addr_0x0046c1b0
.extern _jmp_addr_0x0046c2e0
.extern ?Create@Creature@@SAPAV1@ABUMapCoords@@PBVCreatureInfo@@PAVGPlayer@@@Z
.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x004798c0
.extern _jmp_addr_0x0047ab90
.extern _jmp_addr_0x0047db50
.extern _jmp_addr_0x0047dbd0
.extern _jmp_addr_0x00484260
.extern _jmp_addr_0x004c43a0
.extern ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z
.extern _jmp_addr_0x004c45c0
.extern _jmp_addr_0x004c5280
.extern _jmp_addr_0x004c9fe0
.extern _jmp_addr_0x004cf060
.extern _jmp_addr_0x004d4270
.extern _jmp_addr_0x004d4df0
.extern _jmp_addr_0x004d7b80
.extern ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z
.extern _jmp_addr_0x004dc970
.extern _jmp_addr_0x004dc9a0
.extern _jmp_addr_0x004dc9f0
.extern _jmp_addr_0x004dcdd0
.extern _jmp_addr_0x004dce20
.extern _jmp_addr_0x004dcf20
.extern _jmp_addr_0x004e27f0
.extern _jmp_addr_0x004f0100
.extern ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z
.extern _jmp_addr_0x004f12d0
.extern _jmp_addr_0x004f51e0
.extern _jmp_addr_0x004f5200
.extern _jmp_addr_0x004f5360
.extern _jmp_addr_0x004f75b0
.extern _jmp_addr_0x004f8ca0
.extern ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z
.extern _jmp_addr_0x004ff5c0
.extern ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern _jmp_addr_0x00550ba0
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x005e6ae0
.extern _jmp_addr_0x005e6f70
.extern _jmp_addr_0x005fa7d0
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z
.extern ___nw__FUl
.extern _jmp_addr_0x00841660
.extern _jmp_addr_0x00841670
.extern _jmp_addr_0x00841750
.extern _jmp_addr_0x00842150

.globl _jmp_addr_0x004f5420
.globl _jmp_addr_0x004f5e60
.globl _jmp_addr_0x004f5ea0
.globl _jmp_addr_0x004f5f00
.globl _jmp_addr_0x004f5f40
.globl _jmp_addr_0x004f5fa0
.globl _jmp_addr_0x004f5fe0
.globl _jmp_addr_0x004f60b0
.globl _jmp_addr_0x004f62d0
.globl _jmp_addr_0x004f6340
.globl _jmp_addr_0x004f6410
.globl _jmp_addr_0x004f64d0
.globl _jmp_addr_0x004f6610
.globl _jmp_addr_0x004f6850
.globl _jmp_addr_0x004f6930
.globl _jmp_addr_0x004f6950
.globl _jmp_addr_0x004f6980
.globl _jmp_addr_0x004f6b60
.globl _jmp_addr_0x004f6e30
.globl _jmp_addr_0x004f6f10
.globl _jmp_addr_0x004f7000
.globl _jmp_addr_0x004f7060
.globl _jmp_addr_0x004f7080
.globl _jmp_addr_0x004f7090
.globl _jmp_addr_0x004f70f0

.globl _globl_ct_0x004f6030
.globl _globl_ct_0x004f6060
.globl _globl_ct_0x004f6090
.globl _globl_ct_0x004f6590
.globl _globl_ct_0x004f65c0
.globl _globl_ct_0x004f65f0
.globl _globl_ct_0x004f7110
.globl _globl_ct_0x004f7140
.globl _globl_ct_0x004f7170
.globl _StringFunction__4PrssFlPci
.globl ?SetFocus@Creature@@UAEXPBULHPoint@@@Z
.globl ?ProcessTurn@CreatureSelect@@UAEHXZ
.globl ?Display@CreatureSelect@@UAEXXZ
.globl ?ClickFunction@CreatureSelect@@UAEXHHH@Z

start_0x004f5420_0x004f75b0:
// Snippet: asm, [0x004f5420, 0x004f7598)
_jmp_addr_0x004f5420:    mov                eax, dword ptr [ecx]                           // 0x004f5420    8b01
                         push               eax                                            // 0x004f5422    50
                         call               _jmp_addr_0x005fa7d0                           // 0x004f5423    e8a8531000
                         add                esp, 0x04                                      // 0x004f5428    83c404
                         ret                                                               // 0x004f542b    c3
                         nop                                                               // 0x004f542c    90
                         nop                                                               // 0x004f542d    90
                         nop                                                               // 0x004f542e    90
                         nop                                                               // 0x004f542f    90
                         push               esi                                            // 0x004f5430    56
                         push               0x1                                            // 0x004f5431    6a01
                         push               0x1                                            // 0x004f5433    6a01
                         mov.s              esi, ecx                                       // 0x004f5435    8bf1
                         push               0x00be0a2c                                     // 0x004f5437    682c0abe00
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                           // 0x004f543c    e8ef02f8ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]              // 0x004f5441    8b8664010000
                         mov.s              ecx, esi                                       // 0x004f5447    8bce
                         {disp32} mov       dword ptr [eax + 0x00020ce4], 0x00000000       // 0x004f5449    c780e40c020000000000
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ// 0x004f5453    e8f823f8ff
                         mov.s              ecx, eax                                       // 0x004f5458    8bc8
                         call               _jmp_addr_0x00484260                           // 0x004f545a    e801eef8ff
                         {disp32} mov       dword ptr [esi + 0x000012bc], 0x00000000       // 0x004f545f    c786bc12000000000000
                         pop                esi                                            // 0x004f5469    5e
                         ret                                                               // 0x004f546a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x004f546b    e809c4f0ff
                         push               esi                                            // 0x004f5470    56
                         mov.s              esi, ecx                                       // 0x004f5471    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]              // 0x004f5473    8b8e70030000
                         add                ecx, 0x4                                       // 0x004f5479    83c104
                         call               _jmp_addr_0x004f5360                           // 0x004f547c    e8dffeffff
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x004f5481    d81598a38a00
                         fnstsw             ax                                             // 0x004f5487    dfe0
                         test               ah, 0x01                                       // 0x004f5489    f6c401
                         {disp8} jne        _jmp_addr_0x004f54d6                           // 0x004f548c    7548
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x004f548e    d81590a38a00
                         fnstsw             ax                                             // 0x004f5494    dfe0
                         test               ah, 0x41                                       // 0x004f5496    f6c441
                         {disp8} jne        _jmp_addr_0x004f54a8                           // 0x004f5499    750d
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x004f549b    d81590a38a00
                         fnstsw             ax                                             // 0x004f54a1    dfe0
                         test               ah, 0x41                                       // 0x004f54a3    f6c441
                         {disp8} je         _jmp_addr_0x004f54b5                           // 0x004f54a6    740d
_jmp_addr_0x004f54a8:    {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x004f54a8    d81590a38a00
                         fnstsw             ax                                             // 0x004f54ae    dfe0
                         test               ah, 0x41                                       // 0x004f54b0    f6c441
                         {disp8} jne        _jmp_addr_0x004f54bd                           // 0x004f54b3    7508
_jmp_addr_0x004f54b5:    fstp               st(0)                                          // 0x004f54b5    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x004f54b7    d90590a38a00
_jmp_addr_0x004f54bd:    {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x004f54bd    d90590a38a00
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]              // 0x004f54c3    8b8660010000
                         fsub               st, st(1)                                      // 0x004f54c9    d8e1
                         {disp8} fstp       dword ptr [eax + 0x48]                         // 0x004f54cb    d95848
                         {disp32} fstp      dword ptr [esi + 0x000012bc]                   // 0x004f54ce    d99ebc120000
                         pop                esi                                            // 0x004f54d4    5e
                         ret                                                               // 0x004f54d5    c3
_jmp_addr_0x004f54d6:    fstp               st(0)                                          // 0x004f54d6    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x004f54d8    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x004f54bd                           // 0x004f54de    ebdd
                         ret                                                               // 0x004f54e0    c3
                         nop                                                               // 0x004f54e1    90
                         nop                                                               // 0x004f54e2    90
                         nop                                                               // 0x004f54e3    90
                         nop                                                               // 0x004f54e4    90
                         nop                                                               // 0x004f54e5    90
                         nop                                                               // 0x004f54e6    90
                         nop                                                               // 0x004f54e7    90
                         nop                                                               // 0x004f54e8    90
                         nop                                                               // 0x004f54e9    90
                         nop                                                               // 0x004f54ea    90
                         nop                                                               // 0x004f54eb    90
                         nop                                                               // 0x004f54ec    90
                         nop                                                               // 0x004f54ed    90
                         nop                                                               // 0x004f54ee    90
                         nop                                                               // 0x004f54ef    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]              // 0x004f54f0    8b8164010000
                         {disp32} mov       dword ptr [eax + 0x00020ce4], 0x00000001       // 0x004f54f6    c780e40c020001000000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]              // 0x004f5500    8b9160010000
                         {disp8} mov        dword ptr [edx + 0x48], 0x3f800000             // 0x004f5506    c742480000803f
                         {disp32} mov       dword ptr [ecx + 0x000012bc], 0x00000000       // 0x004f550d    c781bc12000000000000
                         ret                                                               // 0x004f5517    c3
                         nop                                                               // 0x004f5518    90
                         nop                                                               // 0x004f5519    90
                         nop                                                               // 0x004f551a    90
                         nop                                                               // 0x004f551b    90
                         nop                                                               // 0x004f551c    90
                         nop                                                               // 0x004f551d    90
                         nop                                                               // 0x004f551e    90
                         nop                                                               // 0x004f551f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]              // 0x004f5520    8b8160010000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000370]              // 0x004f5526    8b8970030000
                         {disp8} mov        edx, dword ptr [eax + 0x6c]                    // 0x004f552c    8b506c
                         {disp8} mov        dword ptr [ecx + 0x28], edx                    // 0x004f552f    895128
                         ret                                                               // 0x004f5532    c3
                         nop                                                               // 0x004f5533    90
                         nop                                                               // 0x004f5534    90
                         nop                                                               // 0x004f5535    90
                         nop                                                               // 0x004f5536    90
                         nop                                                               // 0x004f5537    90
                         nop                                                               // 0x004f5538    90
                         nop                                                               // 0x004f5539    90
                         nop                                                               // 0x004f553a    90
                         nop                                                               // 0x004f553b    90
                         nop                                                               // 0x004f553c    90
                         nop                                                               // 0x004f553d    90
                         nop                                                               // 0x004f553e    90
                         nop                                                               // 0x004f553f    90
                         push               ecx                                            // 0x004f5540    51
                         push               esi                                            // 0x004f5541    56
                         push               edi                                            // 0x004f5542    57
                         mov.s              edi, ecx                                       // 0x004f5543    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000370]              // 0x004f5545    8bb770030000
                         {disp8} fld        dword ptr [esi + 0x28]                         // 0x004f554b    d94628
                         add                esi, 0x1c                                      // 0x004f554e    83c61c
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f5551    d95c2408
                         call               _jmp_addr_0x0047dbd0                           // 0x004f5555    e87686f8ff
                         {disp8} fcomp      dword ptr [esp + 0x08]                         // 0x004f555a    d85c2408
                         fnstsw             ax                                             // 0x004f555e    dfe0
                         test               ah, 0x41                                       // 0x004f5560    f6c441
                         {disp8} jne        _jmp_addr_0x004f556a                           // 0x004f5563    7505
                         {disp8} fld        dword ptr [esi + 0x0c]                         // 0x004f5565    d9460c
                         {disp8} jmp        _jmp_addr_0x004f5571                           // 0x004f5568    eb07
_jmp_addr_0x004f556a:    mov.s              ecx, edi                                       // 0x004f556a    8bcf
                         call               _jmp_addr_0x0047dbd0                           // 0x004f556c    e85f86f8ff
_jmp_addr_0x004f5571:    {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f5571    d95c2408
                         mov.s              ecx, esi                                       // 0x004f5575    8bce
                         call               _jmp_addr_0x004f5360                           // 0x004f5577    e8e4fdffff
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x004f557c    d9442408
                         {disp8} fsub       dword ptr [esi + 0x0c]                         // 0x004f5580    d8660c
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]              // 0x004f5583    8b8760010000
                         pop                edi                                            // 0x004f5589    5f
                         fmulp              st(1), st                                      // 0x004f558a    dec9
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x004f558c    d8460c
                         pop                esi                                            // 0x004f558f    5e
                         {disp8} fstp       dword ptr [eax + 0x6c]                         // 0x004f5590    d9586c
                         pop                ecx                                            // 0x004f5593    59
                         ret                                                               // 0x004f5594    c3
                         nop                                                               // 0x004f5595    90
                         nop                                                               // 0x004f5596    90
                         nop                                                               // 0x004f5597    90
                         nop                                                               // 0x004f5598    90
                         nop                                                               // 0x004f5599    90
                         nop                                                               // 0x004f559a    90
                         nop                                                               // 0x004f559b    90
                         nop                                                               // 0x004f559c    90
                         nop                                                               // 0x004f559d    90
                         nop                                                               // 0x004f559e    90
                         nop                                                               // 0x004f559f    90
                         ret                                                               // 0x004f55a0    c3
                         nop                                                               // 0x004f55a1    90
                         nop                                                               // 0x004f55a2    90
                         nop                                                               // 0x004f55a3    90
                         nop                                                               // 0x004f55a4    90
                         nop                                                               // 0x004f55a5    90
                         nop                                                               // 0x004f55a6    90
                         nop                                                               // 0x004f55a7    90
                         nop                                                               // 0x004f55a8    90
                         nop                                                               // 0x004f55a9    90
                         nop                                                               // 0x004f55aa    90
                         nop                                                               // 0x004f55ab    90
                         nop                                                               // 0x004f55ac    90
                         nop                                                               // 0x004f55ad    90
                         nop                                                               // 0x004f55ae    90
                         nop                                                               // 0x004f55af    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000370]              // 0x004f55b0    8b8170030000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]              // 0x004f55b6    8b8960010000
                         {disp8} mov        edx, dword ptr [eax + 0x28]                    // 0x004f55bc    8b5028
                         {disp8} mov        dword ptr [ecx + 0x6c], edx                    // 0x004f55bf    89516c
                         ret                                                               // 0x004f55c2    c3
                         nop                                                               // 0x004f55c3    90
                         nop                                                               // 0x004f55c4    90
                         nop                                                               // 0x004f55c5    90
                         nop                                                               // 0x004f55c6    90
                         nop                                                               // 0x004f55c7    90
                         nop                                                               // 0x004f55c8    90
                         nop                                                               // 0x004f55c9    90
                         nop                                                               // 0x004f55ca    90
                         nop                                                               // 0x004f55cb    90
                         nop                                                               // 0x004f55cc    90
                         nop                                                               // 0x004f55cd    90
                         nop                                                               // 0x004f55ce    90
                         nop                                                               // 0x004f55cf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]              // 0x004f55d0    8b8160010000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000370]              // 0x004f55d6    8b8970030000
                         {disp8} mov        edx, dword ptr [eax + 0x6c]                    // 0x004f55dc    8b506c
                         {disp8} mov        dword ptr [ecx + 0x40], edx                    // 0x004f55df    895140
                         ret                                                               // 0x004f55e2    c3
                         nop                                                               // 0x004f55e3    90
                         nop                                                               // 0x004f55e4    90
                         nop                                                               // 0x004f55e5    90
                         nop                                                               // 0x004f55e6    90
                         nop                                                               // 0x004f55e7    90
                         nop                                                               // 0x004f55e8    90
                         nop                                                               // 0x004f55e9    90
                         nop                                                               // 0x004f55ea    90
                         nop                                                               // 0x004f55eb    90
                         nop                                                               // 0x004f55ec    90
                         nop                                                               // 0x004f55ed    90
                         nop                                                               // 0x004f55ee    90
                         nop                                                               // 0x004f55ef    90
                         push               ecx                                            // 0x004f55f0    51
                         push               esi                                            // 0x004f55f1    56
                         push               edi                                            // 0x004f55f2    57
                         mov.s              edi, ecx                                       // 0x004f55f3    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000370]              // 0x004f55f5    8bb770030000
                         {disp8} fld        dword ptr [esi + 0x40]                         // 0x004f55fb    d94640
                         add                esi, 0x34                                      // 0x004f55fe    83c634
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f5601    d95c2408
                         call               _jmp_addr_0x0047db50                           // 0x004f5605    e84685f8ff
                         {disp8} fcomp      dword ptr [esp + 0x08]                         // 0x004f560a    d85c2408
                         fnstsw             ax                                             // 0x004f560e    dfe0
                         test               ah, 0x01                                       // 0x004f5610    f6c401
                         {disp8} je         _jmp_addr_0x004f561a                           // 0x004f5613    7405
                         {disp8} fld        dword ptr [esi + 0x0c]                         // 0x004f5615    d9460c
                         {disp8} jmp        _jmp_addr_0x004f5621                           // 0x004f5618    eb07
_jmp_addr_0x004f561a:    mov.s              ecx, edi                                       // 0x004f561a    8bcf
                         call               _jmp_addr_0x0047db50                           // 0x004f561c    e82f85f8ff
_jmp_addr_0x004f5621:    {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f5621    d95c2408
                         mov.s              ecx, esi                                       // 0x004f5625    8bce
                         call               _jmp_addr_0x004f5360                           // 0x004f5627    e834fdffff
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x004f562c    d9442408
                         {disp8} fsub       dword ptr [esi + 0x0c]                         // 0x004f5630    d8660c
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]              // 0x004f5633    8b8760010000
                         pop                edi                                            // 0x004f5639    5f
                         fmulp              st(1), st                                      // 0x004f563a    dec9
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x004f563c    d8460c
                         pop                esi                                            // 0x004f563f    5e
                         {disp8} fstp       dword ptr [eax + 0x6c]                         // 0x004f5640    d9586c
                         pop                ecx                                            // 0x004f5643    59
                         ret                                                               // 0x004f5644    c3
                         nop                                                               // 0x004f5645    90
                         nop                                                               // 0x004f5646    90
                         nop                                                               // 0x004f5647    90
                         nop                                                               // 0x004f5648    90
                         nop                                                               // 0x004f5649    90
                         nop                                                               // 0x004f564a    90
                         nop                                                               // 0x004f564b    90
                         nop                                                               // 0x004f564c    90
                         nop                                                               // 0x004f564d    90
                         nop                                                               // 0x004f564e    90
                         nop                                                               // 0x004f564f    90
                         ret                                                               // 0x004f5650    c3
                         nop                                                               // 0x004f5651    90
                         nop                                                               // 0x004f5652    90
                         nop                                                               // 0x004f5653    90
                         nop                                                               // 0x004f5654    90
                         nop                                                               // 0x004f5655    90
                         nop                                                               // 0x004f5656    90
                         nop                                                               // 0x004f5657    90
                         nop                                                               // 0x004f5658    90
                         nop                                                               // 0x004f5659    90
                         nop                                                               // 0x004f565a    90
                         nop                                                               // 0x004f565b    90
                         nop                                                               // 0x004f565c    90
                         nop                                                               // 0x004f565d    90
                         nop                                                               // 0x004f565e    90
                         nop                                                               // 0x004f565f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000370]              // 0x004f5660    8b8170030000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]              // 0x004f5666    8b8960010000
                         {disp8} mov        edx, dword ptr [eax + 0x40]                    // 0x004f566c    8b5040
                         {disp8} mov        dword ptr [ecx + 0x6c], edx                    // 0x004f566f    89516c
                         ret                                                               // 0x004f5672    c3
                         nop                                                               // 0x004f5673    90
                         nop                                                               // 0x004f5674    90
                         nop                                                               // 0x004f5675    90
                         nop                                                               // 0x004f5676    90
                         nop                                                               // 0x004f5677    90
                         nop                                                               // 0x004f5678    90
                         nop                                                               // 0x004f5679    90
                         nop                                                               // 0x004f567a    90
                         nop                                                               // 0x004f567b    90
                         nop                                                               // 0x004f567c    90
                         nop                                                               // 0x004f567d    90
                         nop                                                               // 0x004f567e    90
                         nop                                                               // 0x004f567f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]              // 0x004f5680    8b8160010000
                         {disp8} fld        dword ptr [eax + 0x0c]                         // 0x004f5686    d9400c
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000370]              // 0x004f5689    8b8970030000
                         {disp8} fstp       dword ptr [ecx + 0x58]                         // 0x004f568f    d95958
                         ret                                                               // 0x004f5692    c3
                         nop                                                               // 0x004f5693    90
                         nop                                                               // 0x004f5694    90
                         nop                                                               // 0x004f5695    90
                         nop                                                               // 0x004f5696    90
                         nop                                                               // 0x004f5697    90
                         nop                                                               // 0x004f5698    90
                         nop                                                               // 0x004f5699    90
                         nop                                                               // 0x004f569a    90
                         nop                                                               // 0x004f569b    90
                         nop                                                               // 0x004f569c    90
                         nop                                                               // 0x004f569d    90
                         nop                                                               // 0x004f569e    90
                         nop                                                               // 0x004f569f    90
                         push               ecx                                            // 0x004f56a0    51
                         push               esi                                            // 0x004f56a1    56
                         push               edi                                            // 0x004f56a2    57
                         mov.s              edi, ecx                                       // 0x004f56a3    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000370]              // 0x004f56a5    8bb770030000
                         add                esi, 0x4c                                      // 0x004f56ab    83c64c
                         mov.s              ecx, esi                                       // 0x004f56ae    8bce
                         call               _jmp_addr_0x004f5360                           // 0x004f56b0    e8abfcffff
                         {disp32} fld       dword ptr [__real@3dcccccd]                    // 0x004f56b5    d9052cb28a00
                         {disp8} fsub       dword ptr [esi + 0x0c]                         // 0x004f56bb    d8660c
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]              // 0x004f56be    8b8f60010000
                         fmulp              st(1), st                                      // 0x004f56c4    dec9
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x004f56c6    d8460c
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f56c9    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x004f56cd    8b442408
                         push               eax                                            // 0x004f56d1    50
                         call               _jmp_addr_0x004f0100                           // 0x004f56d2    e829aaffff
                         pop                edi                                            // 0x004f56d7    5f
                         pop                esi                                            // 0x004f56d8    5e
                         pop                ecx                                            // 0x004f56d9    59
                         ret                                                               // 0x004f56da    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x004f56db    e899c1f0ff
                         ret                                                               // 0x004f56e0    c3
                         nop                                                               // 0x004f56e1    90
                         nop                                                               // 0x004f56e2    90
                         nop                                                               // 0x004f56e3    90
                         nop                                                               // 0x004f56e4    90
                         nop                                                               // 0x004f56e5    90
                         nop                                                               // 0x004f56e6    90
                         nop                                                               // 0x004f56e7    90
                         nop                                                               // 0x004f56e8    90
                         nop                                                               // 0x004f56e9    90
                         nop                                                               // 0x004f56ea    90
                         nop                                                               // 0x004f56eb    90
                         nop                                                               // 0x004f56ec    90
                         nop                                                               // 0x004f56ed    90
                         nop                                                               // 0x004f56ee    90
                         nop                                                               // 0x004f56ef    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000370]              // 0x004f56f0    8b8170030000
                         {disp8} mov        edx, dword ptr [eax + 0x58]                    // 0x004f56f6    8b5058
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]              // 0x004f56f9    8b8960010000
                         push               edx                                            // 0x004f56ff    52
                         call               _jmp_addr_0x004f0100                           // 0x004f5700    e8fba9ffff
                         ret                                                               // 0x004f5705    c3
                         nop                                                               // 0x004f5706    90
                         nop                                                               // 0x004f5707    90
                         nop                                                               // 0x004f5708    90
                         nop                                                               // 0x004f5709    90
                         nop                                                               // 0x004f570a    90
                         nop                                                               // 0x004f570b    90
                         nop                                                               // 0x004f570c    90
                         nop                                                               // 0x004f570d    90
                         nop                                                               // 0x004f570e    90
                         nop                                                               // 0x004f570f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]              // 0x004f5710    8b8160010000
                         {disp8} fld        dword ptr [eax + 0x0c]                         // 0x004f5716    d9400c
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000370]              // 0x004f5719    8b8970030000
                         {disp8} fstp       dword ptr [ecx + 0x70]                         // 0x004f571f    d95970
                         ret                                                               // 0x004f5722    c3
                         nop                                                               // 0x004f5723    90
                         nop                                                               // 0x004f5724    90
                         nop                                                               // 0x004f5725    90
                         nop                                                               // 0x004f5726    90
                         nop                                                               // 0x004f5727    90
                         nop                                                               // 0x004f5728    90
                         nop                                                               // 0x004f5729    90
                         nop                                                               // 0x004f572a    90
                         nop                                                               // 0x004f572b    90
                         nop                                                               // 0x004f572c    90
                         nop                                                               // 0x004f572d    90
                         nop                                                               // 0x004f572e    90
                         nop                                                               // 0x004f572f    90
                         push               ecx                                            // 0x004f5730    51
                         push               esi                                            // 0x004f5731    56
                         push               edi                                            // 0x004f5732    57
                         mov.s              edi, ecx                                       // 0x004f5733    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000370]              // 0x004f5735    8bb770030000
                         add                esi, 0x64                                      // 0x004f573b    83c664
                         mov.s              ecx, esi                                       // 0x004f573e    8bce
                         call               _jmp_addr_0x004f5360                           // 0x004f5740    e81bfcffff
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x004f5745    d90590a38a00
                         {disp8} fsub       dword ptr [esi + 0x0c]                         // 0x004f574b    d8660c
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]              // 0x004f574e    8b8f60010000
                         fmulp              st(1), st                                      // 0x004f5754    dec9
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x004f5756    d8460c
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f5759    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x004f575d    8b442408
                         push               eax                                            // 0x004f5761    50
                         call               _jmp_addr_0x004f0100                           // 0x004f5762    e899a9ffff
                         pop                edi                                            // 0x004f5767    5f
                         pop                esi                                            // 0x004f5768    5e
                         pop                ecx                                            // 0x004f5769    59
                         ret                                                               // 0x004f576a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x004f576b    e809c1f0ff
                         ret                                                               // 0x004f5770    c3
                         nop                                                               // 0x004f5771    90
                         nop                                                               // 0x004f5772    90
                         nop                                                               // 0x004f5773    90
                         nop                                                               // 0x004f5774    90
                         nop                                                               // 0x004f5775    90
                         nop                                                               // 0x004f5776    90
                         nop                                                               // 0x004f5777    90
                         nop                                                               // 0x004f5778    90
                         nop                                                               // 0x004f5779    90
                         nop                                                               // 0x004f577a    90
                         nop                                                               // 0x004f577b    90
                         nop                                                               // 0x004f577c    90
                         nop                                                               // 0x004f577d    90
                         nop                                                               // 0x004f577e    90
                         nop                                                               // 0x004f577f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000370]              // 0x004f5780    8b8170030000
                         {disp8} mov        edx, dword ptr [eax + 0x70]                    // 0x004f5786    8b5070
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]              // 0x004f5789    8b8960010000
                         push               edx                                            // 0x004f578f    52
                         call               _jmp_addr_0x004f0100                           // 0x004f5790    e86ba9ffff
                         ret                                                               // 0x004f5795    c3
                         nop                                                               // 0x004f5796    90
                         nop                                                               // 0x004f5797    90
                         nop                                                               // 0x004f5798    90
                         nop                                                               // 0x004f5799    90
                         nop                                                               // 0x004f579a    90
                         nop                                                               // 0x004f579b    90
                         nop                                                               // 0x004f579c    90
                         nop                                                               // 0x004f579d    90
                         nop                                                               // 0x004f579e    90
                         nop                                                               // 0x004f579f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]              // 0x004f57a0    8b8160010000
                         {disp8} fld        dword ptr [eax + 0x14]                         // 0x004f57a6    d94014
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000370]              // 0x004f57a9    8b8970030000
                         {disp32} fstp      dword ptr [ecx + 0x00000088]                   // 0x004f57af    d99988000000
                         ret                                                               // 0x004f57b5    c3
                         nop                                                               // 0x004f57b6    90
                         nop                                                               // 0x004f57b7    90
                         nop                                                               // 0x004f57b8    90
                         nop                                                               // 0x004f57b9    90
                         nop                                                               // 0x004f57ba    90
                         nop                                                               // 0x004f57bb    90
                         nop                                                               // 0x004f57bc    90
                         nop                                                               // 0x004f57bd    90
                         nop                                                               // 0x004f57be    90
                         nop                                                               // 0x004f57bf    90
                         push               esi                                            // 0x004f57c0    56
                         push               edi                                            // 0x004f57c1    57
                         mov.s              edi, ecx                                       // 0x004f57c2    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000370]              // 0x004f57c4    8bb770030000
                         add                esi, 0x7c                                      // 0x004f57ca    83c67c
                         mov.s              ecx, esi                                       // 0x004f57cd    8bce
                         call               _jmp_addr_0x004f5360                           // 0x004f57cf    e88cfbffff
                         {disp32} fld       dword ptr [rdata_bytes + 0x26000]              // 0x004f57d4    d90500f08c00
                         {disp8} fsub       dword ptr [esi + 0x0c]                         // 0x004f57da    d8660c
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]              // 0x004f57dd    8b8760010000
                         pop                edi                                            // 0x004f57e3    5f
                         fmulp              st(1), st                                      // 0x004f57e4    dec9
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x004f57e6    d8460c
                         pop                esi                                            // 0x004f57e9    5e
                         {disp8} fstp       dword ptr [eax + 0x14]                         // 0x004f57ea    d95814
                         ret                                                               // 0x004f57ed    c3
                         nop                                                               // 0x004f57ee    90
                         nop                                                               // 0x004f57ef    90
                         ret                                                               // 0x004f57f0    c3
                         nop                                                               // 0x004f57f1    90
                         nop                                                               // 0x004f57f2    90
                         nop                                                               // 0x004f57f3    90
                         nop                                                               // 0x004f57f4    90
                         nop                                                               // 0x004f57f5    90
                         nop                                                               // 0x004f57f6    90
                         nop                                                               // 0x004f57f7    90
                         nop                                                               // 0x004f57f8    90
                         nop                                                               // 0x004f57f9    90
                         nop                                                               // 0x004f57fa    90
                         nop                                                               // 0x004f57fb    90
                         nop                                                               // 0x004f57fc    90
                         nop                                                               // 0x004f57fd    90
                         nop                                                               // 0x004f57fe    90
                         nop                                                               // 0x004f57ff    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000370]              // 0x004f5800    8b8170030000
                         {disp32} fld       dword ptr [eax + 0x00000088]                   // 0x004f5806    d98088000000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]              // 0x004f580c    8b8960010000
                         {disp8} fstp       dword ptr [ecx + 0x14]                         // 0x004f5812    d95914
                         ret                                                               // 0x004f5815    c3
                         nop                                                               // 0x004f5816    90
                         nop                                                               // 0x004f5817    90
                         nop                                                               // 0x004f5818    90
                         nop                                                               // 0x004f5819    90
                         nop                                                               // 0x004f581a    90
                         nop                                                               // 0x004f581b    90
                         nop                                                               // 0x004f581c    90
                         nop                                                               // 0x004f581d    90
                         nop                                                               // 0x004f581e    90
                         nop                                                               // 0x004f581f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]              // 0x004f5820    8b8160010000
                         {disp8} fld        dword ptr [eax + 0x14]                         // 0x004f5826    d94014
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000370]              // 0x004f5829    8b8970030000
                         {disp32} fstp      dword ptr [ecx + 0x000000a0]                   // 0x004f582f    d999a0000000
                         ret                                                               // 0x004f5835    c3
                         nop                                                               // 0x004f5836    90
                         nop                                                               // 0x004f5837    90
                         nop                                                               // 0x004f5838    90
                         nop                                                               // 0x004f5839    90
                         nop                                                               // 0x004f583a    90
                         nop                                                               // 0x004f583b    90
                         nop                                                               // 0x004f583c    90
                         nop                                                               // 0x004f583d    90
                         nop                                                               // 0x004f583e    90
                         nop                                                               // 0x004f583f    90
                         push               esi                                            // 0x004f5840    56
                         push               edi                                            // 0x004f5841    57
                         mov.s              edi, ecx                                       // 0x004f5842    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000370]              // 0x004f5844    8bb770030000
                         add                esi, 0x00000094                                // 0x004f584a    81c694000000
                         mov.s              ecx, esi                                       // 0x004f5850    8bce
                         call               _jmp_addr_0x004f5360                           // 0x004f5852    e809fbffff
                         {disp32} fld       dword ptr [__real@3dcccccd]                    // 0x004f5857    d9052cb28a00
                         {disp8} fsub       dword ptr [esi + 0x0c]                         // 0x004f585d    d8660c
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]              // 0x004f5860    8b8760010000
                         pop                edi                                            // 0x004f5866    5f
                         fmulp              st(1), st                                      // 0x004f5867    dec9
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x004f5869    d8460c
                         pop                esi                                            // 0x004f586c    5e
                         {disp8} fstp       dword ptr [eax + 0x14]                         // 0x004f586d    d95814
                         ret                                                               // 0x004f5870    c3
                         nop                                                               // 0x004f5871    90
                         nop                                                               // 0x004f5872    90
                         nop                                                               // 0x004f5873    90
                         nop                                                               // 0x004f5874    90
                         nop                                                               // 0x004f5875    90
                         nop                                                               // 0x004f5876    90
                         nop                                                               // 0x004f5877    90
                         nop                                                               // 0x004f5878    90
                         nop                                                               // 0x004f5879    90
                         nop                                                               // 0x004f587a    90
                         nop                                                               // 0x004f587b    90
                         nop                                                               // 0x004f587c    90
                         nop                                                               // 0x004f587d    90
                         nop                                                               // 0x004f587e    90
                         nop                                                               // 0x004f587f    90
                         ret                                                               // 0x004f5880    c3
                         nop                                                               // 0x004f5881    90
                         nop                                                               // 0x004f5882    90
                         nop                                                               // 0x004f5883    90
                         nop                                                               // 0x004f5884    90
                         nop                                                               // 0x004f5885    90
                         nop                                                               // 0x004f5886    90
                         nop                                                               // 0x004f5887    90
                         nop                                                               // 0x004f5888    90
                         nop                                                               // 0x004f5889    90
                         nop                                                               // 0x004f588a    90
                         nop                                                               // 0x004f588b    90
                         nop                                                               // 0x004f588c    90
                         nop                                                               // 0x004f588d    90
                         nop                                                               // 0x004f588e    90
                         nop                                                               // 0x004f588f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000370]              // 0x004f5890    8b8170030000
                         {disp32} fld       dword ptr [eax + 0x000000a0]                   // 0x004f5896    d980a0000000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]              // 0x004f589c    8b8960010000
                         {disp8} fstp       dword ptr [ecx + 0x14]                         // 0x004f58a2    d95914
                         ret                                                               // 0x004f58a5    c3
                         nop                                                               // 0x004f58a6    90
                         nop                                                               // 0x004f58a7    90
                         nop                                                               // 0x004f58a8    90
                         nop                                                               // 0x004f58a9    90
                         nop                                                               // 0x004f58aa    90
                         nop                                                               // 0x004f58ab    90
                         nop                                                               // 0x004f58ac    90
                         nop                                                               // 0x004f58ad    90
                         nop                                                               // 0x004f58ae    90
                         nop                                                               // 0x004f58af    90
                         push               0x0                                            // 0x004f58b0    6a00
                         push               0x0                                            // 0x004f58b2    6a00
                         push               0x0                                            // 0x004f58b4    6a00
                         {disp32} mov       dword ptr [ecx + 0x0000106c], 0x00000001       // 0x004f58b6    c7816c10000001000000
                         call               _jmp_addr_0x0047ab90                           // 0x004f58c0    e8cb52f8ff
                         ret                                                               // 0x004f58c5    c3
                         nop                                                               // 0x004f58c6    90
                         nop                                                               // 0x004f58c7    90
                         nop                                                               // 0x004f58c8    90
                         nop                                                               // 0x004f58c9    90
                         nop                                                               // 0x004f58ca    90
                         nop                                                               // 0x004f58cb    90
                         nop                                                               // 0x004f58cc    90
                         nop                                                               // 0x004f58cd    90
                         nop                                                               // 0x004f58ce    90
                         nop                                                               // 0x004f58cf    90
                         push               esi                                            // 0x004f58d0    56
                         mov.s              esi, ecx                                       // 0x004f58d1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]              // 0x004f58d3    8b8e70030000
                         add                ecx, 0x000000ac                                // 0x004f58d9    81c1ac000000
                         call               _jmp_addr_0x004f5360                           // 0x004f58df    e87cfaffff
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x004f58e4    d81598a38a00
                         fnstsw             ax                                             // 0x004f58ea    dfe0
                         test               ah, 0x01                                       // 0x004f58ec    f6c401
                         {disp8} jne        _jmp_addr_0x004f593a                           // 0x004f58ef    7549
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x004f58f1    d81590a38a00
                         fnstsw             ax                                             // 0x004f58f7    dfe0
                         test               ah, 0x41                                       // 0x004f58f9    f6c441
                         {disp8} jne        _jmp_addr_0x004f5913                           // 0x004f58fc    7515
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x004f58fe    d81590a38a00
                         fnstsw             ax                                             // 0x004f5904    dfe0
                         test               ah, 0x41                                       // 0x004f5906    f6c441
                         {disp8} jne        _jmp_addr_0x004f5913                           // 0x004f5909    7508
                         fstp               st(0)                                          // 0x004f590b    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x004f590d    d90590a38a00
_jmp_addr_0x004f5913:    {disp32} fld       dword ptr [rdata_bytes + 0x285a0]              // 0x004f5913    d905a0158d00
                         push               0x0                                            // 0x004f5919    6a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2859c]              // 0x004f591b    d8259c158d00
                         push               0x0                                            // 0x004f5921    6a00
                         push               ecx                                            // 0x004f5923    51
                         mov.s              ecx, esi                                       // 0x004f5924    8bce
                         fmul               st, st(1)                                      // 0x004f5926    d8c9
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2859c]              // 0x004f5928    d8059c158d00
                         fstp               dword ptr [esp]                                // 0x004f592e    d91c24
                         fstp               st(0)                                          // 0x004f5931    ddd8
                         call               _jmp_addr_0x0047ab90                           // 0x004f5933    e85852f8ff
                         pop                esi                                            // 0x004f5938    5e
                         ret                                                               // 0x004f5939    c3
_jmp_addr_0x004f593a:    fstp               st(0)                                          // 0x004f593a    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x004f593c    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x004f5913                           // 0x004f5942    ebcf
                         nop                                                               // 0x004f5944    90
                         nop                                                               // 0x004f5945    90
                         nop                                                               // 0x004f5946    90
                         nop                                                               // 0x004f5947    90
                         nop                                                               // 0x004f5948    90
                         nop                                                               // 0x004f5949    90
                         nop                                                               // 0x004f594a    90
                         nop                                                               // 0x004f594b    90
                         nop                                                               // 0x004f594c    90
                         nop                                                               // 0x004f594d    90
                         nop                                                               // 0x004f594e    90
                         nop                                                               // 0x004f594f    90
                         ret                                                               // 0x004f5950    c3
                         nop                                                               // 0x004f5951    90
                         nop                                                               // 0x004f5952    90
                         nop                                                               // 0x004f5953    90
                         nop                                                               // 0x004f5954    90
                         nop                                                               // 0x004f5955    90
                         nop                                                               // 0x004f5956    90
                         nop                                                               // 0x004f5957    90
                         nop                                                               // 0x004f5958    90
                         nop                                                               // 0x004f5959    90
                         nop                                                               // 0x004f595a    90
                         nop                                                               // 0x004f595b    90
                         nop                                                               // 0x004f595c    90
                         nop                                                               // 0x004f595d    90
                         nop                                                               // 0x004f595e    90
                         nop                                                               // 0x004f595f    90
                         push               0x0                                            // 0x004f5960    6a00
                         push               0x0                                            // 0x004f5962    6a00
                         push               0x0                                            // 0x004f5964    6a00
                         {disp32} mov       dword ptr [ecx + 0x0000106c], 0x00000000       // 0x004f5966    c7816c10000000000000
                         call               _jmp_addr_0x0047ab90                           // 0x004f5970    e81b52f8ff
                         ret                                                               // 0x004f5975    c3
                         nop                                                               // 0x004f5976    90
                         nop                                                               // 0x004f5977    90
                         nop                                                               // 0x004f5978    90
                         nop                                                               // 0x004f5979    90
                         nop                                                               // 0x004f597a    90
                         nop                                                               // 0x004f597b    90
                         nop                                                               // 0x004f597c    90
                         nop                                                               // 0x004f597d    90
                         nop                                                               // 0x004f597e    90
                         nop                                                               // 0x004f597f    90
                         push               esi                                            // 0x004f5980    56
                         push               edi                                            // 0x004f5981    57
                         mov.s              esi, ecx                                       // 0x004f5982    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5984    8b8e64010000
                         {disp32} mov       edi, dword ptr [esi + 0x00000370]              // 0x004f598a    8bbe70030000
                         push               0x1                                            // 0x004f5990    6a01
                         push               0x1                                            // 0x004f5992    6a01
                         add                ecx, 0x8                                       // 0x004f5994    83c108
                         add                edi, 0x000000c4                                // 0x004f5997    81c7c4000000
                         call               _jmp_addr_0x004dcdd0                           // 0x004f599d    e82e74feff
                         test               byte ptr [esi + 0x25], 0x04                    // 0x004f59a2    f6462504
                         {disp8} jne        _jmp_addr_0x004f59b8                           // 0x004f59a6    7510
                         push               0x1                                            // 0x004f59a8    6a01
                         push               0x1                                            // 0x004f59aa    6a01
                         push               0x00be0a3c                                     // 0x004f59ac    683c0abe00
                         mov.s              ecx, esi                                       // 0x004f59b1    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                           // 0x004f59b3    e878fdf7ff
_jmp_addr_0x004f59b8:    {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f59b8    8b4628
                         push               eax                                            // 0x004f59bb    50
                         push               0x1                                            // 0x004f59bc    6a01
                         mov.s              ecx, esi                                       // 0x004f59be    8bce
                         call               _jmp_addr_0x004dc9a0                           // 0x004f59c0    e8db6ffeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x28598]         // 0x004f59c5    8b0d98158d00
                         push               0x1                                            // 0x004f59cb    6a01
                         push               ecx                                            // 0x004f59cd    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f59ce    8b8e64010000
                         push               0x1                                            // 0x004f59d4    6a01
                         call               _jmp_addr_0x004dce20                           // 0x004f59d6    e84574feff
                         {disp32} mov       edx, dword ptr [esi + 0x00000168]              // 0x004f59db    8b9668010000
                         {disp8} fld        dword ptr [edx + 0x08]                         // 0x004f59e1    d94208
                         mov.s              ecx, esi                                       // 0x004f59e4    8bce
                         {disp8} fstp       dword ptr [edi + 0x0c]                         // 0x004f59e6    d95f0c
                         call               _jmp_addr_0x004cf060                           // 0x004f59e9    e87296fdff
                         mov.s              edi, eax                                       // 0x004f59ee    8bf8
                         test               edi, edi                                       // 0x004f59f0    85ff
                         {disp8} je         _jmp_addr_0x004f5a09                           // 0x004f59f2    7415
                         mov                eax, dword ptr [esi]                           // 0x004f59f4    8b06
                         mov.s              ecx, esi                                       // 0x004f59f6    8bce
                         call               dword ptr [eax + 0x1c]                         // 0x004f59f8    ff501c
                         {disp32} mov       ecx, dword ptr [edi + 0x0000012c]              // 0x004f59fb    8b8f2c010000
                         push               eax                                            // 0x004f5a01    50
                         push               0x3                                            // 0x004f5a02    6a03
                         call               _jmp_addr_0x005e6ae0                           // 0x004f5a04    e8d7100f00
_jmp_addr_0x004f5a09:    pop                edi                                            // 0x004f5a09    5f
                         pop                esi                                            // 0x004f5a0a    5e
                         ret                                                               // 0x004f5a0b    c3
                         nop                                                               // 0x004f5a0c    90
                         nop                                                               // 0x004f5a0d    90
                         nop                                                               // 0x004f5a0e    90
                         nop                                                               // 0x004f5a0f    90
                         push               ecx                                            // 0x004f5a10    51
                         push               esi                                            // 0x004f5a11    56
                         push               edi                                            // 0x004f5a12    57
                         mov.s              edi, ecx                                       // 0x004f5a13    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000370]              // 0x004f5a15    8bb770030000
                         add                esi, 0x000000c4                                // 0x004f5a1b    81c6c4000000
                         mov.s              ecx, esi                                       // 0x004f5a21    8bce
                         call               _jmp_addr_0x004f5360                           // 0x004f5a23    e838f9ffff
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x004f5a28    d90590a38a00
                         {disp8} fsub       dword ptr [esi + 0x0c]                         // 0x004f5a2e    d8660c
                         {disp32} mov       ecx, dword ptr [edi + 0x00000168]              // 0x004f5a31    8b8f68010000
                         fmulp              st(1), st                                      // 0x004f5a37    dec9
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x004f5a39    d8460c
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f5a3c    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x004f5a40    8b442408
                         push               eax                                            // 0x004f5a44    50
                         call               _jmp_addr_0x004146f0                           // 0x004f5a45    e8a6ecf1ff
                         pop                edi                                            // 0x004f5a4a    5f
                         pop                esi                                            // 0x004f5a4b    5e
                         pop                ecx                                            // 0x004f5a4c    59
                         ret                                                               // 0x004f5a4d    c3
                         nop                                                               // 0x004f5a4e    90
                         nop                                                               // 0x004f5a4f    90
                         push               esi                                            // 0x004f5a50    56
                         push               edi                                            // 0x004f5a51    57
                         mov.s              esi, ecx                                       // 0x004f5a52    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5a54    8b4628
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5a57    8b8e64010000
                         {disp32} mov       edi, dword ptr [esi + 0x00000370]              // 0x004f5a5d    8bbe70030000
                         push               0x3fa66666                                     // 0x004f5a63    686666a63f
                         push               eax                                            // 0x004f5a68    50
                         push               0x1                                            // 0x004f5a69    6a01
                         add                ecx, 0x8                                       // 0x004f5a6b    83c108
                         add                edi, 0x000000c4                                // 0x004f5a6e    81c7c4000000
                         call               _jmp_addr_0x004dc9f0                           // 0x004f5a74    e8776ffeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5a79    8b8e64010000
                         call               _jmp_addr_0x004dcf20                           // 0x004f5a7f    e89c74feff
                         {disp8} mov        ecx, dword ptr [edi + 0x0c]                    // 0x004f5a84    8b4f0c
                         push               ecx                                            // 0x004f5a87    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000168]              // 0x004f5a88    8b8e68010000
                         call               _jmp_addr_0x004146f0                           // 0x004f5a8e    e85decf1ff
                         pop                edi                                            // 0x004f5a93    5f
                         pop                esi                                            // 0x004f5a94    5e
                         ret                                                               // 0x004f5a95    c3
                         nop                                                               // 0x004f5a96    90
                         nop                                                               // 0x004f5a97    90
                         nop                                                               // 0x004f5a98    90
                         nop                                                               // 0x004f5a99    90
                         nop                                                               // 0x004f5a9a    90
                         nop                                                               // 0x004f5a9b    90
                         nop                                                               // 0x004f5a9c    90
                         nop                                                               // 0x004f5a9d    90
                         nop                                                               // 0x004f5a9e    90
                         nop                                                               // 0x004f5a9f    90
                         push               esi                                            // 0x004f5aa0    56
                         push               edi                                            // 0x004f5aa1    57
                         mov.s              esi, ecx                                       // 0x004f5aa2    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5aa4    8b8e64010000
                         {disp32} mov       edi, dword ptr [esi + 0x00000370]              // 0x004f5aaa    8bbe70030000
                         push               0x1                                            // 0x004f5ab0    6a01
                         push               0x2                                            // 0x004f5ab2    6a02
                         add                ecx, 0x8                                       // 0x004f5ab4    83c108
                         add                edi, 0x000000dc                                // 0x004f5ab7    81c7dc000000
                         call               _jmp_addr_0x004dcdd0                           // 0x004f5abd    e80e73feff
                         test               byte ptr [esi + 0x25], 0x04                    // 0x004f5ac2    f6462504
                         {disp8} jne        _jmp_addr_0x004f5ad8                           // 0x004f5ac6    7510
                         push               0x1                                            // 0x004f5ac8    6a01
                         push               0x1                                            // 0x004f5aca    6a01
                         push               0x00be0a3c                                     // 0x004f5acc    683c0abe00
                         mov.s              ecx, esi                                       // 0x004f5ad1    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                           // 0x004f5ad3    e858fcf7ff
_jmp_addr_0x004f5ad8:    {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5ad8    8b4628
                         push               eax                                            // 0x004f5adb    50
                         push               0x2                                            // 0x004f5adc    6a02
                         mov.s              ecx, esi                                       // 0x004f5ade    8bce
                         call               _jmp_addr_0x004dc9a0                           // 0x004f5ae0    e8bb6efeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x28598]         // 0x004f5ae5    8b0d98158d00
                         push               0x1                                            // 0x004f5aeb    6a01
                         push               ecx                                            // 0x004f5aed    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5aee    8b8e64010000
                         push               0x2                                            // 0x004f5af4    6a02
                         call               _jmp_addr_0x004dce20                           // 0x004f5af6    e82573feff
                         {disp32} mov       edx, dword ptr [esi + 0x00000168]              // 0x004f5afb    8b9668010000
                         {disp8} fld        dword ptr [edx + 0x08]                         // 0x004f5b01    d94208
                         mov.s              ecx, esi                                       // 0x004f5b04    8bce
                         {disp8} fstp       dword ptr [edi + 0x0c]                         // 0x004f5b06    d95f0c
                         call               _jmp_addr_0x004cf060                           // 0x004f5b09    e85295fdff
                         mov.s              edi, eax                                       // 0x004f5b0e    8bf8
                         test               edi, edi                                       // 0x004f5b10    85ff
                         {disp8} je         _jmp_addr_0x004f5b29                           // 0x004f5b12    7415
                         mov                eax, dword ptr [esi]                           // 0x004f5b14    8b06
                         mov.s              ecx, esi                                       // 0x004f5b16    8bce
                         call               dword ptr [eax + 0x1c]                         // 0x004f5b18    ff501c
                         {disp32} mov       ecx, dword ptr [edi + 0x0000012c]              // 0x004f5b1b    8b8f2c010000
                         push               eax                                            // 0x004f5b21    50
                         push               0x1                                            // 0x004f5b22    6a01
                         call               _jmp_addr_0x005e6ae0                           // 0x004f5b24    e8b70f0f00
_jmp_addr_0x004f5b29:    pop                edi                                            // 0x004f5b29    5f
                         pop                esi                                            // 0x004f5b2a    5e
                         ret                                                               // 0x004f5b2b    c3
                         nop                                                               // 0x004f5b2c    90
                         nop                                                               // 0x004f5b2d    90
                         nop                                                               // 0x004f5b2e    90
                         nop                                                               // 0x004f5b2f    90
                         push               ecx                                            // 0x004f5b30    51
                         push               esi                                            // 0x004f5b31    56
                         push               edi                                            // 0x004f5b32    57
                         mov.s              edi, ecx                                       // 0x004f5b33    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000370]              // 0x004f5b35    8bb770030000
                         add                esi, 0x000000dc                                // 0x004f5b3b    81c6dc000000
                         mov.s              ecx, esi                                       // 0x004f5b41    8bce
                         call               _jmp_addr_0x004f5360                           // 0x004f5b43    e818f8ffff
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]               // 0x004f5b48    d90578b68a00
                         {disp8} fsub       dword ptr [esi + 0x0c]                         // 0x004f5b4e    d8660c
                         {disp32} mov       ecx, dword ptr [edi + 0x00000168]              // 0x004f5b51    8b8f68010000
                         fmulp              st(1), st                                      // 0x004f5b57    dec9
                         {disp8} fadd       dword ptr [esi + 0x0c]                         // 0x004f5b59    d8460c
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f5b5c    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x004f5b60    8b442408
                         push               eax                                            // 0x004f5b64    50
                         call               _jmp_addr_0x004146f0                           // 0x004f5b65    e886ebf1ff
                         pop                edi                                            // 0x004f5b6a    5f
                         pop                esi                                            // 0x004f5b6b    5e
                         pop                ecx                                            // 0x004f5b6c    59
                         ret                                                               // 0x004f5b6d    c3
                         nop                                                               // 0x004f5b6e    90
                         nop                                                               // 0x004f5b6f    90
                         push               esi                                            // 0x004f5b70    56
                         push               edi                                            // 0x004f5b71    57
                         mov.s              esi, ecx                                       // 0x004f5b72    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5b74    8b4628
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5b77    8b8e64010000
                         {disp32} mov       edi, dword ptr [esi + 0x00000370]              // 0x004f5b7d    8bbe70030000
                         push               0x3fa66666                                     // 0x004f5b83    686666a63f
                         push               eax                                            // 0x004f5b88    50
                         push               0x2                                            // 0x004f5b89    6a02
                         add                ecx, 0x8                                       // 0x004f5b8b    83c108
                         add                edi, 0x000000dc                                // 0x004f5b8e    81c7dc000000
                         call               _jmp_addr_0x004dc9f0                           // 0x004f5b94    e8576efeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5b99    8b8e64010000
                         call               _jmp_addr_0x004dcf20                           // 0x004f5b9f    e87c73feff
                         {disp8} mov        ecx, dword ptr [edi + 0x0c]                    // 0x004f5ba4    8b4f0c
                         push               ecx                                            // 0x004f5ba7    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000168]              // 0x004f5ba8    8b8e68010000
                         call               _jmp_addr_0x004146f0                           // 0x004f5bae    e83debf1ff
                         pop                edi                                            // 0x004f5bb3    5f
                         pop                esi                                            // 0x004f5bb4    5e
                         ret                                                               // 0x004f5bb5    c3
                         nop                                                               // 0x004f5bb6    90
                         nop                                                               // 0x004f5bb7    90
                         nop                                                               // 0x004f5bb8    90
                         nop                                                               // 0x004f5bb9    90
                         nop                                                               // 0x004f5bba    90
                         nop                                                               // 0x004f5bbb    90
                         nop                                                               // 0x004f5bbc    90
                         nop                                                               // 0x004f5bbd    90
                         nop                                                               // 0x004f5bbe    90
                         nop                                                               // 0x004f5bbf    90
                         push               esi                                            // 0x004f5bc0    56
                         mov.s              esi, ecx                                       // 0x004f5bc1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5bc3    8b8e64010000
                         push               0x1                                            // 0x004f5bc9    6a01
                         push               0x4                                            // 0x004f5bcb    6a04
                         add                ecx, 0x8                                       // 0x004f5bcd    83c108
                         call               _jmp_addr_0x004dcdd0                           // 0x004f5bd0    e8fb71feff
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5bd5    8b4628
                         push               eax                                            // 0x004f5bd8    50
                         push               0x4                                            // 0x004f5bd9    6a04
                         mov.s              ecx, esi                                       // 0x004f5bdb    8bce
                         call               _jmp_addr_0x004dc9a0                           // 0x004f5bdd    e8be6dfeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x28598]         // 0x004f5be2    8b0d98158d00
                         push               0x1                                            // 0x004f5be8    6a01
                         push               ecx                                            // 0x004f5bea    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5beb    8b8e64010000
                         push               0x4                                            // 0x004f5bf1    6a04
                         call               _jmp_addr_0x004dce20                           // 0x004f5bf3    e82872feff
                         pop                esi                                            // 0x004f5bf8    5e
                         ret                                                               // 0x004f5bf9    c3
                         call               dword ptr [__imp__RegisterWindowMessageA@4]    // 0x004f5bfa    ff1554988a00
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x004f5c00    8b4128
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]              // 0x004f5c03    8b8964010000
                         push               0x3fa66666                                     // 0x004f5c09    686666a63f
                         push               eax                                            // 0x004f5c0e    50
                         push               0x4                                            // 0x004f5c0f    6a04
                         add                ecx, 0x8                                       // 0x004f5c11    83c108
                         call               _jmp_addr_0x004dc9f0                           // 0x004f5c14    e8d76dfeff
                         ret                                                               // 0x004f5c19    c3
                         call               dword ptr [__imp__ShellExecuteA@4]             // 0x004f5c1a    ff15ac978a00
                         push               esi                                            // 0x004f5c20    56
                         mov.s              esi, ecx                                       // 0x004f5c21    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5c23    8b8e64010000
                         push               0x1                                            // 0x004f5c29    6a01
                         push               0x5                                            // 0x004f5c2b    6a05
                         add                ecx, 0x8                                       // 0x004f5c2d    83c108
                         call               _jmp_addr_0x004dcdd0                           // 0x004f5c30    e89b71feff
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5c35    8b4628
                         push               eax                                            // 0x004f5c38    50
                         push               0x5                                            // 0x004f5c39    6a05
                         mov.s              ecx, esi                                       // 0x004f5c3b    8bce
                         call               _jmp_addr_0x004dc9a0                           // 0x004f5c3d    e85e6dfeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x28598]         // 0x004f5c42    8b0d98158d00
                         push               0x1                                            // 0x004f5c48    6a01
                         push               ecx                                            // 0x004f5c4a    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5c4b    8b8e64010000
                         push               0x5                                            // 0x004f5c51    6a05
                         call               _jmp_addr_0x004dce20                           // 0x004f5c53    e8c871feff
                         pop                esi                                            // 0x004f5c58    5e
                         ret                                                               // 0x004f5c59    c3
                         call               dword ptr [rdata_bytes + 0x994]                // 0x004f5c5a    ff1594998a00
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x004f5c60    8b4128
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]              // 0x004f5c63    8b8964010000
                         push               0x3fa66666                                     // 0x004f5c69    686666a63f
                         push               eax                                            // 0x004f5c6e    50
                         push               0x5                                            // 0x004f5c6f    6a05
                         add                ecx, 0x8                                       // 0x004f5c71    83c108
                         call               _jmp_addr_0x004dc9f0                           // 0x004f5c74    e8776dfeff
                         ret                                                               // 0x004f5c79    c3
                         call               dword ptr [__imp__GetSystemInfo@4]             // 0x004f5c7a    ff1534928a00
                         push               esi                                            // 0x004f5c80    56
                         mov.s              esi, ecx                                       // 0x004f5c81    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5c83    8b8e64010000
                         push               0x1                                            // 0x004f5c89    6a01
                         push               0x8                                            // 0x004f5c8b    6a08
                         add                ecx, 0x8                                       // 0x004f5c8d    83c108
                         call               _jmp_addr_0x004dcdd0                           // 0x004f5c90    e83b71feff
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5c95    8b4628
                         push               eax                                            // 0x004f5c98    50
                         push               0x8                                            // 0x004f5c99    6a08
                         mov.s              ecx, esi                                       // 0x004f5c9b    8bce
                         call               _jmp_addr_0x004dc9a0                           // 0x004f5c9d    e8fe6cfeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x28598]         // 0x004f5ca2    8b0d98158d00
                         push               0x1                                            // 0x004f5ca8    6a01
                         push               ecx                                            // 0x004f5caa    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5cab    8b8e64010000
                         push               0x8                                            // 0x004f5cb1    6a08
                         call               _jmp_addr_0x004dce20                           // 0x004f5cb3    e86871feff
                         pop                esi                                            // 0x004f5cb8    5e
                         ret                                                               // 0x004f5cb9    c3
                         call               dword ptr [rdata_bytes + 0x704]                // 0x004f5cba    ff1504978a00
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x004f5cc0    8b4128
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]              // 0x004f5cc3    8b8964010000
                         push               0x3fa66666                                     // 0x004f5cc9    686666a63f
                         push               eax                                            // 0x004f5cce    50
                         push               0x8                                            // 0x004f5ccf    6a08
                         add                ecx, 0x8                                       // 0x004f5cd1    83c108
                         call               _jmp_addr_0x004dc9f0                           // 0x004f5cd4    e8176dfeff
                         ret                                                               // 0x004f5cd9    c3
                         call               dword ptr [__imp__BinkService@4]               // 0x004f5cda    ff1534998a00
                         push               esi                                            // 0x004f5ce0    56
                         mov.s              esi, ecx                                       // 0x004f5ce1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5ce3    8b8e64010000
                         push               0x1                                            // 0x004f5ce9    6a01
                         push               0x19                                           // 0x004f5ceb    6a19
                         add                ecx, 0x8                                       // 0x004f5ced    83c108
                         call               _jmp_addr_0x004dcdd0                           // 0x004f5cf0    e8db70feff
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5cf5    8b4628
                         push               eax                                            // 0x004f5cf8    50
                         push               0x19                                           // 0x004f5cf9    6a19
                         mov.s              ecx, esi                                       // 0x004f5cfb    8bce
                         call               _jmp_addr_0x004dc9a0                           // 0x004f5cfd    e89e6cfeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x28598]         // 0x004f5d02    8b0d98158d00
                         push               0x1                                            // 0x004f5d08    6a01
                         push               ecx                                            // 0x004f5d0a    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5d0b    8b8e64010000
                         push               0x19                                           // 0x004f5d11    6a19
                         call               _jmp_addr_0x004dce20                           // 0x004f5d13    e80871feff
                         pop                esi                                            // 0x004f5d18    5e
                         ret                                                               // 0x004f5d19    c3
                         call               dword ptr [__imp__GetOpenFileNameA@4]          // 0x004f5d1a    ff1570998a00
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x004f5d20    8b4128
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]              // 0x004f5d23    8b8964010000
                         push               0x3fa66666                                     // 0x004f5d29    686666a63f
                         push               eax                                            // 0x004f5d2e    50
                         push               0x19                                           // 0x004f5d2f    6a19
                         add                ecx, 0x8                                       // 0x004f5d31    83c108
                         call               _jmp_addr_0x004dc9f0                           // 0x004f5d34    e8b76cfeff
                         ret                                                               // 0x004f5d39    c3
                         call               dword ptr [__imp__DirectDrawEnumerateA@4]      // 0x004f5d3a    ff1528908a00
                         push               esi                                            // 0x004f5d40    56
                         mov.s              esi, ecx                                       // 0x004f5d41    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5d43    8b8e64010000
                         push               0x1                                            // 0x004f5d49    6a01
                         push               0xe                                            // 0x004f5d4b    6a0e
                         add                ecx, 0x8                                       // 0x004f5d4d    83c108
                         call               _jmp_addr_0x004dcdd0                           // 0x004f5d50    e87b70feff
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5d55    8b4628
                         push               eax                                            // 0x004f5d58    50
                         push               0xe                                            // 0x004f5d59    6a0e
                         mov.s              ecx, esi                                       // 0x004f5d5b    8bce
                         call               _jmp_addr_0x004dc9a0                           // 0x004f5d5d    e83e6cfeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x28598]         // 0x004f5d62    8b0d98158d00
                         push               0x1                                            // 0x004f5d68    6a01
                         push               ecx                                            // 0x004f5d6a    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5d6b    8b8e64010000
                         push               0xe                                            // 0x004f5d71    6a0e
                         call               _jmp_addr_0x004dce20                           // 0x004f5d73    e8a870feff
                         pop                esi                                            // 0x004f5d78    5e
                         ret                                                               // 0x004f5d79    c3
                         call               dword ptr [__imp__DirectInputCreateA@4]        // 0x004f5d7a    ff1534908a00
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x004f5d80    8b4128
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]              // 0x004f5d83    8b8964010000
                         push               0x3fa66666                                     // 0x004f5d89    686666a63f
                         push               eax                                            // 0x004f5d8e    50
                         push               0xe                                            // 0x004f5d8f    6a0e
                         add                ecx, 0x8                                       // 0x004f5d91    83c108
                         call               _jmp_addr_0x004dc9f0                           // 0x004f5d94    e8576cfeff
                         ret                                                               // 0x004f5d99    c3
                         call               dword ptr [rdata_bytes + 0xb8]                 // 0x004f5d9a    ff15b8908a00
                         push               esi                                            // 0x004f5da0    56
                         mov.s              esi, ecx                                       // 0x004f5da1    8bf1
                         test               byte ptr [esi + 0x25], 0x04                    // 0x004f5da3    f6462504
                         {disp8} jne        _jmp_addr_0x004f5db7                           // 0x004f5da7    750e
                         push               0x1                                            // 0x004f5da9    6a01
                         push               0x1                                            // 0x004f5dab    6a01
                         push               0x00be0a50                                     // 0x004f5dad    68500abe00
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                           // 0x004f5db2    e879f9f7ff
_jmp_addr_0x004f5db7:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5db7    8b8e64010000
                         push               0x1                                            // 0x004f5dbd    6a01
                         push               0x15                                           // 0x004f5dbf    6a15
                         add                ecx, 0x8                                       // 0x004f5dc1    83c108
                         call               _jmp_addr_0x004dcdd0                           // 0x004f5dc4    e80770feff
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5dc9    8b4628
                         push               eax                                            // 0x004f5dcc    50
                         push               0x15                                           // 0x004f5dcd    6a15
                         mov.s              ecx, esi                                       // 0x004f5dcf    8bce
                         call               _jmp_addr_0x004dc9a0                           // 0x004f5dd1    e8ca6bfeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x28598]         // 0x004f5dd6    8b0d98158d00
                         push               0x1                                            // 0x004f5ddc    6a01
                         push               ecx                                            // 0x004f5dde    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5ddf    8b8e64010000
                         push               0x15                                           // 0x004f5de5    6a15
                         call               _jmp_addr_0x004dce20                           // 0x004f5de7    e83470feff
                         pop                esi                                            // 0x004f5dec    5e
                         ret                                                               // 0x004f5ded    c3
                         nop                                                               // 0x004f5dee    90
                         nop                                                               // 0x004f5def    90
                         push               esi                                            // 0x004f5df0    56
                         mov.s              esi, ecx                                       // 0x004f5df1    8bf1
                         call               _jmp_addr_0x004cf060                           // 0x004f5df3    e86892fdff
                         test               eax, eax                                       // 0x004f5df8    85c0
                         {disp8} je         _jmp_addr_0x004f5e0a                           // 0x004f5dfa    740e
                         {disp32} mov       ecx, dword ptr [eax + 0x0000012c]              // 0x004f5dfc    8b882c010000
                         push               0x0                                            // 0x004f5e02    6a00
                         push               esi                                            // 0x004f5e04    56
                         call               _jmp_addr_0x005e6f70                           // 0x004f5e05    e866110f00
_jmp_addr_0x004f5e0a:    {disp32} mov       eax, dword ptr [rdata_bytes + 0x28598]         // 0x004f5e0a    a198158d00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5e0f    8b8e64010000
                         push               0x1                                            // 0x004f5e15    6a01
                         push               eax                                            // 0x004f5e17    50
                         push               0x15                                           // 0x004f5e18    6a15
                         call               _jmp_addr_0x004dce20                           // 0x004f5e1a    e80170feff
                         pop                esi                                            // 0x004f5e1f    5e
                         ret                                                               // 0x004f5e20    c3
                         nop                                                               // 0x004f5e21    90
                         nop                                                               // 0x004f5e22    90
                         nop                                                               // 0x004f5e23    90
                         nop                                                               // 0x004f5e24    90
                         nop                                                               // 0x004f5e25    90
                         nop                                                               // 0x004f5e26    90
                         nop                                                               // 0x004f5e27    90
                         nop                                                               // 0x004f5e28    90
                         nop                                                               // 0x004f5e29    90
                         nop                                                               // 0x004f5e2a    90
                         nop                                                               // 0x004f5e2b    90
                         nop                                                               // 0x004f5e2c    90
                         nop                                                               // 0x004f5e2d    90
                         nop                                                               // 0x004f5e2e    90
                         nop                                                               // 0x004f5e2f    90
                         push               esi                                            // 0x004f5e30    56
                         mov.s              esi, ecx                                       // 0x004f5e31    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x004f5e33    8b4628
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5e36    8b8e64010000
                         push               0x3fa66666                                     // 0x004f5e3c    686666a63f
                         push               eax                                            // 0x004f5e41    50
                         push               0x15                                           // 0x004f5e42    6a15
                         add                ecx, 0x8                                       // 0x004f5e44    83c108
                         call               _jmp_addr_0x004dc9f0                           // 0x004f5e47    e8a46bfeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f5e4c    8b8e64010000
                         call               _jmp_addr_0x004dcf20                           // 0x004f5e52    e8c970feff
                         pop                esi                                            // 0x004f5e57    5e
                         ret                                                               // 0x004f5e58    c3
                         nop                                                               // 0x004f5e59    90
                         nop                                                               // 0x004f5e5a    90
                         nop                                                               // 0x004f5e5b    90
                         nop                                                               // 0x004f5e5c    90
                         nop                                                               // 0x004f5e5d    90
                         nop                                                               // 0x004f5e5e    90
                         nop                                                               // 0x004f5e5f    90
_jmp_addr_0x004f5e60:    push               esi                                            // 0x004f5e60    56
                         mov.s              esi, ecx                                       // 0x004f5e61    8bf1
                         push               0x0                                            // 0x004f5e63    6a00
                         call               _jmp_addr_0x004f5200                           // 0x004f5e65    e896f3ffff
                         test               eax, eax                                       // 0x004f5e6a    85c0
                         {disp8} je         _jmp_addr_0x004f5e92                           // 0x004f5e6c    7424
                         push               0x2                                            // 0x004f5e6e    6a02
                         mov.s              ecx, esi                                       // 0x004f5e70    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5e72    e869f3ffff
                         test               eax, eax                                       // 0x004f5e77    85c0
                         {disp8} je         _jmp_addr_0x004f5e80                           // 0x004f5e79    7405
                         {disp8} fld        dword ptr [esi + 0x40]                         // 0x004f5e7b    d94640
                         pop                esi                                            // 0x004f5e7e    5e
                         ret                                                               // 0x004f5e7f    c3
_jmp_addr_0x004f5e80:    push               0x1                                            // 0x004f5e80    6a01
                         mov.s              ecx, esi                                       // 0x004f5e82    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5e84    e857f3ffff
                         test               eax, eax                                       // 0x004f5e89    85c0
                         {disp8} je         _jmp_addr_0x004f5e92                           // 0x004f5e8b    7405
                         {disp8} fld        dword ptr [esi + 0x28]                         // 0x004f5e8d    d94628
                         pop                esi                                            // 0x004f5e90    5e
                         ret                                                               // 0x004f5e91    c3
_jmp_addr_0x004f5e92:    mov                eax, dword ptr [esi]                           // 0x004f5e92    8b06
                         {disp32} mov       ecx, dword ptr [eax + 0x00000160]              // 0x004f5e94    8b8860010000
                         {disp8} fld        dword ptr [ecx + 0x6c]                         // 0x004f5e9a    d9416c
                         pop                esi                                            // 0x004f5e9d    5e
                         ret                                                               // 0x004f5e9e    c3
                         nop                                                               // 0x004f5e9f    90
_jmp_addr_0x004f5ea0:    push               esi                                            // 0x004f5ea0    56
                         mov.s              esi, ecx                                       // 0x004f5ea1    8bf1
                         push               0x0                                            // 0x004f5ea3    6a00
                         call               _jmp_addr_0x004f5200                           // 0x004f5ea5    e856f3ffff
                         test               eax, eax                                       // 0x004f5eaa    85c0
                         {disp8} je         _jmp_addr_0x004f5ede                           // 0x004f5eac    7430
                         push               0x2                                            // 0x004f5eae    6a02
                         mov.s              ecx, esi                                       // 0x004f5eb0    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5eb2    e829f3ffff
                         test               eax, eax                                       // 0x004f5eb7    85c0
                         {disp8} je         _jmp_addr_0x004f5ec6                           // 0x004f5eb9    740b
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x004f5ebb    8b442408
                         {disp8} mov        dword ptr [esi + 0x40], eax                    // 0x004f5ebf    894640
                         pop                esi                                            // 0x004f5ec2    5e
                         ret                0x0004                                         // 0x004f5ec3    c20400
_jmp_addr_0x004f5ec6:    push               0x1                                            // 0x004f5ec6    6a01
                         mov.s              ecx, esi                                       // 0x004f5ec8    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5eca    e811f3ffff
                         test               eax, eax                                       // 0x004f5ecf    85c0
                         {disp8} je         _jmp_addr_0x004f5eed                           // 0x004f5ed1    741a
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x004f5ed3    8b4c2408
                         {disp8} mov        dword ptr [esi + 0x28], ecx                    // 0x004f5ed7    894e28
                         pop                esi                                            // 0x004f5eda    5e
                         ret                0x0004                                         // 0x004f5edb    c20400
_jmp_addr_0x004f5ede:    mov                edx, dword ptr [esi]                           // 0x004f5ede    8b16
                         {disp32} mov       eax, dword ptr [edx + 0x00000160]              // 0x004f5ee0    8b8260010000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x004f5ee6    8b4c2408
                         {disp8} mov        dword ptr [eax + 0x6c], ecx                    // 0x004f5eea    89486c
_jmp_addr_0x004f5eed:    pop                esi                                            // 0x004f5eed    5e
                         ret                0x0004                                         // 0x004f5eee    c20400
                         nop                                                               // 0x004f5ef1    90
                         nop                                                               // 0x004f5ef2    90
                         nop                                                               // 0x004f5ef3    90
                         nop                                                               // 0x004f5ef4    90
                         nop                                                               // 0x004f5ef5    90
                         nop                                                               // 0x004f5ef6    90
                         nop                                                               // 0x004f5ef7    90
                         nop                                                               // 0x004f5ef8    90
                         nop                                                               // 0x004f5ef9    90
                         nop                                                               // 0x004f5efa    90
                         nop                                                               // 0x004f5efb    90
                         nop                                                               // 0x004f5efc    90
                         nop                                                               // 0x004f5efd    90
                         nop                                                               // 0x004f5efe    90
                         nop                                                               // 0x004f5eff    90
_jmp_addr_0x004f5f00:    push               esi                                            // 0x004f5f00    56
                         mov.s              esi, ecx                                       // 0x004f5f01    8bf1
                         push               0x1                                            // 0x004f5f03    6a01
                         call               _jmp_addr_0x004f5200                           // 0x004f5f05    e8f6f2ffff
                         test               eax, eax                                       // 0x004f5f0a    85c0
                         {disp8} je         _jmp_addr_0x004f5f32                           // 0x004f5f0c    7424
                         push               0x4                                            // 0x004f5f0e    6a04
                         mov.s              ecx, esi                                       // 0x004f5f10    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5f12    e8c9f2ffff
                         test               eax, eax                                       // 0x004f5f17    85c0
                         {disp8} je         _jmp_addr_0x004f5f20                           // 0x004f5f19    7405
                         {disp8} fld        dword ptr [esi + 0x70]                         // 0x004f5f1b    d94670
                         pop                esi                                            // 0x004f5f1e    5e
                         ret                                                               // 0x004f5f1f    c3
_jmp_addr_0x004f5f20:    push               0x3                                            // 0x004f5f20    6a03
                         mov.s              ecx, esi                                       // 0x004f5f22    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5f24    e8b7f2ffff
                         test               eax, eax                                       // 0x004f5f29    85c0
                         {disp8} je         _jmp_addr_0x004f5f32                           // 0x004f5f2b    7405
                         {disp8} fld        dword ptr [esi + 0x58]                         // 0x004f5f2d    d94658
                         pop                esi                                            // 0x004f5f30    5e
                         ret                                                               // 0x004f5f31    c3
_jmp_addr_0x004f5f32:    mov                eax, dword ptr [esi]                           // 0x004f5f32    8b06
                         {disp32} mov       ecx, dword ptr [eax + 0x00000160]              // 0x004f5f34    8b8860010000
                         {disp8} fld        dword ptr [ecx + 0x0c]                         // 0x004f5f3a    d9410c
                         pop                esi                                            // 0x004f5f3d    5e
                         ret                                                               // 0x004f5f3e    c3
                         nop                                                               // 0x004f5f3f    90
_jmp_addr_0x004f5f40:    push               esi                                            // 0x004f5f40    56
                         mov.s              esi, ecx                                       // 0x004f5f41    8bf1
                         push               0x1                                            // 0x004f5f43    6a01
                         call               _jmp_addr_0x004f5200                           // 0x004f5f45    e8b6f2ffff
                         test               eax, eax                                       // 0x004f5f4a    85c0
                         {disp8} je         _jmp_addr_0x004f5f7e                           // 0x004f5f4c    7430
                         push               0x4                                            // 0x004f5f4e    6a04
                         mov.s              ecx, esi                                       // 0x004f5f50    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5f52    e889f2ffff
                         test               eax, eax                                       // 0x004f5f57    85c0
                         {disp8} je         _jmp_addr_0x004f5f66                           // 0x004f5f59    740b
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x004f5f5b    8b442408
                         {disp8} mov        dword ptr [esi + 0x70], eax                    // 0x004f5f5f    894670
                         pop                esi                                            // 0x004f5f62    5e
                         ret                0x0004                                         // 0x004f5f63    c20400
_jmp_addr_0x004f5f66:    push               0x3                                            // 0x004f5f66    6a03
                         mov.s              ecx, esi                                       // 0x004f5f68    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5f6a    e871f2ffff
                         test               eax, eax                                       // 0x004f5f6f    85c0
                         {disp8} je         _jmp_addr_0x004f5f90                           // 0x004f5f71    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x004f5f73    8b4c2408
                         {disp8} mov        dword ptr [esi + 0x58], ecx                    // 0x004f5f77    894e58
                         pop                esi                                            // 0x004f5f7a    5e
                         ret                0x0004                                         // 0x004f5f7b    c20400
_jmp_addr_0x004f5f7e:    {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x004f5f7e    8b542408
                         mov                eax, dword ptr [esi]                           // 0x004f5f82    8b06
                         {disp32} mov       ecx, dword ptr [eax + 0x00000160]              // 0x004f5f84    8b8860010000
                         push               edx                                            // 0x004f5f8a    52
                         call               _jmp_addr_0x004f0100                           // 0x004f5f8b    e870a1ffff
_jmp_addr_0x004f5f90:    pop                esi                                            // 0x004f5f90    5e
                         ret                0x0004                                         // 0x004f5f91    c20400
                         nop                                                               // 0x004f5f94    90
                         nop                                                               // 0x004f5f95    90
                         nop                                                               // 0x004f5f96    90
                         nop                                                               // 0x004f5f97    90
                         nop                                                               // 0x004f5f98    90
                         nop                                                               // 0x004f5f99    90
                         nop                                                               // 0x004f5f9a    90
                         nop                                                               // 0x004f5f9b    90
                         nop                                                               // 0x004f5f9c    90
                         nop                                                               // 0x004f5f9d    90
                         nop                                                               // 0x004f5f9e    90
                         nop                                                               // 0x004f5f9f    90
_jmp_addr_0x004f5fa0:    push               esi                                            // 0x004f5fa0    56
                         mov.s              esi, ecx                                       // 0x004f5fa1    8bf1
                         push               0x8                                            // 0x004f5fa3    6a08
                         call               _jmp_addr_0x004f51e0                           // 0x004f5fa5    e836f2ffff
                         test               eax, eax                                       // 0x004f5faa    85c0
                         {disp8} je         _jmp_addr_0x004f5fb6                           // 0x004f5fac    7408
                         {disp32} fld       dword ptr [esi + 0x000000d0]                   // 0x004f5fae    d986d0000000
                         pop                esi                                            // 0x004f5fb4    5e
                         ret                                                               // 0x004f5fb5    c3
_jmp_addr_0x004f5fb6:    push               0x9                                            // 0x004f5fb6    6a09
                         mov.s              ecx, esi                                       // 0x004f5fb8    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f5fba    e821f2ffff
                         test               eax, eax                                       // 0x004f5fbf    85c0
                         {disp8} je         _jmp_addr_0x004f5fcb                           // 0x004f5fc1    7408
                         {disp32} fld       dword ptr [esi + 0x000000e8]                   // 0x004f5fc3    d986e8000000
                         pop                esi                                            // 0x004f5fc9    5e
                         ret                                                               // 0x004f5fca    c3
_jmp_addr_0x004f5fcb:    mov                eax, dword ptr [esi]                           // 0x004f5fcb    8b06
                         {disp32} mov       ecx, dword ptr [eax + 0x00000168]              // 0x004f5fcd    8b8868010000
                         {disp8} fld        dword ptr [ecx + 0x08]                         // 0x004f5fd3    d94108
                         pop                esi                                            // 0x004f5fd6    5e
                         ret                                                               // 0x004f5fd7    c3
                         nop                                                               // 0x004f5fd8    90
                         nop                                                               // 0x004f5fd9    90
                         nop                                                               // 0x004f5fda    90
                         nop                                                               // 0x004f5fdb    90
                         nop                                                               // 0x004f5fdc    90
                         nop                                                               // 0x004f5fdd    90
                         nop                                                               // 0x004f5fde    90
                         nop                                                               // 0x004f5fdf    90
_jmp_addr_0x004f5fe0:    push               esi                                            // 0x004f5fe0    56
                         mov.s              esi, ecx                                       // 0x004f5fe1    8bf1
                         push               0x8                                            // 0x004f5fe3    6a08
                         call               _jmp_addr_0x004f51e0                           // 0x004f5fe5    e8f6f1ffff
                         test               eax, eax                                       // 0x004f5fea    85c0
                         {disp8} je         _jmp_addr_0x004f5ffc                           // 0x004f5fec    740e
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x004f5fee    8b442408
                         {disp32} mov       dword ptr [esi + 0x000000d0], eax              // 0x004f5ff2    8986d0000000
                         pop                esi                                            // 0x004f5ff8    5e
                         ret                0x0004                                         // 0x004f5ff9    c20400
_jmp_addr_0x004f5ffc:    push               0x9                                            // 0x004f5ffc    6a09
                         mov.s              ecx, esi                                       // 0x004f5ffe    8bce
                         call               _jmp_addr_0x004f51e0                           // 0x004f6000    e8dbf1ffff
                         test               eax, eax                                       // 0x004f6005    85c0
                         {disp8} je         _jmp_addr_0x004f6017                           // 0x004f6007    740e
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x004f6009    8b4c2408
                         {disp32} mov       dword ptr [esi + 0x000000e8], ecx              // 0x004f600d    898ee8000000
                         pop                esi                                            // 0x004f6013    5e
                         ret                0x0004                                         // 0x004f6014    c20400
_jmp_addr_0x004f6017:    {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x004f6017    8b542408
                         mov                eax, dword ptr [esi]                           // 0x004f601b    8b06
                         {disp32} mov       ecx, dword ptr [eax + 0x00000168]              // 0x004f601d    8b8868010000
                         push               edx                                            // 0x004f6023    52
                         call               _jmp_addr_0x004146f0                           // 0x004f6024    e8c7e6f1ff
                         pop                esi                                            // 0x004f6029    5e
                         ret                0x0004                                         // 0x004f602a    c20400
                         nop                                                               // 0x004f602d    90
                         nop                                                               // 0x004f602e    90
                         nop                                                               // 0x004f602f    90
_globl_ct_0x004f6030:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                   // 0x004f6030    8a0d34c9fa00
                         mov                al, 0x01                                       // 0x004f6036    b001
                         test               al, cl                                         // 0x004f6038    84c8
                         {disp8} jne        _jmp_addr_0x004f6044                           // 0x004f603a    7508
                         or.s               cl, al                                         // 0x004f603c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                   // 0x004f603e    880d34c9fa00
_jmp_addr_0x004f6044:    {disp32} jmp       _jmp_addr_0x004f6050                           // 0x004f6044    e907000000
                         nop                                                               // 0x004f6049    90
                         nop                                                               // 0x004f604a    90
                         nop                                                               // 0x004f604b    90
                         nop                                                               // 0x004f604c    90
                         nop                                                               // 0x004f604d    90
                         nop                                                               // 0x004f604e    90
                         nop                                                               // 0x004f604f    90
_jmp_addr_0x004f6050:    push               0x00407870                                     // 0x004f6050    6870784000
                         call               _atexit                                        // 0x004f6055    e837f72c00
                         pop                ecx                                            // 0x004f605a    59
                         ret                                                               // 0x004f605b    c3
                         nop                                                               // 0x004f605c    90
                         nop                                                               // 0x004f605d    90
                         nop                                                               // 0x004f605e    90
                         nop                                                               // 0x004f605f    90
_globl_ct_0x004f6060:    {disp32} jmp       _jmp_addr_0x004f6070                           // 0x004f6060    e90b000000
                         nop                                                               // 0x004f6065    90
                         nop                                                               // 0x004f6066    90
                         nop                                                               // 0x004f6067    90
                         nop                                                               // 0x004f6068    90
                         nop                                                               // 0x004f6069    90
                         nop                                                               // 0x004f606a    90
                         nop                                                               // 0x004f606b    90
                         nop                                                               // 0x004f606c    90
                         nop                                                               // 0x004f606d    90
                         nop                                                               // 0x004f606e    90
                         nop                                                               // 0x004f606f    90
_jmp_addr_0x004f6070:    {disp32} fld       dword ptr [rdata_bytes + 0x285ac]              // 0x004f6070    d905ac158d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x285a8]              // 0x004f6076    d80da8158d00
                         {disp32} fstp      dword ptr [data_bytes + 0x2e7acc]              // 0x004f607c    d91dccdaca00
                         ret                                                               // 0x004f6082    c3
                         nop                                                               // 0x004f6083    90
                         nop                                                               // 0x004f6084    90
                         nop                                                               // 0x004f6085    90
                         nop                                                               // 0x004f6086    90
                         nop                                                               // 0x004f6087    90
                         nop                                                               // 0x004f6088    90
                         nop                                                               // 0x004f6089    90
                         nop                                                               // 0x004f608a    90
                         nop                                                               // 0x004f608b    90
                         nop                                                               // 0x004f608c    90
                         nop                                                               // 0x004f608d    90
                         nop                                                               // 0x004f608e    90
                         nop                                                               // 0x004f608f    90
_globl_ct_0x004f6090:    {disp32} jmp       _jmp_addr_0x004f60a0                           // 0x004f6090    e90b000000
                         nop                                                               // 0x004f6095    90
                         nop                                                               // 0x004f6096    90
                         nop                                                               // 0x004f6097    90
                         nop                                                               // 0x004f6098    90
                         nop                                                               // 0x004f6099    90
                         nop                                                               // 0x004f609a    90
                         nop                                                               // 0x004f609b    90
                         nop                                                               // 0x004f609c    90
                         nop                                                               // 0x004f609d    90
                         nop                                                               // 0x004f609e    90
                         nop                                                               // 0x004f609f    90
_jmp_addr_0x004f60a0:    {disp32} mov       dword ptr [data_bytes + 0x2e7ac8], 0xffffffff  // 0x004f60a0    c705c8daca00ffffffff
                         ret                                                               // 0x004f60aa    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x004f60ab    e8c9b7f0ff
_jmp_addr_0x004f60b0:    sub                esp, 0x000000a8                                // 0x004f60b0    81eca8000000
                         {disp32} mov       edx, dword ptr [esp + 0x000000ac]              // 0x004f60b6    8b9424ac000000
                         {disp8} lea        eax, dword ptr [esp + 0x00]                    // 0x004f60bd    8d442400
                         push               eax                                            // 0x004f60c1    50
                         push               edx                                            // 0x004f60c2    52
                         {disp32} mov       dword ptr [esp + 0x000000ac], 0x00000000       // 0x004f60c3    c78424ac00000000000000
                         call               _jmp_addr_0x004f60e0                           // 0x004f60ce    e80d000000
                         add                esp, 0x000000a8                                // 0x004f60d3    81c4a8000000
                         ret                0x0004                                         // 0x004f60d9    c20400
                         nop                                                               // 0x004f60dc    90
                         nop                                                               // 0x004f60dd    90
                         nop                                                               // 0x004f60de    90
                         nop                                                               // 0x004f60df    90
_jmp_addr_0x004f60e0:    sub                esp, 0x000000ac                                // 0x004f60e0    81ecac000000
                         push               ebx                                            // 0x004f60e6    53
                         {disp32} mov       ebx, dword ptr [esp + 0x000000b4]              // 0x004f60e7    8b9c24b4000000
                         {disp8} mov        eax, dword ptr [ebx + 0x30]                    // 0x004f60ee    8b4330
                         push               ebp                                            // 0x004f60f1    55
                         push               esi                                            // 0x004f60f2    56
                         push               edi                                            // 0x004f60f3    57
                         push               0x0                                            // 0x004f60f4    6a00
                         push               0x009c7f50                                     // 0x004f60f6    68507f9c00
                         push               0x009c7f30                                     // 0x004f60fb    68307f9c00
                         push               0x0                                            // 0x004f6100    6a00
                         push               eax                                            // 0x004f6102    50
                         mov.s              esi, ecx                                       // 0x004f6103    8bf1
                         call               ___RTDynamicCast                               // 0x004f6105    e80ff92c00
                         push               0x0                                            // 0x004f610a    6a00
                         push               0x009c8060                                     // 0x004f610c    6860809c00
                         push               0x009c7f50                                     // 0x004f6111    68507f9c00
                         push               0x0                                            // 0x004f6116    6a00
                         push               eax                                            // 0x004f6118    50
                         call               ___RTDynamicCast                               // 0x004f6119    e8fbf82c00
                         {disp32} mov       ebp, dword ptr [esp + 0x000000ec]              // 0x004f611e    8bac24ec000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6125    8b8e64010000
                         add                esp, 0x28                                      // 0x004f612b    83c428
                         push               ebp                                            // 0x004f612e    55
                         push               ebx                                            // 0x004f612f    53
                         mov.s              edi, eax                                       // 0x004f6130    8bf8
                         {disp32} mov       dword ptr [esp + 0x000000c0], 0x00000000       // 0x004f6132    c78424c000000000000000
                         call               _jmp_addr_0x004c5280                           // 0x004f613d    e83ef1fcff
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                    // 0x004f6142    8d4c2414
                         push               ecx                                            // 0x004f6146    51
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]              // 0x004f6147    8b8f64010000
                         push               esi                                            // 0x004f614d    56
                         push               edi                                            // 0x004f614e    57
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x004f614f    8944241c
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                           // 0x004f6153    e8781afeff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]              // 0x004f6158    8b8f64010000
                         push               eax                                            // 0x004f615e    50
                         call               _jmp_addr_0x004c5280                           // 0x004f615f    e81cf1fcff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x004f6164    8b4c2410
                         cmp                ecx, 0x28                                      // 0x004f6168    83f928
                         {disp32} jge       _jmp_addr_0x004f625c                           // 0x004f616b    0f8deb000000
                         cmp                ecx, 0x02                                      // 0x004f6171    83f902
                         {disp8} jne        _jmp_addr_0x004f6191                           // 0x004f6174    751b
                         push               ebx                                            // 0x004f6176    53
                         push               ecx                                            // 0x004f6177    51
                         mov.s              ecx, esi                                       // 0x004f6178    8bce
                         call               _jmp_addr_0x004c43a0                           // 0x004f617a    e821e2fcff
                         pop                edi                                            // 0x004f617f    5f
                         pop                esi                                            // 0x004f6180    5e
                         pop                ebp                                            // 0x004f6181    5d
                         mov                eax, 0x00000001                                // 0x004f6182    b801000000
                         pop                ebx                                            // 0x004f6187    5b
                         add                esp, 0x000000ac                                // 0x004f6188    81c4ac000000
                         ret                0x0008                                         // 0x004f618e    c20800
_jmp_addr_0x004f6191:    cmp                eax, 0x02                                      // 0x004f6191    83f802
                         {disp8} jne        _jmp_addr_0x004f61dc                           // 0x004f6194    7546
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6196    8b8e64010000
                         push               edi                                            // 0x004f619c    57
                         push               eax                                            // 0x004f619d    50
                         call               _jmp_addr_0x004c45c0                           // 0x004f619e    e81de4fcff
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x004f61a3    d95c2410
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f61a7    8b8e64010000
                         push               edi                                            // 0x004f61ad    57
                         push               0x5                                            // 0x004f61ae    6a05
                         call               _jmp_addr_0x004c45c0                           // 0x004f61b0    e80be4fcff
                         {disp8} fcomp      dword ptr [esp + 0x10]                         // 0x004f61b5    d85c2410
                         push               ebx                                            // 0x004f61b9    53
                         fnstsw             ax                                             // 0x004f61ba    dfe0
                         test               ah, 0x01                                       // 0x004f61bc    f6c401
                         {disp8} je         _jmp_addr_0x004f6226                           // 0x004f61bf    7465
                         push               0x2                                            // 0x004f61c1    6a02
                         mov.s              ecx, esi                                       // 0x004f61c3    8bce
                         call               _jmp_addr_0x004c43a0                           // 0x004f61c5    e8d6e1fcff
                         pop                edi                                            // 0x004f61ca    5f
                         pop                esi                                            // 0x004f61cb    5e
                         pop                ebp                                            // 0x004f61cc    5d
                         mov                eax, 0x00000001                                // 0x004f61cd    b801000000
                         pop                ebx                                            // 0x004f61d2    5b
                         add                esp, 0x000000ac                                // 0x004f61d3    81c4ac000000
                         ret                0x0008                                         // 0x004f61d9    c20800
_jmp_addr_0x004f61dc:    cmp                ecx, 0x05                                      // 0x004f61dc    83f905
                         {disp8} jne        _jmp_addr_0x004f6241                           // 0x004f61df    7560
                         cmp.s              eax, ecx                                       // 0x004f61e1    3bc1
                         {disp8} jne        _jmp_addr_0x004f6225                           // 0x004f61e3    7540
                         mov                edx, dword ptr [esi]                           // 0x004f61e5    8b16
                         push               edi                                            // 0x004f61e7    57
                         mov.s              ecx, esi                                       // 0x004f61e8    8bce
                         call               dword ptr [edx + 0x2f4]                        // 0x004f61ea    ff92f4020000
                         test               eax, eax                                       // 0x004f61f0    85c0
                         {disp8} je         _jmp_addr_0x004f6225                           // 0x004f61f2    7431
                         {disp32} mov       eax, dword ptr [ebp + 0x000000a4]              // 0x004f61f4    8b85a4000000
                         {disp8} mov        dword ptr [ebp + eax * 0x4 + 0x00], 0x00000005 // 0x004f61fa    c744850005000000
                         {disp32} mov       edx, dword ptr [ebp + 0x000000a4]              // 0x004f6202    8b95a4000000
                         push               ebp                                            // 0x004f6208    55
                         inc                edx                                            // 0x004f6209    42
                         push               ebx                                            // 0x004f620a    53
                         mov.s              ecx, esi                                       // 0x004f620b    8bce
                         {disp32} mov       dword ptr [ebp + 0x000000a4], edx              // 0x004f620d    8995a4000000
                         call               _jmp_addr_0x004f60e0                           // 0x004f6213    e8c8feffff
                         pop                edi                                            // 0x004f6218    5f
                         pop                esi                                            // 0x004f6219    5e
                         pop                ebp                                            // 0x004f621a    5d
                         pop                ebx                                            // 0x004f621b    5b
                         add                esp, 0x000000ac                                // 0x004f621c    81c4ac000000
                         ret                0x0008                                         // 0x004f6222    c20800
_jmp_addr_0x004f6225:    push               ebx                                            // 0x004f6225    53
_jmp_addr_0x004f6226:    push               0x5                                            // 0x004f6226    6a05
                         mov.s              ecx, esi                                       // 0x004f6228    8bce
                         call               _jmp_addr_0x004c43a0                           // 0x004f622a    e871e1fcff
                         pop                edi                                            // 0x004f622f    5f
                         pop                esi                                            // 0x004f6230    5e
                         pop                ebp                                            // 0x004f6231    5d
                         mov                eax, 0x00000001                                // 0x004f6232    b801000000
                         pop                ebx                                            // 0x004f6237    5b
                         add                esp, 0x000000ac                                // 0x004f6238    81c4ac000000
                         ret                0x0008                                         // 0x004f623e    c20800
_jmp_addr_0x004f6241:    push               ebx                                            // 0x004f6241    53
                         push               ecx                                            // 0x004f6242    51
                         mov.s              ecx, esi                                       // 0x004f6243    8bce
                         call               _jmp_addr_0x004c43a0                           // 0x004f6245    e856e1fcff
                         pop                edi                                            // 0x004f624a    5f
                         pop                esi                                            // 0x004f624b    5e
                         pop                ebp                                            // 0x004f624c    5d
                         mov                eax, 0x00000001                                // 0x004f624d    b801000000
                         pop                ebx                                            // 0x004f6252    5b
                         add                esp, 0x000000ac                                // 0x004f6253    81c4ac000000
                         ret                0x0008                                         // 0x004f6259    c20800
_jmp_addr_0x004f625c:    pop                edi                                            // 0x004f625c    5f
                         pop                esi                                            // 0x004f625d    5e
                         pop                ebp                                            // 0x004f625e    5d
                         xor.s              eax, eax                                       // 0x004f625f    33c0
                         pop                ebx                                            // 0x004f6261    5b
                         add                esp, 0x000000ac                                // 0x004f6262    81c4ac000000
                         ret                0x0008                                         // 0x004f6268    c20800
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x004f626b    e809b6f0ff
_jmp_addr_0x004f6270:    {disp32} mov       eax, dword ptr [ecx + 0x00000164]              // 0x004f6270    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000f60]              // 0x004f6276    8b90600f0000
                         cmp                edx, 0x09                                      // 0x004f627c    83fa09
                         {disp8} je         _jmp_addr_0x004f62c4                           // 0x004f627f    7443
                         cmp                edx, 0x00000105                                // 0x004f6281    81fa05010000
                         {disp8} je         _jmp_addr_0x004f62c4                           // 0x004f6287    743b
                         {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x004f6289    8b542404
                         test               edx, edx                                       // 0x004f628d    85d2
                         {disp8} je         _jmp_addr_0x004f62a5                           // 0x004f628f    7414
                         push               esi                                            // 0x004f6291    56
                         xor.s              esi, esi                                       // 0x004f6292    33f6
                         {disp8} mov        si, word ptr [edx + 0x24]                      // 0x004f6294    668b7224
                         xor                si, word ptr [ecx + 0x24]                      // 0x004f6298    66337124
                         test               esi, 0x00000400                                // 0x004f629c    f7c600040000
                         pop                esi                                            // 0x004f62a2    5e
                         {disp8} jne        _jmp_addr_0x004f62c4                           // 0x004f62a3    751f
_jmp_addr_0x004f62a5:    {disp32} mov       eax, dword ptr [eax + 0x00001be8]              // 0x004f62a5    8b80e81b0000
                         cmp.s              eax, edx                                       // 0x004f62ab    3bc2
                         {disp8} jne        _jmp_addr_0x004f62b7                           // 0x004f62ad    7508
                         mov                eax, 0x00000002                                // 0x004f62af    b802000000
                         ret                0x0004                                         // 0x004f62b4    c20400
_jmp_addr_0x004f62b7:    neg                eax                                            // 0x004f62b7    f7d8
                         sbb.s              eax, eax                                       // 0x004f62b9    1bc0
                         and                eax, 0xfffffffe                                // 0x004f62bb    83e0fe
                         add                eax, 0x03                                      // 0x004f62be    83c003
                         ret                0x0004                                         // 0x004f62c1    c20400
_jmp_addr_0x004f62c4:    mov                eax, 0x00000001                                // 0x004f62c4    b801000000
                         ret                0x0004                                         // 0x004f62c9    c20400
                         nop                                                               // 0x004f62cc    90
                         nop                                                               // 0x004f62cd    90
                         nop                                                               // 0x004f62ce    90
                         nop                                                               // 0x004f62cf    90
_jmp_addr_0x004f62d0:    push               ecx                                            // 0x004f62d0    51
                         push               esi                                            // 0x004f62d1    56
                         mov.s              esi, ecx                                       // 0x004f62d2    8bf1
                         mov                eax, dword ptr [esi]                           // 0x004f62d4    8b06
                         push               edi                                            // 0x004f62d6    57
                         call               dword ptr [eax + 0x42c]                        // 0x004f62d7    ff902c040000
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x004f62dd    d95c2408
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x004f62e1    8b7c2410
                         mov                edx, dword ptr [edi]                           // 0x004f62e5    8b17
                         mov.s              ecx, edi                                       // 0x004f62e7    8bcf
                         call               dword ptr [edx + 0x42c]                        // 0x004f62e9    ff922c040000
                         {disp8} fdivr      dword ptr [esp + 0x08]                         // 0x004f62ef    d87c2408
                         {disp32} fcom      dword ptr [_rdata_float0p5]                    // 0x004f62f3    d815b4a38a00
                         fnstsw             ax                                             // 0x004f62f9    dfe0
                         test               ah, 0x01                                       // 0x004f62fb    f6c401
                         {disp8} jne        _jmp_addr_0x004f6326                           // 0x004f62fe    7526
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]               // 0x004f6300    d81d78b48a00
                         fnstsw             ax                                             // 0x004f6306    dfe0
                         test               ah, 0x41                                       // 0x004f6308    f6c441
                         {disp8} je         _jmp_addr_0x004f6328                           // 0x004f630b    741b
                         push               edi                                            // 0x004f630d    57
                         mov.s              ecx, esi                                       // 0x004f630e    8bce
                         call               _jmp_addr_0x004f6270                           // 0x004f6310    e85bffffff
                         xor.s              ecx, ecx                                       // 0x004f6315    33c9
                         cmp                eax, 0x03                                      // 0x004f6317    83f803
                         sete               cl                                             // 0x004f631a    0f94c1
                         pop                edi                                            // 0x004f631d    5f
                         pop                esi                                            // 0x004f631e    5e
                         dec                ecx                                            // 0x004f631f    49
                         and.s              eax, ecx                                       // 0x004f6320    23c1
                         pop                ecx                                            // 0x004f6322    59
                         ret                0x0004                                         // 0x004f6323    c20400
_jmp_addr_0x004f6326:    fstp               st(0)                                          // 0x004f6326    ddd8
_jmp_addr_0x004f6328:    pop                edi                                            // 0x004f6328    5f
                         mov                eax, 0x00000001                                // 0x004f6329    b801000000
                         pop                esi                                            // 0x004f632e    5e
                         pop                ecx                                            // 0x004f632f    59
                         ret                0x0004                                         // 0x004f6330    c20400
                         nop                                                               // 0x004f6333    90
                         nop                                                               // 0x004f6334    90
                         nop                                                               // 0x004f6335    90
                         nop                                                               // 0x004f6336    90
                         nop                                                               // 0x004f6337    90
                         nop                                                               // 0x004f6338    90
                         nop                                                               // 0x004f6339    90
                         nop                                                               // 0x004f633a    90
                         nop                                                               // 0x004f633b    90
                         nop                                                               // 0x004f633c    90
                         nop                                                               // 0x004f633d    90
                         nop                                                               // 0x004f633e    90
                         nop                                                               // 0x004f633f    90
_jmp_addr_0x004f6340:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x004f6340    8b442404
                         sub                esp, 0x18                                      // 0x004f6344    83ec18
                         push               ebx                                            // 0x004f6347    53
                         push               ebp                                            // 0x004f6348    55
                         mov.s              ebp, ecx                                       // 0x004f6349    8be9
                         push               eax                                            // 0x004f634b    50
                         call               _jmp_addr_0x004f6270                           // 0x004f634c    e81fffffff
                         cmp                eax, 0x03                                      // 0x004f6351    83f803
                         {disp32} jne       _jmp_addr_0x004f6404                           // 0x004f6354    0f85aa000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e148]         // 0x004f635a    a14841c600
                         test               eax, eax                                       // 0x004f635f    85c0
                         {disp32} jne       _jmp_addr_0x004f6402                           // 0x004f6361    0f859b000000
                         push               esi                                            // 0x004f6367    56
                         push               edi                                            // 0x004f6368    57
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000003             // 0x004f6369    c744241803000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000010             // 0x004f6371    c744241c10000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000005             // 0x004f6379    c744242005000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000002             // 0x004f6381    c744242402000000
                         mov                ebx, 0x00000028                                // 0x004f6389    bb28000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x004f638e    c744241000000000
                         {disp8} lea        esi, dword ptr [esp + 0x18]                    // 0x004f6396    8d742418
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000004             // 0x004f639a    c744241404000000
_jmp_addr_0x004f63a2:    {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x004f63a2    8b4c242c
                         mov                edi, dword ptr [esi]                           // 0x004f63a6    8b3e
                         push               ecx                                            // 0x004f63a8    51
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000164]              // 0x004f63a9    8b8d64010000
                         push               edi                                            // 0x004f63af    57
                         call               _jmp_addr_0x004c45c0                           // 0x004f63b0    e80be2fcff
                         {disp8} fcom       dword ptr [esp + 0x10]                         // 0x004f63b5    d8542410
                         fnstsw             ax                                             // 0x004f63b9    dfe0
                         test               ah, 0x41                                       // 0x004f63bb    f6c441
                         {disp8} jne        _jmp_addr_0x004f63c8                           // 0x004f63be    7508
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x004f63c0    d95c2410
                         mov.s              ebx, edi                                       // 0x004f63c4    8bdf
                         {disp8} jmp        _jmp_addr_0x004f63ca                           // 0x004f63c6    eb02
_jmp_addr_0x004f63c8:    fstp               st(0)                                          // 0x004f63c8    ddd8
_jmp_addr_0x004f63ca:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x004f63ca    8b442414
                         add                esi, 0x04                                      // 0x004f63ce    83c604
                         dec                eax                                            // 0x004f63d1    48
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x004f63d2    89442414
                         {disp8} jne        _jmp_addr_0x004f63a2                           // 0x004f63d6    75ca
                         cmp                ebx, 0x03                                      // 0x004f63d8    83fb03
                         pop                edi                                            // 0x004f63db    5f
                         pop                esi                                            // 0x004f63dc    5e
                         {disp8} je         _jmp_addr_0x004f6402                           // 0x004f63dd    7423
                         cmp                ebx, 0x10                                      // 0x004f63df    83fb10
                         {disp8} je         _jmp_addr_0x004f6402                           // 0x004f63e2    741e
                         push               0x0                                            // 0x004f63e4    6a00
                         push               0x0                                            // 0x004f63e6    6a00
                         push               0x0                                            // 0x004f63e8    6a00
                         push               0x5                                            // 0x004f63ea    6a05
                         push               0x28                                           // 0x004f63ec    6a28
                         mov.s              ecx, ebp                                       // 0x004f63ee    8bcd
                         call               _jmp_addr_0x004c9fe0                           // 0x004f63f0    e8eb3bfdff
                         pop                ebp                                            // 0x004f63f5    5d
                         mov                eax, 0x00000001                                // 0x004f63f6    b801000000
                         pop                ebx                                            // 0x004f63fb    5b
                         add                esp, 0x18                                      // 0x004f63fc    83c418
                         ret                0x0004                                         // 0x004f63ff    c20400
_jmp_addr_0x004f6402:    xor.s              eax, eax                                       // 0x004f6402    33c0
_jmp_addr_0x004f6404:    pop                ebp                                            // 0x004f6404    5d
                         pop                ebx                                            // 0x004f6405    5b
                         add                esp, 0x18                                      // 0x004f6406    83c418
                         ret                0x0004                                         // 0x004f6409    c20400
                         nop                                                               // 0x004f640c    90
                         nop                                                               // 0x004f640d    90
                         nop                                                               // 0x004f640e    90
                         nop                                                               // 0x004f640f    90
_jmp_addr_0x004f6410:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x004f6410    8b442404
                         sub                esp, 0x14                                      // 0x004f6414    83ec14
                         push               ebx                                            // 0x004f6417    53
                         mov.s              ebx, ecx                                       // 0x004f6418    8bd9
                         push               eax                                            // 0x004f641a    50
                         call               _jmp_addr_0x004f6270                           // 0x004f641b    e850feffff
                         cmp                eax, 0x03                                      // 0x004f6420    83f803
                         {disp32} jne       _jmp_addr_0x004f64c8                           // 0x004f6423    0f859f000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e148]         // 0x004f6429    a14841c600
                         test               eax, eax                                       // 0x004f642e    85c0
                         {disp8} je         _jmp_addr_0x004f643b                           // 0x004f6430    7409
                         xor.s              eax, eax                                       // 0x004f6432    33c0
                         pop                ebx                                            // 0x004f6434    5b
                         add                esp, 0x14                                      // 0x004f6435    83c414
                         ret                0x0004                                         // 0x004f6438    c20400
_jmp_addr_0x004f643b:    push               ebp                                            // 0x004f643b    55
                         push               esi                                            // 0x004f643c    56
                         push               edi                                            // 0x004f643d    57
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000006             // 0x004f643e    c744241806000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000005             // 0x004f6446    c744241c05000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000002             // 0x004f644e    c744242002000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000028             // 0x004f6456    c744241428000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x004f645e    c744241000000000
                         {disp8} lea        edi, dword ptr [esp + 0x18]                    // 0x004f6466    8d7c2418
                         mov                ebp, 0x00000003                                // 0x004f646a    bd03000000
_jmp_addr_0x004f646f:    {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x004f646f    8b4c2428
                         mov                esi, dword ptr [edi]                           // 0x004f6473    8b37
                         push               ecx                                            // 0x004f6475    51
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000164]              // 0x004f6476    8b8b64010000
                         push               esi                                            // 0x004f647c    56
                         call               _jmp_addr_0x004c45c0                           // 0x004f647d    e83ee1fcff
                         {disp8} fcom       dword ptr [esp + 0x10]                         // 0x004f6482    d8542410
                         fnstsw             ax                                             // 0x004f6486    dfe0
                         test               ah, 0x41                                       // 0x004f6488    f6c441
                         {disp8} jne        _jmp_addr_0x004f6497                           // 0x004f648b    750a
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x004f648d    d95c2410
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x004f6491    89742414
                         {disp8} jmp        _jmp_addr_0x004f6499                           // 0x004f6495    eb02
_jmp_addr_0x004f6497:    fstp               st(0)                                          // 0x004f6497    ddd8
_jmp_addr_0x004f6499:    add                edi, 0x04                                      // 0x004f6499    83c704
                         dec                ebp                                            // 0x004f649c    4d
                         {disp8} jne        _jmp_addr_0x004f646f                           // 0x004f649d    75d0
                         cmp                dword ptr [esp + 0x14], 0x06                   // 0x004f649f    837c241406
                         pop                edi                                            // 0x004f64a4    5f
                         pop                esi                                            // 0x004f64a5    5e
                         pop                ebp                                            // 0x004f64a6    5d
                         {disp8} jne        _jmp_addr_0x004f64b2                           // 0x004f64a7    7509
                         xor.s              eax, eax                                       // 0x004f64a9    33c0
                         pop                ebx                                            // 0x004f64ab    5b
                         add                esp, 0x14                                      // 0x004f64ac    83c414
                         ret                0x0004                                         // 0x004f64af    c20400
_jmp_addr_0x004f64b2:    push               0x0                                            // 0x004f64b2    6a00
                         push               0x0                                            // 0x004f64b4    6a00
                         push               0x0                                            // 0x004f64b6    6a00
                         push               0x6                                            // 0x004f64b8    6a06
                         push               0x28                                           // 0x004f64ba    6a28
                         mov.s              ecx, ebx                                       // 0x004f64bc    8bcb
                         call               _jmp_addr_0x004c9fe0                           // 0x004f64be    e81d3bfdff
                         mov                eax, 0x00000001                                // 0x004f64c3    b801000000
_jmp_addr_0x004f64c8:    pop                ebx                                            // 0x004f64c8    5b
                         add                esp, 0x14                                      // 0x004f64c9    83c414
                         ret                0x0004                                         // 0x004f64cc    c20400
                         nop                                                               // 0x004f64cf    90
_jmp_addr_0x004f64d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x004f64d0    8b442404
                         sub                esp, 0x14                                      // 0x004f64d4    83ec14
                         push               ebx                                            // 0x004f64d7    53
                         mov.s              ebx, ecx                                       // 0x004f64d8    8bd9
                         push               eax                                            // 0x004f64da    50
                         call               _jmp_addr_0x004f6270                           // 0x004f64db    e890fdffff
                         cmp                eax, 0x03                                      // 0x004f64e0    83f803
                         {disp32} jne       _jmp_addr_0x004f6588                           // 0x004f64e3    0f859f000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e148]         // 0x004f64e9    a14841c600
                         test               eax, eax                                       // 0x004f64ee    85c0
                         {disp8} je         _jmp_addr_0x004f64fb                           // 0x004f64f0    7409
                         xor.s              eax, eax                                       // 0x004f64f2    33c0
                         pop                ebx                                            // 0x004f64f4    5b
                         add                esp, 0x14                                      // 0x004f64f5    83c414
                         ret                0x0004                                         // 0x004f64f8    c20400
_jmp_addr_0x004f64fb:    push               ebp                                            // 0x004f64fb    55
                         push               esi                                            // 0x004f64fc    56
                         push               edi                                            // 0x004f64fd    57
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000010             // 0x004f64fe    c744241810000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000005             // 0x004f6506    c744241c05000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000002             // 0x004f650e    c744242002000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000028             // 0x004f6516    c744241428000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x004f651e    c744241000000000
                         {disp8} lea        edi, dword ptr [esp + 0x18]                    // 0x004f6526    8d7c2418
                         mov                ebp, 0x00000003                                // 0x004f652a    bd03000000
_jmp_addr_0x004f652f:    {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x004f652f    8b4c2428
                         mov                esi, dword ptr [edi]                           // 0x004f6533    8b37
                         push               ecx                                            // 0x004f6535    51
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000164]              // 0x004f6536    8b8b64010000
                         push               esi                                            // 0x004f653c    56
                         call               _jmp_addr_0x004c45c0                           // 0x004f653d    e87ee0fcff
                         {disp8} fcom       dword ptr [esp + 0x10]                         // 0x004f6542    d8542410
                         fnstsw             ax                                             // 0x004f6546    dfe0
                         test               ah, 0x41                                       // 0x004f6548    f6c441
                         {disp8} jne        _jmp_addr_0x004f6557                           // 0x004f654b    750a
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x004f654d    d95c2410
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x004f6551    89742414
                         {disp8} jmp        _jmp_addr_0x004f6559                           // 0x004f6555    eb02
_jmp_addr_0x004f6557:    fstp               st(0)                                          // 0x004f6557    ddd8
_jmp_addr_0x004f6559:    add                edi, 0x04                                      // 0x004f6559    83c704
                         dec                ebp                                            // 0x004f655c    4d
                         {disp8} jne        _jmp_addr_0x004f652f                           // 0x004f655d    75d0
                         cmp                dword ptr [esp + 0x14], 0x10                   // 0x004f655f    837c241410
                         pop                edi                                            // 0x004f6564    5f
                         pop                esi                                            // 0x004f6565    5e
                         pop                ebp                                            // 0x004f6566    5d
                         {disp8} jne        _jmp_addr_0x004f6572                           // 0x004f6567    7509
                         xor.s              eax, eax                                       // 0x004f6569    33c0
                         pop                ebx                                            // 0x004f656b    5b
                         add                esp, 0x14                                      // 0x004f656c    83c414
                         ret                0x0004                                         // 0x004f656f    c20400
_jmp_addr_0x004f6572:    push               0x0                                            // 0x004f6572    6a00
                         push               0x0                                            // 0x004f6574    6a00
                         push               0x0                                            // 0x004f6576    6a00
                         push               0x6                                            // 0x004f6578    6a06
                         push               0x28                                           // 0x004f657a    6a28
                         mov.s              ecx, ebx                                       // 0x004f657c    8bcb
                         call               _jmp_addr_0x004c9fe0                           // 0x004f657e    e85d3afdff
                         mov                eax, 0x00000001                                // 0x004f6583    b801000000
_jmp_addr_0x004f6588:    pop                ebx                                            // 0x004f6588    5b
                         add                esp, 0x14                                      // 0x004f6589    83c414
                         ret                0x0004                                         // 0x004f658c    c20400
                         nop                                                               // 0x004f658f    90
_globl_ct_0x004f6590:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                   // 0x004f6590    8a0d34c9fa00
                         mov                al, 0x01                                       // 0x004f6596    b001
                         test               al, cl                                         // 0x004f6598    84c8
                         {disp8} jne        _jmp_addr_0x004f65a4                           // 0x004f659a    7508
                         or.s               cl, al                                         // 0x004f659c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                   // 0x004f659e    880d34c9fa00
_jmp_addr_0x004f65a4:    {disp32} jmp       _jmp_addr_0x004f65b0                           // 0x004f65a4    e907000000
                         nop                                                               // 0x004f65a9    90
                         nop                                                               // 0x004f65aa    90
                         nop                                                               // 0x004f65ab    90
                         nop                                                               // 0x004f65ac    90
                         nop                                                               // 0x004f65ad    90
                         nop                                                               // 0x004f65ae    90
                         nop                                                               // 0x004f65af    90
_jmp_addr_0x004f65b0:    push               0x00407870                                     // 0x004f65b0    6870784000
                         call               _atexit                                        // 0x004f65b5    e8d7f12c00
                         pop                ecx                                            // 0x004f65ba    59
                         ret                                                               // 0x004f65bb    c3
                         nop                                                               // 0x004f65bc    90
                         nop                                                               // 0x004f65bd    90
                         nop                                                               // 0x004f65be    90
                         nop                                                               // 0x004f65bf    90
_globl_ct_0x004f65c0:    {disp32} jmp       _jmp_addr_0x004f65d0                           // 0x004f65c0    e90b000000
                         nop                                                               // 0x004f65c5    90
                         nop                                                               // 0x004f65c6    90
                         nop                                                               // 0x004f65c7    90
                         nop                                                               // 0x004f65c8    90
                         nop                                                               // 0x004f65c9    90
                         nop                                                               // 0x004f65ca    90
                         nop                                                               // 0x004f65cb    90
                         nop                                                               // 0x004f65cc    90
                         nop                                                               // 0x004f65cd    90
                         nop                                                               // 0x004f65ce    90
                         nop                                                               // 0x004f65cf    90
_jmp_addr_0x004f65d0:    {disp32} fld       dword ptr [rdata_bytes + 0x285bc]              // 0x004f65d0    d905bc158d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x285b8]              // 0x004f65d6    d80db8158d00
                         {disp32} fstp      dword ptr [data_bytes + 0x2e7ad4]              // 0x004f65dc    d91dd4daca00
                         ret                                                               // 0x004f65e2    c3
                         nop                                                               // 0x004f65e3    90
                         nop                                                               // 0x004f65e4    90
                         nop                                                               // 0x004f65e5    90
                         nop                                                               // 0x004f65e6    90
                         nop                                                               // 0x004f65e7    90
                         nop                                                               // 0x004f65e8    90
                         nop                                                               // 0x004f65e9    90
                         nop                                                               // 0x004f65ea    90
                         nop                                                               // 0x004f65eb    90
                         nop                                                               // 0x004f65ec    90
                         nop                                                               // 0x004f65ed    90
                         nop                                                               // 0x004f65ee    90
                         nop                                                               // 0x004f65ef    90
_globl_ct_0x004f65f0:    {disp32} jmp       _jmp_addr_0x004f6600                           // 0x004f65f0    e90b000000
                         nop                                                               // 0x004f65f5    90
                         nop                                                               // 0x004f65f6    90
                         nop                                                               // 0x004f65f7    90
                         nop                                                               // 0x004f65f8    90
                         nop                                                               // 0x004f65f9    90
                         nop                                                               // 0x004f65fa    90
                         nop                                                               // 0x004f65fb    90
                         nop                                                               // 0x004f65fc    90
                         nop                                                               // 0x004f65fd    90
                         nop                                                               // 0x004f65fe    90
                         nop                                                               // 0x004f65ff    90
_jmp_addr_0x004f6600:    {disp32} mov       dword ptr [data_bytes + 0x2e7ad0], 0xffffffff  // 0x004f6600    c705d0daca00ffffffff
                         ret                                                               // 0x004f660a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x004f660b    e869b2f0ff
_jmp_addr_0x004f6610:    {disp32} mov       ecx, dword ptr [_game]                         // 0x004f6610    8b0d5c19d000
                         push               esi                                            // 0x004f6616    56
                         push               edi                                            // 0x004f6617    57
                         xor.s              edi, edi                                       // 0x004f6618    33ff
                         push               edi                                            // 0x004f661a    57
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z   // 0x004f661b    e880a20500
                         cmp.s              eax, edi                                       // 0x004f6620    3bc7
                         {disp8} je         _jmp_addr_0x004f663c                           // 0x004f6622    7418
_jmp_addr_0x004f6624:    cmp                dword ptr [eax + 0x00000a4c], edi              // 0x004f6624    39b84c0a0000
                         {disp8} je         _jmp_addr_0x004f663c                           // 0x004f662a    7410
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f662c    8b0d5c19d000
                         push               eax                                            // 0x004f6632    50
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z   // 0x004f6633    e868a20500
                         cmp.s              eax, edi                                       // 0x004f6638    3bc7
                         {disp8} jne        _jmp_addr_0x004f6624                           // 0x004f663a    75e8
_jmp_addr_0x004f663c:    push               eax                                            // 0x004f663c    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x004f663d    8b44241c
                         lea                ecx, dword ptr [eax + eax * 0x8]               // 0x004f6641    8d0cc0
                         lea                ecx, dword ptr [eax + ecx * 0x2]               // 0x004f6644    8d0c48
                         lea                edx, dword ptr [ecx + ecx * 0x2]               // 0x004f6647    8d1449
                         lea                eax, dword ptr [eax + edx * 0x4]               // 0x004f664a    8d0490
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x004f664d    8b542418
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00c60460]        // 0x004f6651    8d0c856004c600
                         push               ecx                                            // 0x004f6658    51
                         push               edx                                            // 0x004f6659    52
                         call               ?Create@Creature@@SAPAV1@ABUMapCoords@@PBVCreatureInfo@@PAVGPlayer@@@Z             // 0x004f665a    e8c1e3f7ff
                         {disp8} fld        dword ptr [esp + 0x1c]                         // 0x004f665f    d944241c
                         mov.s              esi, eax                                       // 0x004f6663    8bf0
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]              // 0x004f6665    8b8e60010000
                         {disp32} mov       dword ptr [esi + 0x00001060], edi              // 0x004f666b    89be60100000
                         {disp32} mov       dword ptr [esi + 0x00001064], edi              // 0x004f6671    89be64100000
                         {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x004f6677    8b7c2418
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]              // 0x004f667b    8b8760010000
                         {disp8} fmul       dword ptr [eax + 0x6c]                         // 0x004f6681    d8486c
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                    // 0x004f6684    8b4958
                         mov                edx, dword ptr [ecx]                           // 0x004f6687    8b11
                         add                esp, 0x0c                                      // 0x004f6689    83c40c
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x004f668c    d95c2418
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x004f6690    8b442418
                         push               eax                                            // 0x004f6694    50
                         call               dword ptr [edx + 8]                            // 0x004f6695    ff5208
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]              // 0x004f6698    8b8e60010000
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x004f669e    8b542418
                         {disp8} mov        dword ptr [ecx + 0x6c], edx                    // 0x004f66a2    89516c
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]              // 0x004f66a5    8b8760010000
                         {disp8} fld        dword ptr [eax + 0x0c]                         // 0x004f66ab    d9400c
                         push               ecx                                            // 0x004f66ae    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]              // 0x004f66af    8b8e60010000
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x004f66b5    d84c2414
                         fstp               dword ptr [esp]                                // 0x004f66b9    d91c24
                         call               _jmp_addr_0x004f0100                           // 0x004f66bc    e83f9affff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]              // 0x004f66c1    8b8f60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                    // 0x004f66c7    8b5158
                         {disp32} fld       dword ptr [edx + 0x000000ac]                   // 0x004f66ca    d982ac000000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x004f66d0    d81598a38a00
                         fnstsw             ax                                             // 0x004f66d6    dfe0
                         test               ah, 0x01                                       // 0x004f66d8    f6c401
                         {disp8} je         _jmp_addr_0x004f66e3                           // 0x004f66db    7406
                         {disp8} fdiv       dword ptr [esp + 0x10]                         // 0x004f66dd    d8742410
                         {disp8} jmp        _jmp_addr_0x004f66e7                           // 0x004f66e1    eb04
_jmp_addr_0x004f66e3:    {disp8} fmul       dword ptr [esp + 0x10]                         // 0x004f66e3    d84c2410
_jmp_addr_0x004f66e7:    {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x004f66e7    d81598a38a00
                         fnstsw             ax                                             // 0x004f66ed    dfe0
                         test               ah, 0x01                                       // 0x004f66ef    f6c401
                         {disp8} je         _jmp_addr_0x004f66fe                           // 0x004f66f2    740a
                         fstp               st(0)                                          // 0x004f66f4    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x004f66f6    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x004f6713                           // 0x004f66fc    eb15
_jmp_addr_0x004f66fe:    {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x004f66fe    d81590a38a00
                         fnstsw             ax                                             // 0x004f6704    dfe0
                         test               ah, 0x41                                       // 0x004f6706    f6c441
                         {disp8} jne        _jmp_addr_0x004f6713                           // 0x004f6709    7508
                         fstp               st(0)                                          // 0x004f670b    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x004f670d    d90590a38a00
_jmp_addr_0x004f6713:    {disp32} fcom      dword ptr [rdata_bytes + 0x2678]               // 0x004f6713    d81578b68a00
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]              // 0x004f6719    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                    // 0x004f671f    8b4858
                         fnstsw             ax                                             // 0x004f6722    dfe0
                         test               ah, 0x41                                       // 0x004f6724    f6c441
                         {disp8} jne        _jmp_addr_0x004f6749                           // 0x004f6727    7520
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x004f6729    d81590a38a00
                         fnstsw             ax                                             // 0x004f672f    dfe0
                         test               ah, 0x01                                       // 0x004f6731    f6c401
                         {disp8} jne        _jmp_addr_0x004f6751                           // 0x004f6734    751b
                         fstp               st(0)                                          // 0x004f6736    ddd8
                         pop                edi                                            // 0x004f6738    5f
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x004f6739    d90590a38a00
                         mov.s              eax, esi                                       // 0x004f673f    8bc6
                         {disp32} fstp      dword ptr [ecx + 0x000000ac]                   // 0x004f6741    d999ac000000
                         pop                esi                                            // 0x004f6747    5e
                         ret                                                               // 0x004f6748    c3
_jmp_addr_0x004f6749:    fstp               st(0)                                          // 0x004f6749    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]               // 0x004f674b    d90578b68a00
_jmp_addr_0x004f6751:    pop                edi                                            // 0x004f6751    5f
                         {disp32} fstp      dword ptr [ecx + 0x000000ac]                   // 0x004f6752    d999ac000000
                         mov.s              eax, esi                                       // 0x004f6758    8bc6
                         pop                esi                                            // 0x004f675a    5e
                         ret                                                               // 0x004f675b    c3
                         nop                                                               // 0x004f675c    90
                         nop                                                               // 0x004f675d    90
                         nop                                                               // 0x004f675e    90
                         nop                                                               // 0x004f675f    90
?SetFocus@Creature@@UAEXPBULHPoint@@@Z:
                         sub                esp, 0x0c                                      // 0x004f6760    83ec0c
                         push               ebx                                            // 0x004f6763    53
                         push               ebp                                            // 0x004f6764    55
                         push               esi                                            // 0x004f6765    56
                         mov.s              esi, ecx                                       // 0x004f6766    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6768    8b8e64010000
                         mov                eax, 0x00000001                                // 0x004f676e    b801000000
                         {disp32} mov       dword ptr [ecx + 0x0001d3f4], eax              // 0x004f6773    8981f4d30100
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]              // 0x004f6779    8b9664010000
                         {disp32} mov       dword ptr [edx + 0x0001d3f8], eax              // 0x004f677f    8982f8d30100
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6785    8b8e64010000
                         push               edi                                            // 0x004f678b    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                    // 0x004f678c    8b7c2420
                         add                ecx, 0x0001d400                                // 0x004f6790    81c100d40100
                         mov.s              edx, edi                                       // 0x004f6796    8bd7
                         mov                ebx, dword ptr [edx]                           // 0x004f6798    8b1a
                         mov                dword ptr [ecx], ebx                           // 0x004f679a    8919
                         {disp8} mov        ebx, dword ptr [edx + 0x04]                    // 0x004f679c    8b5a04
                         {disp8} mov        dword ptr [ecx + 0x04], ebx                    // 0x004f679f    895904
                         {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x004f67a2    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x004f67a5    895108
                         push               eax                                            // 0x004f67a8    50
                         mov.s              ecx, esi                                       // 0x004f67a9    8bce
                         call               _jmp_addr_0x004f6a90                           // 0x004f67ab    e8e0020000
                         mov                eax, dword ptr [edi]                           // 0x004f67b0    8b07
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x004f67b2    8b4f04
                         {disp8} mov        edx, dword ptr [edi + 0x08]                    // 0x004f67b5    8b5708
                         push               0x28                                           // 0x004f67b8    6a28
                         push               0x00be0a5c                                     // 0x004f67ba    685c0abe00
                         push               0x10                                           // 0x004f67bf    6a10
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x004f67c1    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                    // 0x004f67c5    894c2420
                         {disp8} mov        dword ptr [esp + 0x24], edx                    // 0x004f67c9    89542424
                         xor.s              edi, edi                                       // 0x004f67cd    33ff
                         xor.s              ebx, ebx                                       // 0x004f67cf    33db
                         xor.s              ebp, ebp                                       // 0x004f67d1    33ed
                         call               ___nw__FUl                                     // 0x004f67d3    e8b84f2e00
                         add                esp, 0x0c                                      // 0x004f67d8    83c40c
                         test               eax, eax                                       // 0x004f67db    85c0
                         {disp8} je         _jmp_addr_0x004f67fe                           // 0x004f67dd    741f
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x004f67df    8b542410
                         {disp8} lea        ecx, dword ptr [eax + 0x04]                    // 0x004f67e3    8d4804
                         mov                dword ptr [ecx], edx                           // 0x004f67e6    8911
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x004f67e8    8b542414
                         {disp8} mov        dword ptr [ecx + 0x04], edx                    // 0x004f67ec    895104
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x004f67ef    8b542418
                         mov                dword ptr [eax], 0x008cefd8                    // 0x004f67f3    c700d8ef8c00
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x004f67f9    895108
                         {disp8} jmp        _jmp_addr_0x004f6800                           // 0x004f67fc    eb02
_jmp_addr_0x004f67fe:    xor.s              eax, eax                                       // 0x004f67fe    33c0
_jmp_addr_0x004f6800:    sub                esp, 0x10                                      // 0x004f6800    83ec10
                         mov.s              edx, esp                                       // 0x004f6803    8bd4
                         mov                dword ptr [edx], edi                           // 0x004f6805    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                    // 0x004f6807    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                    // 0x004f680a    896a08
                         or                 ecx, 0xffffffff                                // 0x004f680d    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6810    894a0c
                         sub                esp, 0x10                                      // 0x004f6813    83ec10
                         mov.s              edx, esp                                       // 0x004f6816    8bd4
                         mov                ecx, 0x004d1460                                // 0x004f6818    b960144d00
                         mov                dword ptr [edx], ecx                           // 0x004f681d    890a
                         xor.s              ecx, ecx                                       // 0x004f681f    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x004f6821    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6824    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6827    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f682a    8b8e64010000
                         push               eax                                            // 0x004f6830    50
                         push               0x7                                            // 0x004f6831    6a07
                         add                ecx, 0x00000fa8                                // 0x004f6833    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6839    e8028a0000
                         pop                edi                                            // 0x004f683e    5f
                         pop                esi                                            // 0x004f683f    5e
                         pop                ebp                                            // 0x004f6840    5d
                         pop                ebx                                            // 0x004f6841    5b
                         add                esp, 0x0c                                      // 0x004f6842    83c40c
                         ret                0x0004                                         // 0x004f6845    c20400
                         nop                                                               // 0x004f6848    90
                         nop                                                               // 0x004f6849    90
                         nop                                                               // 0x004f684a    90
                         nop                                                               // 0x004f684b    90
                         nop                                                               // 0x004f684c    90
                         nop                                                               // 0x004f684d    90
                         nop                                                               // 0x004f684e    90
                         nop                                                               // 0x004f684f    90
_jmp_addr_0x004f6850:    sub                esp, 0x10                                      // 0x004f6850    83ec10
                         push               ebx                                            // 0x004f6853    53
                         push               ebp                                            // 0x004f6854    55
                         push               esi                                            // 0x004f6855    56
                         mov.s              esi, ecx                                       // 0x004f6856    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]              // 0x004f6858    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x0001d3f4], 0x00000001       // 0x004f685e    c780f4d3010001000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6868    8b8e64010000
                         push               edi                                            // 0x004f686e    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                    // 0x004f686f    8b7c2424
                         xor.s              ebp, ebp                                       // 0x004f6873    33ed
                         {disp32} mov       dword ptr [ecx + 0x0001d3f8], ebp              // 0x004f6875    89a9f8d30100
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]              // 0x004f687b    8b9664010000
                         push               0x1                                            // 0x004f6881    6a01
                         mov.s              ecx, esi                                       // 0x004f6883    8bce
                         {disp32} mov       dword ptr [edx + 0x0001d3fc], edi              // 0x004f6885    89bafcd30100
                         call               _jmp_addr_0x004f6a90                           // 0x004f688b    e800020000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6890    8b8e64010000
                         push               edi                                            // 0x004f6896    57
                         push               esi                                            // 0x004f6897    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                           // 0x004f6898    e83313feff
                         push               0x32                                           // 0x004f689d    6a32
                         push               0x00be0a5c                                     // 0x004f689f    685c0abe00
                         push               0xc                                            // 0x004f68a4    6a0c
                         {disp8} mov        dword ptr [esp + 0x30], eax                    // 0x004f68a6    89442430
                         xor.s              edi, edi                                       // 0x004f68aa    33ff
                         xor.s              ebx, ebx                                       // 0x004f68ac    33db
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff             // 0x004f68ae    c7442428ffffffff
                         call               ___nw__FUl                                     // 0x004f68b6    e8d54e2e00
                         add                esp, 0x0c                                      // 0x004f68bb    83c40c
                         test               eax, eax                                       // 0x004f68be    85c0
                         {disp8} je         _jmp_addr_0x004f68d8                           // 0x004f68c0    7416
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x004f68c2    8b4c2424
                         mov                dword ptr [eax], 0x008cf2a4                    // 0x004f68c6    c700a4f28c00
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x004f68cc    894804
                         {disp8} mov        dword ptr [eax + 0x08], 0x40000000             // 0x004f68cf    c7400800000040
                         {disp8} jmp        _jmp_addr_0x004f68da                           // 0x004f68d6    eb02
_jmp_addr_0x004f68d8:    xor.s              eax, eax                                       // 0x004f68d8    33c0
_jmp_addr_0x004f68da:    sub                esp, 0x10                                      // 0x004f68da    83ec10
                         mov.s              edx, esp                                       // 0x004f68dd    8bd4
                         mov                dword ptr [edx], edi                           // 0x004f68df    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                    // 0x004f68e1    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                    // 0x004f68e4    896a08
                         or                 ecx, 0xffffffff                                // 0x004f68e7    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f68ea    894a0c
                         xor.s              ecx, ecx                                       // 0x004f68ed    33c9
                         sub                esp, 0x10                                      // 0x004f68ef    83ec10
                         mov.s              edx, esp                                       // 0x004f68f2    8bd4
                         mov                dword ptr [edx], ecx                           // 0x004f68f4    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x004f68f6    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f68f9    894a08
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                    // 0x004f68fc    8b4c243c
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6900    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6903    8b8e64010000
                         push               eax                                            // 0x004f6909    50
                         push               0x6                                            // 0x004f690a    6a06
                         add                ecx, 0x00000fa8                                // 0x004f690c    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6912    e829890000
                         pop                edi                                            // 0x004f6917    5f
                         pop                esi                                            // 0x004f6918    5e
                         pop                ebp                                            // 0x004f6919    5d
                         pop                ebx                                            // 0x004f691a    5b
                         add                esp, 0x10                                      // 0x004f691b    83c410
                         ret                0x0004                                         // 0x004f691e    c20400
                         nop                                                               // 0x004f6921    90
                         nop                                                               // 0x004f6922    90
                         nop                                                               // 0x004f6923    90
                         nop                                                               // 0x004f6924    90
                         nop                                                               // 0x004f6925    90
                         nop                                                               // 0x004f6926    90
                         nop                                                               // 0x004f6927    90
                         nop                                                               // 0x004f6928    90
                         nop                                                               // 0x004f6929    90
                         nop                                                               // 0x004f692a    90
                         nop                                                               // 0x004f692b    90
                         nop                                                               // 0x004f692c    90
                         nop                                                               // 0x004f692d    90
                         nop                                                               // 0x004f692e    90
                         nop                                                               // 0x004f692f    90
_jmp_addr_0x004f6930:    push               esi                                            // 0x004f6930    56
                         push               edi                                            // 0x004f6931    57
                         mov.s              edi, ecx                                       // 0x004f6932    8bf9
                         xor.s              esi, esi                                       // 0x004f6934    33f6
_jmp_addr_0x004f6936:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]              // 0x004f6936    8b8f64010000
                         push               0x0                                            // 0x004f693c    6a00
                         push               esi                                            // 0x004f693e    56
                         add                ecx, 0x8                                       // 0x004f693f    83c108
                         call               _jmp_addr_0x004dcdd0                           // 0x004f6942    e88964feff
                         inc                esi                                            // 0x004f6947    46
                         cmp                esi, 0x28                                      // 0x004f6948    83fe28
                         .byte              0x72, 0xe9// {disp8} jb _jmp_addr_0x004f6936   // 0x004f694b    72e9
                         pop                edi                                            // 0x004f694d    5f
                         pop                esi                                            // 0x004f694e    5e
                         ret                                                               // 0x004f694f    c3
_jmp_addr_0x004f6950:    push               esi                                            // 0x004f6950    56
                         push               edi                                            // 0x004f6951    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x004f6952    8b7c240c
                         mov.s              esi, ecx                                       // 0x004f6956    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6958    8b8e64010000
                         push               0x1                                            // 0x004f695e    6a01
                         push               edi                                            // 0x004f6960    57
                         add                ecx, 0x8                                       // 0x004f6961    83c108
                         call               _jmp_addr_0x004dcdd0                           // 0x004f6964    e86764feff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6969    8b8e64010000
                         push               edi                                            // 0x004f696f    57
                         add                ecx, 0x8                                       // 0x004f6970    83c108
                         call               _jmp_addr_0x004dc970                           // 0x004f6973    e8f85ffeff
                         pop                edi                                            // 0x004f6978    5f
                         pop                esi                                            // 0x004f6979    5e
                         ret                0x0004                                         // 0x004f697a    c20400
                         nop                                                               // 0x004f697d    90
                         nop                                                               // 0x004f697e    90
                         nop                                                               // 0x004f697f    90
_jmp_addr_0x004f6980:    sub                esp, 0x08                                      // 0x004f6980    83ec08
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]              // 0x004f6983    8b8164010000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x004f6989    8b4c240c
                         push               ebx                                            // 0x004f698d    53
                         {disp32} mov       ebx, dword ptr [eax + ecx * 0x4 + 0x00002478]  // 0x004f698e    8b9c8878240000
                         push               ebp                                            // 0x004f6995    55
                         push               esi                                            // 0x004f6996    56
                         push               edi                                            // 0x004f6997    57
                         {disp8} lea        edx, dword ptr [esp + 0x10]                    // 0x004f6998    8d542410
                         xor.s              edi, edi                                       // 0x004f699c    33ff
                         push               edx                                            // 0x004f699e    52
                         mov.s              ecx, ebx                                       // 0x004f699f    8bcb
                         {disp8} mov        dword ptr [esp + 0x18], edi                    // 0x004f69a1    897c2418
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x004f69a5    897c2414
                         call               _jmp_addr_0x004d4270                           // 0x004f69a9    e8c2d8fdff
                         {disp8} mov        eax, dword ptr [ebx + 0x08]                    // 0x004f69ae    8b4308
                         {disp8} mov        esi, dword ptr [esp + 0x20]                    // 0x004f69b1    8b742420
                         {disp32} mov       dword ptr [eax + 0x00000080], esi              // 0x004f69b5    89b080000000
                         {disp32} mov       ecx, dword ptr [esi * 0x4 + 0x00c83b18]        // 0x004f69bb    8b0cb5183bc800
                         mov                ecx, dword ptr [ecx]                           // 0x004f69c2    8b09
                         mov                edx, dword ptr [ecx]                           // 0x004f69c4    8b11
                         xor.s              ebp, ebp                                       // 0x004f69c6    33ed
                         call               dword ptr [edx + 0x20]                         // 0x004f69c8    ff5220
                         test               eax, eax                                       // 0x004f69cb    85c0
                         {disp32} jbe       _jmp_addr_0x004f6a79                           // 0x004f69cd    0f86a6000000
                         {disp8} jmp        _jmp_addr_0x004f69db                           // 0x004f69d3    eb06
_jmp_addr_0x004f69d5:    {disp8} mov        esi, dword ptr [esp + 0x20]                    // 0x004f69d5    8b742420
                         xor.s              edi, edi                                       // 0x004f69d9    33ff
_jmp_addr_0x004f69db:    push               0x4b                                           // 0x004f69db    6a4b
                         push               0x00be0a5c                                     // 0x004f69dd    685c0abe00
                         push               0x00000094                                     // 0x004f69e2    6894000000
                         call               ___nw__FUl                                     // 0x004f69e7    e8a44d2e00
                         add                esp, 0x0c                                      // 0x004f69ec    83c40c
                         cmp.s              eax, edi                                       // 0x004f69ef    3bc7
                         {disp8} je         _jmp_addr_0x004f6a05                           // 0x004f69f1    7412
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                    // 0x004f69f3    8b4b08
                         push               ebx                                            // 0x004f69f6    53
                         push               ecx                                            // 0x004f69f7    51
                         push               ebp                                            // 0x004f69f8    55
                         push               esi                                            // 0x004f69f9    56
                         mov.s              ecx, eax                                       // 0x004f69fa    8bc8
                         call               _jmp_addr_0x004d4df0                           // 0x004f69fc    e8efe3fdff
                         mov.s              esi, eax                                       // 0x004f6a01    8bf0
                         {disp8} jmp        _jmp_addr_0x004f6a07                           // 0x004f6a03    eb02
_jmp_addr_0x004f6a05:    xor.s              esi, esi                                       // 0x004f6a05    33f6
_jmp_addr_0x004f6a07:    cmp                ebp, dword ptr [esp + 0x24]                    // 0x004f6a07    3b6c2424
                         {disp8} jne        _jmp_addr_0x004f6a19                           // 0x004f6a0b    750c
                         {disp32} mov       dword ptr [esi + 0x00000090], 0x0000000a       // 0x004f6a0d    c786900000000a000000
                         {disp8} jmp        _jmp_addr_0x004f6a1f                           // 0x004f6a17    eb06
_jmp_addr_0x004f6a19:    {disp32} mov       dword ptr [esi + 0x00000090], edi              // 0x004f6a19    89be90000000
_jmp_addr_0x004f6a1f:    {disp8} mov        edi, dword ptr [ebx + 0x08]                    // 0x004f6a1f    8b7b08
                         add                edi, 0x00000084                                // 0x004f6a22    81c784000000
                         test               esi, esi                                       // 0x004f6a28    85f6
                         {disp8} je         _jmp_addr_0x004f6a5e                           // 0x004f6a2a    7432
                         push               0x8                                            // 0x004f6a2c    6a08
                         call               ??2@YAPAXI@Z                                   // 0x004f6a2e    e8bbfa2c00
                         add                esp, 0x04                                      // 0x004f6a33    83c404
                         test               eax, eax                                       // 0x004f6a36    85c0
                         {disp8} je         _jmp_addr_0x004f6a5e                           // 0x004f6a38    7424
                         {disp8} mov        dword ptr [eax + 0x04], esi                    // 0x004f6a3a    897004
                         mov                dword ptr [eax], 0x00000000                    // 0x004f6a3d    c70000000000
                         mov                ecx, dword ptr [edi]                           // 0x004f6a43    8b0f
                         test               ecx, ecx                                       // 0x004f6a45    85c9
                         {disp8} je         _jmp_addr_0x004f6a59                           // 0x004f6a47    7410
_jmp_addr_0x004f6a49:    mov.s              edx, ecx                                       // 0x004f6a49    8bd1
                         mov                ecx, dword ptr [ecx]                           // 0x004f6a4b    8b09
                         test               ecx, ecx                                       // 0x004f6a4d    85c9
                         {disp8} jne        _jmp_addr_0x004f6a49                           // 0x004f6a4f    75f8
                         test               edx, edx                                       // 0x004f6a51    85d2
                         {disp8} je         _jmp_addr_0x004f6a59                           // 0x004f6a53    7404
                         mov                dword ptr [edx], eax                           // 0x004f6a55    8902
                         {disp8} jmp        _jmp_addr_0x004f6a5b                           // 0x004f6a57    eb02
_jmp_addr_0x004f6a59:    mov                dword ptr [edi], eax                           // 0x004f6a59    8907
_jmp_addr_0x004f6a5b:    {disp8} inc        dword ptr [edi + 0x04]                         // 0x004f6a5b    ff4704
_jmp_addr_0x004f6a5e:    {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x004f6a5e    8b542420
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00c83b18]        // 0x004f6a62    8b0495183bc800
                         mov                ecx, dword ptr [eax]                           // 0x004f6a69    8b08
                         mov                edx, dword ptr [ecx]                           // 0x004f6a6b    8b11
                         inc                ebp                                            // 0x004f6a6d    45
                         call               dword ptr [edx + 0x20]                         // 0x004f6a6e    ff5220
                         cmp.s              ebp, eax                                       // 0x004f6a71    3be8
                         {disp32} jb        _jmp_addr_0x004f69d5                           // 0x004f6a73    0f825cffffff
_jmp_addr_0x004f6a79:    {disp8} mov        eax, dword ptr [ebx + 0x08]                    // 0x004f6a79    8b4308
                         pop                edi                                            // 0x004f6a7c    5f
                         pop                esi                                            // 0x004f6a7d    5e
                         pop                ebp                                            // 0x004f6a7e    5d
                         {disp8} mov        dword ptr [ebx + 0x1c], eax                    // 0x004f6a7f    89431c
                         {disp8} mov        dword ptr [ebx + 0x14], eax                    // 0x004f6a82    894314
                         pop                ebx                                            // 0x004f6a85    5b
                         add                esp, 0x08                                      // 0x004f6a86    83c408
                         ret                0x000c                                         // 0x004f6a89    c20c00
                         nop                                                               // 0x004f6a8c    90
                         nop                                                               // 0x004f6a8d    90
                         nop                                                               // 0x004f6a8e    90
                         nop                                                               // 0x004f6a8f    90
_jmp_addr_0x004f6a90:    sub                esp, 0x30                                      // 0x004f6a90    83ec30
                         push               esi                                            // 0x004f6a93    56
                         mov.s              esi, ecx                                       // 0x004f6a94    8bf1
                         test               byte ptr [esi + 0x25], 0x04                    // 0x004f6a96    f6462504
                         {disp8} jne        _jmp_addr_0x004f6aa6                           // 0x004f6a9a    750a
                         mov                eax, dword ptr [esi]                           // 0x004f6a9c    8b06
                         push               0x1                                            // 0x004f6a9e    6a01
                         call               dword ptr [eax + 0x440]                        // 0x004f6aa0    ff9040040000
_jmp_addr_0x004f6aa6:    {disp8} mov        ecx, dword ptr [esp + 0x38]                    // 0x004f6aa6    8b4c2438
                         push               0x1                                            // 0x004f6aaa    6a01
                         push               ecx                                            // 0x004f6aac    51
                         push               0x0                                            // 0x004f6aad    6a00
                         mov.s              ecx, esi                                       // 0x004f6aaf    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                           // 0x004f6ab1    e87aecf7ff
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x285b0]         // 0x004f6ab6    8b15b0158d00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6abc    8b8e64010000
                         push               edx                                            // 0x004f6ac2    52
                         push               0x0                                            // 0x004f6ac3    6a00
                         push               esi                                            // 0x004f6ac5    56
                         call               _jmp_addr_0x004d7b80                           // 0x004f6ac6    e8b510feff
                         push               eax                                            // 0x004f6acb    50
                         push               0x0                                            // 0x004f6acc    6a00
                         push               0x16                                           // 0x004f6ace    6a16
                         push               0x18                                           // 0x004f6ad0    6a18
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x004f6ad2    8d4c241c
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                           // 0x004f6ad6    e855a7ffff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]              // 0x004f6adb    8b8664010000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x004f6ae1    8b4c2408
                         add                eax, 0x00000f48                                // 0x004f6ae5    05480f0000
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x004f6aea    894804
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                    // 0x004f6aed    8b54240c
                         {disp8} mov        dword ptr [eax + 0x08], edx                    // 0x004f6af1    895008
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x004f6af4    8b4c2410
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                    // 0x004f6af8    89480c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x004f6afb    8b542414
                         {disp8} mov        dword ptr [eax + 0x10], edx                    // 0x004f6aff    895010
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x004f6b02    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x14], ecx                    // 0x004f6b06    894814
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x004f6b09    8b54241c
                         {disp8} mov        dword ptr [eax + 0x18], edx                    // 0x004f6b0d    895018
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x004f6b10    8b4c2420
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                    // 0x004f6b14    89481c
                         {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x004f6b17    8b542424
                         {disp8} mov        dword ptr [eax + 0x20], edx                    // 0x004f6b1b    895020
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x004f6b1e    8b4c2428
                         {disp8} mov        dword ptr [eax + 0x24], ecx                    // 0x004f6b22    894824
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                    // 0x004f6b25    8b54242c
                         {disp8} mov        dword ptr [eax + 0x28], edx                    // 0x004f6b29    895028
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                    // 0x004f6b2c    8b4c2430
                         {disp8} mov        dword ptr [eax + 0x2c], ecx                    // 0x004f6b30    89482c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6b33    8b8e64010000
                         add                ecx, 0x00000fa8                                // 0x004f6b39    81c1a80f0000
                         call               _jmp_addr_0x004ff5c0                           // 0x004f6b3f    e87c8a0000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                    // 0x004f6b44    8d4c2404
                         call               _jmp_addr_0x004f12d0                           // 0x004f6b48    e883a7ffff
                         pop                esi                                            // 0x004f6b4d    5e
                         add                esp, 0x30                                      // 0x004f6b4e    83c430
                         ret                0x0004                                         // 0x004f6b51    c20400
                         nop                                                               // 0x004f6b54    90
                         nop                                                               // 0x004f6b55    90
                         nop                                                               // 0x004f6b56    90
                         nop                                                               // 0x004f6b57    90
                         nop                                                               // 0x004f6b58    90
                         nop                                                               // 0x004f6b59    90
                         nop                                                               // 0x004f6b5a    90
                         nop                                                               // 0x004f6b5b    90
                         nop                                                               // 0x004f6b5c    90
                         nop                                                               // 0x004f6b5d    90
                         nop                                                               // 0x004f6b5e    90
                         nop                                                               // 0x004f6b5f    90
_jmp_addr_0x004f6b60:    sub                esp, 0x14                                      // 0x004f6b60    83ec14
                         push               ebx                                            // 0x004f6b63    53
                         push               ebp                                            // 0x004f6b64    55
                         push               esi                                            // 0x004f6b65    56
                         push               edi                                            // 0x004f6b66    57
                         mov.s              esi, ecx                                       // 0x004f6b67    8bf1
                         push               0x0                                            // 0x004f6b69    6a00
                         call               _jmp_addr_0x004f6a90                           // 0x004f6b6b    e820ffffff
                         {disp8} lea        eax, dword ptr [esp + 0x18]                    // 0x004f6b70    8d442418
                         push               eax                                            // 0x004f6b74    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                    // 0x004f6b75    8d4e14
                         call               @GetLHPoint__9MapCoordsCFv@12                  // 0x004f6b78    e8c3f01000
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                    // 0x004f6b7d    8b6c2428
                         {disp8} fld        dword ptr [ebp + 0x00]                         // 0x004f6b81    d94500
                         mov.s              ecx, esi                                       // 0x004f6b84    8bce
                         fsub               dword ptr [eax]                                // 0x004f6b86    d820
                         {disp8} fld        dword ptr [ebp + 0x08]                         // 0x004f6b88    d94508
                         {disp8} fsub       dword ptr [eax + 0x08]                         // 0x004f6b8b    d86008
                         fld                st(0)                                          // 0x004f6b8e    d9c0
                         fmul               st, st(1)                                      // 0x004f6b90    d8c9
                         fld                st(2)                                          // 0x004f6b92    d9c2
                         fmul               st, st(3)                                      // 0x004f6b94    d8cb
                         faddp              st(1), st                                      // 0x004f6b96    dec1
                         fsqrt                                                             // 0x004f6b98    d9fa
                         fstp               st(2)                                          // 0x004f6b9a    ddda
                         fstp               st(0)                                          // 0x004f6b9c    ddd8
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                    // 0x004f6b9e    d80d68b28a00
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x004f6ba4    d95c2410
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ// 0x004f6ba8    e8a30cf8ff
                         {disp32} fld       dword ptr [eax + 0x00000090]                   // 0x004f6bad    d98090000000
                         mov                edx, dword ptr [esi]                           // 0x004f6bb3    8b16
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]              // 0x004f6bb5    d80d402c8c00
                         mov.s              ecx, esi                                       // 0x004f6bbb    8bce
                         {disp32} fld       dword ptr [rdata_bytes + 0x285c4]              // 0x004f6bbd    d905c4158d00
                         fmul               st, st(1)                                      // 0x004f6bc3    d8c9
                         {disp32} fadd      dword ptr [rdata_bytes + 0x285c0]              // 0x004f6bc5    d805c0158d00
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x004f6bcb    d95c2414
                         fstp               st(0)                                          // 0x004f6bcf    ddd8
                         call               dword ptr [edx + 0x42c]                        // 0x004f6bd1    ff922c040000
                         {disp8} fcomp      dword ptr [esp + 0x10]                         // 0x004f6bd7    d85c2410
                         fnstsw             ax                                             // 0x004f6bdb    dfe0
                         test               ah, 0x41                                       // 0x004f6bdd    f6c441
                         {disp8} jne        _jmp_addr_0x004f6bf2                           // 0x004f6be0    7510
                         mov                eax, dword ptr [esi]                           // 0x004f6be2    8b06
                         mov.s              ecx, esi                                       // 0x004f6be4    8bce
                         call               dword ptr [eax + 0x42c]                        // 0x004f6be6    ff902c040000
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x004f6bec    d95c2410
                         {disp8} jmp        _jmp_addr_0x004f6c09                           // 0x004f6bf0    eb17
_jmp_addr_0x004f6bf2:    {disp8} fld        dword ptr [esp + 0x10]                         // 0x004f6bf2    d9442410
                         {disp8} fcomp      dword ptr [esp + 0x14]                         // 0x004f6bf6    d85c2414
                         fnstsw             ax                                             // 0x004f6bfa    dfe0
                         test               ah, 0x41                                       // 0x004f6bfc    f6c441
                         {disp8} jne        _jmp_addr_0x004f6c09                           // 0x004f6bff    7508
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x004f6c01    8b4c2414
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x004f6c05    894c2410
_jmp_addr_0x004f6c09:    {disp8} fld        dword ptr [esp + 0x2c]                         // 0x004f6c09    d944242c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x004f6c0d    d81d98a38a00
                         fnstsw             ax                                             // 0x004f6c13    dfe0
                         test               ah, 0x40                                       // 0x004f6c15    f6c440
                         {disp32} jne       _jmp_addr_0x004f6d17                           // 0x004f6c18    0f85f9000000
                         push               0x6f                                           // 0x004f6c1e    6a6f
                         push               0x00be0a5c                                     // 0x004f6c20    685c0abe00
                         push               0x14                                           // 0x004f6c25    6a14
                         xor.s              edi, edi                                       // 0x004f6c27    33ff
                         xor.s              ebx, ebx                                       // 0x004f6c29    33db
                         call               ___nw__FUl                                     // 0x004f6c2b    e8604b2e00
                         add                esp, 0x0c                                      // 0x004f6c30    83c40c
                         test               eax, eax                                       // 0x004f6c33    85c0
                         {disp8} je         _jmp_addr_0x004f6c5a                           // 0x004f6c35    7423
                         mov                dword ptr [eax], 0x008cefec                    // 0x004f6c37    c700ecef8c00
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x004f6c3d    8b4d00
                         {disp8} lea        edx, dword ptr [eax + 0x04]                    // 0x004f6c40    8d5004
                         mov                dword ptr [edx], ecx                           // 0x004f6c43    890a
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                    // 0x004f6c45    8b4d04
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x004f6c48    894a04
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x004f6c4b    8b4d08
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6c4e    894a08
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                    // 0x004f6c51    8b54242c
                         {disp8} mov        dword ptr [eax + 0x10], edx                    // 0x004f6c55    895010
                         {disp8} jmp        _jmp_addr_0x004f6c5c                           // 0x004f6c58    eb02
_jmp_addr_0x004f6c5a:    xor.s              eax, eax                                       // 0x004f6c5a    33c0
_jmp_addr_0x004f6c5c:    sub                esp, 0x10                                      // 0x004f6c5c    83ec10
                         mov.s              edx, esp                                       // 0x004f6c5f    8bd4
                         mov                dword ptr [edx], edi                           // 0x004f6c61    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                    // 0x004f6c63    895a04
                         xor.s              ecx, ecx                                       // 0x004f6c66    33c9
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6c68    894a08
                         or                 ecx, 0xffffffff                                // 0x004f6c6b    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6c6e    894a0c
                         sub                esp, 0x10                                      // 0x004f6c71    83ec10
                         mov.s              edx, esp                                       // 0x004f6c74    8bd4
                         mov                ecx, 0x004d1460                                // 0x004f6c76    b960144d00
                         mov                dword ptr [edx], ecx                           // 0x004f6c7b    890a
                         xor.s              ecx, ecx                                       // 0x004f6c7d    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x004f6c7f    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6c82    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6c85    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6c88    8b8e64010000
                         push               eax                                            // 0x004f6c8e    50
                         push               0x8                                            // 0x004f6c8f    6a08
                         add                ecx, 0x00000fa8                                // 0x004f6c91    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6c97    e8a4850000
                         push               0x70                                           // 0x004f6c9c    6a70
                         push               0x00be0a5c                                     // 0x004f6c9e    685c0abe00
                         push               0x14                                           // 0x004f6ca3    6a14
                         xor.s              edi, edi                                       // 0x004f6ca5    33ff
                         xor.s              ebx, ebx                                       // 0x004f6ca7    33db
                         xor.s              ebp, ebp                                       // 0x004f6ca9    33ed
                         call               ___nw__FUl                                     // 0x004f6cab    e8e04a2e00
                         add                esp, 0x0c                                      // 0x004f6cb0    83c40c
                         test               eax, eax                                       // 0x004f6cb3    85c0
                         {disp8} je         _jmp_addr_0x004f6ce5                           // 0x004f6cb5    742e
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x004f6cb7    8b542428
                         mov                dword ptr [eax], 0x008cefec                    // 0x004f6cbb    c700ecef8c00
                         mov                edx, dword ptr [edx]                           // 0x004f6cc1    8b12
                         {disp8} lea        ecx, dword ptr [eax + 0x04]                    // 0x004f6cc3    8d4804
                         mov                dword ptr [ecx], edx                           // 0x004f6cc6    8911
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x004f6cc8    8b542428
                         {disp8} mov        edx, dword ptr [edx + 0x04]                    // 0x004f6ccc    8b5204
                         {disp8} mov        dword ptr [ecx + 0x04], edx                    // 0x004f6ccf    895104
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x004f6cd2    8b542428
                         {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x004f6cd6    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x004f6cd9    895108
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x004f6cdc    8b4c242c
                         {disp8} mov        dword ptr [eax + 0x10], ecx                    // 0x004f6ce0    894810
                         {disp8} jmp        _jmp_addr_0x004f6ce7                           // 0x004f6ce3    eb02
_jmp_addr_0x004f6ce5:    xor.s              eax, eax                                       // 0x004f6ce5    33c0
_jmp_addr_0x004f6ce7:    sub                esp, 0x10                                      // 0x004f6ce7    83ec10
                         mov.s              edx, esp                                       // 0x004f6cea    8bd4
                         mov                dword ptr [edx], edi                           // 0x004f6cec    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                    // 0x004f6cee    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                    // 0x004f6cf1    896a08
                         or                 ecx, 0xffffffff                                // 0x004f6cf4    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6cf7    894a0c
                         sub                esp, 0x10                                      // 0x004f6cfa    83ec10
                         mov.s              edx, esp                                       // 0x004f6cfd    8bd4
                         mov                ecx, 0x004d1460                                // 0x004f6cff    b960144d00
                         mov                dword ptr [edx], ecx                           // 0x004f6d04    890a
                         xor.s              ecx, ecx                                       // 0x004f6d06    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x004f6d08    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6d0b    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6d0e    894a0c
                         push               eax                                            // 0x004f6d11    50
                         {disp32} jmp       _jmp_addr_0x004f6e0b                           // 0x004f6d12    e9f4000000
_jmp_addr_0x004f6d17:    push               0x74                                           // 0x004f6d17    6a74
                         push               0x00be0a5c                                     // 0x004f6d19    685c0abe00
                         push               0x14                                           // 0x004f6d1e    6a14
                         xor.s              edi, edi                                       // 0x004f6d20    33ff
                         xor.s              ebx, ebx                                       // 0x004f6d22    33db
                         call               ___nw__FUl                                     // 0x004f6d24    e8674a2e00
                         add                esp, 0x0c                                      // 0x004f6d29    83c40c
                         test               eax, eax                                       // 0x004f6d2c    85c0
                         {disp8} je         _jmp_addr_0x004f6d53                           // 0x004f6d2e    7423
                         mov                dword ptr [eax], 0x008cefec                    // 0x004f6d30    c700ecef8c00
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x004f6d36    8b5500
                         {disp8} lea        ecx, dword ptr [eax + 0x04]                    // 0x004f6d39    8d4804
                         mov                dword ptr [ecx], edx                           // 0x004f6d3c    8911
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                    // 0x004f6d3e    8b5504
                         {disp8} mov        dword ptr [ecx + 0x04], edx                    // 0x004f6d41    895104
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                    // 0x004f6d44    8b5508
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x004f6d47    895108
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x004f6d4a    8b4c2410
                         {disp8} mov        dword ptr [eax + 0x10], ecx                    // 0x004f6d4e    894810
                         {disp8} jmp        _jmp_addr_0x004f6d55                           // 0x004f6d51    eb02
_jmp_addr_0x004f6d53:    xor.s              eax, eax                                       // 0x004f6d53    33c0
_jmp_addr_0x004f6d55:    sub                esp, 0x10                                      // 0x004f6d55    83ec10
                         mov.s              edx, esp                                       // 0x004f6d58    8bd4
                         mov                dword ptr [edx], edi                           // 0x004f6d5a    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                    // 0x004f6d5c    895a04
                         xor.s              ecx, ecx                                       // 0x004f6d5f    33c9
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6d61    894a08
                         or                 ecx, 0xffffffff                                // 0x004f6d64    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6d67    894a0c
                         sub                esp, 0x10                                      // 0x004f6d6a    83ec10
                         mov.s              edx, esp                                       // 0x004f6d6d    8bd4
                         mov                ecx, 0x004d1460                                // 0x004f6d6f    b960144d00
                         mov                dword ptr [edx], ecx                           // 0x004f6d74    890a
                         xor.s              ecx, ecx                                       // 0x004f6d76    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x004f6d78    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6d7b    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6d7e    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6d81    8b8e64010000
                         push               eax                                            // 0x004f6d87    50
                         push               0x8                                            // 0x004f6d88    6a08
                         add                ecx, 0x00000fa8                                // 0x004f6d8a    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6d90    e8ab840000
                         push               0x75                                           // 0x004f6d95    6a75
                         push               0x00be0a5c                                     // 0x004f6d97    685c0abe00
                         push               0x14                                           // 0x004f6d9c    6a14
                         xor.s              ebx, ebx                                       // 0x004f6d9e    33db
                         xor.s              ebp, ebp                                       // 0x004f6da0    33ed
                         call               ___nw__FUl                                     // 0x004f6da2    e8e9492e00
                         mov.s              edi, eax                                       // 0x004f6da7    8bf8
                         add                esp, 0x0c                                      // 0x004f6da9    83c40c
                         test               edi, edi                                       // 0x004f6dac    85ff
                         {disp8} je         _jmp_addr_0x004f6ddc                           // 0x004f6dae    742c
                         mov                eax, dword ptr [esi]                           // 0x004f6db0    8b06
                         mov.s              ecx, esi                                       // 0x004f6db2    8bce
                         call               dword ptr [eax + 0x42c]                        // 0x004f6db4    ff902c040000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x004f6dba    8b442428
                         mov                dword ptr [edi], 0x008cefec                    // 0x004f6dbe    c707ecef8c00
                         mov                edx, dword ptr [eax]                           // 0x004f6dc4    8b10
                         {disp8} lea        ecx, dword ptr [edi + 0x04]                    // 0x004f6dc6    8d4f04
                         mov                dword ptr [ecx], edx                           // 0x004f6dc9    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x004f6dcb    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                    // 0x004f6dce    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x004f6dd1    8b4008
                         {disp8} fstp       dword ptr [edi + 0x10]                         // 0x004f6dd4    d95f10
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x004f6dd7    894108
                         {disp8} jmp        _jmp_addr_0x004f6dde                           // 0x004f6dda    eb02
_jmp_addr_0x004f6ddc:    xor.s              edi, edi                                       // 0x004f6ddc    33ff
_jmp_addr_0x004f6dde:    sub                esp, 0x10                                      // 0x004f6dde    83ec10
                         mov.s              ecx, esp                                       // 0x004f6de1    8bcc
                         mov                dword ptr [ecx], ebx                           // 0x004f6de3    8919
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                    // 0x004f6de5    896904
                         xor.s              eax, eax                                       // 0x004f6de8    33c0
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x004f6dea    894108
                         or                 eax, -0x1                                      // 0x004f6ded    83c8ff
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                    // 0x004f6df0    89410c
                         sub                esp, 0x10                                      // 0x004f6df3    83ec10
                         mov.s              edx, esp                                       // 0x004f6df6    8bd4
                         mov                eax, 0x004d1460                                // 0x004f6df8    b860144d00
                         mov                dword ptr [edx], eax                           // 0x004f6dfd    8902
                         xor.s              eax, eax                                       // 0x004f6dff    33c0
                         {disp8} mov        dword ptr [edx + 0x04], eax                    // 0x004f6e01    894204
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x004f6e04    894208
                         {disp8} mov        dword ptr [edx + 0x0c], eax                    // 0x004f6e07    89420c
                         push               edi                                            // 0x004f6e0a    57
_jmp_addr_0x004f6e0b:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6e0b    8b8e64010000
                         push               0x8                                            // 0x004f6e11    6a08
                         add                ecx, 0x00000fa8                                // 0x004f6e13    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6e19    e822840000
                         pop                edi                                            // 0x004f6e1e    5f
                         pop                esi                                            // 0x004f6e1f    5e
                         pop                ebp                                            // 0x004f6e20    5d
                         pop                ebx                                            // 0x004f6e21    5b
                         add                esp, 0x14                                      // 0x004f6e22    83c414
                         ret                0x0008                                         // 0x004f6e25    c20800
                         nop                                                               // 0x004f6e28    90
                         nop                                                               // 0x004f6e29    90
                         nop                                                               // 0x004f6e2a    90
                         nop                                                               // 0x004f6e2b    90
                         nop                                                               // 0x004f6e2c    90
                         nop                                                               // 0x004f6e2d    90
                         nop                                                               // 0x004f6e2e    90
                         nop                                                               // 0x004f6e2f    90
_jmp_addr_0x004f6e30:    push               ebx                                            // 0x004f6e30    53
                         push               ebp                                            // 0x004f6e31    55
                         push               esi                                            // 0x004f6e32    56
                         push               edi                                            // 0x004f6e33    57
                         mov.s              esi, ecx                                       // 0x004f6e34    8bf1
                         push               0x1                                            // 0x004f6e36    6a01
                         call               _jmp_addr_0x004f6a90                           // 0x004f6e38    e853fcffff
                         {disp32} mov       eax, dword ptr [esi + 0x00001290]              // 0x004f6e3d    8b8690120000
                         xor.s              edi, edi                                       // 0x004f6e43    33ff
                         test               eax, eax                                       // 0x004f6e45    85c0
                         {disp8} jbe        _jmp_addr_0x004f6ebc                           // 0x004f6e47    7673
                         xor.s              ebx, ebx                                       // 0x004f6e49    33db
                         xor.s              ebp, ebp                                       // 0x004f6e4b    33ed
_jmp_addr_0x004f6e4d:    push               0x7f                                           // 0x004f6e4d    6a7f
                         push               0x00be0a5c                                     // 0x004f6e4f    685c0abe00
                         push               0x8                                            // 0x004f6e54    6a08
                         call               ___nw__FUl                                     // 0x004f6e56    e835492e00
                         add                esp, 0x0c                                      // 0x004f6e5b    83c40c
                         test               eax, eax                                       // 0x004f6e5e    85c0
                         {disp8} je         _jmp_addr_0x004f6e71                           // 0x004f6e60    740f
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x004f6e62    8b4c2414
                         mov                dword ptr [eax], 0x008cf064                    // 0x004f6e66    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x004f6e6c    894804
                         {disp8} jmp        _jmp_addr_0x004f6e73                           // 0x004f6e6f    eb02
_jmp_addr_0x004f6e71:    xor.s              eax, eax                                       // 0x004f6e71    33c0
_jmp_addr_0x004f6e73:    sub                esp, 0x10                                      // 0x004f6e73    83ec10
                         mov.s              edx, esp                                       // 0x004f6e76    8bd4
                         mov                dword ptr [edx], ebx                           // 0x004f6e78    891a
                         {disp8} mov        dword ptr [edx + 0x04], ebp                    // 0x004f6e7a    896a04
                         xor.s              ecx, ecx                                       // 0x004f6e7d    33c9
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6e7f    894a08
                         or                 ecx, 0xffffffff                                // 0x004f6e82    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6e85    894a0c
                         xor.s              ecx, ecx                                       // 0x004f6e88    33c9
                         sub                esp, 0x10                                      // 0x004f6e8a    83ec10
                         mov.s              edx, esp                                       // 0x004f6e8d    8bd4
                         mov                dword ptr [edx], ecx                           // 0x004f6e8f    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x004f6e91    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6e94    894a08
                         or                 ecx, 0xffffffff                                // 0x004f6e97    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6e9a    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6e9d    8b8e64010000
                         push               eax                                            // 0x004f6ea3    50
                         push               0xa                                            // 0x004f6ea4    6a0a
                         add                ecx, 0x00000fa8                                // 0x004f6ea6    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6eac    e88f830000
                         {disp32} mov       eax, dword ptr [esi + 0x00001290]              // 0x004f6eb1    8b8690120000
                         inc                edi                                            // 0x004f6eb7    47
                         cmp.s              edi, eax                                       // 0x004f6eb8    3bf8
                         .byte              0x72, 0x91// {disp8} jb _jmp_addr_0x004f6e4d   // 0x004f6eba    7291
_jmp_addr_0x004f6ebc:    sub                esp, 0x10                                      // 0x004f6ebc    83ec10
                         xor.s              ecx, ecx                                       // 0x004f6ebf    33c9
                         xor.s              eax, eax                                       // 0x004f6ec1    33c0
                         mov.s              ebp, esp                                       // 0x004f6ec3    8bec
                         {disp8} mov        dword ptr [ebp + 0x00], eax                    // 0x004f6ec5    894500
                         {disp8} mov        dword ptr [ebp + 0x04], ecx                    // 0x004f6ec8    894d04
                         sub                esp, 0x10                                      // 0x004f6ecb    83ec10
                         xor.s              edx, edx                                       // 0x004f6ece    33d2
                         {disp8} mov        dword ptr [ebp + 0x08], edx                    // 0x004f6ed0    895508
                         mov.s              ecx, esp                                       // 0x004f6ed3    8bcc
                         or                 edi, 0xffffffff                                // 0x004f6ed5    83cfff
                         {disp8} mov        dword ptr [ebp + 0x0c], edi                    // 0x004f6ed8    897d0c
                         xor.s              ebx, ebx                                       // 0x004f6edb    33db
                         mov                dword ptr [ecx], ebx                           // 0x004f6edd    8919
                         {disp8} mov        dword ptr [ecx + 0x04], eax                    // 0x004f6edf    894104
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x004f6ee2    894108
                         or                 eax, -0x1                                      // 0x004f6ee5    83c8ff
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                    // 0x004f6ee8    89410c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6eeb    8b8e64010000
                         push               ebx                                            // 0x004f6ef1    53
                         push               0x00000085                                     // 0x004f6ef2    6885000000
                         add                ecx, 0x00000fa8                                // 0x004f6ef7    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6efd    e83e830000
                         pop                edi                                            // 0x004f6f02    5f
                         pop                esi                                            // 0x004f6f03    5e
                         pop                ebp                                            // 0x004f6f04    5d
                         pop                ebx                                            // 0x004f6f05    5b
                         ret                0x0004                                         // 0x004f6f06    c20400
                         nop                                                               // 0x004f6f09    90
                         nop                                                               // 0x004f6f0a    90
                         nop                                                               // 0x004f6f0b    90
                         nop                                                               // 0x004f6f0c    90
                         nop                                                               // 0x004f6f0d    90
                         nop                                                               // 0x004f6f0e    90
                         nop                                                               // 0x004f6f0f    90
_jmp_addr_0x004f6f10:    push               ebx                                            // 0x004f6f10    53
                         push               ebp                                            // 0x004f6f11    55
                         push               esi                                            // 0x004f6f12    56
                         push               edi                                            // 0x004f6f13    57
                         mov.s              esi, ecx                                       // 0x004f6f14    8bf1
                         push               0x1                                            // 0x004f6f16    6a01
                         call               _jmp_addr_0x004f6a90                           // 0x004f6f18    e873fbffff
                         {disp32} mov       eax, dword ptr [esi + 0x00001290]              // 0x004f6f1d    8b8690120000
                         xor.s              edi, edi                                       // 0x004f6f23    33ff
                         test               eax, eax                                       // 0x004f6f25    85c0
                         {disp8} jbe        _jmp_addr_0x004f6fa6                           // 0x004f6f27    767d
                         xor.s              ebx, ebx                                       // 0x004f6f29    33db
                         xor.s              ebp, ebp                                       // 0x004f6f2b    33ed
_jmp_addr_0x004f6f2d:    push               0x00000089                                     // 0x004f6f2d    6889000000
                         push               0x00be0a5c                                     // 0x004f6f32    685c0abe00
                         push               0xc                                            // 0x004f6f37    6a0c
                         call               ___nw__FUl                                     // 0x004f6f39    e852482e00
                         add                esp, 0x0c                                      // 0x004f6f3e    83c40c
                         test               eax, eax                                       // 0x004f6f41    85c0
                         {disp8} je         _jmp_addr_0x004f6f5b                           // 0x004f6f43    7416
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x004f6f45    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x004f6f49    8b542418
                         mov                dword ptr [eax], 0x008cf050                    // 0x004f6f4d    c70050f08c00
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x004f6f53    894804
                         {disp8} mov        dword ptr [eax + 0x08], edx                    // 0x004f6f56    895008
                         {disp8} jmp        _jmp_addr_0x004f6f5d                           // 0x004f6f59    eb02
_jmp_addr_0x004f6f5b:    xor.s              eax, eax                                       // 0x004f6f5b    33c0
_jmp_addr_0x004f6f5d:    sub                esp, 0x10                                      // 0x004f6f5d    83ec10
                         mov.s              edx, esp                                       // 0x004f6f60    8bd4
                         mov                dword ptr [edx], ebx                           // 0x004f6f62    891a
                         {disp8} mov        dword ptr [edx + 0x04], ebp                    // 0x004f6f64    896a04
                         xor.s              ecx, ecx                                       // 0x004f6f67    33c9
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6f69    894a08
                         or                 ecx, 0xffffffff                                // 0x004f6f6c    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6f6f    894a0c
                         xor.s              ecx, ecx                                       // 0x004f6f72    33c9
                         sub                esp, 0x10                                      // 0x004f6f74    83ec10
                         mov.s              edx, esp                                       // 0x004f6f77    8bd4
                         mov                dword ptr [edx], ecx                           // 0x004f6f79    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x004f6f7b    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x004f6f7e    894a08
                         or                 ecx, 0xffffffff                                // 0x004f6f81    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                    // 0x004f6f84    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6f87    8b8e64010000
                         push               eax                                            // 0x004f6f8d    50
                         push               0x4                                            // 0x004f6f8e    6a04
                         add                ecx, 0x00000fa8                                // 0x004f6f90    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6f96    e8a5820000
                         {disp32} mov       eax, dword ptr [esi + 0x00001290]              // 0x004f6f9b    8b8690120000
                         inc                edi                                            // 0x004f6fa1    47
                         cmp.s              edi, eax                                       // 0x004f6fa2    3bf8
                         .byte              0x72, 0x87// {disp8} jb _jmp_addr_0x004f6f2d   // 0x004f6fa4    7287
_jmp_addr_0x004f6fa6:    sub                esp, 0x10                                      // 0x004f6fa6    83ec10
                         xor.s              ecx, ecx                                       // 0x004f6fa9    33c9
                         xor.s              eax, eax                                       // 0x004f6fab    33c0
                         mov.s              ebp, esp                                       // 0x004f6fad    8bec
                         {disp8} mov        dword ptr [ebp + 0x00], eax                    // 0x004f6faf    894500
                         {disp8} mov        dword ptr [ebp + 0x04], ecx                    // 0x004f6fb2    894d04
                         sub                esp, 0x10                                      // 0x004f6fb5    83ec10
                         xor.s              edx, edx                                       // 0x004f6fb8    33d2
                         {disp8} mov        dword ptr [ebp + 0x08], edx                    // 0x004f6fba    895508
                         mov.s              ecx, esp                                       // 0x004f6fbd    8bcc
                         or                 edi, 0xffffffff                                // 0x004f6fbf    83cfff
                         {disp8} mov        dword ptr [ebp + 0x0c], edi                    // 0x004f6fc2    897d0c
                         xor.s              ebx, ebx                                       // 0x004f6fc5    33db
                         mov                dword ptr [ecx], ebx                           // 0x004f6fc7    8919
                         {disp8} mov        dword ptr [ecx + 0x04], eax                    // 0x004f6fc9    894104
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x004f6fcc    894108
                         or                 eax, -0x1                                      // 0x004f6fcf    83c8ff
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                    // 0x004f6fd2    89410c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f6fd5    8b8e64010000
                         push               ebx                                            // 0x004f6fdb    53
                         push               0x00000085                                     // 0x004f6fdc    6885000000
                         add                ecx, 0x00000fa8                                // 0x004f6fe1    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                           // 0x004f6fe7    e854820000
                         pop                edi                                            // 0x004f6fec    5f
                         pop                esi                                            // 0x004f6fed    5e
                         pop                ebp                                            // 0x004f6fee    5d
                         pop                ebx                                            // 0x004f6fef    5b
                         ret                0x0008                                         // 0x004f6ff0    c20800
                         nop                                                               // 0x004f6ff3    90
                         nop                                                               // 0x004f6ff4    90
                         nop                                                               // 0x004f6ff5    90
                         nop                                                               // 0x004f6ff6    90
                         nop                                                               // 0x004f6ff7    90
                         nop                                                               // 0x004f6ff8    90
                         nop                                                               // 0x004f6ff9    90
                         nop                                                               // 0x004f6ffa    90
                         nop                                                               // 0x004f6ffb    90
                         nop                                                               // 0x004f6ffc    90
                         nop                                                               // 0x004f6ffd    90
                         nop                                                               // 0x004f6ffe    90
                         nop                                                               // 0x004f6fff    90
_jmp_addr_0x004f7000:    push               esi                                            // 0x004f7000    56
                         push               edi                                            // 0x004f7001    57
                         mov.s              esi, ecx                                       // 0x004f7002    8bf1
                         push               0x1                                            // 0x004f7004    6a01
                         {disp32} mov       dword ptr [data_bytes + 0x29e148], 0x00000001  // 0x004f7006    c7054841c60001000000
                         call               _jmp_addr_0x004f6a90                           // 0x004f7010    e87bfaffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x004f7015    8b442410
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f7019    8b8e64010000
                         push               eax                                            // 0x004f701f    50
                         push               esi                                            // 0x004f7020    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                           // 0x004f7021    e8aa0bfeff
                         mov.s              edi, eax                                       // 0x004f7026    8bf8
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x004f7028    8b442414
                         test               eax, eax                                       // 0x004f702c    85c0
                         {disp8} je         _jmp_addr_0x004f703f                           // 0x004f702e    740f
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f7030    8b8e64010000
                         push               eax                                            // 0x004f7036    50
                         push               esi                                            // 0x004f7037    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                           // 0x004f7038    e8930bfeff
                         {disp8} jmp        _jmp_addr_0x004f7041                           // 0x004f703d    eb02
_jmp_addr_0x004f703f:    xor.s              eax, eax                                       // 0x004f703f    33c0
_jmp_addr_0x004f7041:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                    // 0x004f7041    8b4c240c
                         push               0x1                                            // 0x004f7045    6a01
                         push               0x1                                            // 0x004f7047    6a01
                         push               eax                                            // 0x004f7049    50
                         push               edi                                            // 0x004f704a    57
                         push               ecx                                            // 0x004f704b    51
                         push               0x0                                            // 0x004f704c    6a00
                         push               0x18                                           // 0x004f704e    6a18
                         mov.s              ecx, esi                                       // 0x004f7050    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z                           // 0x004f7052    e8f9d3fcff
                         pop                edi                                            // 0x004f7057    5f
                         pop                esi                                            // 0x004f7058    5e
                         ret                0x000c                                         // 0x004f7059    c20c00
                         nop                                                               // 0x004f705c    90
                         nop                                                               // 0x004f705d    90
                         nop                                                               // 0x004f705e    90
                         nop                                                               // 0x004f705f    90
_jmp_addr_0x004f7060:    {disp32} mov       eax, dword ptr [ecx + 0x00000164]              // 0x004f7060    8b8164010000
                         push               0x1                                            // 0x004f7066    6a01
                         push               0x1                                            // 0x004f7068    6a01
                         push               0x00be0a80                                     // 0x004f706a    68800abe00
                         {disp32} mov       dword ptr [eax + 0x0001d3f4], 0x00000000       // 0x004f706f    c780f4d3010000000000
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                           // 0x004f7079    e8b2e6f7ff
                         ret                                                               // 0x004f707e    c3
                         nop                                                               // 0x004f707f    90
_jmp_addr_0x004f7080:    {disp32} jmp       _jmp_addr_0x004798c0                           // 0x004f7080    e93b28f8ff
                         nop                                                               // 0x004f7085    90
                         nop                                                               // 0x004f7086    90
                         nop                                                               // 0x004f7087    90
                         nop                                                               // 0x004f7088    90
                         nop                                                               // 0x004f7089    90
                         nop                                                               // 0x004f708a    90
                         nop                                                               // 0x004f708b    90
                         nop                                                               // 0x004f708c    90
                         nop                                                               // 0x004f708d    90
                         nop                                                               // 0x004f708e    90
                         nop                                                               // 0x004f708f    90
_jmp_addr_0x004f7090:    push               ebx                                            // 0x004f7090    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                    // 0x004f7091    8b5c240c
                         push               ebp                                            // 0x004f7095    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                    // 0x004f7096    8b6c240c
                         push               esi                                            // 0x004f709a    56
                         push               edi                                            // 0x004f709b    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                    // 0x004f709c    8b7c241c
                         push               edi                                            // 0x004f70a0    57
                         mov.s              esi, ecx                                       // 0x004f70a1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f70a3    8b8e64010000
                         push               ebx                                            // 0x004f70a9    53
                         push               ebp                                            // 0x004f70aa    55
                         push               esi                                            // 0x004f70ab    56
                         add                ecx, 0x0001a9fc                                // 0x004f70ac    81c1fca90100
                         call               _jmp_addr_0x004e27f0                           // 0x004f70b2    e839b7feff
                         test               edi, edi                                       // 0x004f70b7    85ff
                         {disp8} je         _jmp_addr_0x004f70da                           // 0x004f70b9    741f
                         cmp                ebp, 0x01                                      // 0x004f70bb    83fd01
                         {disp8} jne        _jmp_addr_0x004f70da                           // 0x004f70be    751a
                         push               ebx                                            // 0x004f70c0    53
                         mov.s              ecx, esi                                       // 0x004f70c1    8bce
                         call               _jmp_addr_0x004f8ca0                           // 0x004f70c3    e8d81b0000
                         call               _jmp_addr_0x007a1400                           // 0x004f70c8    e833a32a00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]              // 0x004f70cd    8b8e64010000
                         {disp32} mov       dword ptr [ecx + ebx * 0x4 + 0x00017d38], eax  // 0x004f70d3    898499387d0100
_jmp_addr_0x004f70da:    pop                edi                                            // 0x004f70da    5f
                         pop                esi                                            // 0x004f70db    5e
                         pop                ebp                                            // 0x004f70dc    5d
                         pop                ebx                                            // 0x004f70dd    5b
                         ret                0x000c                                         // 0x004f70de    c20c00
                         nop                                                               // 0x004f70e1    90
                         nop                                                               // 0x004f70e2    90
                         nop                                                               // 0x004f70e3    90
                         nop                                                               // 0x004f70e4    90
                         nop                                                               // 0x004f70e5    90
                         nop                                                               // 0x004f70e6    90
                         nop                                                               // 0x004f70e7    90
                         nop                                                               // 0x004f70e8    90
                         nop                                                               // 0x004f70e9    90
                         nop                                                               // 0x004f70ea    90
                         nop                                                               // 0x004f70eb    90
                         nop                                                               // 0x004f70ec    90
                         nop                                                               // 0x004f70ed    90
                         nop                                                               // 0x004f70ee    90
                         nop                                                               // 0x004f70ef    90
_jmp_addr_0x004f70f0:    {disp32} mov       eax, dword ptr [ecx + 0x00000164]              // 0x004f70f0    8b8164010000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x004f70f6    8b4c2404
                         {disp32} mov       dword ptr [eax + 0x00000f74], ecx              // 0x004f70fa    8988740f0000
                         ret                0x0004                                         // 0x004f7100    c20400
                         nop                                                               // 0x004f7103    90
                         nop                                                               // 0x004f7104    90
                         nop                                                               // 0x004f7105    90
                         nop                                                               // 0x004f7106    90
                         nop                                                               // 0x004f7107    90
                         nop                                                               // 0x004f7108    90
                         nop                                                               // 0x004f7109    90
                         nop                                                               // 0x004f710a    90
                         nop                                                               // 0x004f710b    90
                         nop                                                               // 0x004f710c    90
                         nop                                                               // 0x004f710d    90
                         nop                                                               // 0x004f710e    90
                         nop                                                               // 0x004f710f    90
_globl_ct_0x004f7110:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                   // 0x004f7110    8a0d34c9fa00
                         mov                al, 0x01                                       // 0x004f7116    b001
                         test               al, cl                                         // 0x004f7118    84c8
                         {disp8} jne        _jmp_addr_0x004f7124                           // 0x004f711a    7508
                         or.s               cl, al                                         // 0x004f711c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                   // 0x004f711e    880d34c9fa00
_jmp_addr_0x004f7124:    {disp32} jmp       _jmp_addr_0x004f7130                           // 0x004f7124    e907000000
                         nop                                                               // 0x004f7129    90
                         nop                                                               // 0x004f712a    90
                         nop                                                               // 0x004f712b    90
                         nop                                                               // 0x004f712c    90
                         nop                                                               // 0x004f712d    90
                         nop                                                               // 0x004f712e    90
                         nop                                                               // 0x004f712f    90
_jmp_addr_0x004f7130:    push               0x00407870                                     // 0x004f7130    6870784000
                         call               _atexit                                        // 0x004f7135    e857e62c00
                         pop                ecx                                            // 0x004f713a    59
                         ret                                                               // 0x004f713b    c3
                         nop                                                               // 0x004f713c    90
                         nop                                                               // 0x004f713d    90
                         nop                                                               // 0x004f713e    90
                         nop                                                               // 0x004f713f    90
_globl_ct_0x004f7140:    {disp32} jmp       _jmp_addr_0x004f7150                           // 0x004f7140    e90b000000
                         nop                                                               // 0x004f7145    90
                         nop                                                               // 0x004f7146    90
                         nop                                                               // 0x004f7147    90
                         nop                                                               // 0x004f7148    90
                         nop                                                               // 0x004f7149    90
                         nop                                                               // 0x004f714a    90
                         nop                                                               // 0x004f714b    90
                         nop                                                               // 0x004f714c    90
                         nop                                                               // 0x004f714d    90
                         nop                                                               // 0x004f714e    90
                         nop                                                               // 0x004f714f    90
_jmp_addr_0x004f7150:    {disp32} fld       dword ptr [rdata_bytes + 0x285d0]              // 0x004f7150    d905d0158d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x285cc]              // 0x004f7156    d80dcc158d00
                         {disp32} fstp      dword ptr [data_bytes + 0x2e7adc]              // 0x004f715c    d91ddcdaca00
                         ret                                                               // 0x004f7162    c3
                         nop                                                               // 0x004f7163    90
                         nop                                                               // 0x004f7164    90
                         nop                                                               // 0x004f7165    90
                         nop                                                               // 0x004f7166    90
                         nop                                                               // 0x004f7167    90
                         nop                                                               // 0x004f7168    90
                         nop                                                               // 0x004f7169    90
                         nop                                                               // 0x004f716a    90
                         nop                                                               // 0x004f716b    90
                         nop                                                               // 0x004f716c    90
                         nop                                                               // 0x004f716d    90
                         nop                                                               // 0x004f716e    90
                         nop                                                               // 0x004f716f    90
_globl_ct_0x004f7170:    {disp32} jmp       _jmp_addr_0x004f7180                           // 0x004f7170    e90b000000
                         nop                                                               // 0x004f7175    90
                         nop                                                               // 0x004f7176    90
                         nop                                                               // 0x004f7177    90
                         nop                                                               // 0x004f7178    90
                         nop                                                               // 0x004f7179    90
                         nop                                                               // 0x004f717a    90
                         nop                                                               // 0x004f717b    90
                         nop                                                               // 0x004f717c    90
                         nop                                                               // 0x004f717d    90
                         nop                                                               // 0x004f717e    90
                         nop                                                               // 0x004f717f    90
_jmp_addr_0x004f7180:    {disp32} mov       dword ptr [data_bytes + 0x2e7ad8], 0xffffffff  // 0x004f7180    c705d8daca00ffffffff
                         ret                                                               // 0x004f718a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x004f718b    e8e9a6f0ff
                         push               esi                                            // 0x004f7190    56
                         push               0x2e                                           // 0x004f7191    6a2e
                         push               0x00be0ab8                                     // 0x004f7193    68b80abe00
                         push               0x18                                           // 0x004f7198    6a18
                         call               ___nw__FUl                                     // 0x004f719a    e8f1452e00
                         add                esp, 0x0c                                      // 0x004f719f    83c40c
                         test               eax, eax                                       // 0x004f71a2    85c0
                         {disp8} je         _jmp_addr_0x004f71b7                           // 0x004f71a4    7411
                         mov                dword ptr [eax], 0x008d15d8                    // 0x004f71a6    c700d8158d00
                         {disp8} mov        dword ptr [eax + 0x10], 0x00000001             // 0x004f71ac    c7401001000000
                         mov.s              esi, eax                                       // 0x004f71b3    8bf0
                         {disp8} jmp        _jmp_addr_0x004f71b9                           // 0x004f71b5    eb02
_jmp_addr_0x004f71b7:    xor.s              esi, esi                                       // 0x004f71b7    33f6
_jmp_addr_0x004f71b9:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x004f71b9    8b442408
                         push               esi                                            // 0x004f71bd    56
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x004f71be    894604
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000             // 0x004f71c1    c7460800000000
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000001             // 0x004f71c8    c7460c01000000
                         call               _jmp_addr_0x00842150                           // 0x004f71cf    e87caf3400
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f71d4    8b0d5c19d000
                         add                esp, 0x04                                      // 0x004f71da    83c404
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ       // 0x004f71dd    e86ee60500
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]              // 0x004f71e2    8b88a0030000
                         push               0x1                                            // 0x004f71e8    6a01
                         call               _jmp_addr_0x0046c2e0                           // 0x004f71ea    e8f150f7ff
                         mov.s              eax, esi                                       // 0x004f71ef    8bc6
                         pop                esi                                            // 0x004f71f1    5e
                         ret                                                               // 0x004f71f2    c3
                         nop                                                               // 0x004f71f3    90
                         nop                                                               // 0x004f71f4    90
                         nop                                                               // 0x004f71f5    90
                         nop                                                               // 0x004f71f6    90
                         nop                                                               // 0x004f71f7    90
                         nop                                                               // 0x004f71f8    90
                         nop                                                               // 0x004f71f9    90
                         nop                                                               // 0x004f71fa    90
                         nop                                                               // 0x004f71fb    90
                         nop                                                               // 0x004f71fc    90
                         nop                                                               // 0x004f71fd    90
                         nop                                                               // 0x004f71fe    90
                         nop                                                               // 0x004f71ff    90
_StringFunction__4PrssFlPci:
                         ret                0x000c                                         // 0x004f7200    c20c00
                         nop                                                               // 0x004f7203    90
                         nop                                                               // 0x004f7204    90
                         nop                                                               // 0x004f7205    90
                         nop                                                               // 0x004f7206    90
                         nop                                                               // 0x004f7207    90
                         nop                                                               // 0x004f7208    90
                         nop                                                               // 0x004f7209    90
                         nop                                                               // 0x004f720a    90
                         nop                                                               // 0x004f720b    90
                         nop                                                               // 0x004f720c    90
                         nop                                                               // 0x004f720d    90
                         nop                                                               // 0x004f720e    90
                         nop                                                               // 0x004f720f    90
?ProcessTurn@CreatureSelect@@UAEHXZ:
                         push               esi                                            // 0x004f7210    56
                         mov.s              esi, ecx                                       // 0x004f7211    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                    // 0x004f7213    8b460c
                         test               eax, eax                                       // 0x004f7216    85c0
                         {disp8} jne        _jmp_addr_0x004f723f                           // 0x004f7218    7525
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f721a    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ       // 0x004f7220    e82be60500
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]              // 0x004f7225    8b88a0030000
                         push               0x1                                            // 0x004f722b    6a01
                         call               _jmp_addr_0x0046c1b0                           // 0x004f722d    e87e4ff7ff
                         push               esi                                            // 0x004f7232    56
                         call               ??3@YAXPAX@Z                                   // 0x004f7233    e8607c2b00
                         add                esp, 0x04                                      // 0x004f7238    83c404
                         xor.s              eax, eax                                       // 0x004f723b    33c0
                         pop                esi                                            // 0x004f723d    5e
                         ret                                                               // 0x004f723e    c3
_jmp_addr_0x004f723f:    mov.s              eax, esi                                       // 0x004f723f    8bc6
                         pop                esi                                            // 0x004f7241    5e
                         ret                                                               // 0x004f7242    c3
                         nop                                                               // 0x004f7243    90
                         nop                                                               // 0x004f7244    90
                         nop                                                               // 0x004f7245    90
                         nop                                                               // 0x004f7246    90
                         nop                                                               // 0x004f7247    90
                         nop                                                               // 0x004f7248    90
                         nop                                                               // 0x004f7249    90
                         nop                                                               // 0x004f724a    90
                         nop                                                               // 0x004f724b    90
                         nop                                                               // 0x004f724c    90
                         nop                                                               // 0x004f724d    90
                         nop                                                               // 0x004f724e    90
                         nop                                                               // 0x004f724f    90
?Display@CreatureSelect@@UAEXXZ:
                         push               ecx                                            // 0x004f7250    51
                         push               ebx                                            // 0x004f7251    53
                         push               ebp                                            // 0x004f7252    55
                         mov.s              ebx, ecx                                       // 0x004f7253    8bd9
                         {disp8} mov        eax, dword ptr [ebx + 0x0c]                    // 0x004f7255    8b430c
                         test               eax, eax                                       // 0x004f7258    85c0
                         push               esi                                            // 0x004f725a    56
                         push               edi                                            // 0x004f725b    57
                         {disp32} je        _jmp_addr_0x004f74bd                           // 0x004f725c    0f845b020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]         // 0x004f7262    a15850e800
                         and                eax, 0x0000ffff                                // 0x004f7267    25ffff0000
                         sub                eax, 0x00000090                                // 0x004f726c    2d90000000
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f7271    8b0d5c19d000
                         cdq                                                               // 0x004f7277    99
                         sub.s              eax, edx                                       // 0x004f7278    2bc2
                         mov.s              edi, eax                                       // 0x004f727a    8bf8
                         xor.s              eax, eax                                       // 0x004f727c    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]           // 0x004f727e    66a15a50e800
                         sar                edi, 1                                         // 0x004f7284    d1ff
                         sub                eax, 0x18                                      // 0x004f7286    83e818
                         cdq                                                               // 0x004f7289    99
                         sub.s              eax, edx                                       // 0x004f728a    2bc2
                         mov.s              esi, eax                                       // 0x004f728c    8bf0
                         {disp32} mov       eax, dword ptr [ecx + 0x00205b80]              // 0x004f728e    8b81805b2000
                         {disp32} mov       ebp, dword ptr [eax + 0x00000094]              // 0x004f7294    8ba894000000
                         {disp8} mov        eax, dword ptr [ebx + 0x10]                    // 0x004f729a    8b4310
                         xor.s              edx, edx                                       // 0x004f729d    33d2
                         sar                esi, 1                                         // 0x004f729f    d1fe
                         cmp                ebp, 0x01                                      // 0x004f72a1    83fd01
                         sete               dl                                             // 0x004f72a4    0f94c2
                         test               eax, eax                                       // 0x004f72a7    85c0
                         mov.s              ebp, edx                                       // 0x004f72a9    8bea
                         {disp32} je        _jmp_addr_0x004f73f9                           // 0x004f72ab    0f8448010000
                         xor.s              eax, eax                                       // 0x004f72b1    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                // 0x004f72b3    8a81595a2000
                         push               edi                                            // 0x004f72b9    57
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x004f72ba    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]               // 0x004f72bd    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]               // 0x004f72c0    8d0450
                         shl                eax, 5                                         // 0x004f72c3    c1e005
                         {disp32} mov       edx, dword ptr [eax + ecx * 0x1 + 0x00000a64]  // 0x004f72c6    8b9408640a0000
                         test               edx, edx                                       // 0x004f72cd    85d2
                         {disp8} je         _jmp_addr_0x004f72f9                           // 0x004f72cf    7428
                         call               _jmp_addr_0x00841660                           // 0x004f72d1    e88aa33400
                         push               esi                                            // 0x004f72d6    56
                         call               _jmp_addr_0x00841670                           // 0x004f72d7    e894a33400
                         push               0x4                                            // 0x004f72dc    6a04
                         push               0x00be0b70                                     // 0x004f72de    68700bbe00
                         push               0x00ef64f0                                     // 0x004f72e3    68f064ef00
                         push               0x0                                            // 0x004f72e8    6a00
                         push               0x0                                            // 0x004f72ea    6a00
                         push               0xc                                            // 0x004f72ec    6a0c
                         push               ebx                                            // 0x004f72ee    53
                         call               _jmp_addr_0x00841750                           // 0x004f72ef    e85ca43400
                         add                esp, 0x24                                      // 0x004f72f4    83c424
                         {disp8} jmp        _jmp_addr_0x004f7346                           // 0x004f72f7    eb4d
_jmp_addr_0x004f72f9:    call               _jmp_addr_0x00841660                           // 0x004f72f9    e862a33400
                         push               esi                                            // 0x004f72fe    56
                         call               _jmp_addr_0x00841670                           // 0x004f72ff    e86ca33400
                         push               0x2                                            // 0x004f7304    6a02
                         push               0x00be0b5c                                     // 0x004f7306    685c0bbe00
                         push               0x00ef64f8                                     // 0x004f730b    68f864ef00
                         push               0x0                                            // 0x004f7310    6a00
                         push               0x0                                            // 0x004f7312    6a00
                         push               0xc                                            // 0x004f7314    6a0c
                         push               ebx                                            // 0x004f7316    53
                         call               _jmp_addr_0x00841750                           // 0x004f7317    e834a43400
                         push               edi                                            // 0x004f731c    57
                         add                esi, 0x0c                                      // 0x004f731d    83c60c
                         call               _jmp_addr_0x00841660                           // 0x004f7320    e83ba33400
                         push               esi                                            // 0x004f7325    56
                         call               _jmp_addr_0x00841670                           // 0x004f7326    e845a33400
                         push               0x1                                            // 0x004f732b    6a01
                         push               0x00be0b48                                     // 0x004f732d    68480bbe00
                         push               0x00ef64f0                                     // 0x004f7332    68f064ef00
                         push               0x0                                            // 0x004f7337    6a00
                         push               0x0                                            // 0x004f7339    6a00
                         push               0xc                                            // 0x004f733b    6a0c
                         push               ebx                                            // 0x004f733d    53
                         call               _jmp_addr_0x00841750                           // 0x004f733e    e80da43400
                         add                esp, 0x48                                      // 0x004f7343    83c448
_jmp_addr_0x004f7346:    add                esi, 0x0c                                      // 0x004f7346    83c60c
                         test               ebp, ebp                                       // 0x004f7349    85ed
                         {disp32} je        _jmp_addr_0x004f74bd                           // 0x004f734b    0f846c010000
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f7351    8b0d5c19d000
                         {disp32} mov       dl, byte ptr [ecx + 0x00205a59]                // 0x004f7357    8a91595a2000
                         xor.s              eax, eax                                       // 0x004f735d    33c0
                         test               dl, dl                                         // 0x004f735f    84d2
                         sete               al                                             // 0x004f7361    0f94c0
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x004f7364    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]               // 0x004f7367    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]               // 0x004f736a    8d0450
                         shl                eax, 5                                         // 0x004f736d    c1e005
                         {disp32} mov       edx, dword ptr [eax + ecx * 0x1 + 0x00000a64]  // 0x004f7370    8b9408640a0000
                         test               edx, edx                                       // 0x004f7377    85d2
                         {disp8} je         _jmp_addr_0x004f73a5                           // 0x004f7379    742a
                         push               edi                                            // 0x004f737b    57
                         call               _jmp_addr_0x00841660                           // 0x004f737c    e8dfa23400
                         push               esi                                            // 0x004f7381    56
                         call               _jmp_addr_0x00841670                           // 0x004f7382    e8e9a23400
                         push               0x5                                            // 0x004f7387    6a05
                         push               0x00be0b30                                     // 0x004f7389    68300bbe00
                         push               0x00ef64f0                                     // 0x004f738e    68f064ef00
                         push               0x0                                            // 0x004f7393    6a00
                         push               0x0                                            // 0x004f7395    6a00
                         push               0xc                                            // 0x004f7397    6a0c
                         push               ebx                                            // 0x004f7399    53
                         call               _jmp_addr_0x00841750                           // 0x004f739a    e8b1a33400
                         add                esp, 0x24                                      // 0x004f739f    83c424
                         add                esi, 0x0c                                      // 0x004f73a2    83c60c
_jmp_addr_0x004f73a5:    push               edi                                            // 0x004f73a5    57
                         call               _jmp_addr_0x00841660                           // 0x004f73a6    e8b5a23400
                         push               esi                                            // 0x004f73ab    56
                         call               _jmp_addr_0x00841670                           // 0x004f73ac    e8bfa23400
                         push               0x1                                            // 0x004f73b1    6a01
                         push               0x00be0b18                                     // 0x004f73b3    68180bbe00
                         push               0x00ef64f0                                     // 0x004f73b8    68f064ef00
                         push               0x0                                            // 0x004f73bd    6a00
                         push               0x1                                            // 0x004f73bf    6a01
                         push               0xc                                            // 0x004f73c1    6a0c
                         push               ebx                                            // 0x004f73c3    53
                         call               _jmp_addr_0x00841750                           // 0x004f73c4    e887a33400
                         push               edi                                            // 0x004f73c9    57
                         call               _jmp_addr_0x00841660                           // 0x004f73ca    e891a23400
                         add                esi, 0x0c                                      // 0x004f73cf    83c60c
                         push               esi                                            // 0x004f73d2    56
                         call               _jmp_addr_0x00841670                           // 0x004f73d3    e898a23400
                         push               0x6                                            // 0x004f73d8    6a06
                         push               0x00be0b10                                     // 0x004f73da    68100bbe00
                         push               0x00ef64fc                                     // 0x004f73df    68fc64ef00
                         push               0x0                                            // 0x004f73e4    6a00
                         push               0x0                                            // 0x004f73e6    6a00
                         push               0xc                                            // 0x004f73e8    6a0c
                         push               ebx                                            // 0x004f73ea    53
                         call               _jmp_addr_0x00841750                           // 0x004f73eb    e860a33400
                         add                esp, 0x48                                      // 0x004f73f0    83c448
                         pop                edi                                            // 0x004f73f3    5f
                         pop                esi                                            // 0x004f73f4    5e
                         pop                ebp                                            // 0x004f73f5    5d
                         pop                ebx                                            // 0x004f73f6    5b
                         pop                ecx                                            // 0x004f73f7    59
                         ret                                                               // 0x004f73f8    c3
_jmp_addr_0x004f73f9:    push               edi                                            // 0x004f73f9    57
                         call               _jmp_addr_0x00841660                           // 0x004f73fa    e861a23400
                         push               esi                                            // 0x004f73ff    56
                         call               _jmp_addr_0x00841670                           // 0x004f7400    e86ba23400
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                    // 0x004f7405    8b4314
                         add                esp, 0x08                                      // 0x004f7408    83c408
                         add                esi, 0x0c                                      // 0x004f740b    83c60c
                         sub                eax, 0x00                                      // 0x004f740e    83e800
                         {disp8} je         _jmp_addr_0x004f7427                           // 0x004f7411    7414
                         dec                eax                                            // 0x004f7413    48
                         {disp8} je         _jmp_addr_0x004f7420                           // 0x004f7414    740a
                         dec                eax                                            // 0x004f7416    48
                         {disp8} jne        _jmp_addr_0x004f742e                           // 0x004f7417    7515
                         mov                eax, 0x00be0afc                                // 0x004f7419    b8fc0abe00
                         {disp8} jmp        _jmp_addr_0x004f7432                           // 0x004f741e    eb12
_jmp_addr_0x004f7420:    mov                eax, 0x00be0aec                                // 0x004f7420    b8ec0abe00
                         {disp8} jmp        _jmp_addr_0x004f7432                           // 0x004f7425    eb0b
_jmp_addr_0x004f7427:    mov                eax, 0x00be0adc                                // 0x004f7427    b8dc0abe00
                         {disp8} jmp        _jmp_addr_0x004f7432                           // 0x004f742c    eb04
_jmp_addr_0x004f742e:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x004f742e    8b442410
_jmp_addr_0x004f7432:    push               0x0                                            // 0x004f7432    6a00
                         push               eax                                            // 0x004f7434    50
                         push               0x00ef64f0                                     // 0x004f7435    68f064ef00
                         push               0x0                                            // 0x004f743a    6a00
                         push               0x0                                            // 0x004f743c    6a00
                         push               0xc                                            // 0x004f743e    6a0c
                         push               ebx                                            // 0x004f7440    53
                         call               _jmp_addr_0x00841750                           // 0x004f7441    e80aa33400
                         add                esp, 0x1c                                      // 0x004f7446    83c41c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x004f7449    c744241000000000
                         mov                ebp, 0x009cf734                                // 0x004f7451    bd34f79c00
_jmp_addr_0x004f7456:    push               edi                                            // 0x004f7456    57
                         call               _jmp_addr_0x00841660                           // 0x004f7457    e804a23400
                         push               esi                                            // 0x004f745c    56
                         call               _jmp_addr_0x00841670                           // 0x004f745d    e80ea23400
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x004f7462    8b4d00
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x004f7465    8b542418
                         push               0x3                                            // 0x004f7469    6a03
                         push               ecx                                            // 0x004f746b    51
                         push               0x00ef64f8                                     // 0x004f746c    68f864ef00
                         push               0x0                                            // 0x004f7471    6a00
                         push               edx                                            // 0x004f7473    52
                         push               0xc                                            // 0x004f7474    6a0c
                         push               ebx                                            // 0x004f7476    53
                         add                esi, 0x0c                                      // 0x004f7477    83c60c
                         call               _jmp_addr_0x00841750                           // 0x004f747a    e8d1a23400
                         {disp8} mov        edx, dword ptr [esp + 0x34]                    // 0x004f747f    8b542434
                         add                esp, 0x24                                      // 0x004f7483    83c424
                         inc                edx                                            // 0x004f7486    42
                         add                ebp, 0x08                                      // 0x004f7487    83c508
                         cmp                ebp, 0x009cf7bc                                // 0x004f748a    81fdbcf79c00
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x004f7490    89542410
                         {disp8} jl         _jmp_addr_0x004f7456                           // 0x004f7494    7cc0
                         push               edi                                            // 0x004f7496    57
                         call               _jmp_addr_0x00841660                           // 0x004f7497    e8c4a13400
                         push               esi                                            // 0x004f749c    56
                         call               _jmp_addr_0x00841670                           // 0x004f749d    e8cea13400
                         push               0x6                                            // 0x004f74a2    6a06
                         push               0x00be0b10                                     // 0x004f74a4    68100bbe00
                         push               0x00ef64fc                                     // 0x004f74a9    68fc64ef00
                         push               0x0                                            // 0x004f74ae    6a00
                         push               0x0                                            // 0x004f74b0    6a00
                         push               0xc                                            // 0x004f74b2    6a0c
                         push               ebx                                            // 0x004f74b4    53
                         call               _jmp_addr_0x00841750                           // 0x004f74b5    e896a23400
                         add                esp, 0x24                                      // 0x004f74ba    83c424
_jmp_addr_0x004f74bd:    pop                edi                                            // 0x004f74bd    5f
                         pop                esi                                            // 0x004f74be    5e
                         pop                ebp                                            // 0x004f74bf    5d
                         pop                ebx                                            // 0x004f74c0    5b
                         pop                ecx                                            // 0x004f74c1    59
                         ret                                                               // 0x004f74c2    c3
                         nop                                                               // 0x004f74c3    90
                         nop                                                               // 0x004f74c4    90
                         nop                                                               // 0x004f74c5    90
                         nop                                                               // 0x004f74c6    90
                         nop                                                               // 0x004f74c7    90
                         nop                                                               // 0x004f74c8    90
                         nop                                                               // 0x004f74c9    90
                         nop                                                               // 0x004f74ca    90
                         nop                                                               // 0x004f74cb    90
                         nop                                                               // 0x004f74cc    90
                         nop                                                               // 0x004f74cd    90
                         nop                                                               // 0x004f74ce    90
                         nop                                                               // 0x004f74cf    90
?ClickFunction@CreatureSelect@@UAEXHHH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x004f74d0    8b442404
                         push               esi                                            // 0x004f74d4    56
                         dec                eax                                            // 0x004f74d5    48
                         cmp                eax, 0x05                                      // 0x004f74d6    83f805
                         push               edi                                            // 0x004f74d9    57
                         mov.s              esi, ecx                                       // 0x004f74da    8bf1
                         {disp32} ja        _jmp_addr_0x004f7593                           // 0x004f74dc    0f87b1000000
                         jmp                dword ptr [eax*4 + 0x4f7598]                   // 0x004f74e2    ff248598754f00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x004f74e9    8b442414
                         pop                edi                                            // 0x004f74ed    5f
                         {disp8} mov        dword ptr [esi + 0x10], 0x00000000             // 0x004f74ee    c7461000000000
                         {disp8} mov        dword ptr [esi + 0x14], eax                    // 0x004f74f5    894614
                         pop                esi                                            // 0x004f74f8    5e
                         ret                0x000c                                         // 0x004f74f9    c20c00
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f74fc    8b0d5c19d000
                         call               _jmp_addr_0x00555880                           // 0x004f7502    e879e30500
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f7507    8b0d5c19d000
                         {disp8} mov        di, word ptr [eax + 0x1a]                      // 0x004f750d    668b781a
                         call               _jmp_addr_0x00555880                           // 0x004f7511    e86ae30500
                         xor.s              ecx, ecx                                       // 0x004f7516    33c9
                         {disp8} mov        cx, word ptr [eax + 0x16]                      // 0x004f7518    668b4816
                         push               -0x1                                           // 0x004f751c    6aff
                         push               edi                                            // 0x004f751e    57
                         push               ecx                                            // 0x004f751f    51
                         push               0x4e                                           // 0x004f7520    6a4e
                         {disp8} jmp        _jmp_addr_0x004f7581                           // 0x004f7522    eb5d
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x004f7524    8b442414
                         push               eax                                            // 0x004f7528    50
                         mov.s              ecx, esi                                       // 0x004f7529    8bce
                         call               _jmp_addr_0x004f75b0                           // 0x004f752b    e880000000
                         pop                edi                                            // 0x004f7530    5f
                         pop                esi                                            // 0x004f7531    5e
                         ret                0x000c                                         // 0x004f7532    c20c00
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f7535    8b0d5c19d000
                         call               _jmp_addr_0x00555880                           // 0x004f753b    e840e30500
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f7540    8b0d5c19d000
                         {disp8} mov        di, word ptr [eax + 0x1a]                      // 0x004f7546    668b781a
                         call               _jmp_addr_0x00555880                           // 0x004f754a    e831e30500
                         xor.s              ecx, ecx                                       // 0x004f754f    33c9
                         {disp8} mov        cx, word ptr [eax + 0x16]                      // 0x004f7551    668b4816
                         push               -0x1                                           // 0x004f7555    6aff
                         push               edi                                            // 0x004f7557    57
                         push               ecx                                            // 0x004f7558    51
                         push               0x7                                            // 0x004f7559    6a07
                         {disp8} jmp        _jmp_addr_0x004f7581                           // 0x004f755b    eb24
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f755d    8b0d5c19d000
                         call               _jmp_addr_0x00555880                           // 0x004f7563    e818e30500
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x004f7568    8b0d5c19d000
                         {disp8} mov        di, word ptr [eax + 0x1a]                      // 0x004f756e    668b781a
                         call               _jmp_addr_0x00555880                           // 0x004f7572    e809e30500
                         {disp8} mov        ax, word ptr [eax + 0x16]                      // 0x004f7577    668b4016
                         push               -0x1                                           // 0x004f757b    6aff
                         push               edi                                            // 0x004f757d    57
                         push               eax                                            // 0x004f757e    50
                         push               0x8                                            // 0x004f757f    6a08
_jmp_addr_0x004f7581:    {disp32} mov       ecx, dword ptr [_game]                         // 0x004f7581    8b0d5c19d000
                         call               _jmp_addr_0x00550ba0                           // 0x004f7587    e814960500
                         mov                edx, dword ptr [esi]                           // 0x004f758c    8b16
                         mov.s              ecx, esi                                       // 0x004f758e    8bce
                         call               dword ptr [edx + 8]                            // 0x004f7590    ff5208
_jmp_addr_0x004f7593:    pop                edi                                            // 0x004f7593    5f
                         pop                esi                                            // 0x004f7594    5e
                         ret                0x000c                                         // 0x004f7595    c20c00

// Snippet: jmptbl, [0x004f7598, 0x004f75b0)
.byte 0xe9, 0x74, 0x4f, 0x00      // 0x004f7598
.byte 0xfc, 0x74, 0x4f, 0x00      // 0x004f759c
.byte 0x24, 0x75, 0x4f, 0x00      // 0x004f75a0
.byte 0x35, 0x75, 0x4f, 0x00      // 0x004f75a4
.byte 0x5d, 0x75, 0x4f, 0x00      // 0x004f75a8
.byte 0x8c, 0x75, 0x4f, 0x00      // 0x004f75ac

