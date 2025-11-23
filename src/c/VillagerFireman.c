#include "Villager.h"

const float villager_fireman_num_days_in_year_0x0099a960 = 365.25f;
const float villager_fireman_seconds_in_day_0x0099a964 = 86400.0f;
const float villager_fireman_m8p0_0x0099a968 = -8.0f;
const float villager_fireman_point_to_coord_0x0099a96c = 6553.6f;

char s_VillagerFireman_cpp[] = "C:\\dev\\MP\\Black\\VillagerFireman.cpp";

float villager_fireman_seconds_in_year_0x00db9e00;

void __cdecl globl_ct_0x0075a370(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x0075a370    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0075a376    b001
    asm("test               al, cl");                                        // 0x0075a378    84c8
    asm("{disp8} jne        _jmp_addr_0x0075a384");                          // 0x0075a37a    7508
    asm("or.s               cl, al");                                        // 0x0075a37c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075a37e    880d34c9fa00
    asm("_jmp_addr_0x0075a384:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0075a390");   // 0x0075a384    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0075a390(void)
{
    asm("push               0x00407870");                                    // 0x0075a390    6870784000
    asm("call               _atexit");                                       // 0x0075a395    e8f7b30600
    asm("pop                ecx");                                           // 0x0075a39a    59
    asm("ret");                                                              // 0x0075a39b    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x0075a3a0(void)
{
    asm("{disp32} jmp       _FUN_0075a3b0__8VillagerFv");                    // 0x0075a3a0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0075a3b0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_fireman_seconds_in_day_0x0099a964]");   // 0x0075a3b0    d90564a99900
    asm("{disp32} fmul dword ptr [_villager_fireman_num_days_in_year_0x0099a960]"); // 0x0075a3d6    d80d60a99900
    asm("{disp32} fstp dword ptr [_villager_fireman_seconds_in_year_0x00db9e00]");  // 0x0075a3dc    d91d009edb00
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall DecideHowToPutOutFire__8VillagerFP10FireEffect(struct Villager* this, const void* edx, struct FireEffect* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075a3d0    83ec0c
    asm("push               esi");                                           // 0x0075a3d3    56
    asm("mov.s              esi, ecx");                                      // 0x0075a3d4    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x0075a3d6    8b4c2414
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0075a3da    8d4614
    asm("push               eax");                                           // 0x0075a3dd    50
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x0075a3de    c744240800000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075a3e6    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x0075a3ee    c744241000000000
    asm("call               _jmp_addr_0x00730070");                          // 0x0075a3f6    e8755cfdff
    asm("test               eax, eax");                                      // 0x0075a3fb    85c0
    asm("{disp32} mov       dword ptr [esi + 0x00000114], eax");             // 0x0075a3fd    898614010000
    asm("{disp8} je         _jmp_addr_0x0075a433");                          // 0x0075a403    742e
    asm("{disp8} lea        ecx, dword ptr [esp + 0x04]");                   // 0x0075a405    8d4c2404
    asm("push               ecx");                                           // 0x0075a409    51
    asm("push               eax");                                           // 0x0075a40a    50
    asm("mov.s              ecx, esi");                                      // 0x0075a40b    8bce
    asm("call               ?GetFireFightingPos@Villager@@QAEIPAVFireEffect@@PAUMapCoords@@@Z");                          // 0x0075a40d    e87e060000
    asm("test               eax, eax");                                      // 0x0075a412    85c0
    asm("{disp8} je         _jmp_addr_0x0075a433");                          // 0x0075a414    741d
    asm("push               0x000000d8");                                    // 0x0075a416    68d8000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x0075a41b    8d542408
    asm("push               edx");                                           // 0x0075a41f    52
    asm("mov.s              ecx, esi");                                      // 0x0075a420    8bce
    asm("call               ?SetupMoveAroundFire@Villager@@QAEIABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075a422    e849030000
    asm("mov                eax, 0x00000001");                               // 0x0075a427    b801000000
    asm("pop                esi");                                           // 0x0075a42c    5e
    asm("add                esp, 0x0c");                                     // 0x0075a42d    83c40c
    asm("ret                0x0004");                                        // 0x0075a430    c20400
    asm("_jmp_addr_0x0075a433:");
    asm("xor.s              eax, eax");                                      // 0x0075a433    33c0
    asm("pop                esi");                                           // 0x0075a435    5e
    asm("add                esp, 0x0c");                                     // 0x0075a436    83c40c
    asm("ret                0x0004");                                        // 0x0075a439    c20400
    __builtin_unreachable();
}

float __stdcall GetViaPoint__FRC9MapCoordsRC9MapCoordsRC9MapCoordsfR9MapCoordsfPbPbf(const struct MapCoords* param_1, const struct MapCoords* param_2, const struct MapCoords* param_3, float param_4, struct MapCoords* param_5, float param_6, bool* param_7, bool* param_8, float param_9)
{
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x0075a440    d9442410
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x0075a444    8b442420
    asm("{disp32} fmul      dword ptr [_villager_fireman_point_to_coord_0x0099a96c]"); // 0x0075a448    d80d6ca99900
    asm("sub                esp, 0x14");                                     // 0x0075a44e    83ec14
    asm("test               eax, eax");                                      // 0x0075a451    85c0
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x0075a453    d95c2424
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x0075a457    d944242c
    asm("{disp32} fmul      dword ptr [_villager_fireman_point_to_coord_0x0099a96c]"); // 0x0075a45b    d80d6ca99900
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x0075a461    d95c242c
    asm("{disp8} je         _jmp_addr_0x0075a46a");                          // 0x0075a465    7403
    asm("mov                byte ptr [eax], 0x00");                          // 0x0075a467    c60000
    asm("_jmp_addr_0x0075a46a:");
    asm("push               ebx");                                           // 0x0075a46a    53
    asm("push               ebp");                                           // 0x0075a46b    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x38]");                   // 0x0075a46c    8b6c2438
    asm("test               ebp, ebp");                                      // 0x0075a470    85ed
    asm("push               esi");                                           // 0x0075a472    56
    asm("push               edi");                                           // 0x0075a473    57
    asm("{disp8} je         _jmp_addr_0x0075a47a");                          // 0x0075a474    7404
    asm("{disp8} mov        byte ptr [ebp + 0x00], 0x00");                   // 0x0075a476    c6450000
    asm("_jmp_addr_0x0075a47a:");
    asm("{disp8} mov        edi, dword ptr [esp + 0x30]");                   // 0x0075a47a    8b7c2430
    asm("{disp8} mov        ebx, dword ptr [esp + 0x28]");                   // 0x0075a47e    8b5c2428
    asm("mov                ecx, dword ptr [edi]");                          // 0x0075a482    8b0f
    asm("mov                edx, dword ptr [ebx]");                          // 0x0075a484    8b13
    asm("{disp8} mov        esi, dword ptr [ebx + 0x04]");                   // 0x0075a486    8b7304
    asm("mov.s              eax, ecx");                                      // 0x0075a489    8bc1
    asm("sub.s              eax, edx");                                      // 0x0075a48b    2bc2
    asm("{disp8} mov        dword ptr [esp + 0x40], eax");                   // 0x0075a48d    89442440
    asm("{disp8} fild       dword ptr [esp + 0x40]");                        // 0x0075a491    db442440
    asm("{disp8} mov        eax, dword ptr [edi + 0x04]");                   // 0x0075a495    8b4704
    asm("sub.s              eax, esi");                                      // 0x0075a498    2bc6
    asm("{disp8} mov        dword ptr [esp + 0x40], eax");                   // 0x0075a49a    89442440
    asm("{disp8} fild       dword ptr [esp + 0x40]");                        // 0x0075a49e    db442440
    asm("{disp8} fst        dword ptr [esp + 0x40]");                        // 0x0075a4a2    d9542440
    asm("{disp8} fmul       dword ptr [esp + 0x40]");                        // 0x0075a4a6    d84c2440
    asm("fld                st(1)");                                         // 0x0075a4aa    d9c1
    asm("fmul               st, st(2)");                                     // 0x0075a4ac    d8ca
    asm("faddp              st(1), st");                                     // 0x0075a4ae    dec1
    asm("fsqrt");                                                            // 0x0075a4b0    d9fa
    asm("{disp8} fst        dword ptr [esp + 0x14]");                        // 0x0075a4b2    d9542414
    asm("{disp8} fcomp      dword ptr [esp + 0x34]");                        // 0x0075a4b6    d85c2434
    asm("fnstsw             ax");                                            // 0x0075a4ba    dfe0
    asm("test               ah, 0x41");                                      // 0x0075a4bc    f6c441
    asm("{disp8} je         _jmp_addr_0x0075a4e0");                          // 0x0075a4bf    741f
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                   // 0x0075a4c1    8b442444
    asm("fstp               st(0)");                                         // 0x0075a4c5    ddd8
    asm("test               eax, eax");                                      // 0x0075a4c7    85c0
    asm("{disp32} je        _jmp_addr_0x0075a74f");                          // 0x0075a4c9    0f8480020000
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075a4cf    d90598a38a00
    asm("pop                edi");                                           // 0x0075a4d5    5f
    asm("pop                esi");                                           // 0x0075a4d6    5e
    asm("pop                ebp");                                           // 0x0075a4d7    5d
    asm("mov                byte ptr [eax], 0x01");                          // 0x0075a4d8    c60001
    asm("pop                ebx");                                           // 0x0075a4db    5b
    asm("add                esp, 0x14");                                     // 0x0075a4dc    83c414
    asm("ret");                                                              // 0x0075a4df    c3
    asm("_jmp_addr_0x0075a4e0:");
    asm("{disp8} fld        dword ptr [esp + 0x34]");                        // 0x0075a4e0    d9442434
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");                   // 0x0075a4e4    8b44242c
    asm("{disp8} fadd       dword ptr [esp + 0x3c]");                        // 0x0075a4e8    d844243c
    asm("mov                eax, dword ptr [eax]");                          // 0x0075a4ec    8b00
    asm("sub.s              eax, edx");                                      // 0x0075a4ee    2bc2
    asm("{disp8} mov        edx, dword ptr [esp + 0x2c]");                   // 0x0075a4f0    8b54242c
    asm("{disp8} fst        dword ptr [esp + 0x10]");                        // 0x0075a4f4    d9542410
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075a4f8    89442418
    asm("{disp8} fdiv       dword ptr [esp + 0x14]");                        // 0x0075a4fc    d8742414
    asm("{disp8} mov        eax, dword ptr [edx + 0x04]");                   // 0x0075a500    8b4204
    asm("sub.s              eax, esi");                                      // 0x0075a503    2bc6
    asm("{disp8} fst        dword ptr [esp + 0x30]");                        // 0x0075a505    d9542430
    asm("{disp8} fmul       dword ptr [esp + 0x30]");                        // 0x0075a509    d84c2430
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075a50d    d82d90a38a00
    asm("fsqrt");                                                            // 0x0075a513    d9fa
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x0075a515    d95c2428
    asm("{disp8} fdiv       dword ptr [esp + 0x14]");                        // 0x0075a519    d8742414
    asm("{disp8} fstp       dword ptr [esp + 0x3c]");                        // 0x0075a51d    d95c243c
    asm("{disp8} fld        dword ptr [esp + 0x40]");                        // 0x0075a521    d9442440
    asm("{disp8} fdiv       dword ptr [esp + 0x14]");                        // 0x0075a525    d8742414
    asm("{disp8} fstp       dword ptr [esp + 0x40]");                        // 0x0075a529    d95c2440
    asm("{disp8} fild       dword ptr [esp + 0x18]");                        // 0x0075a52d    db442418
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075a531    89442418
    asm("{disp8} fild       dword ptr [esp + 0x18]");                        // 0x0075a535    db442418
    asm("{disp8} fst        dword ptr [esp + 0x18]");                        // 0x0075a539    d9542418
    asm("{disp8} fmul       dword ptr [esp + 0x18]");                        // 0x0075a53d    d84c2418
    asm("fld                st(1)");                                         // 0x0075a541    d9c1
    asm("fmul               st, st(2)");                                     // 0x0075a543    d8ca
    asm("faddp              st(1), st");                                     // 0x0075a545    dec1
    asm("fsqrt");                                                            // 0x0075a547    d9fa
    asm("{disp8} fst        dword ptr [esp + 0x14]");                        // 0x0075a549    d9542414
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x16518]");             // 0x0075a54d    d81d18f58b00
    asm("fnstsw             ax");                                            // 0x0075a553    dfe0
    asm("test               ah, 0x01");                                      // 0x0075a555    f6c401
    asm("{disp32} jne       _jmp_addr_0x0075a74d");                          // 0x0075a558    0f85ef010000
    asm("{disp8} fdiv       dword ptr [esp + 0x14]");                        // 0x0075a55e    d8742414
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x0075a562    d9442418
    asm("{disp8} fdiv       dword ptr [esp + 0x14]");                        // 0x0075a566    d8742414
    asm("fld                st(0)");                                         // 0x0075a56a    d9c0
    asm("{disp8} fmul       dword ptr [esp + 0x40]");                        // 0x0075a56c    d84c2440
    asm("fld                st(2)");                                         // 0x0075a570    d9c2
    asm("{disp8} fmul       dword ptr [esp + 0x3c]");                        // 0x0075a572    d84c243c
    asm("faddp              st(1), st");                                     // 0x0075a576    dec1
    asm("{disp8} fst        dword ptr [esp + 0x18]");                        // 0x0075a578    d9542418
    asm("{disp8} fcomp      dword ptr [esp + 0x28]");                        // 0x0075a57c    d85c2428
    asm("fnstsw             ax");                                            // 0x0075a580    dfe0
    asm("test               ah, 0x41");                                      // 0x0075a582    f6c441
    asm("{disp8} je         _jmp_addr_0x0075a599");                          // 0x0075a585    7412
    asm("pop                edi");                                           // 0x0075a587    5f
    asm("fstp               st(0)");                                         // 0x0075a588    ddd8
    asm("pop                esi");                                           // 0x0075a58a    5e
    asm("fstp               st(0)");                                         // 0x0075a58b    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075a58d    d90598a38a00
    asm("pop                ebp");                                           // 0x0075a593    5d
    asm("pop                ebx");                                           // 0x0075a594    5b
    asm("add                esp, 0x14");                                     // 0x0075a595    83c414
    asm("ret");                                                              // 0x0075a598    c3
    asm("_jmp_addr_0x0075a599:");
    asm("{disp8} fld        dword ptr [esp + 0x3c]");                        // 0x0075a599    d944243c
    asm("fchs");                                                             // 0x0075a59d    d9e0
    asm("fmul               st, st(1)");                                     // 0x0075a59f    d8c9
    asm("fxch               st(2)");                                         // 0x0075a5a1    d9ca
    asm("{disp8} fmul       dword ptr [esp + 0x40]");                        // 0x0075a5a3    d84c2440
    asm("faddp              st(2), st");                                     // 0x0075a5a7    dec2
    asm("fxch               st(1)");                                         // 0x0075a5a9    d9c9
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075a5ab    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075a5b1    dfe0
    asm("fstp               st(0)");                                         // 0x0075a5b3    ddd8
    asm("test               ah, 0x01");                                      // 0x0075a5b5    f6c401
    asm("{disp8} je         _jmp_addr_0x0075a5cb");                          // 0x0075a5b8    7411
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x0075a5ba    d9442448
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075a5be    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075a5c4    dfe0
    asm("test               ah, 0x41");                                      // 0x0075a5c6    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075a5dc");                          // 0x0075a5c9    7511
    asm("_jmp_addr_0x0075a5cb:");
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x0075a5cb    d9442448
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075a5cf    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075a5d5    dfe0
    asm("test               ah, 0x01");                                      // 0x0075a5d7    f6c401
    asm("{disp8} je         _jmp_addr_0x0075a651");                          // 0x0075a5da    7475
    asm("_jmp_addr_0x0075a5dc:");
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x0075a5dc    d9442428
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x0075a5e0    894c241c
    asm("{disp8} fmul       dword ptr [esp + 0x40]");                        // 0x0075a5e4    d84c2440
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");            // 0x0075a5e8    c744242000000000
    asm("fchs");                                                             // 0x0075a5f0    d9e0
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x0075a5f2    d9442430
    asm("{disp8} fmul       dword ptr [esp + 0x3c]");                        // 0x0075a5f6    d84c243c
    asm("fsubp              st(1), st");                                     // 0x0075a5fa    dee9
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075a5fc    d84c2410
    asm("{disp8} fiadd      dword ptr [esp + 0x1c]");                        // 0x0075a600    da44241c
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075a604    e8f76d0400
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x0075a609    d9442428
    asm("{disp8} fmul       dword ptr [esp + 0x3c]");                        // 0x0075a60d    d84c243c
    asm("{disp8} mov        esi, dword ptr [esp + 0x38]");                   // 0x0075a611    8b742438
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x0075a615    d9442430
    asm("mov                dword ptr [esi], eax");                          // 0x0075a619    8906
    asm("{disp8} fmul       dword ptr [esp + 0x40]");                        // 0x0075a61b    d84c2440
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                   // 0x0075a61f    8b4f04
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x0075a622    894c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");            // 0x0075a626    c744242000000000
    asm("fsubp              st(1), st");                                     // 0x0075a62e    dee9
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075a630    d84c2410
    asm("{disp8} fiadd      dword ptr [esp + 0x1c]");                        // 0x0075a634    da44241c
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075a638    e8c36d0400
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x0075a63d    d9442418
    asm("{disp8} mov        dword ptr [esi + 0x04], eax");                   // 0x0075a641    894604
    asm("call               __CIacos");                                      // 0x0075a644    e897d00600
    asm("fchs");                                                             // 0x0075a649    d9e0
    asm("test               ebp, ebp");                                      // 0x0075a64b    85ed
    asm("{disp8} je         _jmp_addr_0x0075a6c6");                          // 0x0075a64d    7477
    asm("{disp8} jmp        _jmp_addr_0x0075a6c2");                          // 0x0075a64f    eb71
    asm("_jmp_addr_0x0075a651:");
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x0075a651    d9442428
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x0075a655    894c241c
    asm("{disp8} fmul       dword ptr [esp + 0x40]");                        // 0x0075a659    d84c2440
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");            // 0x0075a65d    c744242000000000
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x0075a665    d9442430
    asm("{disp8} fmul       dword ptr [esp + 0x3c]");                        // 0x0075a669    d84c243c
    asm("fsubp              st(1), st");                                     // 0x0075a66d    dee9
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075a66f    d84c2410
    asm("{disp8} fiadd      dword ptr [esp + 0x1c]");                        // 0x0075a673    da44241c
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075a677    e8846d0400
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x0075a67c    d9442428
    asm("{disp8} fmul       dword ptr [esp + 0x3c]");                        // 0x0075a680    d84c243c
    asm("{disp8} mov        esi, dword ptr [esp + 0x38]");                   // 0x0075a684    8b742438
    asm("mov                dword ptr [esi], eax");                          // 0x0075a688    8906
    asm("{disp8} mov        edx, dword ptr [edi + 0x04]");                   // 0x0075a68a    8b5704
    asm("fchs");                                                             // 0x0075a68d    d9e0
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                   // 0x0075a68f    8954241c
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x0075a693    d9442430
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");            // 0x0075a697    c744242000000000
    asm("{disp8} fmul       dword ptr [esp + 0x40]");                        // 0x0075a69f    d84c2440
    asm("fsubp              st(1), st");                                     // 0x0075a6a3    dee9
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075a6a5    d84c2410
    asm("{disp8} fiadd      dword ptr [esp + 0x1c]");                        // 0x0075a6a9    da44241c
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075a6ad    e84e6d0400
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x0075a6b2    d9442418
    asm("{disp8} mov        dword ptr [esi + 0x04], eax");                   // 0x0075a6b6    894604
    asm("call               __CIacos");                                      // 0x0075a6b9    e822d00600
    asm("test               ebp, ebp");                                      // 0x0075a6be    85ed
    asm("{disp8} je         _jmp_addr_0x0075a6c6");                          // 0x0075a6c0    7404
    asm("_jmp_addr_0x0075a6c2:");
    asm("{disp8} mov        byte ptr [ebp + 0x00], 0x01");                   // 0x0075a6c2    c6450001
    asm("_jmp_addr_0x0075a6c6:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");                   // 0x0075a6c6    8b44242c
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075a6ca    8b08
    asm("sub                ecx, dword ptr [edi]");                          // 0x0075a6cc    2b0f
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075a6ce    8b5004
    asm("{disp8} mov        eax, dword ptr [edi + 0x04]");                   // 0x0075a6d1    8b4704
    asm("{disp8} mov        dword ptr [esp + 0x3c], ecx");                   // 0x0075a6d4    894c243c
    asm("{disp8} fild       dword ptr [esp + 0x3c]");                        // 0x0075a6d8    db44243c
    asm("sub.s              edx, eax");                                      // 0x0075a6dc    2bd0
    asm("{disp8} mov        dword ptr [esp + 0x3c], edx");                   // 0x0075a6de    8954243c
    asm("{disp8} fild       dword ptr [esp + 0x3c]");                        // 0x0075a6e2    db44243c
    asm("fld                st(0)");                                         // 0x0075a6e6    d9c0
    asm("fmul               st, st(1)");                                     // 0x0075a6e8    d8c9
    asm("fld                st(2)");                                         // 0x0075a6ea    d9c2
    asm("fmul               st, st(3)");                                     // 0x0075a6ec    d8cb
    asm("faddp              st(1), st");                                     // 0x0075a6ee    dec1
    asm("fsqrt");                                                            // 0x0075a6f0    d9fa
    asm("fstp               st(2)");                                         // 0x0075a6f2    ddda
    asm("fstp               st(0)");                                         // 0x0075a6f4    ddd8
    asm("{disp8} fcomp      dword ptr [esp + 0x34]");                        // 0x0075a6f6    d85c2434
    asm("fnstsw             ax");                                            // 0x0075a6fa    dfe0
    asm("test               ah, 0x01");                                      // 0x0075a6fc    f6c401
    asm("{disp8} je         _jmp_addr_0x0075a714");                          // 0x0075a6ff    7413
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                   // 0x0075a701    8b442444
    asm("test               eax, eax");                                      // 0x0075a705    85c0
    asm("{disp8} je         _jmp_addr_0x0075a755");                          // 0x0075a707    744c
    asm("pop                edi");                                           // 0x0075a709    5f
    asm("pop                esi");                                           // 0x0075a70a    5e
    asm("pop                ebp");                                           // 0x0075a70b    5d
    asm("mov                byte ptr [eax], 0x01");                          // 0x0075a70c    c60001
    asm("pop                ebx");                                           // 0x0075a70f    5b
    asm("add                esp, 0x14");                                     // 0x0075a710    83c414
    asm("ret");                                                              // 0x0075a713    c3
    asm("_jmp_addr_0x0075a714:");
    asm("mov                ecx, dword ptr [ebx]");                          // 0x0075a714    8b0b
    asm("mov                eax, dword ptr [esi]");                          // 0x0075a716    8b06
    asm("sub.s              eax, ecx");                                      // 0x0075a718    2bc1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x04]");                   // 0x0075a71a    8b4e04
    asm("{disp8} mov        dword ptr [esp + 0x34], eax");                   // 0x0075a71d    89442434
    asm("{disp8} mov        eax, dword ptr [ebx + 0x04]");                   // 0x0075a721    8b4304
    asm("{disp8} fild       dword ptr [esp + 0x34]");                        // 0x0075a724    db442434
    asm("sub.s              ecx, eax");                                      // 0x0075a728    2bc8
    asm("{disp8} mov        dword ptr [esp + 0x34], ecx");                   // 0x0075a72a    894c2434
    asm("{disp8} fild       dword ptr [esp + 0x34]");                        // 0x0075a72e    db442434
    asm("fld                st(0)");                                         // 0x0075a732    d9c0
    asm("fmul               st, st(1)");                                     // 0x0075a734    d8c9
    asm("fld                st(2)");                                         // 0x0075a736    d9c2
    asm("fmul               st, st(3)");                                     // 0x0075a738    d8cb
    asm("faddp              st(1), st");                                     // 0x0075a73a    dec1
    asm("fsqrt");                                                            // 0x0075a73c    d9fa
    asm("fstp               st(2)");                                         // 0x0075a73e    ddda
    asm("fstp               st(0)");                                         // 0x0075a740    ddd8
    asm("{disp8} fcomp      dword ptr [esp + 0x14]");                        // 0x0075a742    d85c2414
    asm("fnstsw             ax");                                            // 0x0075a746    dfe0
    asm("test               ah, 0x01");                                      // 0x0075a748    f6c401
    asm("{disp8} jne        _jmp_addr_0x0075a755");                          // 0x0075a74b    7508
    asm("_jmp_addr_0x0075a74d:");
    asm("fstp               st(0)");                                         // 0x0075a74d    ddd8
    asm("_jmp_addr_0x0075a74f:");
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075a74f    d90598a38a00
    asm("_jmp_addr_0x0075a755:");
    asm("pop                edi");                                           // 0x0075a755    5f
    asm("pop                esi");                                           // 0x0075a756    5e
    asm("pop                ebp");                                           // 0x0075a757    5d
    asm("pop                ebx");                                           // 0x0075a758    5b
    asm("add                esp, 0x14");                                     // 0x0075a759    83c414
    asm("ret");                                                              // 0x0075a75c    c3
    __builtin_unreachable();
}

void FUN_0075a760__8VillagerFv(void)
{
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetupMoveAroundFire__8VillagerFRC9MapCoords15VILLAGER_STATES(struct Villager* this, const void* edx, const struct MapCoords* param_1, enum VILLAGER_STATES param_2)
{
    asm("push               esi");                                           // 0x0075a770    56
    asm("mov.s              esi, ecx");                                      // 0x0075a771    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x0075a773    8b06
    asm("push               0x000000dc");                                    // 0x0075a775    68dc000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075a77a    ff90e8080000
    asm("cmp                eax, 0x01");                                     // 0x0075a780    83f801
    asm("{disp8} jne        _jmp_addr_0x0075a7d7");                          // 0x0075a783    7552
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075a785    8b4c2408
    asm("push               edi");                                           // 0x0075a789    57
    asm("push               ecx");                                           // 0x0075a78a    51
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000010c]");             // 0x0075a78b    8d8e0c010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x0075a791    e86a71e8ff
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x0075a796    8b7c2410
    asm("mov                edx, dword ptr [esi]");                          // 0x0075a79a    8b16
    asm("push               edi");                                           // 0x0075a79c    57
    asm("push               0x2");                                           // 0x0075a79d    6a02
    asm("mov.s              ecx, esi");                                      // 0x0075a79f    8bce
    asm("call               dword ptr [edx + 0x938]");                       // 0x0075a7a1    ff9238090000
    asm("cmp                edi, 0x3b");                                     // 0x0075a7a7    83ff3b
    asm("pop                edi");                                           // 0x0075a7aa    5f
    asm("{disp8} jne        _jmp_addr_0x0075a7ce");                          // 0x0075a7ab    7521
    asm("mov                eax, dword ptr [esi]");                          // 0x0075a7ad    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075a7af    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075a7b1    ff5048
    asm("test               eax, eax");                                      // 0x0075a7b4    85c0
    asm("{disp8} je         _jmp_addr_0x0075a7ce");                          // 0x0075a7b6    7416
    asm("mov                edx, dword ptr [esi]");                          // 0x0075a7b8    8b16
    asm("push               esi");                                           // 0x0075a7ba    56
    asm("mov.s              ecx, esi");                                      // 0x0075a7bb    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075a7bd    ff5248
    asm("mov.s              ecx, eax");                                      // 0x0075a7c0    8bc8
    asm("call               _jmp_addr_0x0073e300");                          // 0x0075a7c2    e8393bfeff
    asm("or                 byte ptr [esi + 0xe0], 0x10");                   // 0x0075a7c7    808ee000000010
    asm("_jmp_addr_0x0075a7ce:");
    asm("mov                eax, 0x00000001");                               // 0x0075a7ce    b801000000
    asm("pop                esi");                                           // 0x0075a7d3    5e
    asm("ret                0x0008");                                        // 0x0075a7d4    c20800
    asm("_jmp_addr_0x0075a7d7:");
    asm("xor.s              eax, eax");                                      // 0x0075a7d7    33c0
    asm("pop                esi");                                           // 0x0075a7d9    5e
    asm("ret                0x0008");                                        // 0x0075a7da    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall MoveAroundFire__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x28");                                     // 0x0075a7e0    83ec28
    asm("push               ebx");                                           // 0x0075a7e3    53
    asm("push               ebp");                                           // 0x0075a7e4    55
    asm("push               esi");                                           // 0x0075a7e5    56
    asm("mov.s              esi, ecx");                                      // 0x0075a7e6    8bf1
    asm("{disp32} lea       eax, dword ptr [esi + 0x0000010c]");             // 0x0075a7e8    8d860c010000
    asm("push               edi");                                           // 0x0075a7ee    57
    asm("push               eax");                                           // 0x0075a7ef    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                   // 0x0075a7f0    8d4c2424
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075a7f4    89442420
    asm("call               _jmp_addr_0x00603030");                          // 0x0075a7f8    e83388eaff
    asm("mov                eax, dword ptr [esi]");                          // 0x0075a7fd    8b06
    asm("xor.s              ebx, ebx");                                      // 0x0075a7ff    33db
    asm("push               ebx");                                           // 0x0075a801    53
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                   // 0x0075a802    8d4c2424
    asm("push               ecx");                                           // 0x0075a806    51
    asm("mov.s              ecx, esi");                                      // 0x0075a807    8bce
    asm("call               dword ptr [eax + 0x85c]");                       // 0x0075a809    ff905c080000
    asm("test               eax, eax");                                      // 0x0075a80f    85c0
    asm("{disp8} je         _jmp_addr_0x0075a839");                          // 0x0075a811    7426
    asm("mov.s              ecx, esi");                                      // 0x0075a813    8bce
    asm("call               ?PopFromPrevious@Villager@@QAEXXZ");             // 0x0075a815    e83676ffff
    asm("push               0x000000a3");                                    // 0x0075a81a    68a3000000
    asm("push               0x2");                                           // 0x0075a81f    6a02
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x0075a821    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x0075a827    e86424e9ff
    asm("pop                edi");                                           // 0x0075a82c    5f
    asm("pop                esi");                                           // 0x0075a82d    5e
    asm("pop                ebp");                                           // 0x0075a82e    5d
    asm("mov                eax, 0x00000001");                               // 0x0075a82f    b801000000
    asm("pop                ebx");                                           // 0x0075a834    5b
    asm("add                esp, 0x28");                                     // 0x0075a835    83c428
    asm("ret");                                                              // 0x0075a838    c3
    asm("_jmp_addr_0x0075a839:");
    asm("{disp32} mov       ebp, dword ptr [esi + 0x00000114]");             // 0x0075a839    8bae14010000
    asm("cmp.s              ebp, ebx");                                      // 0x0075a83f    3beb
    asm("{disp8} mov        dword ptr [esp + 0x18], ebx");                   // 0x0075a841    895c2418
    asm("{disp32} je        _jmp_addr_0x0075aa79");                          // 0x0075a845    0f842e020000
    asm("mov.s              ecx, ebp");                                      // 0x0075a84b    8bcd
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075a84d    e89e5dfdff
    asm("test               eax, eax");                                      // 0x0075a852    85c0
    asm("{disp32} je        _jmp_addr_0x0075aa79");                          // 0x0075a854    0f841f020000
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x0075a85a    8b442420
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x0075a85e    8b4c2424
    asm("{disp32} lea       edi, dword ptr [esi + 0x00000080]");             // 0x0075a862    8dbe80000000
    asm("mov.s              edx, edi");                                      // 0x0075a868    8bd7
    asm("mov                dword ptr [edx], eax");                          // 0x0075a86a    8902
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");                   // 0x0075a86c    8b442428
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x0075a870    894a04
    asm("push               ebx");                                           // 0x0075a873    53
    asm("{disp8} mov        dword ptr [edx + 0x08], eax");                   // 0x0075a874    894208
    asm("mov                eax, dword ptr [esi]");                          // 0x0075a877    8b06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x16]");                   // 0x0075a879    8d4c2416
    asm("push               ecx");                                           // 0x0075a87d    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x19]");                   // 0x0075a87e    8d542419
    asm("push               edx");                                           // 0x0075a882    52
    asm("mov.s              ecx, esi");                                      // 0x0075a883    8bce
    asm("{disp8} mov        byte ptr [esp + 0x1d], bl");                     // 0x0075a885    885c241d
    asm("{disp8} mov        byte ptr [esp + 0x1e], bl");                     // 0x0075a889    885c241e
    asm("{disp8} mov        byte ptr [esp + 0x1f], bl");                     // 0x0075a88d    885c241f
    asm("{disp8} mov        dword ptr [esp + 0x38], ebx");                   // 0x0075a891    895c2438
    asm("{disp8} mov        dword ptr [esp + 0x3c], ebx");                   // 0x0075a895    895c243c
    asm("{disp8} mov        dword ptr [esp + 0x40], 0x00000000");            // 0x0075a899    c744244000000000
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");            // 0x0075a8a1    c744242000000000
    asm("call               dword ptr [eax + 0x64]");                        // 0x0075a8a9    ff5064
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x0075a8ac    d80590a38a00
    asm("push               ecx");                                           // 0x0075a8b2    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                   // 0x0075a8b3    8d4c243c
    asm("fstp               dword ptr [esp]");                               // 0x0075a8b7    d91c24
    asm("push               ecx");                                           // 0x0075a8ba    51
    asm("mov.s              ecx, ebp");                                      // 0x0075a8bb    8bcd
    asm("call               _jmp_addr_0x00730020");                          // 0x0075a8bd    e85e57fdff
    asm("push               ecx");                                           // 0x0075a8c2    51
    asm("mov.s              ecx, ebp");                                      // 0x0075a8c3    8bcd
    asm("fstp               dword ptr [esp]");                               // 0x0075a8c5    d91c24
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075a8c8    e8235dfdff
    asm("mov                edx, dword ptr [esi]");                          // 0x0075a8cd    8b16
    asm("add                eax, 0x14");                                     // 0x0075a8cf    83c014
    asm("push               eax");                                           // 0x0075a8d2    50
    asm("mov.s              ecx, esi");                                      // 0x0075a8d3    8bce
    asm("call               dword ptr [edx + 0x860]");                       // 0x0075a8d5    ff9260080000
    asm("push               eax");                                           // 0x0075a8db    50
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0075a8dc    8d4614
    asm("push               eax");                                           // 0x0075a8df    50
    asm("call               ?GetViaPoint@@YGMABUMapCoords@@00MAAU1@MPA_N2M@Z");                          // 0x0075a8e0    e85bfbffff
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075a8e5    d81598a38a00
    asm("add                esp, 0x24");                                     // 0x0075a8eb    83c424
    asm("fnstsw             ax");                                            // 0x0075a8ee    dfe0
    asm("test               ah, 0x40");                                      // 0x0075a8f0    f6c440
    asm("{disp8} jne        _jmp_addr_0x0075a918");                          // 0x0075a8f3    7523
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");                   // 0x0075a8f5    8b44242c
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075a8f9    d95c2414
    asm("{disp8} mov        ecx, dword ptr [esp + 0x30]");                   // 0x0075a8fd    8b4c2430
    asm("{disp8} mov        edx, dword ptr [esp + 0x34]");                   // 0x0075a901    8b542434
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075a905    89442420
    asm("{disp8} mov        dword ptr [esp + 0x24], ecx");                   // 0x0075a909    894c2424
    asm("{disp8} mov        dword ptr [esp + 0x28], edx");                   // 0x0075a90d    89542428
    asm("{disp8} mov        byte ptr [esp + 0x13], 0x01");                   // 0x0075a911    c644241301
    asm("{disp8} jmp        _jmp_addr_0x0075a91a");                          // 0x0075a916    eb02
    asm("_jmp_addr_0x0075a918:");
    asm("fstp               st(0)");                                         // 0x0075a918    ddd8
    asm("_jmp_addr_0x0075a91a:");
    asm("cmp                byte ptr [esp + 0x11], bl");                     // 0x0075a91a    385c2411
    asm("{disp8} je         _jmp_addr_0x0075a966");                          // 0x0075a91e    7446
    asm("cmp                byte ptr [esp + 0x12], bl");                     // 0x0075a920    385c2412
    asm("{disp8} je         _jmp_addr_0x0075a966");                          // 0x0075a924    7440
    asm("mov                eax, dword ptr [esi]");                          // 0x0075a926    8b06
    asm("push               0x000000a3");                                    // 0x0075a928    68a3000000
    asm("push               0x2");                                           // 0x0075a92d    6a02
    asm("mov.s              ecx, esi");                                      // 0x0075a92f    8bce
    asm("call               dword ptr [eax + 0x938]");                       // 0x0075a931    ff9038090000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x0075a937    8b4c2420
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");                   // 0x0075a93b    8b542424
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");                   // 0x0075a93f    8b442428
    asm("mov                dword ptr [edi], ecx");                          // 0x0075a943    890f
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x0075a945    8d4c2420
    asm("push               ecx");                                           // 0x0075a949    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x0075a94a    8b4c2420
    asm("{disp8} mov        dword ptr [edi + 0x04], edx");                   // 0x0075a94e    895704
    asm("{disp8} mov        dword ptr [edi + 0x08], eax");                   // 0x0075a951    894708
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x0075a954    e8a76fe8ff
    asm("pop                edi");                                           // 0x0075a959    5f
    asm("pop                esi");                                           // 0x0075a95a    5e
    asm("pop                ebp");                                           // 0x0075a95b    5d
    asm("mov                eax, 0x00000001");                               // 0x0075a95c    b801000000
    asm("pop                ebx");                                           // 0x0075a961    5b
    asm("add                esp, 0x28");                                     // 0x0075a962    83c428
    asm("ret");                                                              // 0x0075a965    c3
    asm("_jmp_addr_0x0075a966:");
    asm("mov.s              ecx, ebp");                                      // 0x0075a966    8bcd
    asm("call               ?GetFirstCaused@FireEffect@@QAEIXZ");            // 0x0075a968    e87381fdff
    asm("mov.s              edi, eax");                                      // 0x0075a96d    8bf8
    asm("cmp.s              edi, ebx");                                      // 0x0075a96f    3bfb
    asm("{disp32} je        _jmp_addr_0x0075aa33");                          // 0x0075a971    0f84bc000000
    asm("_jmp_addr_0x0075a977:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");                   // 0x0075a977    8b542414
    asm("push               edx");                                           // 0x0075a97b    52
    asm("mov                edx, dword ptr [esi]");                          // 0x0075a97c    8b16
    asm("{disp8} lea        eax, dword ptr [esp + 0x16]");                   // 0x0075a97e    8d442416
    asm("push               eax");                                           // 0x0075a982    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x19]");                   // 0x0075a983    8d4c2419
    asm("push               ecx");                                           // 0x0075a987    51
    asm("mov.s              ecx, esi");                                      // 0x0075a988    8bce
    asm("{disp8} mov        byte ptr [esp + 0x1d], bl");                     // 0x0075a98a    885c241d
    asm("{disp8} mov        byte ptr [esp + 0x1e], bl");                     // 0x0075a98e    885c241e
    asm("call               dword ptr [edx + 0x64]");                        // 0x0075a992    ff5264
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x0075a995    d80590a38a00
    asm("push               ecx");                                           // 0x0075a99b    51
    asm("{disp8} lea        eax, dword ptr [esp + 0x3c]");                   // 0x0075a99c    8d44243c
    asm("fstp               dword ptr [esp]");                               // 0x0075a9a0    d91c24
    asm("push               eax");                                           // 0x0075a9a3    50
    asm("mov.s              ecx, edi");                                      // 0x0075a9a4    8bcf
    asm("call               _jmp_addr_0x00730020");                          // 0x0075a9a6    e87556fdff
    asm("push               ecx");                                           // 0x0075a9ab    51
    asm("mov.s              ecx, edi");                                      // 0x0075a9ac    8bcf
    asm("fstp               dword ptr [esp]");                               // 0x0075a9ae    d91c24
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075a9b1    e83a5cfdff
    asm("add                eax, 0x14");                                     // 0x0075a9b6    83c014
    asm("push               eax");                                           // 0x0075a9b9    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                   // 0x0075a9ba    8d4c243c
    asm("push               ecx");                                           // 0x0075a9be    51
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0075a9bf    8d4614
    asm("push               eax");                                           // 0x0075a9c2    50
    asm("call               ?GetViaPoint@@YGMABUMapCoords@@00MAAU1@MPA_N2M@Z");                          // 0x0075a9c3    e878faffff
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075a9c8    d81598a38a00
    asm("add                esp, 0x24");                                     // 0x0075a9ce    83c424
    asm("fnstsw             ax");                                            // 0x0075a9d1    dfe0
    asm("test               ah, 0x40");                                      // 0x0075a9d3    f6c440
    asm("{disp8} je         _jmp_addr_0x0075a9f1");                          // 0x0075a9d6    7419
    asm("cmp                byte ptr [esp + 0x11], bl");                     // 0x0075a9d8    385c2411
    asm("{disp8} je         _jmp_addr_0x0075a9e4");                          // 0x0075a9dc    7406
    asm("cmp                byte ptr [esp + 0x12], bl");                     // 0x0075a9de    385c2412
    asm("{disp8} jne        _jmp_addr_0x0075a9f1");                          // 0x0075a9e2    750d
    asm("_jmp_addr_0x0075a9e4:");
    asm("mov.s              ecx, edi");                                      // 0x0075a9e4    8bcf
    asm("fstp               st(0)");                                         // 0x0075a9e6    ddd8
    asm("call               _jmp_addr_0x00732ad0");                          // 0x0075a9e8    e8e380fdff
    asm("mov.s              edi, eax");                                      // 0x0075a9ed    8bf8
    asm("{disp8} jmp        _jmp_addr_0x0075aa2b");                          // 0x0075a9ef    eb3a
    asm("_jmp_addr_0x0075a9f1:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                   // 0x0075a9f1    8b4c2434
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075a9f5    d95c2414
    asm("{disp8} mov        edx, dword ptr [esp + 0x2c]");                   // 0x0075a9f9    8b54242c
    asm("{disp8} mov        eax, dword ptr [esp + 0x30]");                   // 0x0075a9fd    8b442430
    asm("{disp8} mov        dword ptr [esp + 0x28], ecx");                   // 0x0075aa01    894c2428
    asm("mov.s              ecx, edi");                                      // 0x0075aa05    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                   // 0x0075aa07    89542420
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                   // 0x0075aa0b    89442424
    asm("{disp8} mov        byte ptr [esp + 0x13], 0x01");                   // 0x0075aa0f    c644241301
    asm("call               ?GetFirstCaused@FireEffect@@QAEIXZ");            // 0x0075aa14    e8c780fdff
    asm("mov.s              edi, eax");                                      // 0x0075aa19    8bf8
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x0075aa1b    8b442418
    asm("inc                eax");                                           // 0x0075aa1f    40
    asm("cmp                eax, 0x000003e8");                               // 0x0075aa20    3de8030000
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075aa25    89442418
    asm("{disp8} jae        _jmp_addr_0x0075aa79");                          // 0x0075aa29    734e
    asm("_jmp_addr_0x0075aa2b:");
    asm("cmp.s              edi, ebx");                                      // 0x0075aa2b    3bfb
    asm("{disp32} jne       _jmp_addr_0x0075a977");                          // 0x0075aa2d    0f8544ffffff
    asm("_jmp_addr_0x0075aa33:");
    asm("cmp                byte ptr [esp + 0x13], bl");                     // 0x0075aa33    385c2413
    asm("{disp8} jne        _jmp_addr_0x0075aa47");                          // 0x0075aa37    750e
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                   // 0x0075aa39    8b54241c
    asm("push               edx");                                           // 0x0075aa3d    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                   // 0x0075aa3e    8d4c2424
    asm("call               _jmp_addr_0x00603260");                          // 0x0075aa42    e81988eaff
    asm("_jmp_addr_0x0075aa47:");
    asm("push               0x000000dc");                                    // 0x0075aa47    68dc000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0075aa4c    8d442424
    asm("push               eax");                                           // 0x0075aa50    50
    asm("mov.s              ecx, esi");                                      // 0x0075aa51    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075aa53    e8387ee9ff
    asm("test               eax, eax");                                      // 0x0075aa58    85c0
    asm("{disp8} je         _jmp_addr_0x0075aa79");                          // 0x0075aa5a    741d
    asm("xor.s              ecx, ecx");                                      // 0x0075aa5c    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008e]");               // 0x0075aa5e    8a8e8e000000
    asm("push               ecx");                                           // 0x0075aa64    51
    asm("mov.s              ecx, esi");                                      // 0x0075aa65    8bce
    asm("call               ?SetStateSpeed@Villager@@QAEXE@Z");              // 0x0075aa67    e8f48cffff
    asm("pop                edi");                                           // 0x0075aa6c    5f
    asm("pop                esi");                                           // 0x0075aa6d    5e
    asm("pop                ebp");                                           // 0x0075aa6e    5d
    asm("mov                eax, 0x00000001");                               // 0x0075aa6f    b801000000
    asm("pop                ebx");                                           // 0x0075aa74    5b
    asm("add                esp, 0x28");                                     // 0x0075aa75    83c428
    asm("ret");                                                              // 0x0075aa78    c3
    asm("_jmp_addr_0x0075aa79:");
    asm("pop                edi");                                           // 0x0075aa79    5f
    asm("pop                esi");                                           // 0x0075aa7a    5e
    asm("pop                ebp");                                           // 0x0075aa7b    5d
    asm("xor.s              eax, eax");                                      // 0x0075aa7c    33c0
    asm("pop                ebx");                                           // 0x0075aa7e    5b
    asm("add                esp, 0x28");                                     // 0x0075aa7f    83c428
    asm("ret");                                                              // 0x0075aa82    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GetFireFightingPos__8VillagerFP10FireEffectP9MapCoords(struct Villager* this, const void* edx, struct FireEffect* param_1, struct MapCoords* param_2)
{
    asm("sub                esp, 0x28");                                     // 0x0075aa90    83ec28
    asm("push               ebx");                                           // 0x0075aa93    53
    asm("push               esi");                                           // 0x0075aa94    56
    asm("push               edi");                                           // 0x0075aa95    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x38]");                   // 0x0075aa96    8b7c2438
    asm("test               edi, edi");                                      // 0x0075aa9a    85ff
    asm("mov.s              ebx, ecx");                                      // 0x0075aa9c    8bd9
    asm("{disp32} je        _jmp_addr_0x0075ab91");                          // 0x0075aa9e    0f84ed000000
    asm("mov.s              ecx, edi");                                      // 0x0075aaa4    8bcf
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075aaa6    e8455bfdff
    asm("mov.s              esi, eax");                                      // 0x0075aaab    8bf0
    asm("test               esi, esi");                                      // 0x0075aaad    85f6
    asm("{disp32} je        _jmp_addr_0x0075ab91");                          // 0x0075aaaf    0f84dc000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075aab5    8d442410
    asm("push               eax");                                           // 0x0075aab9    50
    asm("mov.s              ecx, edi");                                      // 0x0075aaba    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x0075aabc    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");            // 0x0075aac4    c744241800000000
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x0075aacc    c744241c00000000
    asm("call               _jmp_addr_0x0072fef0");                          // 0x0075aad4    e81754fdff
    asm("{disp8} lea        ecx, dword ptr [ebx + 0x14]");                   // 0x0075aad9    8d4b14
    asm("push               ecx");                                           // 0x0075aadc    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x0075aadd    8d542414
    asm("push               edx");                                           // 0x0075aae1    52
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075aae2    e88927ffff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075aae7    d95c2414
    asm("mov                eax, dword ptr [esi]");                          // 0x0075aaeb    8b06
    asm("add                esp, 0x08");                                     // 0x0075aaed    83c408
    asm("mov.s              ecx, esi");                                      // 0x0075aaf0    8bce
    asm("call               dword ptr [eax + 0x64]");                        // 0x0075aaf2    ff5064
    asm("{disp8} fstp       dword ptr [esp + 0x38]");                        // 0x0075aaf5    d95c2438
    asm("mov.s              ecx, edi");                                      // 0x0075aaf9    8bcf
    asm("call               _jmp_addr_0x00730020");                          // 0x0075aafb    e82055fdff
    asm("{disp8} fcomp      dword ptr [esp + 0x38]");                        // 0x0075ab00    d85c2438
    asm("fnstsw             ax");                                            // 0x0075ab04    dfe0
    asm("test               ah, 0x01");                                      // 0x0075ab06    f6c401
    asm("{disp8} je         _jmp_addr_0x0075ab14");                          // 0x0075ab09    7409
    asm("mov                edx, dword ptr [esi]");                          // 0x0075ab0b    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075ab0d    8bce
    asm("call               dword ptr [edx + 0x64]");                        // 0x0075ab0f    ff5264
    asm("{disp8} jmp        _jmp_addr_0x0075ab1b");                          // 0x0075ab12    eb07
    asm("_jmp_addr_0x0075ab14:");
    asm("mov.s              ecx, edi");                                      // 0x0075ab14    8bcf
    asm("call               _jmp_addr_0x00730020");                          // 0x0075ab16    e80555fdff
    asm("_jmp_addr_0x0075ab1b:");
    asm("mov                eax, dword ptr [ebx]");                          // 0x0075ab1b    8b03
    asm("{disp8} fstp       dword ptr [esp + 0x38]");                        // 0x0075ab1d    d95c2438
    asm("mov.s              ecx, ebx");                                      // 0x0075ab21    8bcb
    asm("call               dword ptr [eax + 0x64]");                        // 0x0075ab23    ff5064
    asm("{disp8} fadd       dword ptr [esp + 0x38]");                        // 0x0075ab26    d8442438
    asm("push               0x00000133");                                    // 0x0075ab2a    6833010000
    asm("push               0x00c2372c");                                    // 0x0075ab2f    682c37c200
    asm("{disp8} fstp       dword ptr [esp + 0x40]");                        // 0x0075ab34    d95c2440
    asm("push               0x3f800000");                                    // 0x0075ab38    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075ab3d    e8ee39f8ff
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                   // 0x0075ab42    8b542418
    asm("{disp8} fadd       dword ptr [esp + 0x44]");                        // 0x0075ab46    d8442444
    asm("{disp8} lea        eax, dword ptr [esp + 0x28]");                   // 0x0075ab4a    8d442428
    asm("{disp8} fstp       dword ptr [esp + 0x44]");                        // 0x0075ab4e    d95c2444
    asm("{disp8} mov        ecx, dword ptr [esp + 0x44]");                   // 0x0075ab52    8b4c2444
    asm("push               ecx");                                           // 0x0075ab56    51
    asm("push               edx");                                           // 0x0075ab57    52
    asm("push               eax");                                           // 0x0075ab58    50
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x0075ab59    e8222affff
    asm("add                esp, 0x18");                                     // 0x0075ab5e    83c418
    asm("push               eax");                                           // 0x0075ab61    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x2c]");                   // 0x0075ab62    8d4c242c
    asm("push               ecx");                                           // 0x0075ab66    51
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075ab67    8d4e14
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x0075ab6a    e8b1a9eaff
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075ab6f    8b08
    asm("{disp8} mov        edx, dword ptr [esp + 0x3c]");                   // 0x0075ab71    8b54243c
    asm("mov                dword ptr [edx], ecx");                          // 0x0075ab75    890a
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075ab77    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x0075ab7a    894a04
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075ab7d    8b4008
    asm("pop                edi");                                           // 0x0075ab80    5f
    asm("pop                esi");                                           // 0x0075ab81    5e
    asm("{disp8} mov        dword ptr [edx + 0x08], eax");                   // 0x0075ab82    894208
    asm("mov                eax, 0x00000001");                               // 0x0075ab85    b801000000
    asm("pop                ebx");                                           // 0x0075ab8a    5b
    asm("add                esp, 0x28");                                     // 0x0075ab8b    83c428
    asm("ret                0x0008");                                        // 0x0075ab8e    c20800
    asm("_jmp_addr_0x0075ab91:");
    asm("pop                edi");                                           // 0x0075ab91    5f
    asm("pop                esi");                                           // 0x0075ab92    5e
    asm("xor.s              eax, eax");                                      // 0x0075ab93    33c0
    asm("pop                ebx");                                           // 0x0075ab95    5b
    asm("add                esp, 0x28");                                     // 0x0075ab96    83c428
    asm("ret                0x0008");                                        // 0x0075ab99    c20800
    asm("nop");                                                              // 0x0075ab9c    90
    asm("nop");                                                              // 0x0075ab9d    90
    asm("nop");                                                              // 0x0075ab9e    90
    asm("nop");                                                              // 0x0075ab9f    90
    asm("_jmp_addr_0x0075aba0:");
    asm("push               ecx");                                           // 0x0075aba0    51
    asm("push               ebx");                                           // 0x0075aba1    53
    asm("push               esi");                                           // 0x0075aba2    56
    asm("push               edi");                                           // 0x0075aba3    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                   // 0x0075aba4    8b7c2414
    asm("test               edi, edi");                                      // 0x0075aba8    85ff
    asm("mov.s              ebx, ecx");                                      // 0x0075abaa    8bd9
    asm("{disp32} je        _jmp_addr_0x0075ac39");                          // 0x0075abac    0f8487000000
    asm("mov.s              ecx, edi");                                      // 0x0075abb2    8bcf
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075abb4    e8375afdff
    asm("mov.s              esi, eax");                                      // 0x0075abb9    8bf0
    asm("test               esi, esi");                                      // 0x0075abbb    85f6
    asm("{disp8} je         _jmp_addr_0x0075ac39");                          // 0x0075abbd    747a
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0075abbf    8d4614
    asm("push               eax");                                           // 0x0075abc2    50
    asm("{disp8} lea        ecx, dword ptr [ebx + 0x14]");                   // 0x0075abc3    8d4b14
    asm("push               ecx");                                           // 0x0075abc6    51
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075abc7    e8a421ffff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075abcc    d95c2414
    asm("mov                edx, dword ptr [esi]");                          // 0x0075abd0    8b16
    asm("add                esp, 0x08");                                     // 0x0075abd2    83c408
    asm("mov.s              ecx, esi");                                      // 0x0075abd5    8bce
    asm("call               dword ptr [edx + 0x64]");                        // 0x0075abd7    ff5264
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075abda    d95c2414
    asm("mov.s              ecx, edi");                                      // 0x0075abde    8bcf
    asm("call               _jmp_addr_0x00730020");                          // 0x0075abe0    e83b54fdff
    asm("{disp8} fcomp      dword ptr [esp + 0x14]");                        // 0x0075abe5    d85c2414
    asm("fnstsw             ax");                                            // 0x0075abe9    dfe0
    asm("test               ah, 0x01");                                      // 0x0075abeb    f6c401
    asm("{disp8} je         _jmp_addr_0x0075abf9");                          // 0x0075abee    7409
    asm("mov                eax, dword ptr [esi]");                          // 0x0075abf0    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075abf2    8bce
    asm("call               dword ptr [eax + 0x64]");                        // 0x0075abf4    ff5064
    asm("{disp8} jmp        _jmp_addr_0x0075ac00");                          // 0x0075abf7    eb07
    asm("_jmp_addr_0x0075abf9:");
    asm("mov.s              ecx, edi");                                      // 0x0075abf9    8bcf
    asm("call               _jmp_addr_0x00730020");                          // 0x0075abfb    e82054fdff
    asm("_jmp_addr_0x0075ac00:");
    asm("mov                edx, dword ptr [ebx]");                          // 0x0075ac00    8b13
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075ac02    d95c2414
    asm("mov.s              ecx, ebx");                                      // 0x0075ac06    8bcb
    asm("call               dword ptr [edx + 0x64]");                        // 0x0075ac08    ff5264
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x0075ac0b    d8442414
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x0075ac0f    d944240c
    asm("fcomp              st(1)");                                         // 0x0075ac13    d8d9
    asm("fnstsw             ax");                                            // 0x0075ac15    dfe0
    asm("test               ah, 0x41");                                      // 0x0075ac17    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075ac37");                          // 0x0075ac1a    751b
    asm("{disp8} fadd       dword ptr [esp + 0x18]");                        // 0x0075ac1c    d8442418
    asm("{disp8} fcomp      dword ptr [esp + 0x0c]");                        // 0x0075ac20    d85c240c
    asm("fnstsw             ax");                                            // 0x0075ac24    dfe0
    asm("test               ah, 0x41");                                      // 0x0075ac26    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075ac39");                          // 0x0075ac29    750e
    asm("pop                edi");                                           // 0x0075ac2b    5f
    asm("pop                esi");                                           // 0x0075ac2c    5e
    asm("mov                eax, 0x00000001");                               // 0x0075ac2d    b801000000
    asm("pop                ebx");                                           // 0x0075ac32    5b
    asm("pop                ecx");                                           // 0x0075ac33    59
    asm("ret                0x0008");                                        // 0x0075ac34    c20800
    asm("_jmp_addr_0x0075ac37:");
    asm("fstp               st(0)");                                         // 0x0075ac37    ddd8
    asm("_jmp_addr_0x0075ac39:");
    asm("pop                edi");                                           // 0x0075ac39    5f
    asm("pop                esi");                                           // 0x0075ac3a    5e
    asm("xor.s              eax, eax");                                      // 0x0075ac3b    33c0
    asm("pop                ebx");                                           // 0x0075ac3d    5b
    asm("pop                ecx");                                           // 0x0075ac3e    59
    asm("ret                0x0008");                                        // 0x0075ac3f    c20800
    __builtin_unreachable();
}

bool32_t __fastcall PutOutFireByBeating__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x4c");                                     // 0x0075ac50    83ec4c
    asm("push               esi");                                           // 0x0075ac53    56
    asm("mov.s              esi, ecx");                                      // 0x0075ac54    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000114]");             // 0x0075ac56    8b8614010000
    asm("push               0x40000000");                                    // 0x0075ac5c    6800000040
    asm("push               eax");                                           // 0x0075ac61    50
    asm("call               _jmp_addr_0x0075aba0");                          // 0x0075ac62    e839ffffff
    asm("test               eax, eax");                                      // 0x0075ac67    85c0
    asm("{disp32} je        _jmp_addr_0x0075ad26");                          // 0x0075ac69    0f84b7000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075ac6f    8b8e14010000
    asm("push               0x2");                                           // 0x0075ac75    6a02
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075ac77    e87459fdff
    asm("push               eax");                                           // 0x0075ac7c    50
    asm("mov.s              ecx, esi");                                      // 0x0075ac7d    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0075ac7f    e89c18e9ff
    asm("test               eax, eax");                                      // 0x0075ac84    85c0
    asm("{disp32} je        _jmp_addr_0x0075ad7f");                          // 0x0075ac86    0f84f3000000
    asm("push               0x1");                                           // 0x0075ac8c    6a01
    asm("mov.s              ecx, esi");                                      // 0x0075ac8e    8bce
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x0075ac90    e8cb1ce9ff
    asm("test               eax, eax");                                      // 0x0075ac95    85c0
    asm("{disp32} je        _jmp_addr_0x0075ad7f");                          // 0x0075ac97    0f84e2000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075ac9d    8b8e14010000
    asm("test               ecx, ecx");                                      // 0x0075aca3    85c9
    asm("{disp32} je        _jmp_addr_0x0075ad70");                          // 0x0075aca5    0f84c5000000
    asm("call               _jmp_addr_0x00730380");                          // 0x0075acab    e8d056fdff
    asm("test               eax, eax");                                      // 0x0075acb0    85c0
    asm("{disp32} je        _jmp_addr_0x0075ad70");                          // 0x0075acb2    0f84b8000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075acb8    8b8e14010000
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075acbe    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0075acc0    ff502c
    asm("test               eax, eax");                                      // 0x0075acc3    85c0
    asm("{disp32} je        _jmp_addr_0x0075ad70");                          // 0x0075acc5    0f84a5000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075accb    8b8e14010000
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075acd1    e81a59fdff
    asm("test               eax, eax");                                      // 0x0075acd6    85c0
    asm("{disp8} jne        _jmp_addr_0x0075acdf");                          // 0x0075acd8    7505
    asm("pop                esi");                                           // 0x0075acda    5e
    asm("add                esp, 0x4c");                                     // 0x0075acdb    83c44c
    asm("ret");                                                              // 0x0075acde    c3
    asm("_jmp_addr_0x0075acdf:");
    asm("{disp32} mov       ecx, dword ptr [_villager_fireman_m8p0_0x0099a968]"); // 0x0075acdf    8b0d68a99900
    asm("push               0x0");                                           // 0x0075ace5    6a00
    asm("push               0x3f800000");                                    // 0x0075ace7    680000803f
    asm("push               0x0");                                           // 0x0075acec    6a00
    asm("push               ecx");                                           // 0x0075acee    51
    asm("push               0x0");                                           // 0x0075acef    6a00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                   // 0x0075acf1    8d4c2424
    asm("call               ??0EffectValues@@QAE@W4EFFECT_TYPE@@MPAVGameThing@@MPAVGPlayer@@@Z");                    // 0x0075acf5    e846a3dcff
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075acfa    8b8e14010000
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x0075ad00    8d542410
    asm("push               edx");                                           // 0x0075ad04    52
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075ad05    e8e658fdff
    asm("push               eax");                                           // 0x0075ad0a    50
    asm("call               _jmp_addr_0x00730670");                          // 0x0075ad0b    e86059fdff
    asm("add                esp, 0x08");                                     // 0x0075ad10    83c408
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x0075ad13    8d4c2410
    asm("call               _jmp_addr_0x00436960");                          // 0x0075ad17    e844bccdff
    asm("mov                eax, 0x00000001");                               // 0x0075ad1c    b801000000
    asm("pop                esi");                                           // 0x0075ad21    5e
    asm("add                esp, 0x4c");                                     // 0x0075ad22    83c44c
    asm("ret");                                                              // 0x0075ad25    c3
    asm("_jmp_addr_0x0075ad26:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000114]");             // 0x0075ad26    8b8614010000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x04]");                   // 0x0075ad2c    8d4c2404
    asm("push               ecx");                                           // 0x0075ad30    51
    asm("push               eax");                                           // 0x0075ad31    50
    asm("mov.s              ecx, esi");                                      // 0x0075ad32    8bce
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075ad34    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x0075ad3c    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x0075ad44    c744241400000000
    asm("call               ?GetFireFightingPos@Villager@@QAEIPAVFireEffect@@PAUMapCoords@@@Z");                          // 0x0075ad4c    e83ffdffff
    asm("test               eax, eax");                                      // 0x0075ad51    85c0
    asm("{disp8} je         _jmp_addr_0x0075ad70");                          // 0x0075ad53    741b
    asm("push               0x000000d8");                                    // 0x0075ad55    68d8000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x0075ad5a    8d542408
    asm("push               edx");                                           // 0x0075ad5e    52
    asm("mov.s              ecx, esi");                                      // 0x0075ad5f    8bce
    asm("call               ?SetupMoveAroundFire@Villager@@QAEIABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075ad61    e80afaffff
    asm("mov                eax, 0x00000001");                               // 0x0075ad66    b801000000
    asm("pop                esi");                                           // 0x0075ad6b    5e
    asm("add                esp, 0x4c");                                     // 0x0075ad6c    83c44c
    asm("ret");                                                              // 0x0075ad6f    c3
    asm("_jmp_addr_0x0075ad70:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075ad70    8b06
    asm("push               0x000000a3");                                    // 0x0075ad72    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x0075ad77    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075ad79    ff90e8080000
    asm("_jmp_addr_0x0075ad7f:");
    asm("mov                eax, 0x00000001");                               // 0x0075ad7f    b801000000
    asm("pop                esi");                                           // 0x0075ad84    5e
    asm("add                esp, 0x4c");                                     // 0x0075ad85    83c44c
    asm("ret");                                                              // 0x0075ad88    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsValidFire__8VillagerFP10FireEffect(struct Villager* this, const void* edx, struct FireEffect* param_1)
{
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x0075ad90    a15c19d000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00205c14]");             // 0x0075ad95    8b80145c2000
    asm("test               eax, eax");                                      // 0x0075ad9b    85c0
    asm("{disp8} je         _jmp_addr_0x0075adae");                          // 0x0075ad9d    740f
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x0075ad9f    8b4c2404
    asm("_jmp_addr_0x0075ada3:");
    asm("cmp.s              eax, ecx");                                      // 0x0075ada3    3bc1
    asm("{disp8} je         _jmp_addr_0x0075adb3");                          // 0x0075ada5    740c
    asm("{disp8} mov        eax, dword ptr [eax + 0x3c]");                   // 0x0075ada7    8b403c
    asm("test               eax, eax");                                      // 0x0075adaa    85c0
    asm("{disp8} jne        _jmp_addr_0x0075ada3");                          // 0x0075adac    75f5
    asm("_jmp_addr_0x0075adae:");
    asm("xor.s              eax, eax");                                      // 0x0075adae    33c0
    asm("ret                0x0004");                                        // 0x0075adb0    c20400
    asm("_jmp_addr_0x0075adb3:");
    asm("mov                eax, 0x00000001");                               // 0x0075adb3    b801000000
    asm("ret                0x0004");                                        // 0x0075adb8    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall EnterPutOutFire__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x0075adc0    8b442408
    asm("push               esi");                                           // 0x0075adc4    56
    asm("push               edi");                                           // 0x0075adc5    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0075adc6    8b7c240c
    asm("and                eax, 0x000000ff");                               // 0x0075adca    25ff000000
    asm("push               eax");                                           // 0x0075adcf    50
    asm("and                edi, 0x000000ff");                               // 0x0075add0    81e7ff000000
    asm("mov.s              esi, ecx");                                      // 0x0075add6    8bf1
    asm("push               edi");                                           // 0x0075add8    57
    asm("call               ?IsStateEntryFunctionSameAs@Villager@@QBE_NKK@Z");                          // 0x0075add9    e8f276ffff
    asm("test               eax, eax");                                      // 0x0075adde    85c0
    asm("{disp8} jne        _jmp_addr_0x0075ae41");                          // 0x0075ade0    755f
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000114]");             // 0x0075ade2    8b8614010000
    asm("test               eax, eax");                                      // 0x0075ade8    85c0
    asm("{disp8} je         _jmp_addr_0x0075ae55");                          // 0x0075adea    7469
    asm("push               eax");                                           // 0x0075adec    50
    asm("mov.s              ecx, esi");                                      // 0x0075aded    8bce
    asm("call               ?IsValidFire@Villager@@QAEIPAVFireEffect@@@Z");  // 0x0075adef    e89cffffff
    asm("test               eax, eax");                                      // 0x0075adf4    85c0
    asm("{disp8} je         _jmp_addr_0x0075ae4b");                          // 0x0075adf6    7453
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075adf8    8b8e14010000
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075adfe    8b11
    asm("call               dword ptr [edx + 0x2c]");                        // 0x0075ae00    ff522c
    asm("test               eax, eax");                                      // 0x0075ae03    85c0
    asm("{disp8} je         _jmp_addr_0x0075ae55");                          // 0x0075ae05    744e
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000094]");             // 0x0075ae07    8b8694000000
    asm("test               eax, eax");                                      // 0x0075ae0d    85c0
    asm("{disp8} je         _jmp_addr_0x0075ae55");                          // 0x0075ae0f    7444
    asm("{disp8} mov        ecx, dword ptr [eax + 0x34]");                   // 0x0075ae11    8b4834
    asm("test               ecx, ecx");                                      // 0x0075ae14    85c9
    asm("{disp8} jne        _jmp_addr_0x0075ae55");                          // 0x0075ae16    753d
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075ae18    8b8e14010000
    asm("call               ?GetFirstCaused@FireEffect@@QAEIXZ");            // 0x0075ae1e    e8bd7cfdff
    asm("{disp8} mov        eax, dword ptr [eax + 0x48]");                   // 0x0075ae23    8b4048
    asm("test               eax, eax");                                      // 0x0075ae26    85c0
    asm("{disp8} je         _jmp_addr_0x0075ae35");                          // 0x0075ae28    740b
    asm("_jmp_addr_0x0075ae2a:");
    asm("cmp                dword ptr [eax + 0x04], esi");                   // 0x0075ae2a    397004
    asm("{disp8} je         _jmp_addr_0x0075ae75");                          // 0x0075ae2d    7446
    asm("mov                eax, dword ptr [eax]");                          // 0x0075ae2f    8b00
    asm("test               eax, eax");                                      // 0x0075ae31    85c0
    asm("{disp8} jne        _jmp_addr_0x0075ae2a");                          // 0x0075ae33    75f5
    asm("_jmp_addr_0x0075ae35:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075ae35    8b8e14010000
    asm("push               esi");                                           // 0x0075ae3b    56
    asm("call               _jmp_addr_0x007309a0");                          // 0x0075ae3c    e85f5bfdff
    asm("_jmp_addr_0x0075ae41:");
    asm("pop                edi");                                           // 0x0075ae41    5f
    asm("mov                eax, 0x00000001");                               // 0x0075ae42    b801000000
    asm("pop                esi");                                           // 0x0075ae47    5e
    asm("ret                0x0008");                                        // 0x0075ae48    c20800
    asm("_jmp_addr_0x0075ae4b:");
    asm("{disp32} mov       dword ptr [esi + 0x00000114], 0x00000000");      // 0x0075ae4b    c7861401000000000000
    asm("_jmp_addr_0x0075ae55:");
    asm("lea                eax, dword ptr [edi + edi * 0x2]");              // 0x0075ae55    8d047f
    asm("shl                eax, 3");                                        // 0x0075ae58    c1e003
    asm("sub.s              eax, edi");                                      // 0x0075ae5b    2bc7
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x0075ae5d    8d0440
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f30]");       // 0x0075ae60    8b0c85309fdb00
    asm("test               ecx, ecx");                                      // 0x0075ae67    85c9
    asm("{disp8} je         _jmp_addr_0x0075ae75");                          // 0x0075ae69    740a
    asm("mov                edx, dword ptr [esi]");                          // 0x0075ae6b    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075ae6d    8bce
    asm("call               dword ptr [edx + 0x998]");                       // 0x0075ae6f    ff9298090000
    asm("_jmp_addr_0x0075ae75:");
    asm("pop                edi");                                           // 0x0075ae75    5f
    asm("xor.s              eax, eax");                                      // 0x0075ae76    33c0
    asm("pop                esi");                                           // 0x0075ae78    5e
    asm("ret                0x0008");                                        // 0x0075ae79    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ExitPutOutFire__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               ebx");                                           // 0x0075ae80    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                   // 0x0075ae81    8b5c2408
    asm("push               esi");                                           // 0x0075ae85    56
    asm("mov.s              esi, ecx");                                      // 0x0075ae86    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x0075ae88    8b06
    asm("mov.s              ecx, ebx");                                      // 0x0075ae8a    8bcb
    asm("and                ecx, 0x000000ff");                               // 0x0075ae8c    81e1ff000000
    asm("push               ecx");                                           // 0x0075ae92    51
    asm("mov.s              ecx, esi");                                      // 0x0075ae93    8bce
    asm("call               dword ptr [eax + 0x96c]");                       // 0x0075ae95    ff906c090000
    asm("test               eax, eax");                                      // 0x0075ae9b    85c0
    asm("{disp8} jne        _jmp_addr_0x0075af14");                          // 0x0075ae9d    7575
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075ae9f    8b8e14010000
    asm("test               ecx, ecx");                                      // 0x0075aea5    85c9
    asm("{disp8} je         _jmp_addr_0x0075aee0");                          // 0x0075aea7    7437
    asm("call               ?GetFirstCaused@FireEffect@@QAEIXZ");            // 0x0075aea9    e8327cfdff
    asm("{disp8} mov        eax, dword ptr [eax + 0x48]");                   // 0x0075aeae    8b4048
    asm("test               eax, eax");                                      // 0x0075aeb1    85c0
    asm("{disp8} je         _jmp_addr_0x0075aec0");                          // 0x0075aeb3    740b
    asm("_jmp_addr_0x0075aeb5:");
    asm("cmp                dword ptr [eax + 0x04], esi");                   // 0x0075aeb5    397004
    asm("{disp8} je         _jmp_addr_0x0075aed4");                          // 0x0075aeb8    741a
    asm("mov                eax, dword ptr [eax]");                          // 0x0075aeba    8b00
    asm("test               eax, eax");                                      // 0x0075aebc    85c0
    asm("{disp8} jne        _jmp_addr_0x0075aeb5");                          // 0x0075aebe    75f5
    asm("_jmp_addr_0x0075aec0:");
    asm("{disp32} mov       dword ptr [esi + 0x00000114], 0x00000000");      // 0x0075aec0    c7861401000000000000
    asm("pop                esi");                                           // 0x0075aeca    5e
    asm("mov                eax, 0x00000001");                               // 0x0075aecb    b801000000
    asm("pop                ebx");                                           // 0x0075aed0    5b
    asm("ret                0x0004");                                        // 0x0075aed1    c20400
    asm("_jmp_addr_0x0075aed4:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075aed4    8b8e14010000
    asm("push               esi");                                           // 0x0075aeda    56
    asm("call               _jmp_addr_0x007309e0");                          // 0x0075aedb    e8005bfdff
    asm("_jmp_addr_0x0075aee0:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075aee0    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075aee2    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000114], 0x00000000");      // 0x0075aee4    c7861401000000000000
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075aeee    ff5248
    asm("test               eax, eax");                                      // 0x0075aef1    85c0
    asm("{disp8} je         _jmp_addr_0x0075af14");                          // 0x0075aef3    741f
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000df4]");             // 0x0075aef5    8b90f40d0000
    asm("test               edx, edx");                                      // 0x0075aefb    85d2
    asm("{disp8} je         _jmp_addr_0x0075af14");                          // 0x0075aefd    7415
    asm("_jmp_addr_0x0075aeff:");
    asm("cmp                dword ptr [edx + 0x04], esi");                   // 0x0075aeff    397204
    asm("{disp8} je         _jmp_addr_0x0075af0c");                          // 0x0075af02    7408
    asm("mov                edx, dword ptr [edx]");                          // 0x0075af04    8b12
    asm("test               edx, edx");                                      // 0x0075af06    85d2
    asm("{disp8} jne        _jmp_addr_0x0075aeff");                          // 0x0075af08    75f5
    asm("{disp8} jmp        _jmp_addr_0x0075af14");                          // 0x0075af0a    eb08
    asm("_jmp_addr_0x0075af0c:");
    asm("push               esi");                                           // 0x0075af0c    56
    asm("mov.s              ecx, eax");                                      // 0x0075af0d    8bc8
    asm("call               ?RemoveVillagerOnWayToWorshipSite@Town@@QAEXPAVVillager@@@Z");  // 0x0075af0f    e84c34feff
    asm("_jmp_addr_0x0075af14:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075af14    8b06
    asm("push               ebx");                                           // 0x0075af16    53
    asm("mov.s              ecx, esi");                                      // 0x0075af17    8bce
    asm("call               dword ptr [eax + 0x910]");                       // 0x0075af19    ff9010090000
    asm("pop                esi");                                           // 0x0075af1f    5e
    asm("mov                eax, 0x00000001");                               // 0x0075af20    b801000000
    asm("pop                ebx");                                           // 0x0075af25    5b
    asm("ret                0x0004");                                        // 0x0075af26    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall EnterOnFire__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("push               esi");                                           // 0x0075af30    56
    asm("mov.s              esi, ecx");                                      // 0x0075af31    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075af33    8b8e14010000
    asm("test               ecx, ecx");                                      // 0x0075af39    85c9
    asm("{disp8} je         _jmp_addr_0x0075af6f");                          // 0x0075af3b    7432
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075af3d    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0075af3f    ff502c
    asm("test               eax, eax");                                      // 0x0075af42    85c0
    asm("{disp8} je         _jmp_addr_0x0075af6f");                          // 0x0075af44    7429
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075af46    8b8e14010000
    asm("call               ?GetFirstCaused@FireEffect@@QAEIXZ");            // 0x0075af4c    e88f7bfdff
    asm("{disp8} mov        eax, dword ptr [eax + 0x48]");                   // 0x0075af51    8b4048
    asm("test               eax, eax");                                      // 0x0075af54    85c0
    asm("{disp8} je         _jmp_addr_0x0075af63");                          // 0x0075af56    740b
    asm("_jmp_addr_0x0075af58:");
    asm("cmp                dword ptr [eax + 0x04], esi");                   // 0x0075af58    397004
    asm("{disp8} je         _jmp_addr_0x0075af78");                          // 0x0075af5b    741b
    asm("mov                eax, dword ptr [eax]");                          // 0x0075af5d    8b00
    asm("test               eax, eax");                                      // 0x0075af5f    85c0
    asm("{disp8} jne        _jmp_addr_0x0075af58");                          // 0x0075af61    75f5
    asm("_jmp_addr_0x0075af63:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075af63    8b8e14010000
    asm("push               esi");                                           // 0x0075af69    56
    asm("call               _jmp_addr_0x007309a0");                          // 0x0075af6a    e8315afdff
    asm("_jmp_addr_0x0075af6f:");
    asm("mov                eax, 0x00000001");                               // 0x0075af6f    b801000000
    asm("pop                esi");                                           // 0x0075af74    5e
    asm("ret                0x0008");                                        // 0x0075af75    c20800
    asm("_jmp_addr_0x0075af78:");
    asm("xor.s              eax, eax");                                      // 0x0075af78    33c0
    asm("pop                esi");                                           // 0x0075af7a    5e
    asm("ret                0x0008");                                        // 0x0075af7b    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ExitOnFire__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                           // 0x0075af80    56
    asm("mov.s              esi, ecx");                                      // 0x0075af81    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075af83    8b8e14010000
    asm("test               ecx, ecx");                                      // 0x0075af89    85c9
    asm("{disp8} je         _jmp_addr_0x0075afc9");                          // 0x0075af8b    743c
    asm("call               ?GetFirstCaused@FireEffect@@QAEIXZ");            // 0x0075af8d    e84e7bfdff
    asm("{disp8} mov        eax, dword ptr [eax + 0x48]");                   // 0x0075af92    8b4048
    asm("test               eax, eax");                                      // 0x0075af95    85c0
    asm("{disp8} je         _jmp_addr_0x0075afbf");                          // 0x0075af97    7426
    asm("_jmp_addr_0x0075af99:");
    asm("cmp                dword ptr [eax + 0x04], esi");                   // 0x0075af99    397004
    asm("{disp8} je         _jmp_addr_0x0075afb3");                          // 0x0075af9c    7415
    asm("mov                eax, dword ptr [eax]");                          // 0x0075af9e    8b00
    asm("test               eax, eax");                                      // 0x0075afa0    85c0
    asm("{disp8} jne        _jmp_addr_0x0075af99");                          // 0x0075afa2    75f5
    asm("{disp32} mov       dword ptr [esi + 0x00000114], eax");             // 0x0075afa4    898614010000
    asm("mov                eax, 0x00000001");                               // 0x0075afaa    b801000000
    asm("pop                esi");                                           // 0x0075afaf    5e
    asm("ret                0x0004");                                        // 0x0075afb0    c20400
    asm("_jmp_addr_0x0075afb3:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075afb3    8b8e14010000
    asm("push               esi");                                           // 0x0075afb9    56
    asm("call               _jmp_addr_0x007309e0");                          // 0x0075afba    e8215afdff
    asm("_jmp_addr_0x0075afbf:");
    asm("{disp32} mov       dword ptr [esi + 0x00000114], 0x00000000");      // 0x0075afbf    c7861401000000000000
    asm("_jmp_addr_0x0075afc9:");
    asm("mov                eax, 0x00000001");                               // 0x0075afc9    b801000000
    asm("pop                esi");                                           // 0x0075afce    5e
    asm("ret                0x0004");                                        // 0x0075afcf    c20400
    __builtin_unreachable();
}

bool32_t __fastcall PutOutFireWithWater__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075afe0    8b01
    asm("push               0x000000a3");                                    // 0x0075afe2    68a3000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075afe7    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075afed    b801000000
    asm("ret");                                                              // 0x0075aff2    c3
    __builtin_unreachable();
}

bool32_t __fastcall GetWaterToPutOutFire__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075b000    8b01
    asm("push               0x000000a3");                                    // 0x0075b002    68a3000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075b007    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075b00d    b801000000
    asm("ret");                                                              // 0x0075b012    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall StopFireFighting__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075b020    56
    asm("mov.s              esi, ecx");                                      // 0x0075b021    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000114]");             // 0x0075b023    8b8614010000
    asm("test               eax, eax");                                      // 0x0075b029    85c0
    asm("push               edi");                                           // 0x0075b02b    57
    asm("{disp32} je        _jmp_addr_0x0075b168");                          // 0x0075b02c    0f8436010000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b032    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x0075b034    ff90040b0000
    asm("cmp                al, -0x24");                                     // 0x0075b03a    3cdc
    asm("{disp32} jne       _jmp_addr_0x0075b143");                          // 0x0075b03c    0f8501010000
    asm("xor.s              ecx, ecx");                                      // 0x0075b042    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008e]");               // 0x0075b044    8a8e8e000000
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x0075b04a    8d0449
    asm("shl                eax, 3");                                        // 0x0075b04d    c1e003
    asm("sub.s              eax, ecx");                                      // 0x0075b050    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x0075b052    8d0c40
    asm("{disp32} mov       edi, dword ptr [ecx * 0x4 + 0x00db9e98]");       // 0x0075b055    8b3c8d989edb00
    asm("lea                eax, dword ptr [edi + edi * 0x8]");              // 0x0075b05c    8d04ff
    asm("shl                eax, 4");                                        // 0x0075b05f    c1e004
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091b8]");             // 0x0075b062    8b88b891d000
    asm("cmp                ecx, 0x0075ae80");                               // 0x0075b068    81f980ae7500
    asm("{disp8} jne        _jmp_addr_0x0075b097");                          // 0x0075b06e    7527
    asm("test               ecx, ecx");                                      // 0x0075b070    85c9
    asm("{disp8} je         _jmp_addr_0x0075b092");                          // 0x0075b072    741e
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091bc]");             // 0x0075b074    8b88bc91d000
    asm("test               ecx, ecx");                                      // 0x0075b07a    85c9
    asm("{disp8} jne        _jmp_addr_0x0075b097");                          // 0x0075b07c    7519
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091c0]");             // 0x0075b07e    8b88c091d000
    asm("test               ecx, ecx");                                      // 0x0075b084    85c9
    asm("{disp8} jne        _jmp_addr_0x0075b097");                          // 0x0075b086    750f
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091c4]");             // 0x0075b088    8b88c491d000
    asm("test               ecx, ecx");                                      // 0x0075b08e    85c9
    asm("{disp8} jne        _jmp_addr_0x0075b097");                          // 0x0075b090    7505
    asm("_jmp_addr_0x0075b092:");
    asm("mov                edi, 0x000000a3");                               // 0x0075b092    bfa3000000
    asm("_jmp_addr_0x0075b097:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075b097    8b8e14010000
    asm("test               ecx, ecx");                                      // 0x0075b09d    85c9
    asm("{disp8} je         _jmp_addr_0x0075b0b1");                          // 0x0075b09f    7410
    asm("push               esi");                                           // 0x0075b0a1    56
    asm("call               _jmp_addr_0x007309e0");                          // 0x0075b0a2    e83959fdff
    asm("{disp32} mov       dword ptr [esi + 0x00000114], 0x00000000");      // 0x0075b0a7    c7861401000000000000
    asm("_jmp_addr_0x0075b0b1:");
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");               // 0x0075b0b1    8a868c000000
    asm("cmp                al, -0x24");                                     // 0x0075b0b7    3cdc
    asm("push               ebp");                                           // 0x0075b0b9    55
    asm("{disp32} lea       ebp, dword ptr [esi + 0x0000008c]");             // 0x0075b0ba    8dae8c000000
    asm("{disp8} jne        _jmp_addr_0x0075b0cf");                          // 0x0075b0c0    750d
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b0c2    8b16
    asm("push               edi");                                           // 0x0075b0c4    57
    asm("mov.s              ecx, esi");                                      // 0x0075b0c5    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075b0c7    ff92e8080000
    asm("{disp8} jmp        _jmp_addr_0x0075b0ef");                          // 0x0075b0cd    eb20
    asm("_jmp_addr_0x0075b0cf:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b0cf    8b06
    asm("push               edi");                                           // 0x0075b0d1    57
    asm("mov.s              ecx, esi");                                      // 0x0075b0d2    8bce
    asm("call               dword ptr [eax + 0x904]");                       // 0x0075b0d4    ff9004090000
    asm("push               edi");                                           // 0x0075b0da    57
    asm("push               0x1");                                           // 0x0075b0db    6a01
    asm("mov.s              ecx, ebp");                                      // 0x0075b0dd    8bcd
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x0075b0df    e8ac1be9ff
    asm("push               0x0");                                           // 0x0075b0e4    6a00
    asm("push               0x2");                                           // 0x0075b0e6    6a02
    asm("mov.s              ecx, ebp");                                      // 0x0075b0e8    8bcd
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x0075b0ea    e8a11be9ff
    asm("_jmp_addr_0x0075b0ef:");
    asm("xor.s              eax, eax");                                      // 0x0075b0ef    33c0
    asm("{disp8} mov        al, byte ptr [ebp + 0x00]");                     // 0x0075b0f1    8a4500
    asm("pop                ebp");                                           // 0x0075b0f4    5d
    asm("lea                ecx, dword ptr [eax + eax * 0x8]");              // 0x0075b0f5    8d0cc0
    asm("shl                ecx, 4");                                        // 0x0075b0f8    c1e104
    asm("add                ecx, 0x00d091b8");                               // 0x0075b0fb    81c1b891d000
    asm("mov.s              edi, ecx");                                      // 0x0075b101    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x0075b103    8b07
    asm("cmp                eax, 0x0075ae80");                               // 0x0075b105    3d80ae7500
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                   // 0x0075b10a    8b4f04
    asm("{disp8} mov        edx, dword ptr [edi + 0x08]");                   // 0x0075b10d    8b5708
    asm("{disp8} mov        edi, dword ptr [edi + 0x0c]");                   // 0x0075b110    8b7f0c
    asm("{disp8} jne        _jmp_addr_0x0075b168");                          // 0x0075b113    7553
    asm("test               eax, eax");                                      // 0x0075b115    85c0
    asm("{disp8} je         _jmp_addr_0x0075b125");                          // 0x0075b117    740c
    asm("test               ecx, ecx");                                      // 0x0075b119    85c9
    asm("{disp8} jne        _jmp_addr_0x0075b168");                          // 0x0075b11b    754b
    asm("test               edx, edx");                                      // 0x0075b11d    85d2
    asm("{disp8} jne        _jmp_addr_0x0075b168");                          // 0x0075b11f    7547
    asm("test               edi, edi");                                      // 0x0075b121    85ff
    asm("{disp8} jne        _jmp_addr_0x0075b168");                          // 0x0075b123    7543
    asm("_jmp_addr_0x0075b125:");
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008e]");               // 0x0075b125    8a868e000000
    asm("test               al, al");                                        // 0x0075b12b    84c0
    asm("{disp8} jne        _jmp_addr_0x0075b168");                          // 0x0075b12d    7539
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b12f    8b16
    asm("push               0x000000a3");                                    // 0x0075b131    68a3000000
    asm("push               0x2");                                           // 0x0075b136    6a02
    asm("mov.s              ecx, esi");                                      // 0x0075b138    8bce
    asm("call               dword ptr [edx + 0x938]");                       // 0x0075b13a    ff9238090000
    asm("pop                edi");                                           // 0x0075b140    5f
    asm("pop                esi");                                           // 0x0075b141    5e
    asm("ret");                                                              // 0x0075b142    c3
    asm("_jmp_addr_0x0075b143:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075b143    8b8e14010000
    asm("push               esi");                                           // 0x0075b149    56
    asm("call               _jmp_addr_0x007309e0");                          // 0x0075b14a    e89158fdff
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b14f    8b06
    asm("push               0x000000a3");                                    // 0x0075b151    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x0075b156    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000114], 0x00000000");      // 0x0075b158    c7861401000000000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075b162    ff90e8080000
    asm("_jmp_addr_0x0075b168:");
    asm("pop                edi");                                           // 0x0075b168    5f
    asm("pop                esi");                                           // 0x0075b169    5e
    asm("ret");                                                              // 0x0075b16a    c3
    __builtin_unreachable();
}

bool32_t __fastcall SetupOnFire__8VillagerFP10FireEffect(struct Villager* this, const void* edx, struct FireEffect* param_1)
{
    asm("push               esi");                                           // 0x0075b170    56
    asm("mov.s              esi, ecx");                                      // 0x0075b171    8bf1
    asm("test               byte ptr [esi + 0x24], 0x44");                   // 0x0075b173    f6462444
    asm("{disp8} jne        _jmp_addr_0x0075b1d8");                          // 0x0075b177    755f
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b179    8b06
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0075b17b    ff502c
    asm("test               eax, eax");                                      // 0x0075b17e    85c0
    asm("{disp8} je         _jmp_addr_0x0075b1d8");                          // 0x0075b180    7456
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000b4]");               // 0x0075b182    8a8eb4000000
    asm("and                cl, 0x01");                                      // 0x0075b188    80e101
    asm("cmp                cl, 0x01");                                      // 0x0075b18b    80f901
    asm("{disp8} je         _jmp_addr_0x0075b1d8");                          // 0x0075b18e    7448
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b190    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075b192    8bce
    asm("call               dword ptr [edx + 0x8ec]");                       // 0x0075b194    ff92ec080000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075b19a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075b19c    8bce
    asm("call               dword ptr [eax + 0x860]");                       // 0x0075b19e    ff9060080000
    asm("push               eax");                                           // 0x0075b1a4    50
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000010c]");             // 0x0075b1a5    8d8e0c010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x0075b1ab    e85067e8ff
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b1b0    8b16
    asm("push               0x000000a3");                                    // 0x0075b1b2    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x0075b1b7    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075b1b9    ff92e8080000
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x0075b1bf    8b442408
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b1c3    8b16
    asm("push               0x000000db");                                    // 0x0075b1c5    68db000000
    asm("mov.s              ecx, esi");                                      // 0x0075b1ca    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000114], eax");             // 0x0075b1cc    898614010000
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075b1d2    ff92e8080000
    asm("_jmp_addr_0x0075b1d8:");
    asm("pop                esi");                                           // 0x0075b1d8    5e
    asm("ret                0x0004");                                        // 0x0075b1d9    c20400
    __builtin_unreachable();
}

bool32_t __fastcall OnFire__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x2c");                                     // 0x0075b1e0    83ec2c
    asm("push               esi");                                           // 0x0075b1e3    56
    asm("mov.s              esi, ecx");                                      // 0x0075b1e4    8bf1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x44]");                   // 0x0075b1e6    8b4e44
    asm("test               ecx, ecx");                                      // 0x0075b1e9    85c9
    asm("push               edi");                                           // 0x0075b1eb    57
    asm("{disp8} jne        _jmp_addr_0x0075b1fb");                          // 0x0075b1ec    750d
    asm("mov.s              ecx, esi");                                      // 0x0075b1ee    8bce
    asm("call               ?FinishBeingOnFire@Villager@@QAEIXZ");           // 0x0075b1f0    e8db010000
    asm("pop                edi");                                           // 0x0075b1f5    5f
    asm("pop                esi");                                           // 0x0075b1f6    5e
    asm("add                esp, 0x2c");                                     // 0x0075b1f7    83c42c
    asm("ret");                                                              // 0x0075b1fa    c3
    asm("_jmp_addr_0x0075b1fb:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000114]");             // 0x0075b1fb    8b8614010000
    asm("test               eax, eax");                                      // 0x0075b201    85c0
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x0075b203    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x0075b20b    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");            // 0x0075b213    c744241800000000
    asm("{disp32} je        _jmp_addr_0x0075b30d");                          // 0x0075b21b    0f84ec000000
    asm("mov.s              ecx, eax");                                      // 0x0075b221    8bc8
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075b223    e8c853fdff
    asm("test               eax, eax");                                      // 0x0075b228    85c0
    asm("{disp8} jne        _jmp_addr_0x0075b232");                          // 0x0075b22a    7506
    asm("pop                edi");                                           // 0x0075b22c    5f
    asm("pop                esi");                                           // 0x0075b22d    5e
    asm("add                esp, 0x2c");                                     // 0x0075b22e    83c42c
    asm("ret");                                                              // 0x0075b231    c3
    asm("_jmp_addr_0x0075b232:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x44]");                   // 0x0075b232    8b4e44
    asm("call               _jmp_addr_0x00730360");                          // 0x0075b235    e82651fdff
    asm("test               eax, eax");                                      // 0x0075b23a    85c0
    asm("{disp32} mov       edi, dword ptr [esi + 0x00000114]");             // 0x0075b23c    8bbe14010000
    asm("{disp8} je         _jmp_addr_0x0075b26c");                          // 0x0075b242    7428
    asm("push               0x00000268");                                    // 0x0075b244    6868020000
    asm("push               0x00c2372c");                                    // 0x0075b249    682c37c200
    asm("push               0x41200000");                                    // 0x0075b24e    6800002041
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075b253    e8d832f8ff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075b258    d95c2414
    asm("add                esp, 0x0c");                                     // 0x0075b25c    83c40c
    asm("mov.s              ecx, edi");                                      // 0x0075b25f    8bcf
    asm("call               _jmp_addr_0x00730000");                          // 0x0075b261    e89a4dfdff
    asm("{disp8} fadd       dword ptr [esp + 0x08]");                        // 0x0075b266    d8442408
    asm("{disp8} jmp        _jmp_addr_0x0075b2e4");                          // 0x0075b26a    eb78
    asm("_jmp_addr_0x0075b26c:");
    asm("mov.s              ecx, edi");                                      // 0x0075b26c    8bcf
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075b26e    e87d53fdff
    asm("add                eax, 0x14");                                     // 0x0075b273    83c014
    asm("push               eax");                                           // 0x0075b276    50
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0075b277    8d4614
    asm("push               eax");                                           // 0x0075b27a    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075b27b    e8f01affff
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075b280    d95c2410
    asm("add                esp, 0x08");                                     // 0x0075b284    83c408
    asm("mov.s              ecx, edi");                                      // 0x0075b287    8bcf
    asm("call               _jmp_addr_0x00730000");                          // 0x0075b289    e8724dfdff
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x0075b28e    d85c2408
    asm("fnstsw             ax");                                            // 0x0075b292    dfe0
    asm("test               ah, 0x01");                                      // 0x0075b294    f6c401
    asm("{disp8} je         _jmp_addr_0x0075b2a6");                          // 0x0075b297    740d
    asm("mov.s              ecx, esi");                                      // 0x0075b299    8bce
    asm("call               ?FinishBeingOnFire@Villager@@QAEIXZ");           // 0x0075b29b    e830010000
    asm("pop                edi");                                           // 0x0075b2a0    5f
    asm("pop                esi");                                           // 0x0075b2a1    5e
    asm("add                esp, 0x2c");                                     // 0x0075b2a2    83c42c
    asm("ret");                                                              // 0x0075b2a5    c3
    asm("_jmp_addr_0x0075b2a6:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075b2a6    8b8e14010000
    asm("call               _jmp_addr_0x0072ff10");                          // 0x0075b2ac    e85f4cfdff
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075b2b1    d95c2408
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075b2b5    8b8e14010000
    asm("push               0x00000272");                                    // 0x0075b2bb    6872020000
    asm("push               0x00c2372c");                                    // 0x0075b2c0    682c37c200
    asm("call               _jmp_addr_0x00730000");                          // 0x0075b2c5    e8364dfdff
    asm("{disp8} fsub       dword ptr [esp + 0x10]");                        // 0x0075b2ca    d8642410
    asm("push               ecx");                                           // 0x0075b2ce    51
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x0075b2cf    d80590a38a00
    asm("fstp               dword ptr [esp]");                               // 0x0075b2d5    d91c24
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075b2d8    e85332f8ff
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x0075b2dd    d8442414
    asm("add                esp, 0x0c");                                     // 0x0075b2e1    83c40c
    asm("_jmp_addr_0x0075b2e4:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x0075b2e4    8b8e14010000
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075b2ea    d95c2408
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x0075b2ee    8b542408
    asm("mov                edi, dword ptr [esi]");                          // 0x0075b2f2    8b3e
    asm("push               edx");                                           // 0x0075b2f4    52
    asm("call               _jmp_addr_0x007305f0");                          // 0x0075b2f5    e8f652fdff
    asm("push               eax");                                           // 0x0075b2fa    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x0075b2fb    8d442418
    asm("push               eax");                                           // 0x0075b2ff    50
    asm("mov.s              ecx, esi");                                      // 0x0075b300    8bce
    asm("call               dword ptr [edi + 0xb00]");                       // 0x0075b302    ff97000b0000
    asm("{disp32} jmp       _jmp_addr_0x0075b392");                          // 0x0075b308    e985000000
    asm("_jmp_addr_0x0075b30d:");
    asm("call               _jmp_addr_0x00730360");                          // 0x0075b30d    e84e50fdff
    asm("test               eax, eax");                                      // 0x0075b312    85c0
    asm("{disp8} jne        _jmp_addr_0x0075b323");                          // 0x0075b314    750d
    asm("mov.s              ecx, esi");                                      // 0x0075b316    8bce
    asm("call               ?FinishBeingOnFire@Villager@@QAEIXZ");           // 0x0075b318    e8b3000000
    asm("pop                edi");                                           // 0x0075b31d    5f
    asm("pop                esi");                                           // 0x0075b31e    5e
    asm("add                esp, 0x2c");                                     // 0x0075b31f    83c42c
    asm("ret");                                                              // 0x0075b322    c3
    asm("_jmp_addr_0x0075b323:");
    asm("push               0x0000027d");                                    // 0x0075b323    687d020000
    asm("push               0x00c2372c");                                    // 0x0075b328    682c37c200
    asm("push               0x40c90fdb");                                    // 0x0075b32d    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075b332    e8f931f8ff
    asm("push               0x0000027e");                                    // 0x0075b337    687e020000
    asm("push               0x00c2372c");                                    // 0x0075b33c    682c37c200
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x0075b341    d95c2420
    asm("push               0x40c00000");                                    // 0x0075b345    680000c040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075b34a    e8e131f8ff
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");                   // 0x0075b34f    8b542424
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2418]");              // 0x0075b353    d80518b48a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x34]");                   // 0x0075b359    8d442434
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x0075b35d    d95c2420
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x0075b361    8b4c2420
    asm("push               ecx");                                           // 0x0075b365    51
    asm("push               edx");                                           // 0x0075b366    52
    asm("push               eax");                                           // 0x0075b367    50
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x0075b368    e81322ffff
    asm("add                esp, 0x24");                                     // 0x0075b36d    83c424
    asm("push               eax");                                           // 0x0075b370    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x2c]");                   // 0x0075b371    8d4c242c
    asm("push               ecx");                                           // 0x0075b375    51
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075b376    8d4e14
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x0075b379    e8a2a1eaff
    asm("mov                edx, dword ptr [eax]");                          // 0x0075b37e    8b10
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x0075b380    89542410
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075b384    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x0075b387    894c2414
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x0075b38b    8b5008
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x0075b38e    89542418
    asm("_jmp_addr_0x0075b392:");
    asm("push               0x000000db");                                    // 0x0075b392    68db000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075b397    8d442414
    asm("push               eax");                                           // 0x0075b39b    50
    asm("mov.s              ecx, esi");                                      // 0x0075b39c    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075b39e    e8ed74e9ff
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008e]");               // 0x0075b3a3    8a868e000000
    asm("test               al, al");                                        // 0x0075b3a9    84c0
    asm("{disp8} jne        _jmp_addr_0x0075b3be");                          // 0x0075b3ab    7511
    asm("mov                edx, dword ptr [esi]");                          // 0x0075b3ad    8b16
    asm("push               0x000000a3");                                    // 0x0075b3af    68a3000000
    asm("push               0x2");                                           // 0x0075b3b4    6a02
    asm("mov.s              ecx, esi");                                      // 0x0075b3b6    8bce
    asm("call               dword ptr [edx + 0x938]");                       // 0x0075b3b8    ff9238090000
    asm("_jmp_addr_0x0075b3be:");
    asm("pop                edi");                                           // 0x0075b3be    5f
    asm("mov                eax, 0x00000001");                               // 0x0075b3bf    b801000000
    asm("pop                esi");                                           // 0x0075b3c4    5e
    asm("add                esp, 0x2c");                                     // 0x0075b3c5    83c42c
    asm("ret");                                                              // 0x0075b3c8    c3
    __builtin_unreachable();
}

bool32_t __fastcall FinishBeingOnFire__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075b3d0    56
    asm("mov.s              esi, ecx");                                      // 0x0075b3d1    8bf1
    asm("{disp32} lea       eax, dword ptr [esi + 0x0000010c]");             // 0x0075b3d3    8d860c010000
    asm("push               eax");                                           // 0x0075b3d9    50
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000080]");             // 0x0075b3da    8d8e80000000
    asm("call               _jmp_addr_0x00603260");                          // 0x0075b3e0    e87b7eeaff
    asm("mov.s              ecx, esi");                                      // 0x0075b3e5    8bce
    asm("call               ?PopFromPrevious@Villager@@QAEXXZ");             // 0x0075b3e7    e8646affff
    asm("mov                eax, 0x00000001");                               // 0x0075b3ec    b801000000
    asm("pop                esi");                                           // 0x0075b3f1    5e
    asm("ret");                                                              // 0x0075b3f2    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsFireMan__8VillagerFv(struct Object* this)
{
    asm("push               ecx");                                           // 0x0075b400    51
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075b401    8b01
    asm("call               dword ptr [eax + 0xb04]");                       // 0x0075b403    ff90040b0000
    asm("{disp8} mov        byte ptr [esp + 0x00], al");                     // 0x0075b409    88442400
    asm("{disp8} mov        ecx, dword ptr [esp + 0x00]");                   // 0x0075b40d    8b4c2400
    asm("and                ecx, 0x000000ff");                               // 0x0075b411    81e1ff000000
    asm("lea                ecx, dword ptr [ecx + ecx * 0x8]");              // 0x0075b417    8d0cc9
    asm("shl                ecx, 4");                                        // 0x0075b41a    c1e104
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00d091b8]");             // 0x0075b41d    8b91b891d000
    asm("cmp                edx, 0x0075ae80");                               // 0x0075b423    81fa80ae7500
    asm("{disp8} jne        _jmp_addr_0x0075b44d");                          // 0x0075b429    7522
    asm("test               edx, edx");                                      // 0x0075b42b    85d2
    asm("{disp8} je         _jmp_addr_0x0075b455");                          // 0x0075b42d    7426
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00d091bc]");             // 0x0075b42f    8b91bc91d000
    asm("test               edx, edx");                                      // 0x0075b435    85d2
    asm("{disp8} jne        _jmp_addr_0x0075b44d");                          // 0x0075b437    7514
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00d091c0]");             // 0x0075b439    8b91c091d000
    asm("test               edx, edx");                                      // 0x0075b43f    85d2
    asm("{disp8} jne        _jmp_addr_0x0075b44d");                          // 0x0075b441    750a
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00d091c4]");             // 0x0075b443    8b91c491d000
    asm("test               edx, edx");                                      // 0x0075b449    85d2
    asm("{disp8} je         _jmp_addr_0x0075b455");                          // 0x0075b44b    7408
    asm("_jmp_addr_0x0075b44d:");
    asm("cmp                al, -0x29");                                     // 0x0075b44d    3cd7
    asm("{disp8} je         _jmp_addr_0x0075b455");                          // 0x0075b44f    7404
    asm("xor.s              eax, eax");                                      // 0x0075b451    33c0
    asm("pop                ecx");                                           // 0x0075b453    59
    asm("ret");                                                              // 0x0075b454    c3
    asm("_jmp_addr_0x0075b455:");
    asm("mov                eax, 0x00000001");                               // 0x0075b455    b801000000
    asm("pop                ecx");                                           // 0x0075b45a    59
    asm("ret");                                                              // 0x0075b45b    c3
    __builtin_unreachable();
}
