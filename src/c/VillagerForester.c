#include "Villager.h"

const float villager_forester_num_days_in_year_0x0099a98c = 365.25f;
const float villager_forester_seconds_in_day_0x0099a990 = 86400.0f;

float villager_forester_seconds_in_year_0x00db9e14;

void __cdecl globl_ct_0x0075f440(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x0075f440    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0075f446    b001
    asm("test               al, cl");                                        // 0x0075f448    84c8
    asm("{disp8} jne        _jmp_addr_0x0075f454");                          // 0x0075f44a    7508
    asm("or.s               cl, al");                                        // 0x0075f44c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075f44e    880d34c9fa00
    asm("_jmp_addr_0x0075f454:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0075f460");   // 0x0075f454    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0075f460(void)
{
    asm("push               0x00407870");                                    // 0x0075f460    6870784000
    asm("call               _atexit");                                       // 0x0075f465    e827630600
    asm("pop                ecx");                                           // 0x0075f46a    59
}

void __cdecl globl_ct_0x0075f470(void)
{
    asm("{disp32} jmp       _FUN_0075f480__8VillagerFv");                    // 0x0075f470    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0075f480__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_forester_seconds_in_day_0x0099a990]");   // 0x0075f480    d90590a99900
    asm("{disp32} fmul dword ptr [_villager_forester_num_days_in_year_0x0099a98c]"); // 0x0075f486    d80d8ca99900
    asm("{disp32} fstp dword ptr [_villager_forester_seconds_in_year_0x00db9e14]");  // 0x0075f48c    d91d149edb00
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyWoodDesire__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                     // 0x0075f4a0    83ec14
    asm("push               esi");                                           // 0x0075f4a3    56
    asm("mov.s              esi, ecx");                                      // 0x0075f4a4    8bf1
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x0075f4a6    8d442408
    asm("push               eax");                                           // 0x0075f4aa    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075f4ab    8d4c2408
    asm("push               ecx");                                           // 0x0075f4af    51
    asm("push               0x0");                                           // 0x0075f4b0    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075f4b2    8bce
    asm("call               ?DecideHowToGetWood@Villager@@QAEIHPAPAVBigForest@@PAPAVForest@@@Z");                          // 0x0075f4b4    e857000000
    asm("dec                eax");                                           // 0x0075f4b9    48
    asm("{disp8} je         _jmp_addr_0x0075f504");                          // 0x0075f4ba    7448
    asm("dec                eax");                                           // 0x0075f4bc    48
    asm("{disp8} je         _jmp_addr_0x0075f4dc");                          // 0x0075f4bd    741d
    asm("dec                eax");                                           // 0x0075f4bf    48
    asm("{disp8} je         _jmp_addr_0x0075f4c9");                          // 0x0075f4c0    7407
    asm("xor.s              eax, eax");                                      // 0x0075f4c2    33c0
    asm("pop                esi");                                           // 0x0075f4c4    5e
    asm("add                esp, 0x14");                                     // 0x0075f4c5    83c414
    asm("ret");                                                              // 0x0075f4c8    c3
    asm("_jmp_addr_0x0075f4c9:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x0075f4c9    8b542408
    asm("push               0x31");                                          // 0x0075f4cd    6a31
    asm("push               edx");                                           // 0x0075f4cf    52
    asm("mov.s              ecx, esi");                                      // 0x0075f4d0    8bce
    asm("call               ?VillagerGotoForest@Villager@@QAEIPAVForest@@W4VILLAGER_STATES@@@Z");                          // 0x0075f4d2    e849020000
    asm("pop                esi");                                           // 0x0075f4d7    5e
    asm("add                esp, 0x14");                                     // 0x0075f4d8    83c414
    asm("ret");                                                              // 0x0075f4db    c3
    asm("_jmp_addr_0x0075f4dc:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x0075f4dc    8b4c2404
    asm("push               0x35");                                          // 0x0075f4e0    6a35
    asm("push               esi");                                           // 0x0075f4e2    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075f4e3    8d442414
    asm("push               eax");                                           // 0x0075f4e7    50
    asm("call               _jmp_addr_0x00439360");                          // 0x0075f4e8    e8739ecdff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075f4ed    8b4c2408
    asm("push               eax");                                           // 0x0075f4f1    50
    asm("push               ecx");                                           // 0x0075f4f2    51
    asm("mov.s              ecx, esi");                                      // 0x0075f4f3    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x0075f4f5    e826e8e8ff
    asm("mov                eax, 0x00000001");                               // 0x0075f4fa    b801000000
    asm("pop                esi");                                           // 0x0075f4ff    5e
    asm("add                esp, 0x14");                                     // 0x0075f500    83c414
    asm("ret");                                                              // 0x0075f503    c3
    asm("_jmp_addr_0x0075f504:");
    asm("mov.s              ecx, esi");                                      // 0x0075f504    8bce
    asm("call               ?GotoStoragePitForDropOff@Villager@@QAEIXZ");    // 0x0075f506    e815a10000
    asm("pop                esi");                                           // 0x0075f50b    5e
    asm("add                esp, 0x14");                                     // 0x0075f50c    83c414
    asm("ret");                                                              // 0x0075f50f    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall DecideHowToGetWood__8VillagerFiPP9BigForestPP6Forest(struct Villager* this, const void* edx, int param_1, struct BigForest** param_2, struct Forest** param_3)
{
    asm("sub                esp, 0x1c");                                     // 0x0075f510    83ec1c
    asm("push               esi");                                           // 0x0075f513    56
    asm("push               edi");                                           // 0x0075f514    57
    asm("mov.s              esi, ecx");                                      // 0x0075f515    8bf1
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");            // 0x0075f517    c744241800000000
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x0075f51f    c744241c00000000
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");            // 0x0075f527    c744242000000000
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x0075f52f    e8dc29ffff
    asm("mov.s              edi, eax");                                      // 0x0075f534    8bf8
    asm("test               edi, edi");                                      // 0x0075f536    85ff
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3dc8e4]");        // 0x0075f538    a1e428da00
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x0075f53d    89442414
    asm("{disp8} je         _jmp_addr_0x0075f582");                          // 0x0075f541    743f
    asm("mov                edx, dword ptr [edi]");                          // 0x0075f543    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075f545    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x0075f547    ff92d4000000
    asm("test               eax, eax");                                      // 0x0075f54d    85c0
    asm("{disp8} je         _jmp_addr_0x0075f582");                          // 0x0075f54f    7431
    asm("mov                eax, dword ptr [edi]");                          // 0x0075f551    8b07
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075f553    8d4c2408
    asm("push               ecx");                                           // 0x0075f557    51
    asm("mov.s              ecx, edi");                                      // 0x0075f558    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x0075f55a    ff9004010000
    asm("mov                edx, dword ptr [eax]");                          // 0x0075f560    8b10
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x0075f562    89542418
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075f566    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x0075f569    894c241c
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x0075f56d    8b5008
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                   // 0x0075f570    89542420
    asm("mov                eax, dword ptr [edi]");                          // 0x0075f574    8b07
    asm("push               0x1");                                           // 0x0075f576    6a01
    asm("mov.s              ecx, edi");                                      // 0x0075f578    8bcf
    asm("call               dword ptr [eax + 0x98]");                        // 0x0075f57a    ff9098000000
    asm("{disp8} jmp        _jmp_addr_0x0075f5a7");                          // 0x0075f580    eb25
    asm("_jmp_addr_0x0075f582:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075f582    8b06
    asm("push               0x1");                                           // 0x0075f584    6a01
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x0075f586    8d4c241c
    asm("push               ecx");                                           // 0x0075f58a    51
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x0075f58b    8d5614
    asm("push               edx");                                           // 0x0075f58e    52
    asm("mov.s              ecx, esi");                                      // 0x0075f58f    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075f591    ff5048
    asm("mov.s              ecx, eax");                                      // 0x0075f594    8bc8
    asm("call               ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z");                          // 0x0075f596    e865f3fdff
    asm("mov                edx, dword ptr [eax]");                          // 0x0075f59b    8b10
    asm("push               0x1");                                           // 0x0075f59d    6a01
    asm("mov.s              ecx, eax");                                      // 0x0075f59f    8bc8
    asm("call               dword ptr [edx + 0x98]");                        // 0x0075f5a1    ff9298000000
    asm("_jmp_addr_0x0075f5a7:");
    asm("mov.s              ecx, esi");                                      // 0x0075f5a7    8bce
    asm("mov.s              edi, eax");                                      // 0x0075f5a9    8bf8
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x0075f5ab    e8401fffff
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");                   // 0x0075f5b0    8b442428
    asm("test               eax, eax");                                      // 0x0075f5b4    85c0
    asm("{disp8} je         _jmp_addr_0x0075f5e2");                          // 0x0075f5b6    742a
    asm("mov.s              ecx, esi");                                      // 0x0075f5b8    8bce
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x3f000000");            // 0x0075f5ba    c74424080000003f
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x0075f5c2    e8291fffff
    asm("movsx              eax, ax");                                       // 0x0075f5c7    0fbfc0
    asm("cmp.s              edi, eax");                                      // 0x0075f5ca    3bf8
    asm("{disp8} jbe        _jmp_addr_0x0075f5d8");                          // 0x0075f5cc    760a
    asm("{disp8} mov        dword ptr [esp + 0x28], 0x3f800000");            // 0x0075f5ce    c74424280000803f
    asm("{disp8} jmp        _jmp_addr_0x0075f633");                          // 0x0075f5d6    eb5b
    asm("_jmp_addr_0x0075f5d8:");
    asm("{disp8} mov        dword ptr [esp + 0x28], 0x00000000");            // 0x0075f5d8    c744242800000000
    asm("{disp8} jmp        _jmp_addr_0x0075f633");                          // 0x0075f5e0    eb51
    asm("_jmp_addr_0x0075f5e2:");
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x0075f5e2    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x0075f5e5    8bce
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x0075f5e7    e8041fffff
    asm("{disp32} mov       edx, dword ptr [edi + 0x00000268]");             // 0x0075f5ec    8b9768020000
    asm("movsx              ecx, ax");                                       // 0x0075f5f2    0fbfc8
    asm("{disp8} mov        dword ptr [esp + 0x28], ecx");                   // 0x0075f5f5    894c2428
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x0075f5f9    89542408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075f5fd    c744240c00000000
    asm("{disp8} fild       dword ptr [esp + 0x28]");                        // 0x0075f605    db442428
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0xf1100]");             // 0x0075f609    d80500a19900
    asm("{disp8} fild       qword ptr [esp + 0x08]");                        // 0x0075f60f    df6c2408
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0xf1100]");             // 0x0075f613    d80500a19900
    asm("fdivp              st(1), st");                                     // 0x0075f619    def9
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075f61b    d82d90a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x0075f621    d95c2428
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075f625    d90590a38a00
    asm("{disp8} fsub       dword ptr [esp + 0x28]");                        // 0x0075f62b    d8642428
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075f62f    d95c2408
    asm("_jmp_addr_0x0075f633:");
    asm("push               ebx");                                           // 0x0075f633    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x18]");                   // 0x0075f634    8b5c2418
    asm("push               ebx");                                           // 0x0075f638    53
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x0075f639    8d7e14
    asm("push               edi");                                           // 0x0075f63c    57
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                   // 0x0075f63d    8d4c2424
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                          // 0x0075f641    e88a66eaff
    asm("push               ecx");                                           // 0x0075f646    51
    asm("fstp               dword ptr [esp]");                               // 0x0075f647    d91c24
    asm("call               _GetDistanceModifier__6GUtilsFff@8");            // 0x0075f64a    e841fcfeff
    asm("{disp8} fmul       dword ptr [esp + 0x34]");                        // 0x0075f64f    d84c2434
    asm("mov                eax, dword ptr [esi]");                          // 0x0075f653    8b06
    asm("add                esp, 0x08");                                     // 0x0075f655    83c408
    asm("mov.s              ecx, esi");                                      // 0x0075f658    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x0075f65a    d95c242c
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075f65e    ff5048
    asm("test               eax, eax");                                      // 0x0075f661    85c0
    asm("{disp8} je         _jmp_addr_0x0075f68f");                          // 0x0075f663    742a
    asm("push               edi");                                           // 0x0075f665    57
    asm("mov.s              ecx, eax");                                      // 0x0075f666    8bc8
    asm("call               _jmp_addr_0x0073ec10");                          // 0x0075f668    e8a3f5fdff
    asm("mov.s              esi, eax");                                      // 0x0075f66d    8bf0
    asm("test               esi, esi");                                      // 0x0075f66f    85f6
    asm("{disp8} je         _jmp_addr_0x0075f68f");                          // 0x0075f671    741c
    asm("_jmp_addr_0x0075f673:");
    asm("push               ebx");                                           // 0x0075f673    53
    asm("push               edi");                                           // 0x0075f674    57
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075f675    8d4e14
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                          // 0x0075f678    e85366eaff
    asm("push               ecx");                                           // 0x0075f67d    51
    asm("fstp               dword ptr [esp]");                               // 0x0075f67e    d91c24
    asm("call               _GetDistanceModifier__6GUtilsFff@8");            // 0x0075f681    e80afcfeff
    asm("{disp8} fmul       dword ptr [esp + 0x14]");                        // 0x0075f686    d84c2414
    asm("add                esp, 0x08");                                     // 0x0075f68a    83c408
    asm("{disp8} jmp        _jmp_addr_0x0075f6a7");                          // 0x0075f68d    eb18
    asm("_jmp_addr_0x0075f68f:");
    asm("push               0x0");                                           // 0x0075f68f    6a00
    asm("push               ebx");                                           // 0x0075f691    53
    asm("push               edi");                                           // 0x0075f692    57
    asm("call               _jmp_addr_0x0053a1a0");                          // 0x0075f693    e808abddff
    asm("mov.s              esi, eax");                                      // 0x0075f698    8bf0
    asm("add                esp, 0x0c");                                     // 0x0075f69a    83c40c
    asm("test               esi, esi");                                      // 0x0075f69d    85f6
    asm("{disp8} jne        _jmp_addr_0x0075f673");                          // 0x0075f69f    75d2
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075f6a1    d90598a38a00
    asm("_jmp_addr_0x0075f6a7:");
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x0075f6a7    d944242c
    asm("pop                ebx");                                           // 0x0075f6ab    5b
    asm("fcomp              st(1)");                                         // 0x0075f6ac    d8d9
    asm("fnstsw             ax");                                            // 0x0075f6ae    dfe0
    asm("test               ah, 0x41");                                      // 0x0075f6b0    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075f6c4");                          // 0x0075f6b3    750f
    asm("pop                edi");                                           // 0x0075f6b5    5f
    asm("fstp               st(0)");                                         // 0x0075f6b6    ddd8
    asm("mov                eax, 0x00000001");                               // 0x0075f6b8    b801000000
    asm("pop                esi");                                           // 0x0075f6bd    5e
    asm("add                esp, 0x1c");                                     // 0x0075f6be    83c41c
    asm("ret                0x000c");                                        // 0x0075f6c1    c20c00
    asm("_jmp_addr_0x0075f6c4:");
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075f6c4    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075f6ca    dfe0
    asm("test               ah, 0x40");                                      // 0x0075f6cc    f6c440
    asm("{disp8} jne        _jmp_addr_0x0075f702");                          // 0x0075f6cf    7531
    asm("test               esi, esi");                                      // 0x0075f6d1    85f6
    asm("{disp8} je         _jmp_addr_0x0075f702");                          // 0x0075f6d3    742d
    asm("{disp8} mov        eax, dword ptr [esi + 0x38]");                   // 0x0075f6d5    8b4638
    asm("test               eax, eax");                                      // 0x0075f6d8    85c0
    asm("{disp8} je         _jmp_addr_0x0075f6ef");                          // 0x0075f6da    7413
    asm("{disp8} mov        ecx, dword ptr [esp + 0x2c]");                   // 0x0075f6dc    8b4c242c
    asm("pop                edi");                                           // 0x0075f6e0    5f
    asm("mov                dword ptr [ecx], eax");                          // 0x0075f6e1    8901
    asm("mov                eax, 0x00000002");                               // 0x0075f6e3    b802000000
    asm("pop                esi");                                           // 0x0075f6e8    5e
    asm("add                esp, 0x1c");                                     // 0x0075f6e9    83c41c
    asm("ret                0x000c");                                        // 0x0075f6ec    c20c00
    asm("_jmp_addr_0x0075f6ef:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x30]");                   // 0x0075f6ef    8b542430
    asm("pop                edi");                                           // 0x0075f6f3    5f
    asm("mov                dword ptr [edx], esi");                          // 0x0075f6f4    8932
    asm("mov                eax, 0x00000003");                               // 0x0075f6f6    b803000000
    asm("pop                esi");                                           // 0x0075f6fb    5e
    asm("add                esp, 0x1c");                                     // 0x0075f6fc    83c41c
    asm("ret                0x000c");                                        // 0x0075f6ff    c20c00
    asm("_jmp_addr_0x0075f702:");
    asm("pop                edi");                                           // 0x0075f702    5f
    asm("xor.s              eax, eax");                                      // 0x0075f703    33c0
    asm("pop                esi");                                           // 0x0075f705    5e
    asm("add                esp, 0x1c");                                     // 0x0075f706    83c41c
    asm("ret                0x000c");                                        // 0x0075f709    c20c00
    __builtin_unreachable();
}

bool32_t __fastcall ForesterGotoForest__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?CheckSatisfyWoodDesire@Villager@@QAEIXZ");      // 0x0075f710    e98bfdffff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall VillagerGotoForest__8VillagerFP6Forest15VILLAGER_STATES(struct Villager* this, const void* edx, struct Forest* param_1, enum VILLAGER_STATES param_2)
{
    asm("sub                esp, 0x18");                                     // 0x0075f720    83ec18
    asm("push               esi");                                           // 0x0075f723    56
    asm("push               edi");                                           // 0x0075f724    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x24]");                   // 0x0075f725    8b7c2424
    asm("mov.s              esi, ecx");                                      // 0x0075f729    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075f72b    8bcf
    asm("call               ?GetForestCentreTree@Forest@@QAEPAVTree@@XZ");   // 0x0075f72d    e8beb4ddff
    asm("test               eax, eax");                                      // 0x0075f732    85c0
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x0075f734    c744240800000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075f73c    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x0075f744    c744241000000000
    asm("{disp8} je         _jmp_addr_0x0075f770");                          // 0x0075f74c    7422
    asm("mov                edx, dword ptr [eax]");                          // 0x0075f74e    8b10
    asm("push               esi");                                           // 0x0075f750    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x0075f751    8d4c2418
    asm("push               ecx");                                           // 0x0075f755    51
    asm("mov.s              ecx, eax");                                      // 0x0075f756    8bc8
    asm("call               dword ptr [edx + 0x648]");                       // 0x0075f758    ff9248060000
    asm("mov                edx, dword ptr [eax]");                          // 0x0075f75e    8b10
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x0075f760    89542408
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075f764    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0075f767    894c240c
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x0075f76b    8b5008
    asm("{disp8} jmp        _jmp_addr_0x0075f783");                          // 0x0075f76e    eb13
    asm("_jmp_addr_0x0075f770:");
    asm("add                edi, 0x14");                                     // 0x0075f770    83c714
    asm("mov                eax, dword ptr [edi]");                          // 0x0075f773    8b07
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                   // 0x0075f775    8b4f04
    asm("{disp8} mov        edx, dword ptr [edi + 0x08]");                   // 0x0075f778    8b5708
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x0075f77b    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0075f77f    894c240c
    asm("_jmp_addr_0x0075f783:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");                   // 0x0075f783    8b442428
    asm("push               eax");                                           // 0x0075f787    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075f788    8d4c240c
    asm("push               ecx");                                           // 0x0075f78c    51
    asm("mov.s              ecx, esi");                                      // 0x0075f78d    8bce
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x0075f78f    89542418
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075f793    e8f830e9ff
    asm("test               eax, eax");                                      // 0x0075f798    85c0
    asm("{disp8} je         _jmp_addr_0x0075f7b8");                          // 0x0075f79a    741c
    asm("push               0x2f");                                          // 0x0075f79c    6a2f
    asm("push               0x0");                                           // 0x0075f79e    6a00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x0075f7a0    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x0075f7a6    e8e5d4e8ff
    asm("pop                edi");                                           // 0x0075f7ab    5f
    asm("mov                eax, 0x00000001");                               // 0x0075f7ac    b801000000
    asm("pop                esi");                                           // 0x0075f7b1    5e
    asm("add                esp, 0x18");                                     // 0x0075f7b2    83c418
    asm("ret                0x0008");                                        // 0x0075f7b5    c20800
    asm("_jmp_addr_0x0075f7b8:");
    asm("pop                edi");                                           // 0x0075f7b8    5f
    asm("xor.s              eax, eax");                                      // 0x0075f7b9    33c0
    asm("pop                esi");                                           // 0x0075f7bb    5e
    asm("add                esp, 0x18");                                     // 0x0075f7bc    83c418
    asm("ret                0x0008");                                        // 0x0075f7bf    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ForesterMoveToForest__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x44");                                     // 0x0075f7d0    83ec44
    asm("push               edi");                                           // 0x0075f7d3    57
    asm("mov.s              edi, ecx");                                      // 0x0075f7d4    8bf9
    asm("call               ?MoveToPos@Living@@QAEHXZ");                     // 0x0075f7d6    e895cae8ff
    asm("cmp                eax, 0x07");                                     // 0x0075f7db    83f807
    asm("{disp32} jne       _jmp_addr_0x0075f918");                          // 0x0075f7de    0f8534010000
    asm("cmp                byte ptr [edi + 0x5e], 0x02");                   // 0x0075f7e4    807f5e02
    asm("{disp32} jne       _jmp_addr_0x0075f918");                          // 0x0075f7e8    0f852a010000
    asm("push               ebx");                                           // 0x0075f7ee    53
    asm("push               ebp");                                           // 0x0075f7ef    55
    asm("xor.s              eax, eax");                                      // 0x0075f7f0    33c0
    asm("push               esi");                                           // 0x0075f7f2    56
    asm("{disp8} mov        word ptr [esp + 0x1c], -0x0200");                // 0x0075f7f3    66c744241c00fe
    asm("{disp8} mov        word ptr [esp + 0x1e], ax");                     // 0x0075f7fa    668944241e
    asm("{disp8} mov        word ptr [esp + 0x20], 0x0200");                 // 0x0075f7ff    66c74424200002
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x461c3c00");            // 0x0075f806    c7442410003c1c46
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075f80e    89442418
    asm("{disp8} lea        ebp, dword ptr [edi + 0x14]");                   // 0x0075f812    8d6f14
    asm("{disp8} lea        ebx, dword ptr [esp + 0x1c]");                   // 0x0075f815    8d5c241c
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000003");            // 0x0075f819    c744241403000000
    asm("_jmp_addr_0x0075f821:");
    asm("{disp8} mov        ax, word ptr [edi + 0x5c]");                     // 0x0075f821    668b475c
    asm("xor.s              ecx, ecx");                                      // 0x0075f825    33c9
    asm("mov                cx, word ptr [ebx]");                            // 0x0075f827    668b0b
    asm("add.s              cx, ax");                                        // 0x0075f82a    6603c8
    asm("push               0x41200000");                                    // 0x0075f82d    6800002041
    asm("{disp8} lea        edx, dword ptr [esp + 0x34]");                   // 0x0075f832    8d542434
    asm("push               ecx");                                           // 0x0075f836    51
    asm("push               edx");                                           // 0x0075f837    52
    asm("call               _jmp_addr_0x0074d6a0");                          // 0x0075f838    e863defeff
    asm("add                esp, 0x0c");                                     // 0x0075f83d    83c40c
    asm("push               eax");                                           // 0x0075f840    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x28]");                   // 0x0075f841    8d442428
    asm("push               eax");                                           // 0x0075f845    50
    asm("mov.s              ecx, ebp");                                      // 0x0075f846    8bcd
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x0075f848    e8d35ceaff
    asm("push               0x0");                                           // 0x0075f84d    6a00
    asm("push               0x009d96e0");                                    // 0x0075f84f    68e0969d00
    asm("push               0x009c7f50");                                    // 0x0075f854    68507f9c00
    asm("push               0x0");                                           // 0x0075f859    6a00
    asm("push               0x0");                                           // 0x0075f85b    6a00
    asm("push               0x6");                                           // 0x0075f85d    6a06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                   // 0x0075f85f    8d4c243c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x0075f863    e8584deaff
    asm("push               eax");                                           // 0x0075f868    50
    asm("call               ___RTDynamicCast");                              // 0x0075f869    e8ab610600
    asm("mov.s              esi, eax");                                      // 0x0075f86e    8bf0
    asm("add                esp, 0x14");                                     // 0x0075f870    83c414
    asm("test               esi, esi");                                      // 0x0075f873    85f6
    asm("{disp8} je         _jmp_addr_0x0075f8e3");                          // 0x0075f875    746c
    asm("_jmp_addr_0x0075f877:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075f877    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075f879    8bce
    asm("call               dword ptr [edx + 0x86c]");                       // 0x0075f87b    ff926c080000
    asm("test               eax, eax");                                      // 0x0075f881    85c0
    asm("{disp8} je         _jmp_addr_0x0075f8ba");                          // 0x0075f883    7435
    asm("mov                edx, dword ptr [esi]");                          // 0x0075f885    8b16
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0075f887    8d442424
    asm("push               eax");                                           // 0x0075f88b    50
    asm("push               edi");                                           // 0x0075f88c    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x44]");                   // 0x0075f88d    8d442444
    asm("push               eax");                                           // 0x0075f891    50
    asm("mov.s              ecx, esi");                                      // 0x0075f892    8bce
    asm("call               dword ptr [edx + 0x648]");                       // 0x0075f894    ff9248060000
    asm("push               eax");                                           // 0x0075f89a    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075f89b    e8d0d4feff
    asm("{disp8} fcom       dword ptr [esp + 0x18]");                        // 0x0075f8a0    d8542418
    asm("add                esp, 0x08");                                     // 0x0075f8a4    83c408
    asm("fnstsw             ax");                                            // 0x0075f8a7    dfe0
    asm("test               ah, 0x01");                                      // 0x0075f8a9    f6c401
    asm("{disp8} je         _jmp_addr_0x0075f8b8");                          // 0x0075f8ac    740a
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075f8ae    d95c2410
    asm("{disp8} mov        dword ptr [esp + 0x18], esi");                   // 0x0075f8b2    89742418
    asm("{disp8} jmp        _jmp_addr_0x0075f8ba");                          // 0x0075f8b6    eb02
    asm("_jmp_addr_0x0075f8b8:");
    asm("fstp               st(0)");                                         // 0x0075f8b8    ddd8
    asm("_jmp_addr_0x0075f8ba:");
    asm("push               0x0");                                           // 0x0075f8ba    6a00
    asm("push               0x009d96e0");                                    // 0x0075f8bc    68e0969d00
    asm("push               0x009c7f50");                                    // 0x0075f8c1    68507f9c00
    asm("push               0x0");                                           // 0x0075f8c6    6a00
    asm("push               esi");                                           // 0x0075f8c8    56
    asm("push               0x6");                                           // 0x0075f8c9    6a06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                   // 0x0075f8cb    8d4c243c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x0075f8cf    e8ec4ceaff
    asm("push               eax");                                           // 0x0075f8d4    50
    asm("call               ___RTDynamicCast");                              // 0x0075f8d5    e83f610600
    asm("mov.s              esi, eax");                                      // 0x0075f8da    8bf0
    asm("add                esp, 0x14");                                     // 0x0075f8dc    83c414
    asm("test               esi, esi");                                      // 0x0075f8df    85f6
    asm("{disp8} jne        _jmp_addr_0x0075f877");                          // 0x0075f8e1    7594
    asm("_jmp_addr_0x0075f8e3:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x0075f8e3    8b442414
    asm("add                ebx, 0x02");                                     // 0x0075f8e7    83c302
    asm("dec                eax");                                           // 0x0075f8ea    48
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x0075f8eb    89442414
    asm("{disp32} jne       _jmp_addr_0x0075f821");                          // 0x0075f8ef    0f852cffffff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x0075f8f5    8b4c2418
    asm("test               ecx, ecx");                                      // 0x0075f8f9    85c9
    asm("pop                esi");                                           // 0x0075f8fb    5e
    asm("pop                ebp");                                           // 0x0075f8fc    5d
    asm("pop                ebx");                                           // 0x0075f8fd    5b
    asm("{disp8} je         _jmp_addr_0x0075f918");                          // 0x0075f8fe    7418
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075f900    8b11
    asm("push               0x31");                                          // 0x0075f902    6a31
    asm("push               edi");                                           // 0x0075f904    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x44]");                   // 0x0075f905    8d442444
    asm("push               eax");                                           // 0x0075f909    50
    asm("call               dword ptr [edx + 0x648]");                       // 0x0075f90a    ff9248060000
    asm("push               eax");                                           // 0x0075f910    50
    asm("mov.s              ecx, edi");                                      // 0x0075f911    8bcf
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075f913    e8782fe9ff
    asm("_jmp_addr_0x0075f918:");
    asm("mov                eax, 0x00000001");                               // 0x0075f918    b801000000
    asm("pop                edi");                                           // 0x0075f91d    5f
    asm("add                esp, 0x44");                                     // 0x0075f91e    83c444
    asm("ret");                                                              // 0x0075f921    c3
    __builtin_unreachable();
}

bool32_t __fastcall ForesterArrivesAtForest__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x0075f930    83ec10
    asm("push               esi");                                           // 0x0075f933    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x0075f934    8d442404
    asm("mov.s              esi, ecx");                                      // 0x0075f938    8bf1
    asm("push               eax");                                           // 0x0075f93a    50
    asm("call               ?FindTreeNearVillager@Villager@@QAEIPAPAVTree@@@Z");                          // 0x0075f93b    e8c0030000
    asm("sub                eax, 0x00");                                     // 0x0075f940    83e800
    asm("{disp8} je         _jmp_addr_0x0075f9a8");                          // 0x0075f943    7463
    asm("dec                eax");                                           // 0x0075f945    48
    asm("{disp8} je         _jmp_addr_0x0075f97d");                          // 0x0075f946    7435
    asm("sub                eax, 0x09");                                     // 0x0075f948    83e809
    asm("{disp8} jne        _jmp_addr_0x0075f9c8");                          // 0x0075f94b    757b
    asm("{disp8} mov        cx, word ptr [esi + 0x5c]");                     // 0x0075f94d    668b4e5c
    asm("sub                cx, 0x0124");                                    // 0x0075f951    6681e92401
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");      // 0x0075f956    c7861801000000000000
    asm("push               ecx");                                           // 0x0075f960    51
    asm("mov.s              ecx, esi");                                      // 0x0075f961    8bce
    asm("call               @SetGameAngle__13MobileWallHugFUs@10");          // 0x0075f963    e828e1eaff
    asm("push               0x1");                                           // 0x0075f968    6a01
    asm("push               0x32");                                          // 0x0075f96a    6a32
    asm("mov.s              ecx, esi");                                      // 0x0075f96c    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x0075f96e    e84dd1e8ff
    asm("mov                eax, 0x00000001");                               // 0x0075f973    b801000000
    asm("pop                esi");                                           // 0x0075f978    5e
    asm("add                esp, 0x10");                                     // 0x0075f979    83c410
    asm("ret");                                                              // 0x0075f97c    c3
    asm("_jmp_addr_0x0075f97d:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x0075f97d    8b4c2404
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075f981    8b11
    asm("push               esi");                                           // 0x0075f983    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x0075f984    8d44240c
    asm("push               eax");                                           // 0x0075f988    50
    asm("call               dword ptr [edx + 0x648]");                       // 0x0075f989    ff9248060000
    asm("push               0x31");                                          // 0x0075f98f    6a31
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075f991    8d4c240c
    asm("push               ecx");                                           // 0x0075f995    51
    asm("mov.s              ecx, esi");                                      // 0x0075f996    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075f998    e8f32ee9ff
    asm("neg                eax");                                           // 0x0075f99d    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075f99f    1bc0
    asm("neg                eax");                                           // 0x0075f9a1    f7d8
    asm("pop                esi");                                           // 0x0075f9a3    5e
    asm("add                esp, 0x10");                                     // 0x0075f9a4    83c410
    asm("ret");                                                              // 0x0075f9a7    c3
    asm("_jmp_addr_0x0075f9a8:");
    asm("push               0x1");                                           // 0x0075f9a8    6a01
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x0075f9aa    8d5614
    asm("push               0x42480000");                                    // 0x0075f9ad    6800004842
    asm("push               edx");                                           // 0x0075f9b2    52
    asm("call               _jmp_addr_0x0053a1a0");                          // 0x0075f9b3    e8e8a7ddff
    asm("add                esp, 0x0c");                                     // 0x0075f9b8    83c40c
    asm("test               eax, eax");                                      // 0x0075f9bb    85c0
    asm("{disp8} je         _jmp_addr_0x0075f9c8");                          // 0x0075f9bd    7409
    asm("mov                edx, dword ptr [eax]");                          // 0x0075f9bf    8b10
    asm("push               0x0");                                           // 0x0075f9c1    6a00
    asm("mov.s              ecx, eax");                                      // 0x0075f9c3    8bc8
    asm("call               dword ptr [edx + 0xc]");                         // 0x0075f9c5    ff520c
    asm("_jmp_addr_0x0075f9c8:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075f9c8    8b06
    asm("push               0x34");                                          // 0x0075f9ca    6a34
    asm("mov.s              ecx, esi");                                      // 0x0075f9cc    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075f9ce    ff90e8080000
    asm("mov.s              ecx, esi");                                      // 0x0075f9d4    8bce
    asm("call               ?ForesterFinishedForestering@Villager@@QAEIXZ"); // 0x0075f9d6    e885010000
    asm("pop                esi");                                           // 0x0075f9db    5e
    asm("add                esp, 0x10");                                     // 0x0075f9dc    83c410
    asm("ret");                                                              // 0x0075f9df    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtBigForest__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x0075f9e0    83ec0c
    asm("push               ebx");                                           // 0x0075f9e3    53
    asm("push               esi");                                           // 0x0075f9e4    56
    asm("push               edi");                                           // 0x0075f9e5    57
    asm("mov.s              esi, ecx");                                      // 0x0075f9e6    8bf1
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x0075f9e8    e8031bffff
    asm("movsx              ebx, ax");                                       // 0x0075f9ed    0fbfd8
    asm("mov                eax, dword ptr [esi]");                          // 0x0075f9f0    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075f9f2    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075f9f4    ff5048
    asm("test               eax, eax");                                      // 0x0075f9f7    85c0
    asm("{disp8} je         _jmp_addr_0x0075fa68");                          // 0x0075f9f9    746d
    asm("test               ebx, ebx");                                      // 0x0075f9fb    85db
    asm("{disp8} je         _jmp_addr_0x0075fa68");                          // 0x0075f9fd    7469
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075f9ff    8d4e14
    asm("push               ecx");                                           // 0x0075fa02    51
    asm("mov.s              ecx, eax");                                      // 0x0075fa03    8bc8
    asm("call               _jmp_addr_0x0073ec10");                          // 0x0075fa05    e806f2fdff
    asm("test               eax, eax");                                      // 0x0075fa0a    85c0
    asm("{disp8} je         _jmp_addr_0x0075fa68");                          // 0x0075fa0c    745a
    asm("{disp8} mov        edi, dword ptr [eax + 0x38]");                   // 0x0075fa0e    8b7838
    asm("test               edi, edi");                                      // 0x0075fa11    85ff
    asm("{disp8} je         _jmp_addr_0x0075fa68");                          // 0x0075fa13    7453
    asm("push               esi");                                           // 0x0075fa15    56
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x0075fa16    8d542410
    asm("push               edx");                                           // 0x0075fa1a    52
    asm("mov.s              ecx, edi");                                      // 0x0075fa1b    8bcf
    asm("call               _jmp_addr_0x00439360");                          // 0x0075fa1d    e83e99cdff
    asm("mov                eax, dword ptr [esi]");                          // 0x0075fa22    8b06
    asm("push               0x0");                                           // 0x0075fa24    6a00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x0075fa26    8d4c2410
    asm("push               ecx");                                           // 0x0075fa2a    51
    asm("mov.s              ecx, esi");                                      // 0x0075fa2b    8bce
    asm("call               dword ptr [eax + 0x85c]");                       // 0x0075fa2d    ff905c080000
    asm("test               eax, eax");                                      // 0x0075fa33    85c0
    asm("{disp8} je         _jmp_addr_0x0075fa83");                          // 0x0075fa35    744c
    asm("mov                edx, dword ptr [edi]");                          // 0x0075fa37    8b17
    asm("push               0x0");                                           // 0x0075fa39    6a00
    asm("push               0x0");                                           // 0x0075fa3b    6a00
    asm("push               ebx");                                           // 0x0075fa3d    53
    asm("push               0x1");                                           // 0x0075fa3e    6a01
    asm("mov.s              ecx, edi");                                      // 0x0075fa40    8bcf
    asm("call               dword ptr [edx + 0xa0]");                        // 0x0075fa42    ff92a0000000
    asm("mov.s              ebx, eax");                                      // 0x0075fa48    8bd8
    asm("test               ebx, ebx");                                      // 0x0075fa4a    85db
    asm("{disp8} je         _jmp_addr_0x0075fa68");                          // 0x0075fa4c    741a
    asm("mov                eax, dword ptr [edi]");                          // 0x0075fa4e    8b07
    asm("mov.s              ecx, edi");                                      // 0x0075fa50    8bcf
    asm("call               dword ptr [eax + 0x820]");                       // 0x0075fa52    ff9020080000
    asm("push               eax");                                           // 0x0075fa58    50
    asm("push               ebx");                                           // 0x0075fa59    53
    asm("mov.s              ecx, esi");                                      // 0x0075fa5a    8bce
    asm("call               ?PickupWood@Villager@@QAEXFE@Z");                // 0x0075fa5c    e84f1affff
    asm("mov.s              ecx, esi");                                      // 0x0075fa61    8bce
    asm("call               ?GotWoodDecideWhatToDo@Villager@@QAEIXZ");       // 0x0075fa63    e8c8010000
    asm("_jmp_addr_0x0075fa68:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075fa68    8b16
    asm("push               0x000000a3");                                    // 0x0075fa6a    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x0075fa6f    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075fa71    ff92e8080000
    asm("pop                edi");                                           // 0x0075fa77    5f
    asm("pop                esi");                                           // 0x0075fa78    5e
    asm("mov                eax, 0x00000001");                               // 0x0075fa79    b801000000
    asm("pop                ebx");                                           // 0x0075fa7e    5b
    asm("add                esp, 0x0c");                                     // 0x0075fa7f    83c40c
    asm("ret");                                                              // 0x0075fa82    c3
    asm("_jmp_addr_0x0075fa83:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075fa83    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075fa85    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x0075fa87    ff92040b0000
    asm("mov.s              ecx, esi");                                      // 0x0075fa8d    8bce
    asm("push               eax");                                           // 0x0075fa8f    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075fa90    8d442410
    asm("push               eax");                                           // 0x0075fa94    50
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075fa95    e8f62de9ff
    asm("pop                edi");                                           // 0x0075fa9a    5f
    asm("pop                esi");                                           // 0x0075fa9b    5e
    asm("mov                eax, 0x00000001");                               // 0x0075fa9c    b801000000
    asm("pop                ebx");                                           // 0x0075faa1    5b
    asm("add                esp, 0x0c");                                     // 0x0075faa2    83c40c
    asm("ret");                                                              // 0x0075faa5    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtBigForestForBuilding__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall ForesterChopsTree__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x0075fac0    51
    asm("push               esi");                                           // 0x0075fac1    56
    asm("mov.s              esi, ecx");                                      // 0x0075fac2    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075fac4    8b8618010000
    asm("test               eax, eax");                                      // 0x0075faca    85c0
    asm("{disp8} jne        _jmp_addr_0x0075fb03");                          // 0x0075facc    7535
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x0075face    8d442404
    asm("push               eax");                                           // 0x0075fad2    50
    asm("call               ?FindTreeNearVillager@Villager@@QAEIPAPAVTree@@@Z");                          // 0x0075fad3    e828020000
    asm("test               eax, eax");                                      // 0x0075fad8    85c0
    asm("{disp8} je         _jmp_addr_0x0075fb03");                          // 0x0075fada    7427
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x0075fadc    8b4c2404
    asm("push               esi");                                           // 0x0075fae0    56
    asm("push               ecx");                                           // 0x0075fae1    51
    asm("call               _jmp_addr_0x005116a0");                          // 0x0075fae2    e8b91bdbff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x0075fae7    8b4c240c
    asm("add                esp, 0x08");                                     // 0x0075faeb    83c408
    asm("{disp32} mov       dword ptr [esi + 0x00000118], eax");             // 0x0075faee    898618010000
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075faf4    8b11
    asm("push               0x0");                                           // 0x0075faf6    6a00
    asm("call               dword ptr [edx + 0xc]");                         // 0x0075faf8    ff520c
    asm("mov                eax, 0x00000001");                               // 0x0075fafb    b801000000
    asm("pop                esi");                                           // 0x0075fb00    5e
    asm("pop                ecx");                                           // 0x0075fb01    59
    asm("ret");                                                              // 0x0075fb02    c3
    asm("_jmp_addr_0x0075fb03:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x0075fb03    8b8e18010000
    asm("test               ecx, ecx");                                      // 0x0075fb09    85c9
    asm("{disp8} je         _jmp_addr_0x0075fb1d");                          // 0x0075fb0b    7410
    asm("test               byte ptr [ecx + 0x24], 0x40");                   // 0x0075fb0d    f6412440
    asm("{disp8} je         _jmp_addr_0x0075fb1d");                          // 0x0075fb11    740a
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075fb13    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0075fb15    ff502c
    asm("cmp                eax, 0x01");                                     // 0x0075fb18    83f801
    asm("{disp8} je         _jmp_addr_0x0075fb33");                          // 0x0075fb1b    7416
    asm("_jmp_addr_0x0075fb1d:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075fb1d    8b16
    asm("push               0x34");                                          // 0x0075fb1f    6a34
    asm("mov.s              ecx, esi");                                      // 0x0075fb21    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");      // 0x0075fb23    c7861801000000000000
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075fb2d    ff92e8080000
    asm("_jmp_addr_0x0075fb33:");
    asm("mov                eax, 0x00000001");                               // 0x0075fb33    b801000000
    asm("pop                esi");                                           // 0x0075fb38    5e
    asm("pop                ecx");                                           // 0x0075fb39    59
    asm("ret");                                                              // 0x0075fb3a    c3
    __builtin_unreachable();
}

bool32_t __fastcall ForesterChopsTreeForBuilding__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075fb40    8b01
    asm("push               0x000000a3");                                    // 0x0075fb42    68a3000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075fb47    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075fb4d    b801000000
    asm("ret");                                                              // 0x0075fb52    c3
    __builtin_unreachable();
}

bool32_t __fastcall ForesterFinishedForestering__8VillagerFv(struct Villager* this)
{
    asm("cmp                word ptr [ecx + 0x000000f6], 0x00");             // 0x0075fb60    6683b9f600000000
    asm("{disp8} jle        _jmp_addr_0x0075fb6f");                          // 0x0075fb68    7e05
    asm("{disp32} jmp       ?GotWoodDecideWhatToDo@Villager@@QAEIXZ");       // 0x0075fb6a    e9c1000000
    asm("_jmp_addr_0x0075fb6f:");
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075fb6f    8b01
    asm("push               0x000000a3");                                    // 0x0075fb71    68a3000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075fb76    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075fb7c    b801000000
    asm("ret");                                                              // 0x0075fb81    c3
    __builtin_unreachable();
}

bool32_t __fastcall TakeWoodFromTreeForBuilding__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?TakeWoodFromTree@Villager@@QAEIXZ");            // 0x0075fb90    e92b000000
    __builtin_unreachable();
}

bool32_t __fastcall TakeWoodFromPotForBuilding__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?TakeWoodFromPot@Villager@@QAEIXZ");             // 0x0075fba0    e90b000000
    __builtin_unreachable();
}

bool32_t __fastcall TakeWoodFromPot__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall TakeWoodFromTree__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x0075fbc0    51
    asm("push               esi");                                           // 0x0075fbc1    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x0075fbc2    8d442404
    asm("mov.s              esi, ecx");                                      // 0x0075fbc6    8bf1
    asm("push               eax");                                           // 0x0075fbc8    50
    asm("call               ?FindTreeNearVillager@Villager@@QAEIPAPAVTree@@@Z");                          // 0x0075fbc9    e832010000
    asm("test               eax, eax");                                      // 0x0075fbce    85c0
    asm("mov                edx, dword ptr [esi]");                          // 0x0075fbd0    8b16
    asm("{disp8} je         _jmp_addr_0x0075fc0c");                          // 0x0075fbd2    7438
    asm("mov.s              ecx, esi");                                      // 0x0075fbd4    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0075fbd6    ff521c
    asm("test               eax, eax");                                      // 0x0075fbd9    85c0
    asm("{disp8} je         _jmp_addr_0x0075fbf6");                          // 0x0075fbdb    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x0075fbdd    8b16
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0075fbdf    8d4614
    asm("push               eax");                                           // 0x0075fbe2    50
    asm("push               0x3f000000");                                    // 0x0075fbe3    680000003f
    asm("push               0x1");                                           // 0x0075fbe8    6a01
    asm("mov.s              ecx, esi");                                      // 0x0075fbea    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0075fbec    ff521c
    asm("mov.s              ecx, eax");                                      // 0x0075fbef    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x0075fbf1    e8fa84d6ff
    asm("_jmp_addr_0x0075fbf6:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075fbf6    8b06
    asm("push               0x31");                                          // 0x0075fbf8    6a31
    asm("mov.s              ecx, esi");                                      // 0x0075fbfa    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075fbfc    ff90e8080000
    asm("mov.s              ecx, esi");                                      // 0x0075fc02    8bce
    asm("call               ?ForesterArrivesAtForest@Villager@@QAEIXZ");     // 0x0075fc04    e827fdffff
    asm("pop                esi");                                           // 0x0075fc09    5e
    asm("pop                ecx");                                           // 0x0075fc0a    59
    asm("ret");                                                              // 0x0075fc0b    c3
    asm("_jmp_addr_0x0075fc0c:");
    asm("push               0x000000a3");                                    // 0x0075fc0c    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x0075fc11    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075fc13    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075fc19    b801000000
    asm("pop                esi");                                           // 0x0075fc1e    5e
    asm("pop                ecx");                                           // 0x0075fc1f    59
    asm("ret");                                                              // 0x0075fc20    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GotWoodDecideWhatToDo__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075fc30    56
    asm("mov.s              esi, ecx");                                      // 0x0075fc31    8bf1
    asm("cmp                word ptr [esi + 0x000000f6], 0x00");             // 0x0075fc33    6683bef600000000
    asm("{disp32} jbe       _jmp_addr_0x0075fcdc");                          // 0x0075fc3b    0f869b000000
    asm("xor.s              eax, eax");                                      // 0x0075fc41    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x0075fc43    668b86e0000000
    asm("shr                eax, 9");                                        // 0x0075fc4a    c1e809
    asm("test               al, 0x01");                                      // 0x0075fc4d    a801
    asm("{disp8} je         _jmp_addr_0x0075fc6c");                          // 0x0075fc4f    741b
    asm("xor.s              eax, eax");                                      // 0x0075fc51    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");               // 0x0075fc53    8a86f2000000
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x0075fc59    8d0cc500000000
    asm("sub.s              ecx, eax");                                      // 0x0075fc60    2bc8
    asm("cmp                dword ptr [ecx * 0x4 + 0x0099a204], 0x01");      // 0x0075fc62    833c8d04a2990001
    asm("{disp8} je         _jmp_addr_0x0075fcdc");                          // 0x0075fc6a    7470
    asm("_jmp_addr_0x0075fc6c:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000fc]");             // 0x0075fc6c    8b86fc000000
    asm("test               eax, eax");                                      // 0x0075fc72    85c0
    asm("{disp8} je         _jmp_addr_0x0075fcbe");                          // 0x0075fc74    7448
    asm("mov                edx, dword ptr [esi]");                          // 0x0075fc76    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075fc78    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075fc7a    ff5248
    asm("test               eax, eax");                                      // 0x0075fc7d    85c0
    asm("{disp8} je         _jmp_addr_0x0075fcbe");                          // 0x0075fc7f    743d
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000fc]");             // 0x0075fc81    8b8efc000000
    asm("push               ecx");                                           // 0x0075fc87    51
    asm("mov.s              ecx, eax");                                      // 0x0075fc88    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x0075fc8a    e871d2fdff
    asm("test               eax, eax");                                      // 0x0075fc8f    85c0
    asm("{disp8} je         _jmp_addr_0x0075fcbe");                          // 0x0075fc91    742b
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000fc]");             // 0x0075fc93    8b8efc000000
    asm("call               _jmp_addr_0x0043bc60");                          // 0x0075fc99    e8c2bfcdff
    asm("test               eax, eax");                                      // 0x0075fc9e    85c0
    asm("{disp8} jne        _jmp_addr_0x0075fcab");                          // 0x0075fca0    7509
    asm("cmp                byte ptr [esi + 0x000000f2], 0x04");             // 0x0075fca2    80bef200000004
    asm("{disp8} jne        _jmp_addr_0x0075fcbe");                          // 0x0075fca9    7513
    asm("_jmp_addr_0x0075fcab:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000fc]");             // 0x0075fcab    8b86fc000000
    asm("push               eax");                                           // 0x0075fcb1    50
    asm("mov.s              ecx, esi");                                      // 0x0075fcb2    8bce
    asm("call               ?GotoBuildingSite@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x0075fcb4    e8478dffff
    asm("cmp                eax, 0x01");                                     // 0x0075fcb9    83f801
    asm("{disp8} je         _jmp_addr_0x0075fceb");                          // 0x0075fcbc    742d
    asm("_jmp_addr_0x0075fcbe:");
    asm("mov.s              ecx, esi");                                      // 0x0075fcbe    8bce
    asm("call               ?CheckNeededForBuilding@Villager@@QAEIXZ");      // 0x0075fcc0    e87b86ffff
    asm("test               eax, eax");                                      // 0x0075fcc5    85c0
    asm("{disp8} jne        _jmp_addr_0x0075fceb");                          // 0x0075fcc7    7522
    asm("mov                eax, dword ptr [esi]");                          // 0x0075fcc9    8b06
    asm("push               0x1f");                                          // 0x0075fccb    6a1f
    asm("mov.s              ecx, esi");                                      // 0x0075fccd    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075fccf    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075fcd5    b801000000
    asm("pop                esi");                                           // 0x0075fcda    5e
    asm("ret");                                                              // 0x0075fcdb    c3
    asm("_jmp_addr_0x0075fcdc:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075fcdc    8b16
    asm("push               0x000000a3");                                    // 0x0075fcde    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x0075fce3    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075fce5    ff92e8080000
    asm("_jmp_addr_0x0075fceb:");
    asm("mov                eax, 0x00000001");                               // 0x0075fceb    b801000000
    asm("pop                esi");                                           // 0x0075fcf0    5e
    asm("ret");                                                              // 0x0075fcf1    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FindTreeNearVillager__8VillagerFPP4Tree(struct Villager* this, const void* edx, struct Tree* * param_1)
{
    asm("sub                esp, 0x28");                                     // 0x0075fd00    83ec28
    asm("push               ebx");                                           // 0x0075fd03    53
    asm("push               ebp");                                           // 0x0075fd04    55
    asm("push               esi");                                           // 0x0075fd05    56
    asm("push               edi");                                           // 0x0075fd06    57
    asm("mov.s              edi, ecx");                                      // 0x0075fd07    8bf9
    asm("{disp8} lea        ebp, dword ptr [edi + 0x14]");                   // 0x0075fd09    8d6f14
    asm("mov.s              eax, ebp");                                      // 0x0075fd0c    8bc5
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075fd0e    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075fd10    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075fd13    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                   // 0x0075fd16    89442428
    asm("mov                eax, 0x00000001");                               // 0x0075fd1a    b801000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x47c34f80");            // 0x0075fd1f    c7442410804fc347
    asm("xor.s              ebx, ebx");                                      // 0x0075fd27    33db
    asm("{disp8} mov        dword ptr [esp + 0x20], ecx");                   // 0x0075fd29    894c2420
    asm("{disp8} mov        dword ptr [esp + 0x24], edx");                   // 0x0075fd2d    89542424
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x0075fd31    8944241c
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075fd35    89442418
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000009");            // 0x0075fd39    c744241409000000
    asm("_jmp_addr_0x0075fd41:");
    asm("push               0x0");                                           // 0x0075fd41    6a00
    asm("push               0x009d96e0");                                    // 0x0075fd43    68e0969d00
    asm("push               0x009c7f50");                                    // 0x0075fd48    68507f9c00
    asm("push               0x0");                                           // 0x0075fd4d    6a00
    asm("push               0x0");                                           // 0x0075fd4f    6a00
    asm("push               0x6");                                           // 0x0075fd51    6a06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x38]");                   // 0x0075fd53    8d4c2438
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x0075fd57    e86448eaff
    asm("push               eax");                                           // 0x0075fd5c    50
    asm("call               ___RTDynamicCast");                              // 0x0075fd5d    e8b75c0600
    asm("mov.s              esi, eax");                                      // 0x0075fd62    8bf0
    asm("add                esp, 0x14");                                     // 0x0075fd64    83c414
    asm("test               esi, esi");                                      // 0x0075fd67    85f6
    asm("{disp8} je         _jmp_addr_0x0075fda4");                          // 0x0075fd69    7439
    asm("test               byte ptr [esi + 0x25], 0x40");                   // 0x0075fd6b    f6462540
    asm("{disp8} jne        _jmp_addr_0x0075fda4");                          // 0x0075fd6f    7533
    asm("mov                edx, dword ptr [esi]");                          // 0x0075fd71    8b16
    asm("push               edi");                                           // 0x0075fd73    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                   // 0x0075fd74    8d442430
    asm("push               eax");                                           // 0x0075fd78    50
    asm("mov.s              ecx, esi");                                      // 0x0075fd79    8bce
    asm("call               dword ptr [edx + 0x648]");                       // 0x0075fd7b    ff9248060000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x2c]");                   // 0x0075fd81    8d4c242c
    asm("push               ecx");                                           // 0x0075fd85    51
    asm("push               ebp");                                           // 0x0075fd86    55
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075fd87    e8e4cffeff
    asm("{disp8} fcom       dword ptr [esp + 0x18]");                        // 0x0075fd8c    d8542418
    asm("add                esp, 0x08");                                     // 0x0075fd90    83c408
    asm("fnstsw             ax");                                            // 0x0075fd93    dfe0
    asm("test               ah, 0x01");                                      // 0x0075fd95    f6c401
    asm("{disp8} je         _jmp_addr_0x0075fda2");                          // 0x0075fd98    7408
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075fd9a    d95c2410
    asm("mov.s              ebx, esi");                                      // 0x0075fd9e    8bde
    asm("{disp8} jmp        _jmp_addr_0x0075fda4");                          // 0x0075fda0    eb02
    asm("_jmp_addr_0x0075fda2:");
    asm("fstp               st(0)");                                         // 0x0075fda2    ddd8
    asm("_jmp_addr_0x0075fda4:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x0075fda4    8d542418
    asm("push               edx");                                           // 0x0075fda8    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                   // 0x0075fda9    8d442420
    asm("push               eax");                                           // 0x0075fdad    50
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");        // 0x0075fdae    e82ddafeff
    asm("add                esp, 0x08");                                     // 0x0075fdb3    83c408
    asm("push               eax");                                           // 0x0075fdb6    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                   // 0x0075fdb7    8d4c2424
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");            // 0x0075fdbb    e8b056eaff
    asm("dec                dword ptr [esp + 0x14]");                        // 0x0075fdc0    ff4c2414
    asm("{disp32} jne       _jmp_addr_0x0075fd41");                          // 0x0075fdc4    0f8577ffffff
    asm("test               ebx, ebx");                                      // 0x0075fdca    85db
    asm("{disp8} je         _jmp_addr_0x0075fe05");                          // 0x0075fdcc    7437
    asm("{disp8} mov        ecx, dword ptr [esp + 0x3c]");                   // 0x0075fdce    8b4c243c
    asm("mov                dword ptr [ecx], ebx");                          // 0x0075fdd2    8919
    asm("mov                edx, dword ptr [ebx]");                          // 0x0075fdd4    8b13
    asm("push               edi");                                           // 0x0075fdd6    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                   // 0x0075fdd7    8d442430
    asm("push               eax");                                           // 0x0075fddb    50
    asm("mov.s              ecx, ebx");                                      // 0x0075fddc    8bcb
    asm("call               dword ptr [edx + 0x648]");                       // 0x0075fdde    ff9248060000
    asm("mov                edx, dword ptr [edi]");                          // 0x0075fde4    8b17
    asm("{disp8} lea        eax, dword ptr [esp + 0x2c]");                   // 0x0075fde6    8d44242c
    asm("push               eax");                                           // 0x0075fdea    50
    asm("mov.s              ecx, edi");                                      // 0x0075fdeb    8bcf
    asm("call               dword ptr [edx + 0x6b4]");                       // 0x0075fded    ff92b4060000
    asm("neg                eax");                                           // 0x0075fdf3    f7d8
    asm("pop                edi");                                           // 0x0075fdf5    5f
    asm("sbb.s              eax, eax");                                      // 0x0075fdf6    1bc0
    asm("pop                esi");                                           // 0x0075fdf8    5e
    asm("and                eax, 0x09");                                     // 0x0075fdf9    83e009
    asm("pop                ebp");                                           // 0x0075fdfc    5d
    asm("inc                eax");                                           // 0x0075fdfd    40
    asm("pop                ebx");                                           // 0x0075fdfe    5b
    asm("add                esp, 0x28");                                     // 0x0075fdff    83c428
    asm("ret                0x0004");                                        // 0x0075fe02    c20400
    asm("_jmp_addr_0x0075fe05:");
    asm("pop                edi");                                           // 0x0075fe05    5f
    asm("pop                esi");                                           // 0x0075fe06    5e
    asm("pop                ebp");                                           // 0x0075fe07    5d
    asm("xor.s              eax, eax");                                      // 0x0075fe08    33c0
    asm("pop                ebx");                                           // 0x0075fe0a    5b
    asm("add                esp, 0x28");                                     // 0x0075fe0b    83c428
    asm("ret                0x0004");                                        // 0x0075fe0e    c20400
    __builtin_unreachable();
}

bool32_t __fastcall ExitForesting__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("{disp32} mov       dword ptr [ecx + 0x00000118], 0x00000000");      // 0x0075fe20    c7811801000000000000
    asm("mov                eax, 0x00000001");                               // 0x0075fe2a    b801000000
    asm("ret                0x0004");                                        // 0x0075fe2f    c20400
    __builtin_unreachable();
}
