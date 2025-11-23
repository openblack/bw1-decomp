#include "Villager.h"

const float villager_housewife_float1000p0_0x0099a99c = 1000.0f;
const float villager_housewife_float10p0_0x0099a9a0 = 10.0f;
const float villager_housewife_num_days_in_year_0x0099a9a4 = 365.25f;
const float villager_housewife_seconds_in_day_0x0099a9a8 = 86400.0f;

__attribute__((aligned(4))) char s_VillagerHousewife_cpp[] = "C:\\dev\\MP\\Black\\VillagerHousewife.cpp";

float villager_housewife_seconds_in_year_0x00db9e1c;

void __cdecl globl_ct_0x00761b80(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00761b80    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00761b86    b001
    asm("test               al, cl");                                        // 0x00761b88    84c8
    asm("{disp8} jne        _jmp_addr_0x00761b94");                          // 0x00761b8a    7508
    asm("or.s               cl, al");                                        // 0x00761b8c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x00761b8e    880d34c9fa00
    asm("_jmp_addr_0x00761b94:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00761ba0");   // 0x00761b94    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00761ba0(void)
{
    asm("push               0x00407870");                                    // 0x00761ba0    6870784000
    asm("call               _atexit");                                       // 0x00761ba5    e8e73b0600
    asm("pop                ecx");                                           // 0x00761baa    59
}

void __cdecl FUN_00761bb0__8VillagerFv(void)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00761bb0    8b01
    asm("jmp                dword ptr [eax + 0x460]");                       // 0x00761bb2    ffa060040000
    asm("int3");                                                             // 0x00761bb8    cc
    asm("int3");                                                             // 0x00761bb9    cc
    asm("int3");                                                             // 0x00761bba    cc
    asm("int3");                                                             // 0x00761bbb    cc
    asm("int3");                                                             // 0x00761bbc    cc
    asm("int3");                                                             // 0x00761bbd    cc
    asm("int3");                                                             // 0x00761bbe    cc
    asm("int3");                                                             // 0x00761bbf    cc
    __builtin_unreachable();
}

void __cdecl FUN_00761bc0__8VillagerFv(void)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00761bc0    8b01
    asm("jmp                dword ptr [eax + 0x338]");                       // 0x00761bc2    ffa038030000
    asm("int3");                                                             // 0x00761bc8    cc
    asm("int3");                                                             // 0x00761bc9    cc
    asm("int3");                                                             // 0x00761bca    cc
    asm("int3");                                                             // 0x00761bcb    cc
    asm("int3");                                                             // 0x00761bcc    cc
    asm("int3");                                                             // 0x00761bcd    cc
    asm("int3");                                                             // 0x00761bce    cc
    asm("int3");                                                             // 0x00761bcf    cc
    __builtin_unreachable();

}

void __cdecl globl_ct_0x00761bd0(void)
{
    asm("{disp32} jmp       _FUN_00761be0__8VillagerFv");                    // 0x00761bd0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00761be0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_housewife_seconds_in_day_0x0099a9a8]");   // 0x00761be0    d905a8a99900
    asm("{disp32} fmul dword ptr [_villager_housewife_num_days_in_year_0x0099a9a4]"); // 0x00761be6    d80da4a99900
    asm("{disp32} fstp dword ptr [_villager_housewife_seconds_in_year_0x00db9e1c]");  // 0x00761bec    d91d1c9edb00
}

bool32_t __fastcall HousewifeLookForWork__8VillagerFv(struct Villager* this)
{
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761c00    e85b05ffff
    asm("neg                eax");                                           // 0x00761c05    f7d8
    asm("sbb.s              eax, eax");                                      // 0x00761c07    1bc0
    asm("neg                eax");                                           // 0x00761c09    f7d8
    asm("ret");                                                              // 0x00761c0b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall HousewifeAtHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761c10    56
    asm("mov.s              esi, ecx");                                      // 0x00761c11    8bf1
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x00761c13    f686e000000004
    asm("{disp8} je         _jmp_addr_0x00761c36");                          // 0x00761c1a    741a
    asm("call               ?CheckNeededToMakeDinner@Villager@@QAE_NXZ");    // 0x00761c1c    e86f000000
    asm("cmp                eax, 0x01");                                     // 0x00761c21    83f801
    asm("{disp8} jne        _jmp_addr_0x00761c28");                          // 0x00761c24    7502
    asm("pop                esi");                                           // 0x00761c26    5e
    asm("ret");                                                              // 0x00761c27    c3
    asm("_jmp_addr_0x00761c28:");
    asm("mov.s              ecx, esi");                                      // 0x00761c28    8bce
    asm("call               ?CheckNeededForHouseWork@Villager@@QAEIXZ");     // 0x00761c2a    e811000000
    asm("cmp                eax, 0x01");                                     // 0x00761c2f    83f801
    asm("{disp8} jne        _jmp_addr_0x00761c36");                          // 0x00761c32    7502
    asm("pop                esi");                                           // 0x00761c34    5e
    asm("ret");                                                              // 0x00761c35    c3
    asm("_jmp_addr_0x00761c36:");
    asm("xor.s              eax, eax");                                      // 0x00761c36    33c0
    asm("pop                esi");                                           // 0x00761c38    5e
    asm("ret");                                                              // 0x00761c39    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeededForHouseWork__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761c40    56
    asm("mov.s              esi, ecx");                                      // 0x00761c41    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761c43    e81805ffff
    asm("mov.s              ecx, eax");                                      // 0x00761c48    8bc8
    asm("call               ?IsEnoughFoodForDinner@Abode@@QAE_NXZ");         // 0x00761c4a    e8b129caff
    asm("cmp                eax, 0x01");                                     // 0x00761c4f    83f801
    asm("{disp8} je         _jmp_addr_0x00761c67");                          // 0x00761c52    7413
    asm("mov                eax, dword ptr [esi]");                          // 0x00761c54    8b06
    asm("push               0x65");                                          // 0x00761c56    6a65
    asm("mov.s              ecx, esi");                                      // 0x00761c58    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00761c5a    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00761c60    b801000000
    asm("pop                esi");                                           // 0x00761c65    5e
    asm("ret");                                                              // 0x00761c66    c3
    asm("_jmp_addr_0x00761c67:");
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x00761c67    f686e000000004
    asm("{disp8} je         _jmp_addr_0x00761c89");                          // 0x00761c6e    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x00761c70    8b16
    asm("push               0x6c");                                          // 0x00761c72    6a6c
    asm("mov.s              ecx, esi");                                      // 0x00761c74    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0005");                 // 0x00761c76    66c746580500
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00761c7c    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00761c82    b801000000
    asm("pop                esi");                                           // 0x00761c87    5e
    asm("ret");                                                              // 0x00761c88    c3
    asm("_jmp_addr_0x00761c89:");
    asm("xor.s              eax, eax");                                      // 0x00761c89    33c0
    asm("pop                esi");                                           // 0x00761c8b    5e
    asm("ret");                                                              // 0x00761c8c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeededToMakeDinner__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761c90    56
    asm("push               edi");                                           // 0x00761c91    57
    asm("mov.s              edi, ecx");                                      // 0x00761c92    8bf9
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761c94    e8c704ffff
    asm("{disp32} mov       esi, dword ptr [eax + 0x000000a0]");             // 0x00761c99    8bb0a0000000
    asm("test               esi, esi");                                      // 0x00761c9f    85f6
    asm("{disp8} je         _jmp_addr_0x00761cb8");                          // 0x00761ca1    7415
    asm("_jmp_addr_0x00761ca3:");
    asm("mov.s              ecx, esi");                                      // 0x00761ca3    8bce
    asm("call               ?IsHungry@Villager@@QAE_NXZ");                   // 0x00761ca5    e85609ffff
    asm("test               eax, eax");                                      // 0x00761caa    85c0
    asm("{disp8} jne        _jmp_addr_0x00761cbd");                          // 0x00761cac    750f
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x00761cae    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00761cb4    85f6
    asm("{disp8} jne        _jmp_addr_0x00761ca3");                          // 0x00761cb6    75eb
    asm("_jmp_addr_0x00761cb8:");
    asm("pop                edi");                                           // 0x00761cb8    5f
    asm("xor.s              eax, eax");                                      // 0x00761cb9    33c0
    asm("pop                esi");                                           // 0x00761cbb    5e
    asm("ret");                                                              // 0x00761cbc    c3
    asm("_jmp_addr_0x00761cbd:");
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x00761cbd    f686e000000004
    asm("mov.s              ecx, edi");                                      // 0x00761cc4    8bcf
    asm("{disp8} je         _jmp_addr_0x00761cd0");                          // 0x00761cc6    7408
    asm("call               ?HousewifeMakeDinner@Villager@@QAEIXZ");         // 0x00761cc8    e893020000
    asm("pop                edi");                                           // 0x00761ccd    5f
    asm("pop                esi");                                           // 0x00761cce    5e
    asm("ret");                                                              // 0x00761ccf    c3
    asm("_jmp_addr_0x00761cd0:");
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00761cd0    e89be5ffff
    asm("pop                edi");                                           // 0x00761cd5    5f
    asm("pop                esi");                                           // 0x00761cd6    5e
    asm("ret");                                                              // 0x00761cd7    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeGotoStoragePit__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00761ce0    83ec0c
    asm("push               esi");                                           // 0x00761ce3    56
    asm("mov.s              esi, ecx");                                      // 0x00761ce4    8bf1
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00761ce6    e82502ffff
    asm("test               eax, eax");                                      // 0x00761ceb    85c0
    asm("{disp8} je         _jmp_addr_0x00761d49");                          // 0x00761ced    745a
    asm("mov.s              ecx, esi");                                      // 0x00761cef    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00761cf1    e81a02ffff
    asm("mov                edx, dword ptr [eax]");                          // 0x00761cf6    8b10
    asm("mov.s              ecx, eax");                                      // 0x00761cf8    8bc8
    asm("call               dword ptr [edx + 0xd4]");                        // 0x00761cfa    ff92d4000000
    asm("test               eax, eax");                                      // 0x00761d00    85c0
    asm("{disp8} je         _jmp_addr_0x00761d49");                          // 0x00761d02    7445
    asm("mov.s              ecx, esi");                                      // 0x00761d04    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761d06    e85504ffff
    asm("mov.s              ecx, eax");                                      // 0x00761d0b    8bc8
    asm("call               ?IsEnoughFoodForDinner@Abode@@QAE_NXZ");         // 0x00761d0d    e8ee28caff
    asm("cmp                eax, 0x01");                                     // 0x00761d12    83f801
    asm("{disp8} je         _jmp_addr_0x00761d49");                          // 0x00761d15    7432
    asm("mov.s              ecx, esi");                                      // 0x00761d17    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00761d19    e8f201ffff
    asm("mov                edx, dword ptr [eax]");                          // 0x00761d1e    8b10
    asm("push               0x66");                                          // 0x00761d20    6a66
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00761d22    8d4c2408
    asm("push               ecx");                                           // 0x00761d26    51
    asm("mov.s              ecx, eax");                                      // 0x00761d27    8bc8
    asm("call               dword ptr [edx + 0x104]");                       // 0x00761d29    ff9204010000
    asm("push               eax");                                           // 0x00761d2f    50
    asm("mov.s              ecx, esi");                                      // 0x00761d30    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00761d32    e8d901ffff
    asm("push               eax");                                           // 0x00761d37    50
    asm("mov.s              ecx, esi");                                      // 0x00761d38    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00761d3a    e8e1bfe8ff
    asm("mov                eax, 0x00000001");                               // 0x00761d3f    b801000000
    asm("pop                esi");                                           // 0x00761d44    5e
    asm("add                esp, 0x0c");                                     // 0x00761d45    83c40c
    asm("ret");                                                              // 0x00761d48    c3
    asm("_jmp_addr_0x00761d49:");
    asm("mov.s              ecx, esi");                                      // 0x00761d49    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00761d4b    e820e5ffff
    asm("mov                eax, 0x00000001");                               // 0x00761d50    b801000000
    asm("pop                esi");                                           // 0x00761d55    5e
    asm("add                esp, 0x0c");                                     // 0x00761d56    83c40c
    asm("ret");                                                              // 0x00761d59    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall HousewifeArrivesAtStoragePit__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00761d60    83ec0c
    asm("push               ebx");                                           // 0x00761d63    53
    asm("push               esi");                                           // 0x00761d64    56
    asm("push               edi");                                           // 0x00761d65    57
    asm("mov.s              esi, ecx");                                      // 0x00761d66    8bf1
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00761d68    e8a301ffff
    asm("mov.s              edi, eax");                                      // 0x00761d6d    8bf8
    asm("test               edi, edi");                                      // 0x00761d6f    85ff
    asm("{disp32} je        _jmp_addr_0x00761e79");                          // 0x00761d71    0f8402010000
    asm("mov                eax, dword ptr [edi]");                          // 0x00761d77    8b07
    asm("mov.s              ecx, edi");                                      // 0x00761d79    8bcf
    asm("call               dword ptr [eax + 0xd4]");                        // 0x00761d7b    ff90d4000000
    asm("cmp                eax, 0x01");                                     // 0x00761d81    83f801
    asm("{disp32} jne       _jmp_addr_0x00761e79");                          // 0x00761d84    0f85ef000000
    asm("mov.s              ecx, esi");                                      // 0x00761d8a    8bce
    asm("call               ?IsEnoughFoodInStoragePitForDinner@Villager@@QAE_NXZ");                          // 0x00761d8c    e80ff5feff
    asm("test               eax, eax");                                      // 0x00761d91    85c0
    asm("{disp8} jne        _jmp_addr_0x00761db5");                          // 0x00761d93    7520
    asm("mov                edx, dword ptr [esi]");                          // 0x00761d95    8b16
    asm("push               0x6d");                                          // 0x00761d97    6a6d
    asm("mov.s              ecx, esi");                                      // 0x00761d99    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00761d9b    ff92e8080000
    asm("mov.s              ecx, esi");                                      // 0x00761da1    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0001");                 // 0x00761da3    66c746580100
    asm("call               ?HousewifeGossipsAroundStoragePit@Villager@@QAEIXZ");                          // 0x00761da9    e872020000
    asm("pop                edi");                                           // 0x00761dae    5f
    asm("pop                esi");                                           // 0x00761daf    5e
    asm("pop                ebx");                                           // 0x00761db0    5b
    asm("add                esp, 0x0c");                                     // 0x00761db1    83c40c
    asm("ret");                                                              // 0x00761db4    c3
    asm("_jmp_addr_0x00761db5:");
    asm("mov.s              ecx, esi");                                      // 0x00761db5    8bce
    asm("call               ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ");                          // 0x00761db7    e8449effff
    asm("mov.s              ecx, esi");                                      // 0x00761dbc    8bce
    asm("mov.s              ebx, eax");                                      // 0x00761dbe    8bd8
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761dc0    e89b03ffff
    asm("test               eax, eax");                                      // 0x00761dc5    85c0
    asm("{disp8} je         _jmp_addr_0x00761de2");                          // 0x00761dc7    7419
    asm("mov.s              ecx, esi");                                      // 0x00761dc9    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761dcb    e89003ffff
    asm("mov.s              ecx, eax");                                      // 0x00761dd0    8bc8
    asm("call               ?CalculateFoodNeededForDinner@Abode@@QAEHXZ");   // 0x00761dd2    e8f927caff
    asm("xor.s              ebx, ebx");                                      // 0x00761dd7    33db
    asm("mov.s              bx, ax");                                        // 0x00761dd9    668bd8
    asm("and                ebx, 0x0000ffff");                               // 0x00761ddc    81e3ffff0000
    asm("_jmp_addr_0x00761de2:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00761de2    8b07
    asm("push               0x0");                                           // 0x00761de4    6a00
    asm("mov.s              ecx, edi");                                      // 0x00761de6    8bcf
    asm("call               dword ptr [eax + 0x98]");                        // 0x00761de8    ff9098000000
    asm("cmp.s              ebx, eax");                                      // 0x00761dee    3bd8
    asm("{disp8} jbe        _jmp_addr_0x00761e12");                          // 0x00761df0    7620
    asm("mov                edx, dword ptr [esi]");                          // 0x00761df2    8b16
    asm("push               0x6d");                                          // 0x00761df4    6a6d
    asm("mov.s              ecx, esi");                                      // 0x00761df6    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00761df8    ff92e8080000
    asm("mov.s              ecx, esi");                                      // 0x00761dfe    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0001");                 // 0x00761e00    66c746580100
    asm("call               ?HousewifeGossipsAroundStoragePit@Villager@@QAEIXZ");                          // 0x00761e06    e815020000
    asm("pop                edi");                                           // 0x00761e0b    5f
    asm("pop                esi");                                           // 0x00761e0c    5e
    asm("pop                ebx");                                           // 0x00761e0d    5b
    asm("add                esp, 0x0c");                                     // 0x00761e0e    83c40c
    asm("ret");                                                              // 0x00761e11    c3
    asm("_jmp_addr_0x00761e12:");
    asm("test               ebx, ebx");                                      // 0x00761e12    85db
    asm("{disp8} jbe        _jmp_addr_0x00761e2e");                          // 0x00761e14    7618
    asm("push               0x000000a3");                                    // 0x00761e16    68a3000000
    asm("push               0x67");                                          // 0x00761e1b    6a67
    asm("push               ebx");                                           // 0x00761e1d    53
    asm("push               0x0");                                           // 0x00761e1e    6a00
    asm("mov.s              ecx, esi");                                      // 0x00761e20    8bce
    asm("call               ?ArrivesAtStoragePitForResource@Villager@@QAEIW4RESOURCE_TYPE@@KW4VILLAGER_STATES@@1@Z");                          // 0x00761e22    e8a97a0000
    asm("pop                edi");                                           // 0x00761e27    5f
    asm("pop                esi");                                           // 0x00761e28    5e
    asm("pop                ebx");                                           // 0x00761e29    5b
    asm("add                esp, 0x0c");                                     // 0x00761e2a    83c40c
    asm("ret");                                                              // 0x00761e2d    c3
    asm("_jmp_addr_0x00761e2e:");
    asm("cmp                word ptr [esi + 0x000000f4], 0x00");             // 0x00761e2e    6683bef400000000
    asm("{disp8} je         _jmp_addr_0x00761e5e");                          // 0x00761e36    7426
    asm("mov                eax, dword ptr [edi]");                          // 0x00761e38    8b07
    asm("push               0x67");                                          // 0x00761e3a    6a67
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00761e3c    8d4c2410
    asm("push               ecx");                                           // 0x00761e40    51
    asm("mov.s              ecx, edi");                                      // 0x00761e41    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x00761e43    ff9004010000
    asm("push               eax");                                           // 0x00761e49    50
    asm("push               edi");                                           // 0x00761e4a    57
    asm("mov.s              ecx, esi");                                      // 0x00761e4b    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00761e4d    e8cebee8ff
    asm("pop                edi");                                           // 0x00761e52    5f
    asm("pop                esi");                                           // 0x00761e53    5e
    asm("mov                eax, 0x00000001");                               // 0x00761e54    b801000000
    asm("pop                ebx");                                           // 0x00761e59    5b
    asm("add                esp, 0x0c");                                     // 0x00761e5a    83c40c
    asm("ret");                                                              // 0x00761e5d    c3
    asm("_jmp_addr_0x00761e5e:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00761e5e    8b16
    asm("push               0x000000a3");                                    // 0x00761e60    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00761e65    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00761e67    ff92e8080000
    asm("pop                edi");                                           // 0x00761e6d    5f
    asm("pop                esi");                                           // 0x00761e6e    5e
    asm("mov                eax, 0x00000001");                               // 0x00761e6f    b801000000
    asm("pop                ebx");                                           // 0x00761e74    5b
    asm("add                esp, 0x0c");                                     // 0x00761e75    83c40c
    asm("ret");                                                              // 0x00761e78    c3
    asm("_jmp_addr_0x00761e79:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00761e79    8b06
    asm("push               0x000000a3");                                    // 0x00761e7b    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00761e80    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00761e82    ff90e8080000
    asm("pop                edi");                                           // 0x00761e88    5f
    asm("pop                esi");                                           // 0x00761e89    5e
    asm("mov                eax, 0x00000001");                               // 0x00761e8a    b801000000
    asm("pop                ebx");                                           // 0x00761e8f    5b
    asm("add                esp, 0x0c");                                     // 0x00761e90    83c40c
    asm("ret");                                                              // 0x00761e93    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifePickupFromStoragePit__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00761ea0    83ec0c
    asm("push               esi");                                           // 0x00761ea3    56
    asm("mov.s              esi, ecx");                                      // 0x00761ea4    8bf1
    asm("cmp                word ptr [esi + 0x000000f4], 0x00");             // 0x00761ea6    6683bef400000000
    asm("{disp8} je         _jmp_addr_0x00761eeb");                          // 0x00761eae    743b
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761eb0    e8ab02ffff
    asm("test               eax, eax");                                      // 0x00761eb5    85c0
    asm("{disp8} je         _jmp_addr_0x00761eeb");                          // 0x00761eb7    7432
    asm("mov.s              ecx, esi");                                      // 0x00761eb9    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761ebb    e8a002ffff
    asm("mov                edx, dword ptr [eax]");                          // 0x00761ec0    8b10
    asm("push               0x68");                                          // 0x00761ec2    6a68
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00761ec4    8d4c2408
    asm("push               ecx");                                           // 0x00761ec8    51
    asm("mov.s              ecx, eax");                                      // 0x00761ec9    8bc8
    asm("call               dword ptr [edx + 0x104]");                       // 0x00761ecb    ff9204010000
    asm("push               eax");                                           // 0x00761ed1    50
    asm("mov.s              ecx, esi");                                      // 0x00761ed2    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761ed4    e88702ffff
    asm("push               eax");                                           // 0x00761ed9    50
    asm("mov.s              ecx, esi");                                      // 0x00761eda    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00761edc    e83fbee8ff
    asm("mov                eax, 0x00000001");                               // 0x00761ee1    b801000000
    asm("pop                esi");                                           // 0x00761ee6    5e
    asm("add                esp, 0x0c");                                     // 0x00761ee7    83c40c
    asm("ret");                                                              // 0x00761eea    c3
    asm("_jmp_addr_0x00761eeb:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00761eeb    8b16
    asm("push               0x000000a3");                                    // 0x00761eed    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00761ef2    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00761ef4    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00761efa    b801000000
    asm("pop                esi");                                           // 0x00761eff    5e
    asm("add                esp, 0x0c");                                     // 0x00761f00    83c40c
    asm("ret");                                                              // 0x00761f03    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeReturnHomeWithFood__8VillagerFv(struct Villager* this)
{
    asm("push               edi");                                           // 0x00761f10    57
    asm("mov.s              edi, ecx");                                      // 0x00761f11    8bf9
    asm("call               ?ArrivesHome@Villager@@QAEIXZ");                 // 0x00761f13    e818eaffff
    asm("cmp                eax, 0x01");                                     // 0x00761f18    83f801
    asm("{disp8} jne        _jmp_addr_0x00761f52");                          // 0x00761f1b    7535
    asm("push               ebx");                                           // 0x00761f1d    53
    asm("push               esi");                                           // 0x00761f1e    56
    asm("mov.s              ecx, edi");                                      // 0x00761f1f    8bcf
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761f21    e83a02ffff
    asm("push               0x0");                                           // 0x00761f26    6a00
    asm("push               0x0");                                           // 0x00761f28    6a00
    asm("push               0x0");                                           // 0x00761f2a    6a00
    asm("push               0x0");                                           // 0x00761f2c    6a00
    asm("mov.s              esi, eax");                                      // 0x00761f2e    8bf0
    asm("mov                ebx, dword ptr [esi]");                          // 0x00761f30    8b1e
    asm("push               0x0");                                           // 0x00761f32    6a00
    asm("mov.s              ecx, edi");                                      // 0x00761f34    8bcf
    asm("call               ?DropFood@Villager@@QAEGG@Z");                   // 0x00761f36    e8a5f2feff
    asm("movsx              eax, ax");                                       // 0x00761f3b    0fbfc0
    asm("push               eax");                                           // 0x00761f3e    50
    asm("push               0x0");                                           // 0x00761f3f    6a00
    asm("mov.s              ecx, esi");                                      // 0x00761f41    8bce
    asm("call               dword ptr [ebx + 0x9c]");                        // 0x00761f43    ff939c000000
    asm("pop                esi");                                           // 0x00761f49    5e
    asm("pop                ebx");                                           // 0x00761f4a    5b
    asm("mov                eax, 0x00000001");                               // 0x00761f4b    b801000000
    asm("pop                edi");                                           // 0x00761f50    5f
    asm("ret");                                                              // 0x00761f51    c3
    asm("_jmp_addr_0x00761f52:");
    asm("mov                eax, 0x00000001");                               // 0x00761f52    b801000000
    asm("pop                edi");                                           // 0x00761f57    5f
    asm("ret");                                                              // 0x00761f58    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeMakeDinner__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761f60    56
    asm("mov.s              esi, ecx");                                      // 0x00761f61    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00761f63    e8f801ffff
    asm("mov.s              ecx, eax");                                      // 0x00761f68    8bc8
    asm("call               ?IsEnoughFoodForDinner@Abode@@QAE_NXZ");         // 0x00761f6a    e89126caff
    asm("cmp                eax, 0x01");                                     // 0x00761f6f    83f801
    asm("{disp8} jne        _jmp_addr_0x00761f87");                          // 0x00761f72    7513
    asm("mov                eax, dword ptr [esi]");                          // 0x00761f74    8b06
    asm("push               0x6a");                                          // 0x00761f76    6a6a
    asm("mov.s              ecx, esi");                                      // 0x00761f78    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00761f7a    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00761f80    b801000000
    asm("pop                esi");                                           // 0x00761f85    5e
    asm("ret");                                                              // 0x00761f86    c3
    asm("_jmp_addr_0x00761f87:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00761f87    8b16
    asm("push               0x65");                                          // 0x00761f89    6a65
    asm("mov.s              ecx, esi");                                      // 0x00761f8b    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00761f8d    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00761f93    b801000000
    asm("pop                esi");                                           // 0x00761f98    5e
    asm("ret");                                                              // 0x00761f99    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeServesDinner__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00761fa0    8b4128
    asm("{disp32} mov       dx, word ptr [eax + 0x000002b4]");               // 0x00761fa3    668b90b4020000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00761faa    8b01
    asm("push               0x6b");                                          // 0x00761fac    6a6b
    asm("{disp8} mov        word ptr [ecx + 0x58], dx");                     // 0x00761fae    66895158
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00761fb2    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00761fb8    b801000000
    asm("ret");                                                              // 0x00761fbd    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeClearsAwayDinner__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761fc0    56
    asm("mov.s              esi, ecx");                                      // 0x00761fc1    8bf1
    asm("dec                word ptr [esi + 0x58]");                         // 0x00761fc3    66ff4e58
    asm("cmp                word ptr [esi + 0x58], 0x00");                   // 0x00761fc7    66837e5800
    asm("{disp8} jne        _jmp_addr_0x00761fe1");                          // 0x00761fcc    7513
    asm("call               ?EatFoodHeld@Villager@@QAEIXZ");                 // 0x00761fce    e84d9fffff
    asm("fstp               st(0)");                                         // 0x00761fd3    ddd8
    asm("mov                eax, dword ptr [esi]");                          // 0x00761fd5    8b06
    asm("push               0x24");                                          // 0x00761fd7    6a24
    asm("mov.s              ecx, esi");                                      // 0x00761fd9    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00761fdb    ff90e8080000
    asm("_jmp_addr_0x00761fe1:");
    asm("mov                eax, 0x00000001");                               // 0x00761fe1    b801000000
    asm("pop                esi");                                           // 0x00761fe6    5e
    asm("ret");                                                              // 0x00761fe7    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeDoesHousework__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00761ff0    56
    asm("mov.s              esi, ecx");                                      // 0x00761ff1    8bf1
    asm("call               ?CheckNeededForSpecial@Villager@@QAEIXZ");       // 0x00761ff3    e818e0ffff
    asm("cmp                eax, 0x01");                                     // 0x00761ff8    83f801
    asm("{disp8} je         _jmp_addr_0x0076200f");                          // 0x00761ffb    7412
    asm("dec                word ptr [esi + 0x58]");                         // 0x00761ffd    66ff4e58
    asm("cmp                word ptr [esi + 0x58], 0x00");                   // 0x00762001    66837e5800
    asm("{disp8} jne        _jmp_addr_0x0076200f");                          // 0x00762006    7507
    asm("mov.s              ecx, esi");                                      // 0x00762008    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x0076200a    e861e2ffff
    asm("_jmp_addr_0x0076200f:");
    asm("mov                eax, 0x00000001");                               // 0x0076200f    b801000000
    asm("pop                esi");                                           // 0x00762014    5e
    asm("ret");                                                              // 0x00762015    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeGossipsAroundStoragePit__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x1c");                                     // 0x00762020    83ec1c
    asm("push               esi");                                           // 0x00762023    56
    asm("mov.s              esi, ecx");                                      // 0x00762024    8bf1
    asm("dec                word ptr [esi + 0x58]");                         // 0x00762026    66ff4e58
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                     // 0x0076202a    668b4658
    asm("test               ax, ax");                                        // 0x0076202e    6685c0
    asm("push               edi");                                           // 0x00762031    57
    asm("{disp32} jg        _jmp_addr_0x00762194");                          // 0x00762032    0f8f5c010000
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00762038    e8d3fefeff
    asm("test               eax, eax");                                      // 0x0076203d    85c0
    asm("{disp8} je         _jmp_addr_0x00762057");                          // 0x0076203f    7416
    asm("mov.s              ecx, esi");                                      // 0x00762041    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00762043    e8c8fefeff
    asm("mov                edx, dword ptr [eax]");                          // 0x00762048    8b10
    asm("mov.s              ecx, eax");                                      // 0x0076204a    8bc8
    asm("call               dword ptr [edx + 0xd4]");                        // 0x0076204c    ff92d4000000
    asm("cmp                eax, 0x01");                                     // 0x00762052    83f801
    asm("{disp8} je         _jmp_addr_0x0076205e");                          // 0x00762055    7407
    asm("_jmp_addr_0x00762057:");
    asm("mov.s              ecx, esi");                                      // 0x00762057    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00762059    e812e2ffff
    asm("_jmp_addr_0x0076205e:");
    asm("mov.s              ecx, esi");                                      // 0x0076205e    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00762060    e8abfefeff
    asm("mov                edx, dword ptr [eax]");                          // 0x00762065    8b10
    asm("push               0x0");                                           // 0x00762067    6a00
    asm("mov.s              ecx, eax");                                      // 0x00762069    8bc8
    asm("call               dword ptr [edx + 0x98]");                        // 0x0076206b    ff9298000000
    asm("mov.s              ecx, esi");                                      // 0x00762071    8bce
    asm("mov.s              edi, eax");                                      // 0x00762073    8bf8
    asm("call               ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ");                          // 0x00762075    e8869bffff
    asm("cmp.s              eax, edi");                                      // 0x0076207a    3bc7
    asm("{disp8} jae        _jmp_addr_0x00762097");                          // 0x0076207c    7319
    asm("mov                eax, dword ptr [esi]");                          // 0x0076207e    8b06
    asm("push               0x65");                                          // 0x00762080    6a65
    asm("mov.s              ecx, esi");                                      // 0x00762082    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00762084    ff90e8080000
    asm("mov.s              ecx, esi");                                      // 0x0076208a    8bce
    asm("call               ?HousewifeGotoStoragePit@Villager@@QAEIXZ");     // 0x0076208c    e84ffcffff
    asm("pop                edi");                                           // 0x00762091    5f
    asm("pop                esi");                                           // 0x00762092    5e
    asm("add                esp, 0x1c");                                     // 0x00762093    83c41c
    asm("ret");                                                              // 0x00762096    c3
    asm("_jmp_addr_0x00762097:");
    asm("mov.s              ecx, esi");                                      // 0x00762097    8bce
    asm("call               ?CheckNeededForSpecial@Villager@@QAEIXZ");       // 0x00762099    e872dfffff
    asm("cmp                eax, 0x01");                                     // 0x0076209e    83f801
    asm("{disp32} je        _jmp_addr_0x00762194");                          // 0x007620a1    0f84ed000000
    asm("mov.s              ecx, esi");                                      // 0x007620a7    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x007620a9    e862fefeff
    asm("add                eax, 0x14");                                     // 0x007620ae    83c014
    asm("mov                ecx, dword ptr [eax]");                          // 0x007620b1    8b08
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x007620b3    894c2418
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x007620b7    8b5004
    asm("push               0x0000010f");                                    // 0x007620ba    680f010000
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                   // 0x007620bf    89542420
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x007620c3    8b4008
    asm("push               0x00c2450c");                                    // 0x007620c6    680c45c200
    asm("push               0x40c90fdb");                                    // 0x007620cb    68db0fc940
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                   // 0x007620d0    8944242c
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007620d4    e857c4f7ff
    asm("add                esp, 0x0c");                                     // 0x007620d9    83c40c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x007620dc    d95c240c
    asm("mov.s              ecx, esi");                                      // 0x007620e0    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x007620e2    e829fefeff
    asm("{disp32} fld       dword ptr [_villager_housewife_float10p0_0x0099a9a0]"); // 0x007620e7    d905a0a99900
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x007620ed    d80db4a38a00
    asm("push               0x00000110");                                    // 0x007620f3    6810010000
    asm("push               0x00c2450c");                                    // 0x007620f8    680c45c200
    asm("push               ecx");                                           // 0x007620fd    51
    asm("fstp               dword ptr [esp]");                               // 0x007620fe    d91c24
    asm("mov.s              edi, eax");                                      // 0x00762101    8bf8
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00762103    e828c4f7ff
    asm("mov                edx, dword ptr [edi]");                          // 0x00762108    8b17
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0076210a    d95c2414
    asm("add                esp, 0x0c");                                     // 0x0076210e    83c40c
    asm("mov.s              ecx, edi");                                      // 0x00762111    8bcf
    asm("call               dword ptr [edx + 0x64]");                        // 0x00762113    ff5264
    asm("{disp8} fadd       dword ptr [esp + 0x08]");                        // 0x00762116    d8442408
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x0076211a    8b4c240c
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x0076211e    8d54240c
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x00762122    d95c2408
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00762126    8b442408
    asm("push               eax");                                           // 0x0076212a    50
    asm("push               ecx");                                           // 0x0076212b    51
    asm("push               edx");                                           // 0x0076212c    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x0076212d    e84eb4feff
    asm("add                esp, 0x0c");                                     // 0x00762132    83c40c
    asm("push               eax");                                           // 0x00762135    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00762136    8d4c241c
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");            // 0x0076213a    e8d132eaff
    asm("push               0x19");                                          // 0x0076213f    6a19
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00762141    8d4c241c
    asm("call               _jmp_addr_0x006033b0");                          // 0x00762145    e86612eaff
    asm("test               eax, eax");                                      // 0x0076214a    85c0
    asm("{disp8} jne        _jmp_addr_0x00762164");                          // 0x0076214c    7516
    asm("push               0x6d");                                          // 0x0076214e    6a6d
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x00762150    8d44241c
    asm("push               eax");                                           // 0x00762154    50
    asm("mov.s              ecx, esi");                                      // 0x00762155    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00762157    e8b4fdfeff
    asm("push               eax");                                           // 0x0076215c    50
    asm("mov.s              ecx, esi");                                      // 0x0076215d    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x0076215f    e8bcbbe8ff
    asm("_jmp_addr_0x00762164:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00762164    8b4e28
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000002b0]");             // 0x00762167    8b91b0020000
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x0076216d    8954240c
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00762171    c744241000000000
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                        // 0x00762179    df6c240c
    asm("{disp32} fld       dword ptr [esi + 0x000000e8]");                  // 0x0076217d    d986e8000000
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2414]");              // 0x00762183    d80d14b48a00
    asm("faddp              st(1), st");                                     // 0x00762189    dec1
    asm("call               _jmp_addr_0x007a1400");                          // 0x0076218b    e870f20300
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                     // 0x00762190    66894658
    asm("_jmp_addr_0x00762194:");
    asm("pop                edi");                                           // 0x00762194    5f
    asm("mov                eax, 0x00000001");                               // 0x00762195    b801000000
    asm("pop                esi");                                           // 0x0076219a    5e
    asm("add                esp, 0x1c");                                     // 0x0076219b    83c41c
    asm("ret");                                                              // 0x0076219e    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeStartsGivingBirth__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x007621a0    83ec08
    asm("push               esi");                                           // 0x007621a3    56
    asm("mov.s              esi, ecx");                                      // 0x007621a4    8bf1
    asm("{disp32} mov       word ptr [esi + 0x000000f8], 0x0000");           // 0x007621a6    66c786f80000000000
    asm("{disp32} fld       dword ptr [data_bytes + 0x33ba0c]");             // 0x007621af    d9050c1ad000
    asm("push               0x00000120");                                    // 0x007621b5    6820010000
    asm("push               0x00c2450c");                                    // 0x007621ba    680c45c200
    asm("call               _jmp_addr_0x007a1400");                          // 0x007621bf    e83cf20300
    asm("push               eax");                                           // 0x007621c4    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x007621c5    e846c3f7ff
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x007621ca    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x007621ce    c744241400000000
    asm("{disp8} fild       qword ptr [esp + 0x10]");                        // 0x007621d6    df6c2410
    asm("add                esp, 0x0c");                                     // 0x007621da    83c40c
    asm("{disp32} fld       dword ptr [data_bytes + 0x33ba0c]");             // 0x007621dd    d9050c1ad000
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x23d4]");              // 0x007621e3    d80dd4b38a00
    asm("faddp              st(1), st");                                     // 0x007621e9    dec1
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x007621eb    d80590a38a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x007621f1    e80af20300
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                     // 0x007621f6    66894658
    asm("mov                eax, dword ptr [esi]");                          // 0x007621fa    8b06
    asm("push               0x6f");                                          // 0x007621fc    6a6f
    asm("mov.s              ecx, esi");                                      // 0x007621fe    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00762200    ff90e8080000
    asm("mov.s              ecx, esi");                                      // 0x00762206    8bce
    asm("call               ?HousewifeGivingBirth@Villager@@QAEIXZ");        // 0x00762208    e823020000
    asm("pop                esi");                                           // 0x0076220d    5e
    asm("add                esp, 0x08");                                     // 0x0076220e    83c408
    asm("ret");                                                              // 0x00762211    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Villager* __fastcall ChildBorn__FR8Villager(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x00762220    83ec08
    asm("push               ebx");                                           // 0x00762223    53
    asm("push               esi");                                           // 0x00762224    56
    asm("push               edi");                                           // 0x00762225    57
    asm("push               0x00000131");                                    // 0x00762226    6831010000
    asm("push               0x00c2450c");                                    // 0x0076222b    680c45c200
    asm("push               0x64");                                          // 0x00762230    6a64
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00762232    e8d9c2f7ff
    asm("{disp8} mov        esi, dword ptr [esp + 0x24]");                   // 0x00762237    8b742424
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x0076223b    8b7e28
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0076223e    89442418
    asm("{disp32} mov       eax, dword ptr [edi + 0x0000025c]");             // 0x00762242    8b875c020000
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x00762248    c744241c00000000
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x00762250    df6c2418
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x00762254    89442418
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x00762258    c744241c00000000
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x00762260    df6c2418
    asm("add                esp, 0x0c");                                     // 0x00762264    83c40c
    asm("fcompp");                                                           // 0x00762267    ded9
    asm("fnstsw             ax");                                            // 0x00762269    dfe0
    asm("test               ah, 0x01");                                      // 0x0076226b    f6c401
    asm("{disp8} jne        _jmp_addr_0x00762274");                          // 0x0076226e    7504
    asm("xor.s              eax, eax");                                      // 0x00762270    33c0
    asm("{disp8} jmp        _jmp_addr_0x00762279");                          // 0x00762272    eb05
    asm("_jmp_addr_0x00762274:");
    asm("mov                eax, 0x00000001");                               // 0x00762274    b801000000
    asm("_jmp_addr_0x00762279:");
    asm("test               eax, eax");                                      // 0x00762279    85c0
    asm("{disp8} jne        _jmp_addr_0x007622af");                          // 0x0076227b    7532
    asm("push               0x00000137");                                    // 0x0076227d    6837010000
    asm("push               0x00c2450c");                                    // 0x00762282    680c45c200
    asm("push               0x6");                                           // 0x00762287    6a06
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00762289    e882c2f7ff
    asm("add                esp, 0x0c");                                     // 0x0076228e    83c40c
    asm("inc                eax");                                           // 0x00762291    40
    asm("push               eax");                                           // 0x00762292    50
    asm("mov.s              ecx, esi");                                      // 0x00762293    8bce
    asm("call               ?GetTribe@Villager@@QAEPAVGTribeInfo@@XZ");      // 0x00762295    e846fcfeff
    asm("{disp8} mov        ecx, dword ptr [eax + 0x10]");                   // 0x0076229a    8b4810
    asm("push               ecx");                                           // 0x0076229d    51
    asm("call               ?Find@GVillagerInfo@@SAPAV1@W4TRIBE_TYPE@@W4VILLAGER_NUMBER@@@Z");               // 0x0076229e    e8ad03ffff
    asm("mov.s              edi, eax");                                      // 0x007622a3    8bf8
    asm("add                esp, 0x08");                                     // 0x007622a5    83c408
    asm("test               edi, edi");                                      // 0x007622a8    85ff
    asm("{disp8} jne        _jmp_addr_0x007622af");                          // 0x007622aa    7503
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x007622ac    8b7e28
    asm("_jmp_addr_0x007622af:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007622af    8b16
    asm("mov.s              ecx, esi");                                      // 0x007622b1    8bce
    asm("call               dword ptr [edx + 0x4a0]");                       // 0x007622b3    ff92a0040000
    asm("push               eax");                                           // 0x007622b9    50
    asm("push               0x1");                                           // 0x007622ba    6a01
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x007622bc    8d4614
    asm("push               edi");                                           // 0x007622bf    57
    asm("push               eax");                                           // 0x007622c0    50
    asm("call               ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z");                // 0x007622c1    e81ad9feff
    asm("mov.s              ebx, eax");                                      // 0x007622c6    8bd8
    asm("add                esp, 0x10");                                     // 0x007622c8    83c410
    asm("test               ebx, ebx");                                      // 0x007622cb    85db
    asm("{disp32} je        _jmp_addr_0x00762409");                          // 0x007622cd    0f8436010000
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x007622d3    8b0d5c19d000
    asm("call               ?IsMultiplayerGame@GGame@@QBE_NXZ");             // 0x007622d9    e8a20cdfff
    asm("test               eax, eax");                                      // 0x007622de    85c0
    asm("{disp8} je         _jmp_addr_0x00762359");                          // 0x007622e0    7477
    asm("mov                edx, dword ptr [esi]");                          // 0x007622e2    8b16
    asm("mov.s              ecx, esi");                                      // 0x007622e4    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007622e6    ff521c
    asm("test               eax, eax");                                      // 0x007622e9    85c0
    asm("{disp8} je         _jmp_addr_0x00762359");                          // 0x007622eb    746c
    asm("mov                eax, dword ptr [esi]");                          // 0x007622ed    8b06
    asm("mov.s              ecx, esi");                                      // 0x007622ef    8bce
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000002");            // 0x007622f1    c744241802000000
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007622f9    ff501c
    asm("mov.s              edi, eax");                                      // 0x007622fc    8bf8
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x007622fe    8d4c2418
    asm("push               ecx");                                           // 0x00762302    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00762303    8d542410
    asm("add                edi, 0x000000f8");                               // 0x00762307    81c7f8000000
    asm("push               edx");                                           // 0x0076230d    52
    asm("mov.s              ecx, edi");                                      // 0x0076230e    8bcf
    asm("call               _jmp_addr_0x0056f8d0");                          // 0x00762310    e8bbd5e0ff
    asm("{disp8} mov        edi, dword ptr [edi + 0x04]");                   // 0x00762315    8b7f04
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x00762318    8b44240c
    asm("cmp.s              eax, edi");                                      // 0x0076231c    3bc7
    asm("{disp8} je         _jmp_addr_0x0076232f");                          // 0x0076231e    740f
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x00762320    8b4c2418
    asm("cmp                ecx, dword ptr [eax + 0x0c]");                   // 0x00762324    3b480c
    asm("{disp8} jl         _jmp_addr_0x0076232f");                          // 0x00762327    7c06
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x00762329    8d44240c
    asm("{disp8} jmp        _jmp_addr_0x00762337");                          // 0x0076232d    eb08
    asm("_jmp_addr_0x0076232f:");
    asm("{disp8} mov        dword ptr [esp + 0x18], edi");                   // 0x0076232f    897c2418
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x00762333    8d442418
    asm("_jmp_addr_0x00762337:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00762337    8b16
    asm("mov                edi, dword ptr [eax]");                          // 0x00762339    8b38
    asm("mov.s              ecx, esi");                                      // 0x0076233b    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0076233d    ff521c
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000000fc]");             // 0x00762340    8b88fc000000
    asm("add                eax, 0x000000f8");                               // 0x00762346    05f8000000
    asm("cmp.s              edi, ecx");                                      // 0x0076234b    3bf9
    asm("{disp8} je         _jmp_addr_0x00762359");                          // 0x0076234d    740a
    asm("push               0x1");                                           // 0x0076234f    6a01
    asm("{disp8} lea        ecx, dword ptr [edi + 0x10]");                   // 0x00762351    8d4f10
    asm("call               _jmp_addr_0x00775720");                          // 0x00762354    e8c7330100
    asm("_jmp_addr_0x00762359:");
    asm("mov.s              ecx, esi");                                      // 0x00762359    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0076235b    e800fefeff
    asm("test               eax, eax");                                      // 0x00762360    85c0
    asm("{disp8} je         _jmp_addr_0x00762375");                          // 0x00762362    7411
    asm("push               ebx");                                           // 0x00762364    53
    asm("mov.s              ecx, esi");                                      // 0x00762365    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00762367    e8f4fdfeff
    asm("mov.s              ecx, eax");                                      // 0x0076236c    8bc8
    asm("call               ?AddVillagerToAbode@Abode@@QAEXPAVVillager@@@Z");     // 0x0076236e    e8ed1ccaff
    asm("{disp8} jmp        _jmp_addr_0x007623c7");                          // 0x00762373    eb52
    asm("_jmp_addr_0x00762375:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00762375    8b06
    asm("mov.s              ecx, esi");                                      // 0x00762377    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00762379    ff5048
    asm("test               eax, eax");                                      // 0x0076237c    85c0
    asm("{disp8} je         _jmp_addr_0x00762391");                          // 0x0076237e    7411
    asm("mov                edx, dword ptr [esi]");                          // 0x00762380    8b16
    asm("push               ebx");                                           // 0x00762382    53
    asm("mov.s              ecx, esi");                                      // 0x00762383    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00762385    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00762388    8bc8
    asm("call               ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z"); // 0x0076238a    e8017dfdff
    asm("{disp8} jmp        _jmp_addr_0x007623c7");                          // 0x0076238f    eb36
    asm("_jmp_addr_0x00762391:");
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x00762391    a15c19d000
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00205bfc]");             // 0x00762396    8d88fc5b2000
    asm("mov                eax, dword ptr [ecx]");                          // 0x0076239c    8b01
    asm("test               eax, eax");                                      // 0x0076239e    85c0
    asm("{disp8} je         _jmp_addr_0x007623b6");                          // 0x007623a0    7414
    asm("_jmp_addr_0x007623a2:");
    asm("cmp.s              eax, ebx");                                      // 0x007623a2    3bc3
    asm("{disp8} je         _jmp_addr_0x007623b2");                          // 0x007623a4    740c
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");             // 0x007623a6    8b80e4000000
    asm("test               eax, eax");                                      // 0x007623ac    85c0
    asm("{disp8} jne        _jmp_addr_0x007623a2");                          // 0x007623ae    75f2
    asm("{disp8} jmp        _jmp_addr_0x007623b6");                          // 0x007623b0    eb04
    asm("_jmp_addr_0x007623b2:");
    asm("test               eax, eax");                                      // 0x007623b2    85c0
    asm("{disp8} jne        _jmp_addr_0x007623c7");                          // 0x007623b4    7511
    asm("_jmp_addr_0x007623b6:");
    asm("mov                edx, dword ptr [ecx]");                          // 0x007623b6    8b11
    asm("{disp32} mov       dword ptr [ebx + 0x000000e4], edx");             // 0x007623b8    8993e4000000
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x007623be    8b4104
    asm("inc                eax");                                           // 0x007623c1    40
    asm("mov                dword ptr [ecx], ebx");                          // 0x007623c2    8919
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                   // 0x007623c4    894104
    asm("_jmp_addr_0x007623c7:");
    asm("{disp32} mov       dword ptr [ebx + 0x00000100], esi");             // 0x007623c7    89b300010000
    asm("mov                eax, dword ptr [esi]");                          // 0x007623cd    8b06
    asm("mov.s              ecx, esi");                                      // 0x007623cf    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007623d1    ff501c
    asm("test               eax, eax");                                      // 0x007623d4    85c0
    asm("{disp8} je         _jmp_addr_0x007623e8");                          // 0x007623d6    7410
    asm("mov                edx, dword ptr [esi]");                          // 0x007623d8    8b16
    asm("mov.s              ecx, esi");                                      // 0x007623da    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007623dc    ff521c
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000a44]");             // 0x007623df    8b80440a0000
    asm("{disp8} inc        dword ptr [eax + 0x48]");                        // 0x007623e5    ff4048
    asm("_jmp_addr_0x007623e8:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007623e8    8b06
    asm("mov.s              ecx, esi");                                      // 0x007623ea    8bce
    asm("call               dword ptr [eax + 0x4a4]");                       // 0x007623ec    ff90a4040000
    asm("test               al, al");                                        // 0x007623f2    84c0
    asm("{disp8} je         _jmp_addr_0x00762402");                          // 0x007623f4    740c
    asm("mov                edx, dword ptr [ebx]");                          // 0x007623f6    8b13
    asm("push               0x1");                                           // 0x007623f8    6a01
    asm("mov.s              ecx, ebx");                                      // 0x007623fa    8bcb
    asm("call               dword ptr [edx + 0x69c]");                       // 0x007623fc    ff929c060000
    asm("_jmp_addr_0x00762402:");
    asm("mov.s              ecx, ebx");                                      // 0x00762402    8bcb
    asm("call               ?ChildDecideWhatToDo@Villager@@QAE_NXZ");        // 0x00762404    e8b75affff
    asm("_jmp_addr_0x00762409:");
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e48c]");        // 0x00762409    a18c44c200
    asm("test               eax, eax");                                      // 0x0076240e    85c0
    asm("{disp8} jne        _jmp_addr_0x00762418");                          // 0x00762410    7506
    asm("call               dword ptr [data_bytes + 0x25e494]");             // 0x00762412    ff159444c200
    asm("_jmp_addr_0x00762418:");
    asm("pop                edi");                                           // 0x00762418    5f
    asm("pop                esi");                                           // 0x00762419    5e
    asm("mov.s              eax, ebx");                                      // 0x0076241a    8bc3
    asm("pop                ebx");                                           // 0x0076241c    5b
    asm("add                esp, 0x08");                                     // 0x0076241d    83c408
    asm("ret");                                                              // 0x00762420    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeGivingBirth__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00762430    56
    asm("mov.s              esi, ecx");                                      // 0x00762431    8bf1
    asm("dec                word ptr [esi + 0x58]");                         // 0x00762433    66ff4e58
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                     // 0x00762437    668b4658
    asm("test               ax, ax");                                        // 0x0076243b    6685c0
    asm("{disp8} jne        _jmp_addr_0x0076248b");                          // 0x0076243e    754b
    asm("push               edi");                                           // 0x00762440    57
    asm("push               esi");                                           // 0x00762441    56
    asm("call               ?ChildBorn@@YEPAVVillager@@AAV1@@Z");            // 0x00762442    e8d9fdffff
    asm("mov.s              edi, eax");                                      // 0x00762447    8bf8
    asm("add                esp, 0x04");                                     // 0x00762449    83c404
    asm("test               edi, edi");                                      // 0x0076244c    85ff
    asm("{disp8} je         _jmp_addr_0x00762477");                          // 0x0076244e    7427
    asm("push               0x0");                                           // 0x00762450    6a00
    asm("push               0x1");                                           // 0x00762452    6a01
    asm("push               0x1");                                           // 0x00762454    6a01
    asm("push               0x0");                                           // 0x00762456    6a00
    asm("push               0x0");                                           // 0x00762458    6a00
    asm("push               0x2");                                           // 0x0076245a    6a02
    asm("push               0x0");                                           // 0x0076245c    6a00
    asm("push               0xa");                                           // 0x0076245e    6a0a
    asm("push               0x14");                                          // 0x00762460    6a14
    asm("call               _jmp_addr_0x0071ed40");                          // 0x00762462    e8d9c8fbff
    asm("add                esp, 0x08");                                     // 0x00762467    83c408
    asm("push               eax");                                           // 0x0076246a    50
    asm("add                edi, 0x14");                                     // 0x0076246b    83c714
    asm("push               edi");                                           // 0x0076246e    57
    asm("call               _jmp_addr_0x0071eb60");                          // 0x0076246f    e8ecc6fbff
    asm("add                esp, 0x24");                                     // 0x00762474    83c424
    asm("_jmp_addr_0x00762477:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00762477    8b06
    asm("push               0x70");                                          // 0x00762479    6a70
    asm("mov.s              ecx, esi");                                      // 0x0076247b    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0076247d    ff90e8080000
    asm("pop                edi");                                           // 0x00762483    5f
    asm("mov                eax, 0x00000001");                               // 0x00762484    b801000000
    asm("pop                esi");                                           // 0x00762489    5e
    asm("ret");                                                              // 0x0076248a    c3
    asm("_jmp_addr_0x0076248b:");
    asm("mov                eax, 0x00000001");                               // 0x0076248b    b801000000
    asm("pop                esi");                                           // 0x00762490    5e
    asm("ret");                                                              // 0x00762491    c3
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeGivenBirth__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       word ptr [ecx + 0x000000f8], 0x0000");           // 0x007624a0    66c781f80000000000
    asm("{disp32} jmp       ?GoHome@Villager@@QAE_NXZ");                     // 0x007624a9    e9c2ddffff
    asm("nop");                                                              // 0x007624ae    90
    asm("nop");                                                              // 0x007624af    90
    asm("mov                eax, 0x00000001");                               // 0x007624b0    b801000000
    asm("ret");                                                              // 0x007624b5    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall WillHousewifeGetPregnant__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1)
{
    asm("push               ecx");                                           // 0x007624c0    51
    asm("push               ebx");                                           // 0x007624c1    53
    asm("push               esi");                                           // 0x007624c2    56
    asm("push               edi");                                           // 0x007624c3    57
    asm("mov.s              esi, ecx");                                      // 0x007624c4    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x007624c6    e895fcfeff
    asm("mov.s              ecx, esi");                                      // 0x007624cb    8bce
    asm("mov.s              edi, eax");                                      // 0x007624cd    8bf8
    asm("call               ?IsPregnant@Villager@@QAE_NXZ");                 // 0x007624cf    e83cfdfeff
    asm("test               eax, eax");                                      // 0x007624d4    85c0
    asm("{disp32} jne       _jmp_addr_0x0076255e");                          // 0x007624d6    0f8582000000
    asm("mov                eax, dword ptr [esi]");                          // 0x007624dc    8b06
    asm("mov.s              ecx, esi");                                      // 0x007624de    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007624e0    ff5048
    asm("test               eax, eax");                                      // 0x007624e3    85c0
    asm("{disp8} je         _jmp_addr_0x0076255e");                          // 0x007624e5    7477
    asm("test               edi, edi");                                      // 0x007624e7    85ff
    asm("{disp8} je         _jmp_addr_0x0076255e");                          // 0x007624e9    7473
    asm("mov.s              ecx, esi");                                      // 0x007624eb    8bce
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");            // 0x007624ed    e89eebffff
    asm("test               eax, eax");                                      // 0x007624f2    85c0
    asm("{disp8} je         _jmp_addr_0x0076255e");                          // 0x007624f4    7468
    asm("mov                edx, dword ptr [esi]");                          // 0x007624f6    8b16
    asm("push               0x8");                                           // 0x007624f8    6a08
    asm("mov.s              ecx, esi");                                      // 0x007624fa    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x007624fc    ff5248
    asm("mov.s              ecx, eax");                                      // 0x007624ff    8bc8
    asm("add                ecx, 0x34");                                     // 0x00762501    83c134
    asm("call               _jmp_addr_0x00746660");                          // 0x00762504    e85741feff
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00762509    d95c240c
    asm("{disp32} mov       esi, dword ptr [edi + 0x000000a0]");             // 0x0076250d    8bb7a0000000
    asm("xor.s              ebx, ebx");                                      // 0x00762513    33db
    asm("test               esi, esi");                                      // 0x00762515    85f6
    asm("{disp32} mov       bl, byte ptr [edi + 0x000000b7]");               // 0x00762517    8a9fb7000000
    asm("{disp8} je         _jmp_addr_0x00762536");                          // 0x0076251d    7417
    asm("_jmp_addr_0x0076251f:");
    asm("mov.s              ecx, esi");                                      // 0x0076251f    8bce
    asm("call               ?IsPregnant@Villager@@QAE_NXZ");                 // 0x00762521    e8eafcfeff
    asm("cmp                eax, 0x01");                                     // 0x00762526    83f801
    asm("{disp8} jne        _jmp_addr_0x0076252c");                          // 0x00762529    7501
    asm("inc                ebx");                                           // 0x0076252b    43
    asm("_jmp_addr_0x0076252c:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x0076252c    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00762532    85f6
    asm("{disp8} jne        _jmp_addr_0x0076251f");                          // 0x00762534    75e9
    asm("_jmp_addr_0x00762536:");
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00762536    d944240c
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0076253a    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00762540    dfe0
    asm("test               ah, 0x41");                                      // 0x00762542    f6c441
    asm("{disp8} jne        _jmp_addr_0x0076255e");                          // 0x00762545    7517
    asm("{disp8} mov        eax, dword ptr [edi + 0x28]");                   // 0x00762547    8b4728
    asm("cmp                dword ptr [eax + 0x00000178], ebx");             // 0x0076254a    399878010000
    asm("{disp8} jbe        _jmp_addr_0x0076255e");                          // 0x00762550    760c
    asm("pop                edi");                                           // 0x00762552    5f
    asm("pop                esi");                                           // 0x00762553    5e
    asm("mov                eax, 0x00000001");                               // 0x00762554    b801000000
    asm("pop                ebx");                                           // 0x00762559    5b
    asm("pop                ecx");                                           // 0x0076255a    59
    asm("ret                0x0004");                                        // 0x0076255b    c20400
    asm("_jmp_addr_0x0076255e:");
    asm("pop                edi");                                           // 0x0076255e    5f
    asm("pop                esi");                                           // 0x0076255f    5e
    asm("xor.s              eax, eax");                                      // 0x00762560    33c0
    asm("pop                ebx");                                           // 0x00762562    5b
    asm("pop                ecx");                                           // 0x00762563    59
    asm("ret                0x0004");                                        // 0x00762564    c20400
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeGetsPregnant__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00762570    8b4128
    asm("{disp32} mov       dx, word ptr [eax + 0x00000240]");               // 0x00762573    668b9040020000
    asm("test               byte ptr [ecx + 0x000000e0], 0x04");             // 0x0076257a    f681e000000004
    asm("{disp32} mov       word ptr [ecx + 0x000000f8], dx");               // 0x00762581    668991f8000000
    asm("{disp8} jne        _jmp_addr_0x0076258f");                          // 0x00762588    7505
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x0076258a    e8e1dcffff
    asm("_jmp_addr_0x0076258f:");
    asm("ret                0x0004");                                        // 0x0076258f    c20400
    __builtin_unreachable();
}

bool32_t __fastcall HousewifeCalledToMakeDinner__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007625a0    56
    asm("mov.s              esi, ecx");                                      // 0x007625a1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007625a3    8b06
    asm("push               edi");                                           // 0x007625a5    57
    asm("call               dword ptr [eax + 0xb04]");                       // 0x007625a6    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x007625ac    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x007625b1    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x007625b3    8d0449
    asm("shl                eax, 3");                                        // 0x007625b6    c1e003
    asm("sub.s              eax, ecx");                                      // 0x007625b9    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x007625bb    8d0c40
    asm("{disp32} mov       edi, dword ptr [ecx * 0x4 + 0x00db9f2c]");       // 0x007625be    8b3c8d2c9fdb00
    asm("test               edi, edi");                                      // 0x007625c5    85ff
    asm("{disp8} jne        _jmp_addr_0x007625ef");                          // 0x007625c7    7526
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000e0]");               // 0x007625c9    8a96e0000000
    asm("and                dl, 0x04");                                      // 0x007625cf    80e204
    asm("cmp                dl, 0x04");                                      // 0x007625d2    80fa04
    asm("{disp8} jne        _jmp_addr_0x007625e8");                          // 0x007625d5    7511
    asm("mov                eax, dword ptr [esi]");                          // 0x007625d7    8b06
    asm("push               0x69");                                          // 0x007625d9    6a69
    asm("mov.s              ecx, esi");                                      // 0x007625db    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007625dd    ff90e8080000
    asm("mov.s              eax, edi");                                      // 0x007625e3    8bc7
    asm("pop                edi");                                           // 0x007625e5    5f
    asm("pop                esi");                                           // 0x007625e6    5e
    asm("ret");                                                              // 0x007625e7    c3
    asm("_jmp_addr_0x007625e8:");
    asm("mov.s              ecx, esi");                                      // 0x007625e8    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x007625ea    e881dcffff
    asm("_jmp_addr_0x007625ef:");
    asm("mov.s              eax, edi");                                      // 0x007625ef    8bc7
    asm("pop                edi");                                           // 0x007625f1    5f
    asm("pop                esi");                                           // 0x007625f2    5e
    asm("ret");                                                              // 0x007625f3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall HousewifeAskForMeal__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00762600    56
    asm("push               edi");                                           // 0x00762601    57
    asm("mov.s              edi, ecx");                                      // 0x00762602    8bf9
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00762604    e857fbfeff
    asm("{disp32} mov       esi, dword ptr [eax + 0x000000a0]");             // 0x00762609    8bb0a0000000
    asm("test               esi, esi");                                      // 0x0076260f    85f6
    asm("{disp8} je         _jmp_addr_0x0076263b");                          // 0x00762611    7428
    asm("_jmp_addr_0x00762613:");
    asm("cmp.s              esi, edi");                                      // 0x00762613    3bf7
    asm("{disp8} jne        _jmp_addr_0x00762625");                          // 0x00762615    750e
    asm("mov                eax, dword ptr [edi]");                          // 0x00762617    8b07
    asm("push               0x69");                                          // 0x00762619    6a69
    asm("mov.s              ecx, edi");                                      // 0x0076261b    8bcf
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0076261d    ff90e8080000
    asm("{disp8} jmp        _jmp_addr_0x00762631");                          // 0x00762623    eb0c
    asm("_jmp_addr_0x00762625:");
    asm("mov.s              ecx, esi");                                      // 0x00762625    8bce
    asm("call               ?HousewifeCalledToMakeDinner@Villager@@QAEIXZ"); // 0x00762627    e874ffffff
    asm("cmp                eax, 0x02");                                     // 0x0076262c    83f802
    asm("{disp8} jne        _jmp_addr_0x00762640");                          // 0x0076262f    750f
    asm("_jmp_addr_0x00762631:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x00762631    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00762637    85f6
    asm("{disp8} jne        _jmp_addr_0x00762613");                          // 0x00762639    75d8
    asm("_jmp_addr_0x0076263b:");
    asm("pop                edi");                                           // 0x0076263b    5f
    asm("xor.s              eax, eax");                                      // 0x0076263c    33c0
    asm("pop                esi");                                           // 0x0076263e    5e
    asm("ret");                                                              // 0x0076263f    c3
    asm("_jmp_addr_0x00762640:");
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                   // 0x00762640    8b4f28
    asm("{disp32} mov       dx, word ptr [ecx + 0x000002ac]");               // 0x00762643    668b91ac020000
    asm("mov                eax, dword ptr [edi]");                          // 0x0076264a    8b07
    asm("push               0x00000080");                                    // 0x0076264c    6880000000
    asm("mov.s              ecx, edi");                                      // 0x00762651    8bcf
    asm("{disp8} mov        word ptr [edi + 0x58], dx");                     // 0x00762653    66895758
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00762657    ff90e8080000
    asm("pop                edi");                                           // 0x0076265d    5f
    asm("mov                eax, 0x00000001");                               // 0x0076265e    b801000000
    asm("pop                esi");                                           // 0x00762663    5e
    asm("ret");                                                              // 0x00762664    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyForChildren__8VillagerFv(struct Villager* this)
{
    return 0;
}
