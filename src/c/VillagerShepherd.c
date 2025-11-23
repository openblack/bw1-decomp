#include "Villager.h"

const float villager_shepherd_num_days_in_year_0x0099aa04 = 365.25f;
const float villager_shepherd_seconds_in_day_0x0099aa08 = 86400.0f;

uint32_t villager_shepherd_uint_0x00db9e50;
float villager_shepherd_seconds_in_year_0x00db9e4c;


void __cdecl globl_ct_0x00768b80(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00768b80    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00768b86    b001
    asm("test               al, cl");                                        // 0x00768b88    84c8
    asm("{disp8} jne        _jmp_addr_0x00768b94");                          // 0x00768b8a    7508
    asm("or.s               cl, al");                                        // 0x00768b8c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x00768b8e    880d34c9fa00
    asm("_jmp_addr_0x00768b94:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00768ba0");   // 0x00768b94    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00768ba0(void)
{
    asm("push               0x00407870");                                    // 0x00768ba0    6870784000
    asm("call               _atexit");                                       // 0x00768ba5    e8e7cb0500
    asm("pop                ecx");                                           // 0x00768baa    59
}

void __cdecl globl_ct_0x00768bb0(void)
{
    asm("{disp32} jmp       _FUN_00768bc0__8VillagerFv");                    // 0x00768bb0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00768bc0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_shepherd_seconds_in_day_0x0099aa08]");   // 0x00768bc0    d90508aa9900
    asm("{disp32} fmul dword ptr [_villager_shepherd_num_days_in_year_0x0099aa04]"); // 0x00768bc6    d80d04aa9900
    asm("{disp32} fstp dword ptr [_villager_shepherd_seconds_in_year_0x00db9e4c]");  // 0x00768bcc    d91d549edb00
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall VillagerBecomesShepherd__8VillagerFP5Flock(struct Villager* this, const void* edx, struct Flock* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                     // 0x00768be0    8b442404
    asm("test               eax, eax");                                        // 0x00768be4    85c0
    asm("push               esi");                                             // 0x00768be6    56
    asm("mov.s              esi, ecx");                                        // 0x00768be7    8bf1
    asm("{disp8} jne        _jmp_addr_0x00768c03");                            // 0x00768be9    7518
    asm("mov                eax, dword ptr [esi]");                            // 0x00768beb    8b06
    asm("call               dword ptr [eax + 0x48]");                          // 0x00768bed    ff5048
    asm("test               eax, eax");                                        // 0x00768bf0    85c0
    asm("{disp8} je         _jmp_addr_0x00768c2a");                            // 0x00768bf2    7436
    asm("push               0x0");                                             // 0x00768bf4    6a00
    asm("push               -0x1");                                            // 0x00768bf6    6aff
    asm("mov.s              ecx, eax");                                        // 0x00768bf8    8bc8
    asm("call               ?GetFlock@Town@@QAE_NW4LIVING_TYPE@@H@Z");         // 0x00768bfa    e83152fdff
    asm("test               eax, eax");                                        // 0x00768bff    85c0
    asm("{disp8} je         _jmp_addr_0x00768c2a");                            // 0x00768c01    7427
    asm("_jmp_addr_0x00768c03:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x30]");                     // 0x00768c03    8b4830
    asm("test               ecx, ecx");                                        // 0x00768c06    85c9
    asm("{disp8} je         _jmp_addr_0x00768c0e");                            // 0x00768c08    7404
    asm("cmp.s              ecx, esi");                                        // 0x00768c0a    3bce
    asm("{disp8} jne        _jmp_addr_0x00768c2a");                            // 0x00768c0c    751c
    asm("_jmp_addr_0x00768c0e:");
    asm("push               eax");                                             // 0x00768c0e    50
    asm("mov.s              ecx, esi");                                        // 0x00768c0f    8bce
    asm("call               ?SetFlock@Living@@QAEXPAVFlock@@@Z");              // 0x00768c11    e8da59e8ff
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000b8]");               // 0x00768c16    8b8eb8000000
    asm("{disp8} mov        dword ptr [ecx + 0x30], esi");                     // 0x00768c1c    897130
    asm("mov.s              ecx, esi");                                        // 0x00768c1f    8bce
    asm("call               ?ShepherdGotoFlock@Villager@@QAE_NXZ");            // 0x00768c21    e80a020000
    asm("pop                esi");                                             // 0x00768c26    5e
    asm("ret                0x0004");                                          // 0x00768c27    c20400
    asm("_jmp_addr_0x00768c2a:");
    asm("xor.s              eax, eax");                                        // 0x00768c2a    33c0
    asm("pop                esi");                                             // 0x00768c2c    5e
    asm("ret                0x0004");                                          // 0x00768c2d    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdLookForFlock__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00768c30    56
    asm("mov.s              esi, ecx");                                        // 0x00768c31    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x00768c33    8b06
    asm("push               edi");                                             // 0x00768c35    57
    asm("call               dword ptr [eax + 0x48]");                          // 0x00768c36    ff5048
    asm("test               eax, eax");                                        // 0x00768c39    85c0
    asm("{disp8} je         _jmp_addr_0x00768c80");                            // 0x00768c3b    7443
    asm("mov                edx, dword ptr [esi]");                            // 0x00768c3d    8b16
    asm("push               0x0");                                             // 0x00768c3f    6a00
    asm("push               -0x1");                                            // 0x00768c41    6aff
    asm("mov.s              ecx, esi");                                        // 0x00768c43    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x00768c45    ff5248
    asm("mov.s              ecx, eax");                                        // 0x00768c48    8bc8
    asm("call               ?GetFlock@Town@@QAE_NW4LIVING_TYPE@@H@Z");         // 0x00768c4a    e8e151fdff
    asm("mov.s              edi, eax");                                        // 0x00768c4f    8bf8
    asm("test               edi, edi");                                        // 0x00768c51    85ff
    asm("{disp8} je         _jmp_addr_0x00768c80");                            // 0x00768c53    742b
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000b8]");               // 0x00768c55    8b8eb8000000
    asm("test               ecx, ecx");                                        // 0x00768c5b    85c9
    asm("{disp8} je         _jmp_addr_0x00768c67");                            // 0x00768c5d    7408
    asm("push               0x1");                                             // 0x00768c5f    6a01
    asm("push               esi");                                             // 0x00768c61    56
    asm("call               _jmp_addr_0x0052fb50");                            // 0x00768c62    e8e96edcff
    asm("_jmp_addr_0x00768c67:");
    asm("push               edi");                                             // 0x00768c67    57
    asm("mov.s              ecx, esi");                                        // 0x00768c68    8bce
    asm("call               ?SetFlock@Living@@QAEXPAVFlock@@@Z");              // 0x00768c6a    e88159e8ff
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000b8]");               // 0x00768c6f    8b86b8000000
    asm("{disp8} mov        dword ptr [eax + 0x30], esi");                     // 0x00768c75    897030
    asm("pop                edi");                                             // 0x00768c78    5f
    asm("mov                eax, 0x00000001");                                 // 0x00768c79    b801000000
    asm("pop                esi");                                             // 0x00768c7e    5e
    asm("ret");                                                                // 0x00768c7f    c3
    asm("_jmp_addr_0x00768c80:");
    asm("pop                edi");                                             // 0x00768c80    5f
    asm("xor.s              eax, eax");                                        // 0x00768c81    33c0
    asm("pop                esi");                                             // 0x00768c83    5e
    asm("ret");                                                                // 0x00768c84    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FindClosestFlockAnimal__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00768c90    56
    asm("push               edi");                                             // 0x00768c91    57
    asm("mov.s              esi, ecx");                                        // 0x00768c92    8bf1
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                     // 0x00768c94    8d7e14
    asm("push               0x42480000");                                      // 0x00768c97    6800004842
    asm("push               edi");                                             // 0x00768c9c    57
    asm("call               _jmp_addr_0x0052ffd0");                            // 0x00768c9d    e82e73dcff
    asm("add                esp, 0x08");                                       // 0x00768ca2    83c408
    asm("test               eax, eax");                                        // 0x00768ca5    85c0
    asm("{disp8} je         _jmp_addr_0x00768cbb");                            // 0x00768ca7    7412
    asm("push               esi");                                             // 0x00768ca9    56
    asm("push               0x42c80000");                                      // 0x00768caa    680000c842
    asm("push               edi");                                             // 0x00768caf    57
    asm("mov.s              ecx, eax");                                        // 0x00768cb0    8bc8
    asm("call               _jmp_addr_0x00530050");                            // 0x00768cb2    e89973dcff
    asm("test               eax, eax");                                        // 0x00768cb7    85c0
    asm("{disp8} jne        _jmp_addr_0x00768cbd");                            // 0x00768cb9    7502
    asm("_jmp_addr_0x00768cbb:");
    asm("xor.s              eax, eax");                                        // 0x00768cbb    33c0
    asm("_jmp_addr_0x00768cbd:");
    asm("pop                edi");                                             // 0x00768cbd    5f
    asm("pop                esi");                                             // 0x00768cbe    5e
    asm("ret");                                                                // 0x00768cbf    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdMoveFlockToWater__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x00768cc0    83ec0c
    asm("push               ebx");                                             // 0x00768cc3    53
    asm("push               esi");                                             // 0x00768cc4    56
    asm("push               edi");                                             // 0x00768cc5    57
    asm("mov.s              esi, ecx");                                        // 0x00768cc6    8bf1
    asm("push               0xa");                                             // 0x00768cc8    6a0a
    asm("call               ?GetJobInfo@Villager@@QBEPAVGJobInfo@@E@Z");       // 0x00768cca    e85190feff
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000b8]");               // 0x00768ccf    8bbeb8000000
    asm("mov.s              ecx, esi");                                        // 0x00768cd5    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");             // 0x00768cd7    e88494feff
    asm("mov.s              ebx, eax");                                        // 0x00768cdc    8bd8
    asm("test               ebx, ebx");                                        // 0x00768cde    85db
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");              // 0x00768ce0    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");              // 0x00768ce8    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x00768cf0    c744241400000000
    asm("{disp32} je        _jmp_addr_0x00768dad");                            // 0x00768cf8    0f84af000000
    asm("test               edi, edi");                                        // 0x00768cfe    85ff
    asm("{disp32} je        _jmp_addr_0x00768dad");                            // 0x00768d00    0f84a7000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                     // 0x00768d06    8d44240c
    asm("push               eax");                                             // 0x00768d0a    50
    asm("mov.s              ecx, ebx");                                        // 0x00768d0b    8bcb
    asm("call               ?GetNearestWaterPos@Abode@@QAE_NAAUMapCoords@@@Z");                            // 0x00768d0d    e8aed2c9ff
    asm("test               eax, eax");                                        // 0x00768d12    85c0
    asm("{disp8} jne        _jmp_addr_0x00768d3a");                            // 0x00768d14    7524
    asm("push               0x43c80000");                                      // 0x00768d16    680000c843
    asm("mov.s              ecx, ebx");                                        // 0x00768d1b    8bcb
    asm("call               ?FindNearestDrinkingWater@Abode@@QAEXM@Z");        // 0x00768d1d    e8fee2c9ff
    asm("test               eax, eax");                                        // 0x00768d22    85c0
    asm("{disp32} je        _jmp_addr_0x00768dad");                            // 0x00768d24    0f8483000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x00768d2a    8d4c240c
    asm("push               ecx");                                             // 0x00768d2e    51
    asm("mov.s              ecx, ebx");                                        // 0x00768d2f    8bcb
    asm("call               ?GetNearestWaterPos@Abode@@QAE_NAAUMapCoords@@@Z");                            // 0x00768d31    e88ad2c9ff
    asm("test               eax, eax");                                        // 0x00768d36    85c0
    asm("{disp8} je         _jmp_addr_0x00768dad");                            // 0x00768d38    7473
    asm("_jmp_addr_0x00768d3a:");
    asm("{disp8} lea        edx, dword ptr [edi + 0x14]");                     // 0x00768d3a    8d5714
    asm("mov                ecx, dword ptr [edx]");                            // 0x00768d3d    8b0a
    asm("{disp8} lea        eax, dword ptr [edi + 0x60]");                     // 0x00768d3f    8d4760
    asm("mov                dword ptr [eax], ecx");                            // 0x00768d42    8908
    asm("{disp8} mov        ecx, dword ptr [edx + 0x04]");                     // 0x00768d44    8b4a04
    asm("{disp8} mov        edx, dword ptr [edx + 0x08]");                     // 0x00768d47    8b5208
    asm("{disp8} mov        dword ptr [eax + 0x04], ecx");                     // 0x00768d4a    894804
    asm("{disp8} mov        dword ptr [eax + 0x08], edx");                     // 0x00768d4d    895008
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                     // 0x00768d50    8d44240c
    asm("push               eax");                                             // 0x00768d54    50
    asm("mov.s              ecx, edi");                                        // 0x00768d55    8bcf
    asm("call               ?SetDomainCentrePos@Flock@@QAEXABUMapCoords@@@Z"); // 0x00768d57    e8c46edcff
    asm("push               0x60");                                            // 0x00768d5c    6a60
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x00768d5e    8d4c2410
    asm("push               ecx");                                             // 0x00768d62    51
    asm("mov.s              ecx, esi");                                        // 0x00768d63    8bce
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0384");             // 0x00768d65    66c786180100008403
    asm("{disp32} mov       word ptr [esi + 0x0000011a], 0x005e");             // 0x00768d6e    66c7861a0100005e00
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x00768d77    e8149be8ff
    asm("{disp8} mov        edi, dword ptr [edi + 0x3c]");                     // 0x00768d7c    8b7f3c
    asm("test               edi, edi");                                        // 0x00768d7f    85ff
    asm("{disp8} je         _jmp_addr_0x00768d88");                            // 0x00768d81    7405
    asm("{disp8} mov        edi, dword ptr [edi + 0x08]");                     // 0x00768d83    8b7f08
    asm("{disp8} jmp        _jmp_addr_0x00768d8a");                            // 0x00768d86    eb02
    asm("_jmp_addr_0x00768d88:");
    asm("xor.s              edi, edi");                                        // 0x00768d88    33ff
    asm("_jmp_addr_0x00768d8a:");
    asm("xor.s              edx, edx");                                        // 0x00768d8a    33d2
    asm("{disp8} mov        dx, word ptr [edi + 0x5a]");                       // 0x00768d8c    668b575a
    asm("push               0x0");                                             // 0x00768d90    6a00
    asm("mov.s              ecx, esi");                                        // 0x00768d92    8bce
    asm("push               edx");                                             // 0x00768d94    52
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                    // 0x00768d95    e83681feff
    asm("mov.s              ecx, esi");                                        // 0x00768d9a    8bce
    asm("call               ?SetStateAnim@Living@@QAEXXZ");                    // 0x00768d9c    e86f3de8ff
    asm("pop                edi");                                             // 0x00768da1    5f
    asm("pop                esi");                                             // 0x00768da2    5e
    asm("mov                eax, 0x00000001");                                 // 0x00768da3    b801000000
    asm("pop                ebx");                                             // 0x00768da8    5b
    asm("add                esp, 0x0c");                                       // 0x00768da9    83c40c
    asm("ret");                                                                // 0x00768dac    c3
    asm("_jmp_addr_0x00768dad:");
    asm("mov                eax, dword ptr [esi]");                            // 0x00768dad    8b06
    asm("push               0x000000c0");                                      // 0x00768daf    68c0000000
    asm("mov.s              ecx, esi");                                        // 0x00768db4    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x00768db6    ff90e8080000
    asm("pop                edi");                                             // 0x00768dbc    5f
    asm("pop                esi");                                             // 0x00768dbd    5e
    asm("xor.s              eax, eax");                                        // 0x00768dbe    33c0
    asm("pop                ebx");                                             // 0x00768dc0    5b
    asm("add                esp, 0x0c");                                       // 0x00768dc1    83c40c
    asm("ret");                                                                // 0x00768dc4    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdWaitForFlock__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00768dd0    56
    asm("mov.s              esi, ecx");                                        // 0x00768dd1    8bf1
    asm("dec                word ptr [esi + 0x00000118]");                     // 0x00768dd3    66ff8e18010000
    asm("{disp32} mov       ax, word ptr [esi + 0x00000118]");                 // 0x00768dda    668b8618010000
    asm("test               ax, ax");                                          // 0x00768de1    6685c0
    asm("{disp8} jne        _jmp_addr_0x00768e22");                            // 0x00768de4    753c
    asm("xor.s              eax, eax");                                        // 0x00768de6    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x0000011a]");                 // 0x00768de8    668b861a010000
    asm("test               ax, ax");                                          // 0x00768def    6685c0
    asm("{disp8} je         _jmp_addr_0x00768e0d");                            // 0x00768df2    7419
    asm("mov                edx, dword ptr [esi]");                            // 0x00768df4    8b16
    asm("push               eax");                                             // 0x00768df6    50
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00768df7    ff92e8080000
    asm("{disp32} mov       word ptr [esi + 0x0000011a], 0x0000");             // 0x00768dfd    66c7861a0100000000
    asm("mov                eax, 0x00000001");                                 // 0x00768e06    b801000000
    asm("pop                esi");                                             // 0x00768e0b    5e
    asm("ret");                                                                // 0x00768e0c    c3
    asm("_jmp_addr_0x00768e0d:");
    asm("mov                eax, dword ptr [esi]");                            // 0x00768e0d    8b06
    asm("push               0x5f");                                            // 0x00768e0f    6a5f
    asm("mov.s              ecx, esi");                                        // 0x00768e11    8bce
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0014");             // 0x00768e13    66c786180100001400
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x00768e1c    ff90e8080000
    asm("_jmp_addr_0x00768e22:");
    asm("mov                eax, 0x00000001");                                 // 0x00768e22    b801000000
    asm("pop                esi");                                             // 0x00768e27    5e
    asm("ret");                                                                // 0x00768e28    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdGotoFlock__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x00768e30    83ec0c
    asm("push               esi");                                             // 0x00768e33    56
    asm("push               edi");                                             // 0x00768e34    57
    asm("mov.s              edi, ecx");                                        // 0x00768e35    8bf9
    asm("{disp32} mov       esi, dword ptr [edi + 0x000000b8]");               // 0x00768e37    8bb7b8000000
    asm("xor.s              ecx, ecx");                                        // 0x00768e3d    33c9
    asm("cmp.s              esi, ecx");                                        // 0x00768e3f    3bf1
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                     // 0x00768e41    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                     // 0x00768e45    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                     // 0x00768e49    894c2410
    asm("{disp8} je         _jmp_addr_0x00768ea6");                            // 0x00768e4d    7457
    asm("{disp8} mov        eax, dword ptr [esi + 0x40]");                     // 0x00768e4f    8b4640
    asm("cmp.s              eax, ecx");                                        // 0x00768e52    3bc1
    asm("{disp8} je         _jmp_addr_0x00768ea6");                            // 0x00768e54    7450
    asm("cmp                dword ptr [eax + 0x08], ecx");                     // 0x00768e56    394808
    asm("{disp8} je         _jmp_addr_0x00768ea6");                            // 0x00768e59    744b
    asm("push               0xa");                                             // 0x00768e5b    6a0a
    asm("mov.s              ecx, edi");                                        // 0x00768e5d    8bcf
    asm("call               ?GetJobInfo@Villager@@QBEPAVGJobInfo@@E@Z");       // 0x00768e5f    e8bc8efeff
    asm("mov.s              ecx, eax");                                        // 0x00768e64    8bc8
    asm("call               ?GetJobActivity@GJobInfo@@QBEIXZ");                // 0x00768e66    e8d588e7ff
    asm("test               eax, eax");                                        // 0x00768e6b    85c0
    asm("{disp8} je         _jmp_addr_0x00768ead");                            // 0x00768e6d    743e
    asm("mov.s              ecx, esi");                                        // 0x00768e6f    8bce
    asm("call               ?GetFlockPos@Flock@@QAEPAUMapCoords@@XZ");         // 0x00768e71    e8fa76dcff
    asm("mov                ecx, dword ptr [eax]");                            // 0x00768e76    8b08
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                     // 0x00768e78    894c2408
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x00768e7c    8b5004
    asm("push               0x000000bf");                                      // 0x00768e7f    68bf000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x00768e84    8d4c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                     // 0x00768e88    89542410
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                     // 0x00768e8c    8b4008
    asm("push               ecx");                                             // 0x00768e8f    51
    asm("mov.s              ecx, edi");                                        // 0x00768e90    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                     // 0x00768e92    89442418
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x00768e96    e8f599e8ff
    asm("pop                edi");                                             // 0x00768e9b    5f
    asm("mov                eax, 0x00000001");                                 // 0x00768e9c    b801000000
    asm("pop                esi");                                             // 0x00768ea1    5e
    asm("add                esp, 0x0c");                                       // 0x00768ea2    83c40c
    asm("ret");                                                                // 0x00768ea5    c3
    asm("_jmp_addr_0x00768ea6:");
    asm("mov.s              ecx, edi");                                        // 0x00768ea6    8bcf
    asm("call               ?ShepherdLookForFlock@Villager@@QAE_NXZ");         // 0x00768ea8    e883fdffff
    asm("_jmp_addr_0x00768ead:");
    asm("pop                edi");                                             // 0x00768ead    5f
    asm("xor.s              eax, eax");                                        // 0x00768eae    33c0
    asm("pop                esi");                                             // 0x00768eb0    5e
    asm("add                esp, 0x0c");                                       // 0x00768eb1    83c40c
    asm("ret");                                                                // 0x00768eb4    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdTakesControlOfFlock__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00768ec0    56
    asm("push               edi");                                             // 0x00768ec1    57
    asm("mov.s              edi, ecx");                                        // 0x00768ec2    8bf9
    asm("{disp32} mov       esi, dword ptr [edi + 0x000000b8]");               // 0x00768ec4    8bb7b8000000
    asm("push               0xa");                                             // 0x00768eca    6a0a
    asm("call               ?GetJobInfo@Villager@@QBEPAVGJobInfo@@E@Z");       // 0x00768ecc    e84f8efeff
    asm("mov.s              ecx, eax");                                        // 0x00768ed1    8bc8
    asm("call               ?GetJobActivity@GJobInfo@@QBEIXZ");                // 0x00768ed3    e86888e7ff
    asm("test               eax, eax");                                        // 0x00768ed8    85c0
    asm("{disp8} je         _jmp_addr_0x00768f1a");                            // 0x00768eda    743e
    asm("test               esi, esi");                                        // 0x00768edc    85f6
    asm("{disp8} je         _jmp_addr_0x00768f1a");                            // 0x00768ede    743a
    asm("push               ebx");                                             // 0x00768ee0    53
    asm("mov.s              ecx, esi");                                        // 0x00768ee1    8bce
    asm("call               ?GetFlockPos@Flock@@QAEPAUMapCoords@@XZ");         // 0x00768ee3    e88876dcff
    asm("{disp8} mov        eax, dword ptr [esi + 0x40]");                     // 0x00768ee8    8b4640
    asm("test               eax, eax");                                        // 0x00768eeb    85c0
    asm("{disp8} je         _jmp_addr_0x00768ef4");                            // 0x00768eed    7405
    asm("{disp8} mov        ebx, dword ptr [eax + 0x08]");                     // 0x00768eef    8b5808
    asm("{disp8} jmp        _jmp_addr_0x00768ef6");                            // 0x00768ef2    eb02
    asm("_jmp_addr_0x00768ef4:");
    asm("xor.s              ebx, ebx");                                        // 0x00768ef4    33db
    asm("_jmp_addr_0x00768ef6:");
    asm("push               edi");                                             // 0x00768ef6    57
    asm("mov.s              ecx, esi");                                        // 0x00768ef7    8bce
    asm("call               _jmp_addr_0x0052fa50");                            // 0x00768ef9    e8526bdcff
    asm("push               0x5f");                                            // 0x00768efe    6a5f
    asm("push               ebx");                                             // 0x00768f00    53
    asm("mov.s              ecx, edi");                                        // 0x00768f01    8bcf
    asm("{disp32} mov       word ptr [edi + 0x00000118], 0x0032");             // 0x00768f03    66c787180100003200
    asm("call               ?SetupMoveToObject@Living@@QAE_NPAVObject@@E@Z");  // 0x00768f0c    e8ef98e8ff
    asm("pop                ebx");                                             // 0x00768f11    5b
    asm("pop                edi");                                             // 0x00768f12    5f
    asm("mov                eax, 0x00000001");                                 // 0x00768f13    b801000000
    asm("pop                esi");                                             // 0x00768f18    5e
    asm("ret");                                                                // 0x00768f19    c3
    asm("_jmp_addr_0x00768f1a:");
    asm("pop                edi");                                             // 0x00768f1a    5f
    asm("xor.s              eax, eax");                                        // 0x00768f1b    33c0
    asm("pop                esi");                                             // 0x00768f1d    5e
    asm("ret");                                                                // 0x00768f1e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdReleasesControlOfFlock__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000000b8]");               // 0x00768f20    8b81b8000000
    asm("test               eax, eax");                                        // 0x00768f26    85c0
    asm("{disp8} je         _jmp_addr_0x00768f4c");                            // 0x00768f28    7422
    asm("mov                eax, dword ptr [ecx]");                            // 0x00768f2a    8b01
    asm("push               0x60");                                            // 0x00768f2c    6a60
    asm("{disp32} mov       word ptr [ecx + 0x00000118], 0x0014");             // 0x00768f2e    66c781180100001400
    asm("{disp32} mov       word ptr [ecx + 0x0000011a], 0x0024");             // 0x00768f37    66c7811a0100002400
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x00768f40    ff90e8080000
    asm("mov                eax, 0x00000001");                                 // 0x00768f46    b801000000
    asm("ret");                                                                // 0x00768f4b    c3
    asm("_jmp_addr_0x00768f4c:");
    asm("xor.s              eax, eax");                                        // 0x00768f4c    33c0
    asm("ret");                                                                // 0x00768f4e    c3
    __builtin_unreachable();
}

bool32_t __fastcall ExitShepherding__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               edi");                                             // 0x00768f50    57
    asm("mov.s              edi, ecx");                                        // 0x00768f51    8bf9
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                     // 0x00768f53    8b4c2408
    asm("mov                eax, dword ptr [edi]");                            // 0x00768f57    8b07
    asm("and                ecx, 0x000000ff");                                 // 0x00768f59    81e1ff000000
    asm("push               ecx");                                             // 0x00768f5f    51
    asm("mov.s              ecx, edi");                                        // 0x00768f60    8bcf
    asm("call               dword ptr [eax + 0x96c]");                         // 0x00768f62    ff906c090000
    asm("test               eax, eax");                                        // 0x00768f68    85c0
    asm("{disp8} jne        _jmp_addr_0x00768fa7");                            // 0x00768f6a    753b
    asm("push               esi");                                             // 0x00768f6c    56
    asm("{disp32} mov       esi, dword ptr [edi + 0x000000b8]");               // 0x00768f6d    8bb7b8000000
    asm("test               esi, esi");                                        // 0x00768f73    85f6
    asm("{disp8} je         _jmp_addr_0x00768f93");                            // 0x00768f75    741c
    asm("{disp8} lea        edx, dword ptr [esi + 0x60]");                     // 0x00768f77    8d5660
    asm("push               edx");                                             // 0x00768f7a    52
    asm("mov.s              ecx, esi");                                        // 0x00768f7b    8bce
    asm("call               ?SetDomainCentrePos@Flock@@QAEXABUMapCoords@@@Z"); // 0x00768f7d    e89e6cdcff
    asm("push               0x1");                                             // 0x00768f82    6a01
    asm("push               edi");                                             // 0x00768f84    57
    asm("mov.s              ecx, esi");                                        // 0x00768f85    8bce
    asm("call               _jmp_addr_0x0052fb50");                            // 0x00768f87    e8c46bdcff
    asm("{disp8} mov        dword ptr [esi + 0x30], 0x00000000");              // 0x00768f8c    c7463000000000
    asm("_jmp_addr_0x00768f93:");
    asm("pop                esi");                                             // 0x00768f93    5e
    asm("{disp32} mov       dword ptr [edi + 0x000000b8], 0x00000000");        // 0x00768f94    c787b800000000000000
    asm("mov                eax, 0x00000001");                                 // 0x00768f9e    b801000000
    asm("pop                edi");                                             // 0x00768fa3    5f
    asm("ret                0x0004");                                          // 0x00768fa4    c20400
    asm("_jmp_addr_0x00768fa7:");
    asm("mov                eax, 0x00000001");                                 // 0x00768fa7    b801000000
    asm("pop                edi");                                             // 0x00768fac    5f
    asm("ret                0x0004");                                          // 0x00768fad    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdDecideWhatToDoWithFlock__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                             // 0x00768fb0    51
    asm("push               esi");                                             // 0x00768fb1    56
    asm("mov.s              esi, ecx");                                        // 0x00768fb2    8bf1
    asm("dec                word ptr [esi + 0x00000118]");                     // 0x00768fb4    66ff8e18010000
    asm("{disp32} mov       ax, word ptr [esi + 0x00000118]");                 // 0x00768fbb    668b8618010000
    asm("test               ax, ax");                                          // 0x00768fc2    6685c0
    asm("{disp32} jne       _jmp_addr_0x00769064");                            // 0x00768fc5    0f8599000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000b8]");               // 0x00768fcb    8b86b8000000
    asm("cmp                dword ptr [eax + 0x48], 0x02");                    // 0x00768fd1    83784802
    asm("{disp8} jae        _jmp_addr_0x00768feb");                            // 0x00768fd5    7314
    asm("mov                edx, dword ptr [esi]");                            // 0x00768fd7    8b16
    asm("push               0x000000c0");                                      // 0x00768fd9    68c0000000
    asm("mov.s              ecx, esi");                                        // 0x00768fde    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00768fe0    ff92e8080000
    asm("xor.s              eax, eax");                                        // 0x00768fe6    33c0
    asm("pop                esi");                                             // 0x00768fe8    5e
    asm("pop                ecx");                                             // 0x00768fe9    59
    asm("ret");                                                                // 0x00768fea    c3
    asm("_jmp_addr_0x00768feb:");
    asm("mov                eax, dword ptr [esi]");                            // 0x00768feb    8b06
    asm("push               edi");                                             // 0x00768fed    57
    asm("push               0x0");                                             // 0x00768fee    6a00
    asm("mov.s              ecx, esi");                                        // 0x00768ff0    8bce
    asm("call               dword ptr [eax + 0x48]");                          // 0x00768ff2    ff5048
    asm("mov.s              ecx, eax");                                        // 0x00768ff5    8bc8
    asm("add                ecx, 0x34");                                       // 0x00768ff7    83c134
    asm("call               ?GetInfo@TownDesire@@QBEPAVGTownDesireInfo@@K@Z"); // 0x00768ffa    e881cffdff
    asm("mov                edx, dword ptr [esi]");                            // 0x00768fff    8b16
    asm("push               0x0");                                             // 0x00769001    6a00
    asm("mov.s              ecx, esi");                                        // 0x00769003    8bce
    asm("mov.s              edi, eax");                                        // 0x00769005    8bf8
    asm("call               dword ptr [edx + 0x48]");                          // 0x00769007    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076900a    8bc8
    asm("call               ?GetDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z");     // 0x0076900c    e8ef53fdff
    asm("{disp8} fst        dword ptr [esp + 0x08]");                          // 0x00769011    d9542408
    asm("{disp8} fcomp      dword ptr [edi + 0x18]");                          // 0x00769015    d85f18
    asm("pop                edi");                                             // 0x00769018    5f
    asm("fnstsw             ax");                                              // 0x00769019    dfe0
    asm("test               ah, 0x01");                                        // 0x0076901b    f6c401
    asm("{disp8} jne        _jmp_addr_0x00769058");                            // 0x0076901e    7538
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000b8]");               // 0x00769020    8b86b8000000
    asm("test               eax, eax");                                        // 0x00769026    85c0
    asm("{disp8} je         _jmp_addr_0x00769058");                            // 0x00769028    742e
    asm("cmp                dword ptr [eax + 0x48], 0x02");                    // 0x0076902a    83784802
    asm("{disp8} ja         _jmp_addr_0x00769041");                            // 0x0076902e    7711
    asm("{disp8} fld        dword ptr [esp + 0x04]");                          // 0x00769030    d9442404
    asm("{disp32} fcomp     dword ptr [_rdata_float0p5]");                     // 0x00769034    d81db4a38a00
    asm("fnstsw             ax");                                              // 0x0076903a    dfe0
    asm("test               ah, 0x41");                                        // 0x0076903c    f6c441
    asm("{disp8} jne        _jmp_addr_0x00769058");                            // 0x0076903f    7517
    asm("_jmp_addr_0x00769041:");
    asm("mov                eax, dword ptr [esi]");                            // 0x00769041    8b06
    asm("push               0x000000be");                                      // 0x00769043    68be000000
    asm("mov.s              ecx, esi");                                        // 0x00769048    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076904a    ff90e8080000
    asm("mov                eax, 0x00000001");                                 // 0x00769050    b801000000
    asm("pop                esi");                                             // 0x00769055    5e
    asm("pop                ecx");                                             // 0x00769056    59
    asm("ret");                                                                // 0x00769057    c3
    asm("_jmp_addr_0x00769058:");
    asm("mov                edx, dword ptr [esi]");                            // 0x00769058    8b16
    asm("push               0x5c");                                            // 0x0076905a    6a5c
    asm("mov.s              ecx, esi");                                        // 0x0076905c    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076905e    ff92e8080000
    asm("_jmp_addr_0x00769064:");
    asm("mov                eax, 0x00000001");                                 // 0x00769064    b801000000
    asm("pop                esi");                                             // 0x00769069    5e
    asm("pop                ecx");                                             // 0x0076906a    59
    asm("ret");                                                                // 0x0076906b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdMoveFlockBack__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                             // 0x00769070    53
    asm("mov.s              ebx, ecx");                                        // 0x00769071    8bd9
    asm("push               esi");                                             // 0x00769073    56
    asm("{disp32} mov       esi, dword ptr [ebx + 0x000000b8]");               // 0x00769074    8bb3b8000000
    asm("test               esi, esi");                                        // 0x0076907a    85f6
    asm("{disp8} je         _jmp_addr_0x007690c5");                            // 0x0076907c    7447
    asm("push               edi");                                             // 0x0076907e    57
    asm("{disp8} lea        edi, dword ptr [esi + 0x60]");                     // 0x0076907f    8d7e60
    asm("push               edi");                                             // 0x00769082    57
    asm("mov.s              ecx, esi");                                        // 0x00769083    8bce
    asm("call               ?SetDomainCentrePos@Flock@@QAEXABUMapCoords@@@Z"); // 0x00769085    e8966bdcff
    asm("push               0x000000c0");                                      // 0x0076908a    68c0000000
    asm("push               edi");                                             // 0x0076908f    57
    asm("mov.s              ecx, ebx");                                        // 0x00769090    8bcb
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x00769092    e8f997e8ff
    asm("{disp8} mov        esi, dword ptr [esi + 0x3c]");                     // 0x00769097    8b763c
    asm("test               esi, esi");                                        // 0x0076909a    85f6
    asm("pop                edi");                                             // 0x0076909c    5f
    asm("{disp8} je         _jmp_addr_0x007690a4");                            // 0x0076909d    7405
    asm("{disp8} mov        esi, dword ptr [esi + 0x08]");                     // 0x0076909f    8b7608
    asm("{disp8} jmp        _jmp_addr_0x007690a6");                            // 0x007690a2    eb02
    asm("_jmp_addr_0x007690a4:");
    asm("xor.s              esi, esi");                                        // 0x007690a4    33f6
    asm("_jmp_addr_0x007690a6:");
    asm("xor.s              eax, eax");                                        // 0x007690a6    33c0
    asm("{disp8} mov        ax, word ptr [esi + 0x5a]");                       // 0x007690a8    668b465a
    asm("push               0x0");                                             // 0x007690ac    6a00
    asm("mov.s              ecx, ebx");                                        // 0x007690ae    8bcb
    asm("push               eax");                                             // 0x007690b0    50
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                    // 0x007690b1    e81a7efeff
    asm("mov.s              ecx, ebx");                                        // 0x007690b6    8bcb
    asm("call               ?SetStateAnim@Living@@QAEXXZ");                    // 0x007690b8    e8533ae8ff
    asm("pop                esi");                                             // 0x007690bd    5e
    asm("mov                eax, 0x00000001");                                 // 0x007690be    b801000000
    asm("pop                ebx");                                             // 0x007690c3    5b
    asm("ret");                                                                // 0x007690c4    c3
    asm("_jmp_addr_0x007690c5:");
    asm("pop                esi");                                             // 0x007690c5    5e
    asm("xor.s              eax, eax");                                        // 0x007690c6    33c0
    asm("pop                ebx");                                             // 0x007690c8    5b
    asm("ret");                                                                // 0x007690c9    c3
    __builtin_unreachable();
}

bool32_t __fastcall ShepherdMoveFlockToFood__8VillagerFv(struct Villager* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdTakeAnimalForSlaughter__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                             // 0x007690e0    53
    asm("push               esi");                                             // 0x007690e1    56
    asm("mov.s              esi, ecx");                                        // 0x007690e2    8bf1
    asm("push               edi");                                             // 0x007690e4    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000b8]");               // 0x007690e5    8bbeb8000000
    asm("test               edi, edi");                                        // 0x007690eb    85ff
    asm("{disp32} je        _jmp_addr_0x00769180");                            // 0x007690ed    0f848d000000
    asm("push               esi");                                             // 0x007690f3    56
    asm("push               0x42c80000");                                      // 0x007690f4    680000c842
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                     // 0x007690f9    8d4614
    asm("push               eax");                                             // 0x007690fc    50
    asm("mov.s              ecx, edi");                                        // 0x007690fd    8bcf
    asm("call               _jmp_addr_0x00530050");                            // 0x007690ff    e84c6fdcff
    asm("mov.s              ebx, eax");                                        // 0x00769104    8bd8
    asm("test               ebx, ebx");                                        // 0x00769106    85db
    asm("{disp8} je         _jmp_addr_0x00769180");                            // 0x00769108    7476
    asm("mov.s              ecx, esi");                                        // 0x0076910a    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x0076910c    e8ff8dfeff
    asm("test               eax, eax");                                        // 0x00769111    85c0
    asm("{disp8} je         _jmp_addr_0x00769180");                            // 0x00769113    746b
    asm("mov.s              ecx, esi");                                        // 0x00769115    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769117    e8f48dfeff
    asm("mov                edx, dword ptr [eax]");                            // 0x0076911c    8b10
    asm("mov.s              ecx, eax");                                        // 0x0076911e    8bc8
    asm("call               dword ptr [edx + 0xd4]");                          // 0x00769120    ff92d4000000
    asm("test               eax, eax");                                        // 0x00769126    85c0
    asm("{disp8} je         _jmp_addr_0x00769180");                            // 0x00769128    7456
    asm("push               0x1");                                             // 0x0076912a    6a01
    asm("push               esi");                                             // 0x0076912c    56
    asm("mov.s              ecx, edi");                                        // 0x0076912d    8bcf
    asm("call               _jmp_addr_0x0052fb50");                            // 0x0076912f    e81c6adcff
    asm("push               0x1");                                             // 0x00769134    6a01
    asm("push               ebx");                                             // 0x00769136    53
    asm("mov.s              ecx, edi");                                        // 0x00769137    8bcf
    asm("{disp8} mov        dword ptr [edi + 0x30], 0x00000000");              // 0x00769139    c7473000000000
    asm("call               _jmp_addr_0x0052fe10");                            // 0x00769140    e8cb6cdcff
    asm("mov.s              edi, eax");                                        // 0x00769145    8bf8
    asm("push               esi");                                             // 0x00769147    56
    asm("mov.s              ecx, edi");                                        // 0x00769148    8bcf
    asm("call               _jmp_addr_0x0052fa50");                            // 0x0076914a    e80169dcff
    asm("{disp8} mov        dword ptr [edi + 0x30], esi");                     // 0x0076914f    897730
    asm("{disp8} mov        word ptr [edi + 0x52], 0x0004");                   // 0x00769152    66c747520400
    asm("{disp8} mov        dword ptr [edi + 0x58], 0x00000001");              // 0x00769158    c7475801000000
    asm("mov                eax, dword ptr [esi]");                            // 0x0076915f    8b06
    asm("push               0x000000e4");                                      // 0x00769161    68e4000000
    asm("mov.s              ecx, esi");                                        // 0x00769166    8bce
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0014");             // 0x00769168    66c786180100001400
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x00769171    ff90e8080000
    asm("pop                edi");                                             // 0x00769177    5f
    asm("pop                esi");                                             // 0x00769178    5e
    asm("mov                eax, 0x00000001");                                 // 0x00769179    b801000000
    asm("pop                ebx");                                             // 0x0076917e    5b
    asm("ret");                                                                // 0x0076917f    c3
    asm("_jmp_addr_0x00769180:");
    asm("mov                edx, dword ptr [esi]");                            // 0x00769180    8b16
    asm("push               0x5f");                                            // 0x00769182    6a5f
    asm("mov.s              ecx, esi");                                        // 0x00769184    8bce
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0014");             // 0x00769186    66c786180100001400
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076918f    ff92e8080000
    asm("pop                edi");                                             // 0x00769195    5f
    asm("pop                esi");                                             // 0x00769196    5e
    asm("xor.s              eax, eax");                                        // 0x00769197    33c0
    asm("pop                ebx");                                             // 0x00769199    5b
    asm("ret");                                                                // 0x0076919a    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ShepherdCheckAnimalForSlaughter__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x24");                                       // 0x007691a0    83ec24
    asm("push               ebx");                                             // 0x007691a3    53
    asm("push               esi");                                             // 0x007691a4    56
    asm("mov.s              esi, ecx");                                        // 0x007691a5    8bf1
    asm("dec                word ptr [esi + 0x00000118]");                     // 0x007691a7    66ff8e18010000
    asm("{disp32} mov       ax, word ptr [esi + 0x00000118]");                 // 0x007691ae    668b8618010000
    asm("test               ax, ax");                                          // 0x007691b5    6685c0
    asm("push               edi");                                             // 0x007691b8    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000b8]");               // 0x007691b9    8bbeb8000000
    asm("{disp32} jg        _jmp_addr_0x0076937f");                            // 0x007691bf    0f8fba010000
    asm("test               edi, edi");                                        // 0x007691c5    85ff
    asm("{disp32} je        _jmp_addr_0x0076936a");                            // 0x007691c7    0f849d010000
    asm("cmp                dword ptr [edi + 0x48], 0x02");                    // 0x007691cd    837f4802
    asm("{disp8} jae        _jmp_addr_0x007691ef");                            // 0x007691d1    731c
    asm("mov                eax, dword ptr [esi]");                            // 0x007691d3    8b06
    asm("push               0x5f");                                            // 0x007691d5    6a5f
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0014");             // 0x007691d7    66c786180100001400
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x007691e0    ff90e8080000
    asm("pop                edi");                                             // 0x007691e6    5f
    asm("pop                esi");                                             // 0x007691e7    5e
    asm("xor.s              eax, eax");                                        // 0x007691e8    33c0
    asm("pop                ebx");                                             // 0x007691ea    5b
    asm("add                esp, 0x24");                                       // 0x007691eb    83c424
    asm("ret");                                                                // 0x007691ee    c3
    asm("_jmp_addr_0x007691ef:");
    asm("push               esi");                                             // 0x007691ef    56
    asm("push               0x40c00000");                                      // 0x007691f0    680000c040
    asm("mov.s              ecx, esi");                                        // 0x007691f5    8bce
    asm("call               ?SlaughterAnimalIsClose@Villager@@QAEIMPAVLiving@@@Z");                            // 0x007691f7    e834020000
    asm("mov.s              ebx, eax");                                        // 0x007691fc    8bd8
    asm("test               ebx, ebx");                                        // 0x007691fe    85db
    asm("{disp32} je        _jmp_addr_0x00769332");                            // 0x00769200    0f842c010000
    asm("mov.s              ecx, esi");                                        // 0x00769206    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769208    e8038dfeff
    asm("test               eax, eax");                                        // 0x0076920d    85c0
    asm("{disp32} je        _jmp_addr_0x0076937f");                            // 0x0076920f    0f846a010000
    asm("mov.s              ecx, esi");                                        // 0x00769215    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769217    e8f48cfeff
    asm("mov                edx, dword ptr [eax]");                            // 0x0076921c    8b10
    asm("mov.s              ecx, eax");                                        // 0x0076921e    8bc8
    asm("call               dword ptr [edx + 0xd4]");                          // 0x00769220    ff92d4000000
    asm("test               eax, eax");                                        // 0x00769226    85c0
    asm("{disp32} je        _jmp_addr_0x0076937f");                            // 0x00769228    0f8451010000
    asm("mov.s              ecx, esi");                                        // 0x0076922e    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769230    e8db8cfeff
    asm("mov                edx, dword ptr [eax]");                            // 0x00769235    8b10
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                     // 0x00769237    8d4c2418
    asm("push               ecx");                                             // 0x0076923b    51
    asm("mov.s              ecx, eax");                                        // 0x0076923c    8bc8
    asm("call               dword ptr [edx + 0x864]");                         // 0x0076923e    ff9264080000
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                     // 0x00769244    8d542418
    asm("push               edx");                                             // 0x00769248    52
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                     // 0x00769249    8d7e14
    asm("push               edi");                                             // 0x0076924c    57
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x0076924d    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");              // 0x00769255    c744241800000000
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");              // 0x0076925d    c744241c00000000
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x00769265    e8063bfeff
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x241c]");                // 0x0076926a    d8151cb48a00
    asm("add                esp, 0x08");                                       // 0x00769270    83c408
    asm("fnstsw             ax");                                              // 0x00769273    dfe0
    asm("test               ah, 0x41");                                        // 0x00769275    f6c441
    asm("{disp8} jne        _jmp_addr_0x007692b3");                            // 0x00769278    7539
    asm("push               0x4");                                             // 0x0076927a    6a04
    asm("fstp               st(0)");                                           // 0x0076927c    ddd8
    asm("push               0x1");                                             // 0x0076927e    6a01
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                     // 0x00769280    8d442420
    asm("push               eax");                                             // 0x00769284    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                     // 0x00769285    8d4c2430
    asm("push               edi");                                             // 0x00769289    57
    asm("push               ecx");                                             // 0x0076928a    51
    asm("call               _jmp_addr_0x0074ed60");                            // 0x0076928b    e8d05afeff
    asm("mov                edx, dword ptr [eax]");                            // 0x00769290    8b10
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                     // 0x00769292    89542420
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x00769296    8b4804
    asm("add                esp, 0x14");                                       // 0x00769299    83c414
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                     // 0x0076929c    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                     // 0x007692a0    8b5008
    asm("push               0x000000e4");                                      // 0x007692a3    68e4000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                     // 0x007692a8    8d442410
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                     // 0x007692ac    89542418
    asm("push               eax");                                             // 0x007692b0    50
    asm("{disp8} jmp        _jmp_addr_0x00769308");                            // 0x007692b1    eb55
    asm("_jmp_addr_0x007692b3:");
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x1651c]");               // 0x007692b3    d81d1cf58b00
    asm("fnstsw             ax");                                              // 0x007692b9    dfe0
    asm("test               ah, 0x41");                                        // 0x007692bb    f6c441
    asm("{disp8} jne        _jmp_addr_0x007692f8");                            // 0x007692be    7538
    asm("push               0x41a00000");                                      // 0x007692c0    680000a041
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x007692c5    8d4c241c
    asm("push               ecx");                                             // 0x007692c9    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x2c]");                     // 0x007692ca    8d54242c
    asm("push               edi");                                             // 0x007692ce    57
    asm("push               edx");                                             // 0x007692cf    52
    asm("call               _jmp_addr_0x0074ee20");                            // 0x007692d0    e84b5bfeff
    asm("mov                ecx, dword ptr [eax]");                            // 0x007692d5    8b08
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                     // 0x007692d7    894c241c
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x007692db    8b5004
    asm("add                esp, 0x10");                                       // 0x007692de    83c410
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                     // 0x007692e1    89542410
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                     // 0x007692e5    8b4008
    asm("push               0x000000e4");                                      // 0x007692e8    68e4000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x007692ed    8d4c2410
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                     // 0x007692f1    89442418
    asm("push               ecx");                                             // 0x007692f5    51
    asm("{disp8} jmp        _jmp_addr_0x00769308");                            // 0x007692f6    eb10
    asm("_jmp_addr_0x007692f8:");
    asm("push               0x61");                                            // 0x007692f8    6a61
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                     // 0x007692fa    8d54241c
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0005");             // 0x007692fe    66c786180100000500
    asm("push               edx");                                             // 0x00769307    52
    asm("_jmp_addr_0x00769308:");
    asm("mov.s              ecx, esi");                                        // 0x00769308    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076930a    e88195e8ff
    asm("xor.s              eax, eax");                                        // 0x0076930f    33c0
    asm("{disp8} mov        ax, word ptr [ebx + 0x5a]");                       // 0x00769311    668b435a
    asm("push               0x0");                                             // 0x00769315    6a00
    asm("mov.s              ecx, esi");                                        // 0x00769317    8bce
    asm("push               eax");                                             // 0x00769319    50
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                    // 0x0076931a    e8b17bfeff
    asm("mov.s              ecx, esi");                                        // 0x0076931f    8bce
    asm("call               ?SetStateAnim@Living@@QAEXXZ");                    // 0x00769321    e8ea37e8ff
    asm("pop                edi");                                             // 0x00769326    5f
    asm("pop                esi");                                             // 0x00769327    5e
    asm("mov                eax, 0x00000001");                                 // 0x00769328    b801000000
    asm("pop                ebx");                                             // 0x0076932d    5b
    asm("add                esp, 0x24");                                       // 0x0076932e    83c424
    asm("ret");                                                                // 0x00769331    c3
    asm("_jmp_addr_0x00769332:");
    asm("{disp8} mov        edi, dword ptr [edi + 0x3c]");                     // 0x00769332    8b7f3c
    asm("test               edi, edi");                                        // 0x00769335    85ff
    asm("{disp8} je         _jmp_addr_0x0076933e");                            // 0x00769337    7405
    asm("{disp8} mov        edi, dword ptr [edi + 0x08]");                     // 0x00769339    8b7f08
    asm("{disp8} jmp        _jmp_addr_0x00769340");                            // 0x0076933c    eb02
    asm("_jmp_addr_0x0076933e:");
    asm("xor.s              edi, edi");                                        // 0x0076933e    33ff
    asm("_jmp_addr_0x00769340:");
    asm("add                edi, 0x14");                                       // 0x00769340    83c714
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x00769343    8d4e14
    asm("push               edi");                                             // 0x00769346    57
    asm("push               ecx");                                             // 0x00769347    51
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                                 // 0x00769348    e8f33efeff
    asm("add                esp, 0x08");                                       // 0x0076934d    83c408
    asm("push               eax");                                             // 0x00769350    50
    asm("mov.s              ecx, esi");                                        // 0x00769351    8bce
    asm("call               @SetGameAngle__13MobileWallHugFUs@10");            // 0x00769353    e83847eaff
    asm("pop                edi");                                             // 0x00769358    5f
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0014");             // 0x00769359    66c786180100001400
    asm("pop                esi");                                             // 0x00769362    5e
    asm("xor.s              eax, eax");                                        // 0x00769363    33c0
    asm("pop                ebx");                                             // 0x00769365    5b
    asm("add                esp, 0x24");                                       // 0x00769366    83c424
    asm("ret");                                                                // 0x00769369    c3
    asm("_jmp_addr_0x0076936a:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076936a    8b16
    asm("push               0x5f");                                            // 0x0076936c    6a5f
    asm("mov.s              ecx, esi");                                        // 0x0076936e    8bce
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0014");             // 0x00769370    66c786180100001400
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00769379    ff92e8080000
    asm("_jmp_addr_0x0076937f:");
    asm("pop                edi");                                             // 0x0076937f    5f
    asm("pop                esi");                                             // 0x00769380    5e
    asm("xor.s              eax, eax");                                        // 0x00769381    33c0
    asm("pop                ebx");                                             // 0x00769383    5b
    asm("add                esp, 0x24");                                       // 0x00769384    83c424
    asm("ret");                                                                // 0x00769387    c3
    __builtin_unreachable();
}

bool32_t __fastcall ShepherdSlaughterAnimal__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                             // 0x00769390    53
    asm("push               esi");                                             // 0x00769391    56
    asm("mov.s              esi, ecx");                                        // 0x00769392    8bf1
    asm("dec                word ptr [esi + 0x00000118]");                     // 0x00769394    66ff8e18010000
    asm("{disp32} mov       ax, word ptr [esi + 0x00000118]");                 // 0x0076939b    668b8618010000
    asm("test               ax, ax");                                          // 0x007693a2    6685c0
    asm("{disp32} mov       ebx, dword ptr [esi + 0x000000b8]");               // 0x007693a5    8b9eb8000000
    asm("{disp8} jg         _jmp_addr_0x00769420");                            // 0x007693ab    7f73
    asm("test               ebx, ebx");                                        // 0x007693ad    85db
    asm("{disp8} je         _jmp_addr_0x00769420");                            // 0x007693af    746f
    asm("push               edi");                                             // 0x007693b1    57
    asm("push               esi");                                             // 0x007693b2    56
    asm("push               0x40800000");                                      // 0x007693b3    6800008040
    asm("call               ?SlaughterAnimalIsClose@Villager@@QAEIMPAVLiving@@@Z");                            // 0x007693b8    e873000000
    asm("mov.s              edi, eax");                                        // 0x007693bd    8bf8
    asm("test               edi, edi");                                        // 0x007693bf    85ff
    asm("{disp8} je         _jmp_addr_0x0076940e");                            // 0x007693c1    744b
    asm("push               0x1");                                             // 0x007693c3    6a01
    asm("push               edi");                                             // 0x007693c5    57
    asm("mov.s              ecx, ebx");                                        // 0x007693c6    8bcb
    asm("call               _jmp_addr_0x0052fb50");                            // 0x007693c8    e88367dcff
    asm("mov                eax, dword ptr [edi]");                            // 0x007693cd    8b07
    asm("push               0x3");                                             // 0x007693cf    6a03
    asm("mov.s              ecx, edi");                                        // 0x007693d1    8bcf
    asm("call               dword ptr [eax + 0x660]");                         // 0x007693d3    ff9060060000
    asm("call               _jmp_addr_0x007a1400");                            // 0x007693d9    e822800300
    asm("mov.s              ecx, esi");                                        // 0x007693de    8bce
    asm("push               eax");                                             // 0x007693e0    50
    asm("call               ?PickupFood@Villager@@QAEXF@Z");                   // 0x007693e1    e8aa80feff
    asm("push               0xf");                                             // 0x007693e6    6a0f
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x007693e8    8d4e14
    asm("push               ecx");                                             // 0x007693eb    51
    asm("mov.s              ecx, edi");                                        // 0x007693ec    8bcf
    asm("{disp8} mov        word ptr [edi + 0x58], 0x0000");                   // 0x007693ee    66c747580000
    asm("call               @SetupMoveToPos__6LivingFRC9MapCoordsUc@13");      // 0x007693f4    e83794e8ff
    asm("mov                edx, dword ptr [esi]");                            // 0x007693f9    8b16
    asm("push               0x60");                                            // 0x007693fb    6a60
    asm("mov.s              ecx, esi");                                        // 0x007693fd    8bce
    asm("{disp32} mov       word ptr [esi + 0x0000011a], 0x0020");             // 0x007693ff    66c7861a0100002000
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00769408    ff92e8080000
    asm("_jmp_addr_0x0076940e:");
    asm("pop                edi");                                             // 0x0076940e    5f
    asm("{disp32} mov       word ptr [esi + 0x00000118], 0x0014");             // 0x0076940f    66c786180100001400
    asm("pop                esi");                                             // 0x00769418    5e
    asm("mov                eax, 0x00000001");                                 // 0x00769419    b801000000
    asm("pop                ebx");                                             // 0x0076941e    5b
    asm("ret");                                                                // 0x0076941f    c3
    asm("_jmp_addr_0x00769420:");
    asm("pop                esi");                                             // 0x00769420    5e
    asm("mov                eax, 0x00000001");                                 // 0x00769421    b801000000
    asm("pop                ebx");                                             // 0x00769426    5b
    asm("ret");                                                                // 0x00769427    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SlaughterAnimalIsClose__8VillagerFfP6Living(struct Villager* this, const void* edx, float param_1, struct Living* param_2)
{
    asm("mov.s              eax, ecx");                                        // 0x00769430    8bc1
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000000b8]");               // 0x00769432    8b88b8000000
    asm("test               ecx, ecx");                                        // 0x00769438    85c9
    asm("{disp8} je         _jmp_addr_0x00769452");                            // 0x0076943a    7416
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                     // 0x0076943c    8b542408
    asm("push               edx");                                             // 0x00769440    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                     // 0x00769441    8b542408
    asm("push               edx");                                             // 0x00769445    52
    asm("add                eax, 0x14");                                       // 0x00769446    83c014
    asm("push               eax");                                             // 0x00769449    50
    asm("call               _jmp_addr_0x00530050");                            // 0x0076944a    e8016cdcff
    asm("ret                0x0008");                                          // 0x0076944f    c20800
    asm("_jmp_addr_0x00769452:");
    asm("xor.s              eax, eax");                                        // 0x00769452    33c0
    asm("ret                0x0008");                                          // 0x00769454    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ShepherdFetchStray__8VillagerFv(struct Villager* this)
{
    return 1;
}
