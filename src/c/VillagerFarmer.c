#include "Villager.h"

const float villager_farmer_num_days_in_year_0x0099a958 = 365.25f;
const float villager_farmer_seconds_in_day_0x0099a95c = 86400.0f;

float villager_farmer_seconds_in_year_0x00db9dfc;

void __cdecl globl_ct_0x00759b90(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00759b90    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00759b96    b001
    asm("test               al, cl");                                        // 0x00759b98    84c8
    asm("{disp8} jne        _jmp_addr_0x00759ba4");                          // 0x00759b9a    7508
    asm("or.s               cl, al");                                        // 0x00759b9c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x00759b9e    880d34c9fa00
    asm("_jmp_addr_0x00759ba4:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00759bb0");   // 0x00759ba4    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00759bb0(void)
{
    asm("push               0x00407870");                                    // 0x00759bb0    6870784000
    asm("call               _atexit");                                       // 0x00759bb5    e857bf0600
    asm("pop                ecx");                                           // 0x00759bba    59
    asm("ret");                                                              // 0x00759bbb    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00759bc0(void)
{
    asm("{disp32} jmp       _FUN_00759bd0__8VillagerFv");                    // 0x00759bc0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00759bd0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_farmer_seconds_in_day_0x0099a95c]");   // 0x00759bd0    d9055ca99900
    asm("{disp32} fmul dword ptr [_villager_farmer_num_days_in_year_0x0099a958]"); // 0x00759bd6    d80d58a99900
    asm("{disp32} fstp dword ptr [_villager_farmer_seconds_in_year_0x00db9dfc]");  // 0x00759bdc    d91dfc9ddb00
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FarmerLookForField__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall VillagerBecomesFarmer__8VillagerFP5Field(struct Villager* this, const void* edx, struct Field* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00759c00    8b442404
    asm("test               eax, eax");                                      // 0x00759c04    85c0
    asm("push               esi");                                           // 0x00759c06    56
    asm("mov.s              esi, ecx");                                      // 0x00759c07    8bf1
    asm("{disp8} jne        _jmp_addr_0x00759c25");                          // 0x00759c09    751a
    asm("mov                eax, dword ptr [esi]");                          // 0x00759c0b    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00759c0d    ff5048
    asm("test               eax, eax");                                      // 0x00759c10    85c0
    asm("{disp8} je         _jmp_addr_0x00759c33");                          // 0x00759c12    741f
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00759c14    8d4c2408
    asm("push               ecx");                                           // 0x00759c18    51
    asm("push               esi");                                           // 0x00759c19    56
    asm("mov.s              ecx, eax");                                      // 0x00759c1a    8bc8
    asm("call               _jmp_addr_0x0073e870");                          // 0x00759c1c    e84f4cfeff
    asm("test               eax, eax");                                      // 0x00759c21    85c0
    asm("{disp8} je         _jmp_addr_0x00759c33");                          // 0x00759c23    740e
    asm("_jmp_addr_0x00759c25:");
    asm("push               0x0");                                           // 0x00759c25    6a00
    asm("push               eax");                                           // 0x00759c27    50
    asm("mov.s              ecx, esi");                                      // 0x00759c28    8bce
    asm("call               ?SetFarmerGotoField@Villager@@QAEIPAVField@@H@Z");                          // 0x00759c2a    e811000000
    asm("pop                esi");                                           // 0x00759c2f    5e
    asm("ret                0x0004");                                        // 0x00759c30    c20400
    asm("_jmp_addr_0x00759c33:");
    asm("xor.s              eax, eax");                                      // 0x00759c33    33c0
    asm("pop                esi");                                           // 0x00759c35    5e
    asm("ret                0x0004");                                        // 0x00759c36    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetFarmerGotoField__8VillagerFP5Fieldi(struct Villager* this, const void* edx, struct Field* param_1, int param_2)
{
    asm("sub                esp, 0x24");                                     // 0x00759c40    83ec24
    asm("push               esi");                                           // 0x00759c43    56
    asm("mov.s              esi, ecx");                                      // 0x00759c44    8bf1
    asm("push               edi");                                           // 0x00759c46    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x30]");                   // 0x00759c47    8b7c2430
    asm("mov                eax, dword ptr [edi]");                          // 0x00759c4b    8b07
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00759c4d    8d4c2414
    asm("push               ecx");                                           // 0x00759c51    51
    asm("mov.s              ecx, edi");                                      // 0x00759c52    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x00759c54    ff9004010000
    asm("xor.s              ecx, ecx");                                      // 0x00759c5a    33c9
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00759c5c    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00759c60    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00759c64    894c2410
    asm("mov                edx, dword ptr [eax]");                          // 0x00759c68    8b10
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x00759c6a    89542408
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x00759c6e    8b4804
    asm("{disp8} mov        edx, dword ptr [esp + 0x34]");                   // 0x00759c71    8b542434
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00759c75    894c240c
    asm("{disp8} fld        dword ptr [eax + 0x08]");                        // 0x00759c79    d94008
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00759c7c    d95c2410
    asm("push               edx");                                           // 0x00759c80    52
    asm("mov.s              ecx, edi");                                      // 0x00759c81    8bcf
    asm("call               ?GetFieldActivity@Field@@QAEHH@Z");              // 0x00759c83    e8c8f6dcff
    asm("dec                eax");                                           // 0x00759c88    48
    asm("{disp8} je         _jmp_addr_0x00759cc8");                          // 0x00759c89    743d
    asm("dec                eax");                                           // 0x00759c8b    48
    asm("{disp8} je         _jmp_addr_0x00759c98");                          // 0x00759c8c    740a
    asm("pop                edi");                                           // 0x00759c8e    5f
    asm("xor.s              eax, eax");                                      // 0x00759c8f    33c0
    asm("pop                esi");                                           // 0x00759c91    5e
    asm("add                esp, 0x24");                                     // 0x00759c92    83c424
    asm("ret                0x0008");                                        // 0x00759c95    c20800
    asm("_jmp_addr_0x00759c98:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00759c98    8b06
    asm("push               0x000000a3");                                    // 0x00759c9a    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759c9f    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00759ca1    ff90e8080000
    asm("push               0x43");                                          // 0x00759ca7    6a43
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00759ca9    8d4c240c
    asm("push               ecx");                                           // 0x00759cad    51
    asm("push               edi");                                           // 0x00759cae    57
    asm("mov.s              ecx, esi");                                      // 0x00759caf    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");             // 0x00759cb1    89be18010000
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00759cb7    e86440e9ff
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00759cbc    8b8e18010000
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x00759cc2    8d542414
    asm("{disp8} jmp        _jmp_addr_0x00759cf6");                          // 0x00759cc6    eb2e
    asm("_jmp_addr_0x00759cc8:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00759cc8    8b16
    asm("push               0x000000a3");                                    // 0x00759cca    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759ccf    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759cd1    ff92e8080000
    asm("push               0x43");                                          // 0x00759cd7    6a43
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x00759cd9    8d44240c
    asm("push               eax");                                           // 0x00759cdd    50
    asm("push               edi");                                           // 0x00759cde    57
    asm("mov.s              ecx, esi");                                      // 0x00759cdf    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");             // 0x00759ce1    89be18010000
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00759ce7    e83440e9ff
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00759cec    8b8e18010000
    asm("{disp8} lea        edx, dword ptr [esp + 0x20]");                   // 0x00759cf2    8d542420
    asm("_jmp_addr_0x00759cf6:");
    asm("push               edx");                                           // 0x00759cf6    52
    asm("call               _jmp_addr_0x00528970");                          // 0x00759cf7    e874ecdcff
    asm("mov                ecx, dword ptr [eax]");                          // 0x00759cfc    8b08
    asm("add                esi, 0x0000011c");                               // 0x00759cfe    81c61c010000
    asm("mov                dword ptr [esi], ecx");                          // 0x00759d04    890e
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00759d06    8b5004
    asm("{disp8} mov        dword ptr [esi + 0x04], edx");                   // 0x00759d09    895604
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00759d0c    8b4008
    asm("{disp8} mov        dword ptr [esi + 0x08], eax");                   // 0x00759d0f    894608
    asm("pop                edi");                                           // 0x00759d12    5f
    asm("mov                eax, 0x00000001");                               // 0x00759d13    b801000000
    asm("pop                esi");                                           // 0x00759d18    5e
    asm("add                esp, 0x24");                                     // 0x00759d19    83c424
    asm("ret                0x0008");                                        // 0x00759d1c    c20800
    __builtin_unreachable();
}

bool32_t __fastcall FarmerArrivesAtFarm__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x24");                                     // 0x00759d20    83ec24
    asm("push               esi");                                           // 0x00759d23    56
    asm("push               edi");                                           // 0x00759d24    57
    asm("mov.s              esi, ecx");                                      // 0x00759d25    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00759d27    8b8e18010000
    asm("push               0x0");                                           // 0x00759d2d    6a00
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x00759d2f    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00759d37    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00759d3f    c744241400000000
    asm("call               ?GetFieldActivity@Field@@QAEHH@Z");              // 0x00759d47    e804f6dcff
    asm("dec                eax");                                           // 0x00759d4c    48
    asm("{disp32} je        _jmp_addr_0x00759dd6");                          // 0x00759d4d    0f8483000000
    asm("dec                eax");                                           // 0x00759d53    48
    asm("{disp8} jne        _jmp_addr_0x00759dbc");                          // 0x00759d54    7566
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00759d56    8b8e18010000
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x00759d5c    8d442408
    asm("push               eax");                                           // 0x00759d60    50
    asm("push               esi");                                           // 0x00759d61    56
    asm("call               _jmp_addr_0x00529240");                          // 0x00759d62    e8d9f4dcff
    asm("test               eax, eax");                                      // 0x00759d67    85c0
    asm("{disp8} je         _jmp_addr_0x00759dbc");                          // 0x00759d69    7451
    asm("mov                edx, dword ptr [esi]");                          // 0x00759d6b    8b16
    asm("push               0x0");                                           // 0x00759d6d    6a00
    asm("{disp32} lea       edi, dword ptr [esi + 0x0000011c]");             // 0x00759d6f    8dbe1c010000
    asm("push               edi");                                           // 0x00759d75    57
    asm("mov.s              ecx, esi");                                      // 0x00759d76    8bce
    asm("call               dword ptr [edx + 0x85c]");                       // 0x00759d78    ff925c080000
    asm("test               eax, eax");                                      // 0x00759d7e    85c0
    asm("{disp32} je        _jmp_addr_0x00759e2a");                          // 0x00759d80    0f84a4000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00759d86    8b8e18010000
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x00759d8c    8d442414
    asm("push               eax");                                           // 0x00759d90    50
    asm("call               _jmp_addr_0x00528970");                          // 0x00759d91    e8daebdcff
    asm("mov                ecx, dword ptr [eax]");                          // 0x00759d96    8b08
    asm("mov                dword ptr [edi], ecx");                          // 0x00759d98    890f
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00759d9a    8b5004
    asm("{disp8} mov        dword ptr [edi + 0x04], edx");                   // 0x00759d9d    895704
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00759da0    8b4008
    asm("push               0x1");                                           // 0x00759da3    6a01
    asm("push               0x45");                                          // 0x00759da5    6a45
    asm("mov.s              ecx, esi");                                      // 0x00759da7    8bce
    asm("{disp8} mov        dword ptr [edi + 0x08], eax");                   // 0x00759da9    894708
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x00759dac    e80f2de9ff
    asm("pop                edi");                                           // 0x00759db1    5f
    asm("mov                eax, 0x00000001");                               // 0x00759db2    b801000000
    asm("pop                esi");                                           // 0x00759db7    5e
    asm("add                esp, 0x24");                                     // 0x00759db8    83c424
    asm("ret");                                                              // 0x00759dbb    c3
    asm("_jmp_addr_0x00759dbc:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00759dbc    8b16
    asm("push               0x000000a3");                                    // 0x00759dbe    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759dc3    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759dc5    ff92e8080000
    asm("pop                edi");                                           // 0x00759dcb    5f
    asm("mov                eax, 0x00000001");                               // 0x00759dcc    b801000000
    asm("pop                esi");                                           // 0x00759dd1    5e
    asm("add                esp, 0x24");                                     // 0x00759dd2    83c424
    asm("ret");                                                              // 0x00759dd5    c3
    asm("_jmp_addr_0x00759dd6:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00759dd6    8b06
    asm("push               0x0");                                           // 0x00759dd8    6a00
    asm("{disp32} lea       edi, dword ptr [esi + 0x0000011c]");             // 0x00759dda    8dbe1c010000
    asm("push               edi");                                           // 0x00759de0    57
    asm("mov.s              ecx, esi");                                      // 0x00759de1    8bce
    asm("{disp32} mov       byte ptr [esi + 0x000000f1], 0x01");             // 0x00759de3    c686f100000001
    asm("call               dword ptr [eax + 0x85c]");                       // 0x00759dea    ff905c080000
    asm("test               eax, eax");                                      // 0x00759df0    85c0
    asm("{disp8} je         _jmp_addr_0x00759e2a");                          // 0x00759df2    7436
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00759df4    8b8e18010000
    asm("{disp8} lea        edx, dword ptr [esp + 0x20]");                   // 0x00759dfa    8d542420
    asm("push               edx");                                           // 0x00759dfe    52
    asm("call               _jmp_addr_0x00528970");                          // 0x00759dff    e86cebdcff
    asm("mov                ecx, dword ptr [eax]");                          // 0x00759e04    8b08
    asm("mov                dword ptr [edi], ecx");                          // 0x00759e06    890f
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00759e08    8b5004
    asm("{disp8} mov        dword ptr [edi + 0x04], edx");                   // 0x00759e0b    895704
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00759e0e    8b4008
    asm("push               0x1");                                           // 0x00759e11    6a01
    asm("push               0x44");                                          // 0x00759e13    6a44
    asm("mov.s              ecx, esi");                                      // 0x00759e15    8bce
    asm("{disp8} mov        dword ptr [edi + 0x08], eax");                   // 0x00759e17    894708
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x00759e1a    e8a12ce9ff
    asm("pop                edi");                                           // 0x00759e1f    5f
    asm("mov                eax, 0x00000001");                               // 0x00759e20    b801000000
    asm("pop                esi");                                           // 0x00759e25    5e
    asm("add                esp, 0x24");                                     // 0x00759e26    83c424
    asm("ret");                                                              // 0x00759e29    c3
    asm("_jmp_addr_0x00759e2a:");
    asm("push               0x43");                                          // 0x00759e2a    6a43
    asm("push               edi");                                           // 0x00759e2c    57
    asm("mov.s              ecx, esi");                                      // 0x00759e2d    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00759e2f    e8cc990000
    asm("pop                edi");                                           // 0x00759e34    5f
    asm("mov                eax, 0x00000001");                               // 0x00759e35    b801000000
    asm("pop                esi");                                           // 0x00759e3a    5e
    asm("add                esp, 0x24");                                     // 0x00759e3b    83c424
    asm("ret");                                                              // 0x00759e3e    c3
    __builtin_unreachable();
}

bool32_t __fastcall FarmerDigsUpCrop__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x00759e40    83ec08
    asm("push               esi");                                           // 0x00759e43    56
    asm("mov.s              esi, ecx");                                      // 0x00759e44    8bf1
    asm("push               edi");                                           // 0x00759e46    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x00000118]");             // 0x00759e47    8bbe18010000
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x00759e4d    e87e76ffff
    asm("movsx              eax, ax");                                       // 0x00759e52    0fbfc0
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x00759e55    89442408
    asm("push               ecx");                                           // 0x00759e59    51
    asm("mov.s              ecx, edi");                                      // 0x00759e5a    8bcf
    asm("{disp8} fild       dword ptr [esp + 0x0c]");                        // 0x00759e5c    db44240c
    asm("fstp               dword ptr [esp]");                               // 0x00759e60    d91c24
    asm("call               ?RemoveFood@Field@@QAEMM@Z");                    // 0x00759e63    e838f7dcff
    asm("test               eax, eax");                                      // 0x00759e68    85c0
    asm("{disp8} jbe        _jmp_addr_0x00759ea8");                          // 0x00759e6a    763c
    asm("push               eax");                                           // 0x00759e6c    50
    asm("mov.s              ecx, esi");                                      // 0x00759e6d    8bce
    asm("call               ?PickupFood@Villager@@QAEXF@Z");                 // 0x00759e6f    e81c76ffff
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3734dc]");        // 0x00759e74    8b0ddc94d300
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00759e7a    894c240c
    asm("mov.s              ecx, esi");                                      // 0x00759e7e    8bce
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x00759e80    e84b76ffff
    asm("movsx              edx, ax");                                       // 0x00759e85    0fbfd0
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x00759e88    89542408
    asm("{disp8} fild       dword ptr [esp + 0x08]");                        // 0x00759e8c    db442408
    asm("{disp8} fcomp      dword ptr [esp + 0x0c]");                        // 0x00759e90    d85c240c
    asm("fnstsw             ax");                                            // 0x00759e94    dfe0
    asm("test               ah, 0x01");                                      // 0x00759e96    f6c401
    asm("{disp8} je         _jmp_addr_0x00759ea8");                          // 0x00759e99    740d
    asm("mov.s              ecx, esi");                                      // 0x00759e9b    8bce
    asm("call               ?GotoStoragePitForDropOff@Villager@@QAEIXZ");    // 0x00759e9d    e87ef70000
    asm("pop                edi");                                           // 0x00759ea2    5f
    asm("pop                esi");                                           // 0x00759ea3    5e
    asm("add                esp, 0x08");                                     // 0x00759ea4    83c408
    asm("ret");                                                              // 0x00759ea7    c3
    asm("_jmp_addr_0x00759ea8:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00759ea8    8b06
    asm("push               0x43");                                          // 0x00759eaa    6a43
    asm("mov.s              ecx, esi");                                      // 0x00759eac    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00759eae    ff90e8080000
    asm("pop                edi");                                           // 0x00759eb4    5f
    asm("mov                eax, 0x00000001");                               // 0x00759eb5    b801000000
    asm("pop                esi");                                           // 0x00759eba    5e
    asm("add                esp, 0x08");                                     // 0x00759ebb    83c408
    asm("ret");                                                              // 0x00759ebe    c3
    __builtin_unreachable();
}

bool32_t __fastcall FarmerPlantsCrop__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00759ec0    56
    asm("mov.s              esi, ecx");                                      // 0x00759ec1    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00759ec3    8b8e18010000
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x00759ec9    8d4614
    asm("push               eax");                                           // 0x00759ecc    50
    asm("call               ?PlantCrop@Field@@QAEIABUMapCoords@@@Z");        // 0x00759ecd    e8cef2dcff
    asm("test               eax, eax");                                      // 0x00759ed2    85c0
    asm("{disp8} je         _jmp_addr_0x00759f0e");                          // 0x00759ed4    7438
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00759ed6    8b8e18010000
    asm("call               ?GetPlantCropPos@Field@@QAEIXZ");                // 0x00759edc    e82ff3dcff
    asm("test               eax, eax");                                      // 0x00759ee1    85c0
    asm("{disp8} je         _jmp_addr_0x00759ef8");                          // 0x00759ee3    7413
    asm("mov                edx, dword ptr [esi]");                          // 0x00759ee5    8b16
    asm("push               0x43");                                          // 0x00759ee7    6a43
    asm("mov.s              ecx, esi");                                      // 0x00759ee9    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759eeb    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00759ef1    b801000000
    asm("pop                esi");                                           // 0x00759ef6    5e
    asm("ret");                                                              // 0x00759ef7    c3
    asm("_jmp_addr_0x00759ef8:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00759ef8    8b06
    asm("push               0x000000a3");                                    // 0x00759efa    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759eff    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00759f01    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00759f07    b801000000
    asm("pop                esi");                                           // 0x00759f0c    5e
    asm("ret");                                                              // 0x00759f0d    c3
    asm("_jmp_addr_0x00759f0e:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00759f0e    8b16
    asm("push               0x000000a3");                                    // 0x00759f10    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759f15    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759f17    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00759f1d    b801000000
    asm("pop                esi");                                           // 0x00759f22    5e
    asm("ret");                                                              // 0x00759f23    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyFoodDesire__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x40");                                     // 0x00759f30    83ec40
    asm("push               ebx");                                           // 0x00759f33    53
    asm("push               ebp");                                           // 0x00759f34    55
    asm("push               esi");                                           // 0x00759f35    56
    asm("mov.s              ebx, ecx");                                      // 0x00759f36    8bd9
    asm("mov                eax, dword ptr [ebx]");                          // 0x00759f38    8b03
    asm("push               edi");                                           // 0x00759f3a    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00759f3b    ff5048
    asm("xor.s              ebp, ebp");                                      // 0x00759f3e    33ed
    asm("mov.s              ecx, eax");                                      // 0x00759f40    8bc8
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00759f42    894c2410
    asm("{disp8} mov        dword ptr [esp + 0x18], ebp");                   // 0x00759f46    896c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebp");                   // 0x00759f4a    896c241c
    asm("{disp8} jmp        _jmp_addr_0x00759f54");                          // 0x00759f4e    eb04
    asm("_jmp_addr_0x00759f50:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00759f50    8b4c2410
    asm("_jmp_addr_0x00759f54:");
    asm("{disp8} lea        esi, dword ptr [ebp + ebp * 0x2 + 0x00]");       // 0x00759f54    8d746d00
    asm("shl                esi, 2");                                        // 0x00759f58    c1e602
    asm("mov.s              eax, ebp");                                      // 0x00759f5b    8bc5
    asm("sub                eax, 0x00");                                     // 0x00759f5d    83e800
    asm("{disp8} mov        dword ptr [esp + esi * 0x1 + 0x34], ebp");       // 0x00759f60    896c3434
    asm("{disp8} je         _jmp_addr_0x00759f8e");                          // 0x00759f64    7428
    asm("dec                eax");                                           // 0x00759f66    48
    asm("{disp8} je         _jmp_addr_0x00759f7d");                          // 0x00759f67    7414
    asm("dec                eax");                                           // 0x00759f69    48
    asm("{disp8} jne        _jmp_addr_0x00759f9d");                          // 0x00759f6a    7531
    asm("{disp8} lea        edx, dword ptr [esp + 0x44]");                   // 0x00759f6c    8d542444
    asm("push               edx");                                           // 0x00759f70    52
    asm("push               ebx");                                           // 0x00759f71    53
    asm("call               _jmp_addr_0x0073e7f0");                          // 0x00759f72    e87948feff
    asm("{disp8} mov        dword ptr [esp + 0x48], eax");                   // 0x00759f77    89442448
    asm("{disp8} jmp        _jmp_addr_0x00759f9d");                          // 0x00759f7b    eb20
    asm("_jmp_addr_0x00759f7d:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x38]");                   // 0x00759f7d    8d442438
    asm("push               eax");                                           // 0x00759f81    50
    asm("push               ebx");                                           // 0x00759f82    53
    asm("call               _jmp_addr_0x0073e870");                          // 0x00759f83    e8e848feff
    asm("{disp8} mov        dword ptr [esp + 0x3c], eax");                   // 0x00759f88    8944243c
    asm("{disp8} jmp        _jmp_addr_0x00759f9d");                          // 0x00759f8c    eb0f
    asm("_jmp_addr_0x00759f8e:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x2c]");                   // 0x00759f8e    8d54242c
    asm("push               edx");                                           // 0x00759f92    52
    asm("push               ebx");                                           // 0x00759f93    53
    asm("call               _jmp_addr_0x0073e750");                          // 0x00759f94    e8b747feff
    asm("{disp8} mov        dword ptr [esp + 0x30], eax");                   // 0x00759f99    89442430
    asm("_jmp_addr_0x00759f9d:");
    asm("push               0x8");                                           // 0x00759f9d    6a08
    asm("{disp8} lea        edi, dword ptr [esp + esi * 0x1 + 0x30]");       // 0x00759f9f    8d7c3430
    asm("call               ??2@YAPAXI@Z");                                  // 0x00759fa3    e846c50600
    asm("xor.s              edx, edx");                                      // 0x00759fa8    33d2
    asm("add                esp, 0x04");                                     // 0x00759faa    83c404
    asm("cmp.s              eax, edx");                                      // 0x00759fad    3bc2
    asm("{disp8} je         _jmp_addr_0x00759fba");                          // 0x00759faf    7409
    asm("mov                dword ptr [eax], edi");                          // 0x00759fb1    8938
    asm("{disp8} mov        dword ptr [eax + 0x04], edx");                   // 0x00759fb3    895004
    asm("mov.s              esi, eax");                                      // 0x00759fb6    8bf0
    asm("{disp8} jmp        _jmp_addr_0x00759fbc");                          // 0x00759fb8    eb02
    asm("_jmp_addr_0x00759fba:");
    asm("xor.s              esi, esi");                                      // 0x00759fba    33f6
    asm("_jmp_addr_0x00759fbc:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x00759fbc    8b4c2418
    asm("test               ecx, ecx");                                      // 0x00759fc0    85c9
    asm("{disp8} je         _jmp_addr_0x00759ff4");                          // 0x00759fc2    7430
    asm("_jmp_addr_0x00759fc4:");
    asm("mov                eax, dword ptr [ecx]");                          // 0x00759fc4    8b01
    asm("fld                dword ptr [edi]");                               // 0x00759fc6    d907
    asm("fcomp              dword ptr [eax]");                               // 0x00759fc8    d818
    asm("fnstsw             ax");                                            // 0x00759fca    dfe0
    asm("test               ah, 0x41");                                      // 0x00759fcc    f6c441
    asm("{disp8} je         _jmp_addr_0x00759fdc");                          // 0x00759fcf    740b
    asm("mov.s              edx, ecx");                                      // 0x00759fd1    8bd1
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x04]");                   // 0x00759fd3    8b4904
    asm("test               ecx, ecx");                                      // 0x00759fd6    85c9
    asm("{disp8} je         _jmp_addr_0x00759ff0");                          // 0x00759fd8    7416
    asm("{disp8} jmp        _jmp_addr_0x00759fc4");                          // 0x00759fda    ebe8
    asm("_jmp_addr_0x00759fdc:");
    asm("test               edx, edx");                                      // 0x00759fdc    85d2
    asm("{disp8} mov        dword ptr [esi + 0x04], ecx");                   // 0x00759fde    894e04
    asm("{disp8} jne        _jmp_addr_0x00759fe9");                          // 0x00759fe1    7506
    asm("{disp8} mov        dword ptr [esp + 0x18], esi");                   // 0x00759fe3    89742418
    asm("{disp8} jmp        _jmp_addr_0x00759fec");                          // 0x00759fe7    eb03
    asm("_jmp_addr_0x00759fe9:");
    asm("{disp8} mov        dword ptr [edx + 0x04], esi");                   // 0x00759fe9    897204
    asm("_jmp_addr_0x00759fec:");
    asm("test               ecx, ecx");                                      // 0x00759fec    85c9
    asm("{disp8} jne        _jmp_addr_0x00759ffd");                          // 0x00759fee    750d
    asm("_jmp_addr_0x00759ff0:");
    asm("test               edx, edx");                                      // 0x00759ff0    85d2
    asm("{disp8} jne        _jmp_addr_0x00759ffa");                          // 0x00759ff2    7506
    asm("_jmp_addr_0x00759ff4:");
    asm("{disp8} mov        dword ptr [esp + 0x18], esi");                   // 0x00759ff4    89742418
    asm("{disp8} jmp        _jmp_addr_0x00759ffd");                          // 0x00759ff8    eb03
    asm("_jmp_addr_0x00759ffa:");
    asm("{disp8} mov        dword ptr [edx + 0x04], esi");                   // 0x00759ffa    897204
    asm("_jmp_addr_0x00759ffd:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                   // 0x00759ffd    8b54241c
    asm("inc                edx");                                           // 0x0075a001    42
    asm("inc                ebp");                                           // 0x0075a002    45
    asm("cmp                ebp, 0x03");                                     // 0x0075a003    83fd03
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                   // 0x0075a006    8954241c
    asm("{disp32} jb        _jmp_addr_0x00759f50");                          // 0x0075a00a    0f8240ffffff
    asm("{disp8} mov        esi, dword ptr [ebx + 0x28]");                   // 0x0075a010    8b7328
    asm("mov.s              ecx, ebx");                                      // 0x0075a013    8bcb
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x0075a015    e8b674ffff
    asm("{disp32} mov       edx, dword ptr [esi + 0x00000264]");             // 0x0075a01a    8b9664020000
    asm("movsx              ecx, ax");                                       // 0x0075a020    0fbfc8
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075a023    894c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x0075a027    c744241400000000
    asm("push               0x0");                                           // 0x0075a02f    6a00
    asm("{disp8} fild       dword ptr [esp + 0x14]");                        // 0x0075a031    db442414
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0075a035    89542414
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0075a039    8d442424
    asm("push               eax");                                           // 0x0075a03d    50
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0xf1100]");             // 0x0075a03e    d80500a19900
    asm("mov.s              ecx, ebx");                                      // 0x0075a044    8bcb
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x0075a046    df6c2418
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0xf1100]");             // 0x0075a04a    d80500a19900
    asm("fdivp              st(1), st");                                     // 0x0075a050    def9
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075a052    d82d90a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x0075a058    d95c2418
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                          // 0x0075a05c    e8bf9dffff
    asm("push               0x43fa0000");                                    // 0x0075a061    680000fa43
    asm("{disp8} lea        ecx, dword ptr [ebx + 0x14]");                   // 0x0075a066    8d4b14
    asm("push               ecx");                                           // 0x0075a069    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                   // 0x0075a06a    8d4c2428
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                          // 0x0075a06e    e85dbceaff
    asm("push               ecx");                                           // 0x0075a073    51
    asm("fstp               dword ptr [esp]");                               // 0x0075a074    d91c24
    asm("call               _GetDistanceModifier__6GUtilsFff@8");            // 0x0075a077    e81452ffff
    asm("{disp8} fmul       dword ptr [esp + 0x18]");                        // 0x0075a07c    d84c2418
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x0075a080    8b4c2420
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075a084    8b11
    asm("add                esp, 0x08");                                     // 0x0075a086    83c408
    asm("fcomp              dword ptr [edx]");                               // 0x0075a089    d81a
    asm("fnstsw             ax");                                            // 0x0075a08b    dfe0
    asm("test               ah, 0x41");                                      // 0x0075a08d    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075a0c1");                          // 0x0075a090    752f
    asm("mov.s              ecx, ebx");                                      // 0x0075a092    8bcb
    asm("call               ?GotoStoragePitForDropOff@Villager@@QAEIXZ");    // 0x0075a094    e887f50000
    asm("mov.s              esi, eax");                                      // 0x0075a099    8bf0
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x0075a09b    8b442418
    asm("test               eax, eax");                                      // 0x0075a09f    85c0
    asm("{disp8} je         _jmp_addr_0x0075a0b7");                          // 0x0075a0a1    7414
    asm("_jmp_addr_0x0075a0a3:");
    asm("mov                edx, dword ptr [eax]");                          // 0x0075a0a3    8b10
    asm("push               edx");                                           // 0x0075a0a5    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x0075a0a6    8d4c241c
    asm("call               @Remove__31LHOrderedLinkedList_9Glocation_Fv@12");   // 0x0075a0aa    e861020000
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x0075a0af    8b442418
    asm("test               eax, eax");                                      // 0x0075a0b3    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a0a3");                          // 0x0075a0b5    75ec
    asm("_jmp_addr_0x0075a0b7:");
    asm("pop                edi");                                           // 0x0075a0b7    5f
    asm("mov.s              eax, esi");                                      // 0x0075a0b8    8bc6
    asm("pop                esi");                                           // 0x0075a0ba    5e
    asm("pop                ebp");                                           // 0x0075a0bb    5d
    asm("pop                ebx");                                           // 0x0075a0bc    5b
    asm("add                esp, 0x40");                                     // 0x0075a0bd    83c440
    asm("ret");                                                              // 0x0075a0c0    c3
    asm("_jmp_addr_0x0075a0c1:");
    asm("{disp8} mov        eax, dword ptr [edx + 0x04]");                   // 0x0075a0c1    8b4204
    asm("test               eax, eax");                                      // 0x0075a0c4    85c0
    asm("{disp32} je        _jmp_addr_0x0075a1f4");                          // 0x0075a0c6    0f8428010000
    asm("{disp8} mov        edx, dword ptr [edx + 0x08]");                   // 0x0075a0cc    8b5208
    asm("sub                edx, 0x00");                                     // 0x0075a0cf    83ea00
    asm("{disp32} je        _jmp_addr_0x0075a188");                          // 0x0075a0d2    0f84b0000000
    asm("dec                edx");                                           // 0x0075a0d8    4a
    asm("{disp8} je         _jmp_addr_0x0075a14e");                          // 0x0075a0d9    7473
    asm("dec                edx");                                           // 0x0075a0db    4a
    asm("{disp32} jne       _jmp_addr_0x0075a1f4");                          // 0x0075a0dc    0f8512010000
    asm("push               eax");                                           // 0x0075a0e2    50
    asm("mov.s              ecx, ebx");                                      // 0x0075a0e3    8bcb
    asm("call               ?VillagerBecomesShepherd@Villager@@QAEIPAVFlock@@@Z");                          // 0x0075a0e5    e8f6ea0000
    asm("cmp                eax, 0x01");                                     // 0x0075a0ea    83f801
    asm("{disp32} jne       _jmp_addr_0x0075a1f0");                          // 0x0075a0ed    0f85fd000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x0075a0f3    8b4c2418
    asm("test               ecx, ecx");                                      // 0x0075a0f7    85c9
    asm("{disp8} je         _jmp_addr_0x0075a141");                          // 0x0075a0f9    7446
    asm("_jmp_addr_0x0075a0fb:");
    asm("mov                esi, dword ptr [ecx]");                          // 0x0075a0fb    8b31
    asm("xor.s              edx, edx");                                      // 0x0075a0fd    33d2
    asm("test               ecx, ecx");                                      // 0x0075a0ff    85c9
    asm("mov.s              eax, ecx");                                      // 0x0075a101    8bc1
    asm("{disp8} je         _jmp_addr_0x0075a141");                          // 0x0075a103    743c
    asm("_jmp_addr_0x0075a105:");
    asm("cmp                dword ptr [eax], esi");                          // 0x0075a105    3930
    asm("{disp8} je         _jmp_addr_0x0075a114");                          // 0x0075a107    740b
    asm("mov.s              edx, eax");                                      // 0x0075a109    8bd0
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                   // 0x0075a10b    8b4004
    asm("test               eax, eax");                                      // 0x0075a10e    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a105");                          // 0x0075a110    75f3
    asm("{disp8} jmp        _jmp_addr_0x0075a13d");                          // 0x0075a112    eb29
    asm("_jmp_addr_0x0075a114:");
    asm("test               edx, edx");                                      // 0x0075a114    85d2
    asm("{disp8} jne        _jmp_addr_0x0075a121");                          // 0x0075a116    7509
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x04]");                   // 0x0075a118    8b4904
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x0075a11b    894c2418
    asm("{disp8} jmp        _jmp_addr_0x0075a127");                          // 0x0075a11f    eb06
    asm("_jmp_addr_0x0075a121:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075a121    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x0075a124    894a04
    asm("_jmp_addr_0x0075a127:");
    asm("push               eax");                                           // 0x0075a127    50
    asm("call               ??3@YAXPAX@Z");                                  // 0x0075a128    e86b4d0500
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x0075a12d    8b442420
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x0075a131    8b4c241c
    asm("add                esp, 0x04");                                     // 0x0075a135    83c404
    asm("dec                eax");                                           // 0x0075a138    48
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x0075a139    8944241c
    asm("_jmp_addr_0x0075a13d:");
    asm("test               ecx, ecx");                                      // 0x0075a13d    85c9
    asm("{disp8} jne        _jmp_addr_0x0075a0fb");                          // 0x0075a13f    75ba
    asm("_jmp_addr_0x0075a141:");
    asm("pop                edi");                                           // 0x0075a141    5f
    asm("pop                esi");                                           // 0x0075a142    5e
    asm("pop                ebp");                                           // 0x0075a143    5d
    asm("mov                eax, 0x00000001");                               // 0x0075a144    b801000000
    asm("pop                ebx");                                           // 0x0075a149    5b
    asm("add                esp, 0x40");                                     // 0x0075a14a    83c440
    asm("ret");                                                              // 0x0075a14d    c3
    asm("_jmp_addr_0x0075a14e:");
    asm("push               eax");                                           // 0x0075a14e    50
    asm("mov.s              ecx, ebx");                                      // 0x0075a14f    8bcb
    asm("call               ?VillagerBecomesFarmer@Villager@@QAEIPAVField@@@Z");                          // 0x0075a151    e8aafaffff
    asm("cmp                eax, 0x01");                                     // 0x0075a156    83f801
    asm("{disp32} jne       _jmp_addr_0x0075a1f0");                          // 0x0075a159    0f8591000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x0075a15f    8b442418
    asm("test               eax, eax");                                      // 0x0075a163    85c0
    asm("{disp8} je         _jmp_addr_0x0075a17b");                          // 0x0075a165    7414
    asm("_jmp_addr_0x0075a167:");
    asm("mov                edx, dword ptr [eax]");                          // 0x0075a167    8b10
    asm("push               edx");                                           // 0x0075a169    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x0075a16a    8d4c241c
    asm("call               @Remove__31LHOrderedLinkedList_9Glocation_Fv@12");   // 0x0075a16e    e89d010000
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x0075a173    8b442418
    asm("test               eax, eax");                                      // 0x0075a177    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a167");                          // 0x0075a179    75ec
    asm("_jmp_addr_0x0075a17b:");
    asm("pop                edi");                                           // 0x0075a17b    5f
    asm("pop                esi");                                           // 0x0075a17c    5e
    asm("pop                ebp");                                           // 0x0075a17d    5d
    asm("mov                eax, 0x00000001");                               // 0x0075a17e    b801000000
    asm("pop                ebx");                                           // 0x0075a183    5b
    asm("add                esp, 0x40");                                     // 0x0075a184    83c440
    asm("ret");                                                              // 0x0075a187    c3
    asm("_jmp_addr_0x0075a188:");
    asm("push               eax");                                           // 0x0075a188    50
    asm("mov.s              ecx, ebx");                                      // 0x0075a189    8bcb
    asm("call               ?VillagerBecomesFisherman@Villager@@QAEIPAVFishFarm@@@Z");                          // 0x0075a18b    e8d0130000
    asm("cmp                eax, 0x01");                                     // 0x0075a190    83f801
    asm("{disp8} jne        _jmp_addr_0x0075a1f0");                          // 0x0075a193    755b
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x0075a195    8b4c2418
    asm("test               ecx, ecx");                                      // 0x0075a199    85c9
    asm("{disp8} je         _jmp_addr_0x0075a1e3");                          // 0x0075a19b    7446
    asm("_jmp_addr_0x0075a19d:");
    asm("mov                esi, dword ptr [ecx]");                          // 0x0075a19d    8b31
    asm("xor.s              edx, edx");                                      // 0x0075a19f    33d2
    asm("test               ecx, ecx");                                      // 0x0075a1a1    85c9
    asm("mov.s              eax, ecx");                                      // 0x0075a1a3    8bc1
    asm("{disp8} je         _jmp_addr_0x0075a1e3");                          // 0x0075a1a5    743c
    asm("_jmp_addr_0x0075a1a7:");
    asm("cmp                dword ptr [eax], esi");                          // 0x0075a1a7    3930
    asm("{disp8} je         _jmp_addr_0x0075a1b6");                          // 0x0075a1a9    740b
    asm("mov.s              edx, eax");                                      // 0x0075a1ab    8bd0
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                   // 0x0075a1ad    8b4004
    asm("test               eax, eax");                                      // 0x0075a1b0    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a1a7");                          // 0x0075a1b2    75f3
    asm("{disp8} jmp        _jmp_addr_0x0075a1df");                          // 0x0075a1b4    eb29
    asm("_jmp_addr_0x0075a1b6:");
    asm("test               edx, edx");                                      // 0x0075a1b6    85d2
    asm("{disp8} jne        _jmp_addr_0x0075a1c3");                          // 0x0075a1b8    7509
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x04]");                   // 0x0075a1ba    8b4904
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x0075a1bd    894c2418
    asm("{disp8} jmp        _jmp_addr_0x0075a1c9");                          // 0x0075a1c1    eb06
    asm("_jmp_addr_0x0075a1c3:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075a1c3    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x0075a1c6    894a04
    asm("_jmp_addr_0x0075a1c9:");
    asm("push               eax");                                           // 0x0075a1c9    50
    asm("call               ??3@YAXPAX@Z");                                  // 0x0075a1ca    e8c94c0500
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x0075a1cf    8b442420
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x0075a1d3    8b4c241c
    asm("add                esp, 0x04");                                     // 0x0075a1d7    83c404
    asm("dec                eax");                                           // 0x0075a1da    48
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x0075a1db    8944241c
    asm("_jmp_addr_0x0075a1df:");
    asm("test               ecx, ecx");                                      // 0x0075a1df    85c9
    asm("{disp8} jne        _jmp_addr_0x0075a19d");                          // 0x0075a1e1    75ba
    asm("_jmp_addr_0x0075a1e3:");
    asm("pop                edi");                                           // 0x0075a1e3    5f
    asm("pop                esi");                                           // 0x0075a1e4    5e
    asm("pop                ebp");                                           // 0x0075a1e5    5d
    asm("mov                eax, 0x00000001");                               // 0x0075a1e6    b801000000
    asm("pop                ebx");                                           // 0x0075a1eb    5b
    asm("add                esp, 0x40");                                     // 0x0075a1ec    83c440
    asm("ret");                                                              // 0x0075a1ef    c3
    asm("_jmp_addr_0x0075a1f0:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x0075a1f0    8b4c2418
    asm("_jmp_addr_0x0075a1f4:");
    asm("test               ecx, ecx");                                      // 0x0075a1f4    85c9
    asm("{disp8} je         _jmp_addr_0x0075a23e");                          // 0x0075a1f6    7446
    asm("_jmp_addr_0x0075a1f8:");
    asm("mov                esi, dword ptr [ecx]");                          // 0x0075a1f8    8b31
    asm("xor.s              edx, edx");                                      // 0x0075a1fa    33d2
    asm("test               ecx, ecx");                                      // 0x0075a1fc    85c9
    asm("mov.s              eax, ecx");                                      // 0x0075a1fe    8bc1
    asm("{disp8} je         _jmp_addr_0x0075a23e");                          // 0x0075a200    743c
    asm("_jmp_addr_0x0075a202:");
    asm("cmp                dword ptr [eax], esi");                          // 0x0075a202    3930
    asm("{disp8} je         _jmp_addr_0x0075a211");                          // 0x0075a204    740b
    asm("mov.s              edx, eax");                                      // 0x0075a206    8bd0
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                   // 0x0075a208    8b4004
    asm("test               eax, eax");                                      // 0x0075a20b    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a202");                          // 0x0075a20d    75f3
    asm("{disp8} jmp        _jmp_addr_0x0075a23a");                          // 0x0075a20f    eb29
    asm("_jmp_addr_0x0075a211:");
    asm("test               edx, edx");                                      // 0x0075a211    85d2
    asm("{disp8} jne        _jmp_addr_0x0075a21e");                          // 0x0075a213    7509
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x0075a215    8b5104
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x0075a218    89542418
    asm("{disp8} jmp        _jmp_addr_0x0075a224");                          // 0x0075a21c    eb06
    asm("_jmp_addr_0x0075a21e:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075a21e    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x0075a221    894a04
    asm("_jmp_addr_0x0075a224:");
    asm("push               eax");                                           // 0x0075a224    50
    asm("call               ??3@YAXPAX@Z");                                  // 0x0075a225    e86e4c0500
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x0075a22a    8b442420
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x0075a22e    8b4c241c
    asm("add                esp, 0x04");                                     // 0x0075a232    83c404
    asm("dec                eax");                                           // 0x0075a235    48
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x0075a236    8944241c
    asm("_jmp_addr_0x0075a23a:");
    asm("test               ecx, ecx");                                      // 0x0075a23a    85c9
    asm("{disp8} jne        _jmp_addr_0x0075a1f8");                          // 0x0075a23c    75ba
    asm("_jmp_addr_0x0075a23e:");
    asm("pop                edi");                                           // 0x0075a23e    5f
    asm("pop                esi");                                           // 0x0075a23f    5e
    asm("pop                ebp");                                           // 0x0075a240    5d
    asm("xor.s              eax, eax");                                      // 0x0075a241    33c0
    asm("pop                ebx");                                           // 0x0075a243    5b
    asm("add                esp, 0x40");                                     // 0x0075a244    83c440
    asm("ret");                                                              // 0x0075a247    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall EnterFarming__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("push               esi");                                           // 0x0075a250    56
    asm("mov.s              esi, ecx");                                      // 0x0075a251    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075a253    8b8618010000
    asm("test               eax, eax");                                      // 0x0075a259    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a263");                          // 0x0075a25b    7506
    asm("xor.s              eax, eax");                                      // 0x0075a25d    33c0
    asm("pop                esi");                                           // 0x0075a25f    5e
    asm("ret                0x0008");                                        // 0x0075a260    c20800
    asm("_jmp_addr_0x0075a263:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x0075a263    8b44240c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075a267    8b4c2408
    asm("and                eax, 0x000000ff");                               // 0x0075a26b    25ff000000
    asm("and                ecx, 0x000000ff");                               // 0x0075a270    81e1ff000000
    asm("push               eax");                                           // 0x0075a276    50
    asm("push               ecx");                                           // 0x0075a277    51
    asm("mov.s              ecx, esi");                                      // 0x0075a278    8bce
    asm("call               ?IsStateEntryFunctionSameAs@Villager@@QBE_NKK@Z");                          // 0x0075a27a    e85182ffff
    asm("test               eax, eax");                                      // 0x0075a27f    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a296");                          // 0x0075a281    7513
    asm("mov                edx, dword ptr [esi]");                          // 0x0075a283    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075a285    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075a287    ff5248
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x0075a28a    8b8e18010000
    asm("push               esi");                                           // 0x0075a290    56
    asm("call               _jmp_addr_0x005283e0");                          // 0x0075a291    e84ae1dcff
    asm("_jmp_addr_0x0075a296:");
    asm("mov                eax, 0x00000001");                               // 0x0075a296    b801000000
    asm("pop                esi");                                           // 0x0075a29b    5e
    asm("ret                0x0008");                                        // 0x0075a29c    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ExitFarming__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                           // 0x0075a2a0    56
    asm("mov.s              esi, ecx");                                      // 0x0075a2a1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075a2a3    8b4c2408
    asm("mov                eax, dword ptr [esi]");                          // 0x0075a2a7    8b06
    asm("and                ecx, 0x000000ff");                               // 0x0075a2a9    81e1ff000000
    asm("push               ecx");                                           // 0x0075a2af    51
    asm("mov.s              ecx, esi");                                      // 0x0075a2b0    8bce
    asm("call               dword ptr [eax + 0x96c]");                       // 0x0075a2b2    ff906c090000
    asm("test               eax, eax");                                      // 0x0075a2b8    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a303");                          // 0x0075a2ba    7547
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075a2bc    8b8618010000
    asm("test               eax, eax");                                      // 0x0075a2c2    85c0
    asm("{disp8} je         _jmp_addr_0x0075a303");                          // 0x0075a2c4    743d
    asm("mov                edx, dword ptr [esi]");                          // 0x0075a2c6    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075a2c8    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075a2ca    ff5248
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x0075a2cd    a15c19d000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00205c04]");             // 0x0075a2d2    8b80045c2000
    asm("test               eax, eax");                                      // 0x0075a2d8    85c0
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x0075a2da    8b8e18010000
    asm("{disp8} je         _jmp_addr_0x0075a303");                          // 0x0075a2e0    7421
    asm("_jmp_addr_0x0075a2e2:");
    asm("cmp.s              eax, ecx");                                      // 0x0075a2e2    3bc1
    asm("{disp8} je         _jmp_addr_0x0075a2f9");                          // 0x0075a2e4    7413
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000c4]");             // 0x0075a2e6    8b80c4000000
    asm("test               eax, eax");                                      // 0x0075a2ec    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a2e2");                          // 0x0075a2ee    75f2
    asm("mov                eax, 0x00000001");                               // 0x0075a2f0    b801000000
    asm("pop                esi");                                           // 0x0075a2f5    5e
    asm("ret                0x0004");                                        // 0x0075a2f6    c20400
    asm("_jmp_addr_0x0075a2f9:");
    asm("test               eax, eax");                                      // 0x0075a2f9    85c0
    asm("{disp8} je         _jmp_addr_0x0075a303");                          // 0x0075a2fb    7406
    asm("push               esi");                                           // 0x0075a2fd    56
    asm("call               _jmp_addr_0x00528340");                          // 0x0075a2fe    e83de0dcff
    asm("_jmp_addr_0x0075a303:");
    asm("mov                eax, 0x00000001");                               // 0x0075a303    b801000000
    asm("pop                esi");                                           // 0x0075a308    5e
    asm("ret                0x0004");                                        // 0x0075a309    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall Remove__31LHOrderedLinkedList_9Glocation_Fv(struct LHOrderedLinkedList__Glocation* this, const void* edx, struct Glocation* param_1)
{
    asm("push               esi");                                           // 0x0075a310    56
    asm("mov.s              esi, ecx");                                      // 0x0075a311    8bf1
    asm("mov                edx, dword ptr [esi]");                          // 0x0075a313    8b16
    asm("mov.s              eax, edx");                                      // 0x0075a315    8bc2
    asm("xor.s              ecx, ecx");                                      // 0x0075a317    33c9
    asm("test               eax, eax");                                      // 0x0075a319    85c0
    asm("push               edi");                                           // 0x0075a31b    57
    asm("{disp8} je         _jmp_addr_0x0075a32f");                          // 0x0075a31c    7411
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0075a31e    8b7c240c
    asm("_jmp_addr_0x0075a322:");
    asm("cmp                dword ptr [eax], edi");                          // 0x0075a322    3938
    asm("{disp8} je         _jmp_addr_0x0075a336");                          // 0x0075a324    7410
    asm("mov.s              ecx, eax");                                      // 0x0075a326    8bc8
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                   // 0x0075a328    8b4004
    asm("test               eax, eax");                                      // 0x0075a32b    85c0
    asm("{disp8} jne        _jmp_addr_0x0075a322");                          // 0x0075a32d    75f3
    asm("_jmp_addr_0x0075a32f:");
    asm("pop                edi");                                           // 0x0075a32f    5f
    asm("pop                esi");                                           // 0x0075a330    5e
    asm("xor.s              eax, eax");                                      // 0x0075a331    33c0
    asm("ret                0x0004");                                        // 0x0075a333    c20400
    asm("_jmp_addr_0x0075a336:");
    asm("test               ecx, ecx");                                      // 0x0075a336    85c9
    asm("{disp8} jne        _jmp_addr_0x0075a341");                          // 0x0075a338    7507
    asm("{disp8} mov        ecx, dword ptr [edx + 0x04]");                   // 0x0075a33a    8b4a04
    asm("mov                dword ptr [esi], ecx");                          // 0x0075a33d    890e
    asm("{disp8} jmp        _jmp_addr_0x0075a347");                          // 0x0075a33f    eb06
    asm("_jmp_addr_0x0075a341:");
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075a341    8b5004
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx");                   // 0x0075a344    895104
    asm("_jmp_addr_0x0075a347:");
    asm("push               eax");                                           // 0x0075a347    50
    asm("call               ??3@YAXPAX@Z");                                  // 0x0075a348    e84b4b0500
    asm("{disp8} mov        eax, dword ptr [esi + 0x04]");                   // 0x0075a34d    8b4604
    asm("add                esp, 0x04");                                     // 0x0075a350    83c404
    asm("dec                eax");                                           // 0x0075a353    48
    asm("pop                edi");                                           // 0x0075a354    5f
    asm("{disp8} mov        dword ptr [esi + 0x04], eax");                   // 0x0075a355    894604
    asm("pop                esi");                                           // 0x0075a358    5e
    asm("mov                eax, 0x00000001");                               // 0x0075a359    b801000000
    asm("ret                0x0004");                                        // 0x0075a35e    c20400
    __builtin_unreachable();
}
