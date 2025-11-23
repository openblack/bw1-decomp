#include "Villager.h"

const float villager_food_num_days_in_year_0x0099a978 = 365.25f;
const float villager_food_seconds_in_day_0x0099a97c = 86400.0f;

float villager_food_seconds_in_year_0x00db9e08;

void __cdecl globl_ct_0x0075b8e0(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x0075b8e0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0075b8e6    b001
    asm("test               al, cl");                                        // 0x0075b8e8    84c8
    asm("{disp8} jne        _jmp_addr_0x0075b8f4");                          // 0x0075b8ea    7508
    asm("or.s               cl, al");                                        // 0x0075b8ec    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075b8ee    880d34c9fa00
    asm("_jmp_addr_0x0075b8f4:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0075b900");   // 0x0075b8f4    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0075b900(void)
{
    asm("push               0x00407870");                                    // 0x0075b900    6870784000
    asm("call               _atexit");                                       // 0x0075b905    e8879e0600
    asm("pop                ecx");                                           // 0x0075b90a    59
}

void __cdecl globl_ct_0x0075b910(void)
{
    asm("{disp32} jmp       _FUN_0075b920__8VillagerFv");                    // 0x0075b910    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0075b920__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_food_seconds_in_day_0x0099a97c]");   // 0x0075b920    d9057ca99900
    asm("{disp32} fmul dword ptr [_villager_food_num_days_in_year_0x0099a978]"); // 0x0075b926    d80d78a99900
    asm("{disp32} fstp dword ptr [_villager_food_seconds_in_year_0x00db9e08]");  // 0x0075b92c    d91d089edb00
}

bool32_t __fastcall ShowPoisoned__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x0075b940    83ec0c
    asm("push               esi");                                           // 0x0075b943    56
    asm("mov.s              esi, ecx");                                      // 0x0075b944    8bf1
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x0075b946    f686e000000004
    asm("{disp8} je         _jmp_addr_0x0075b96c");                          // 0x0075b94d    741d
    asm("push               0x0");                                           // 0x0075b94f    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x0075b951    8d442408
    asm("push               eax");                                           // 0x0075b955    50
    asm("call               ?FindPosOutsideAbode@Villager@@QAEXPAVAbode@@@Z");                          // 0x0075b956    e8157bffff
    asm("push               0x000000d4");                                    // 0x0075b95b    68d4000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075b960    8d4c2408
    asm("push               ecx");                                           // 0x0075b964    51
    asm("mov.s              ecx, esi");                                      // 0x0075b965    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075b967    e8246fe9ff
    asm("_jmp_addr_0x0075b96c:");
    asm("push               0x1");                                           // 0x0075b96c    6a01
    asm("push               0x000000a3");                                    // 0x0075b96e    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x0075b973    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x0075b975    e84611e9ff
    asm("mov                eax, 0x00000001");                               // 0x0075b97a    b801000000
    asm("pop                esi");                                           // 0x0075b97f    5e
    asm("add                esp, 0x0c");                                     // 0x0075b980    83c40c
    asm("ret");                                                              // 0x0075b983    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ChangeStateToFindFoodToEat__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x0075b990    83ec0c
    asm("push               ebp");                                           // 0x0075b993    55
    asm("push               esi");                                           // 0x0075b994    56
    asm("push               edi");                                           // 0x0075b995    57
    asm("mov.s              esi, ecx");                                      // 0x0075b996    8bf1
    asm("call               ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ");                          // 0x0075b998    e863020000
    asm("mov.s              edi, eax");                                      // 0x0075b99d    8bf8
    asm("{disp32} mov       al, byte ptr [esi + 0x000000e0]");               // 0x0075b99f    8a86e0000000
    asm("and                al, 0x04");                                      // 0x0075b9a5    2404
    asm("neg                al");                                            // 0x0075b9a7    f6d8
    asm("sbb.s              eax, eax");                                      // 0x0075b9a9    1bc0
    asm("neg                eax");                                           // 0x0075b9ab    f7d8
    asm("add                eax, 0x75");                                     // 0x0075b9ad    83c075
    asm("test               edi, edi");                                      // 0x0075b9b0    85ff
    asm("mov.s              ebp, eax");                                      // 0x0075b9b2    8be8
    asm("{disp32} je        _jmp_addr_0x0075baba");                          // 0x0075b9b4    0f8400010000
    asm("mov.s              ecx, esi");                                      // 0x0075b9ba    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075b9bc    e89f67ffff
    asm("test               eax, eax");                                      // 0x0075b9c1    85c0
    asm("{disp8} je         _jmp_addr_0x0075ba26");                          // 0x0075b9c3    7461
    asm("mov.s              ecx, esi");                                      // 0x0075b9c5    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075b9c7    e89467ffff
    asm("mov                edx, dword ptr [eax]");                          // 0x0075b9cc    8b10
    asm("mov.s              ecx, eax");                                      // 0x0075b9ce    8bc8
    asm("call               dword ptr [edx + 0xd4]");                        // 0x0075b9d0    ff92d4000000
    asm("test               eax, eax");                                      // 0x0075b9d6    85c0
    asm("{disp8} je         _jmp_addr_0x0075ba26");                          // 0x0075b9d8    744c
    asm("push               ebx");                                           // 0x0075b9da    53
    asm("mov.s              ecx, esi");                                      // 0x0075b9db    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075b9dd    e87e67ffff
    asm("mov                edx, dword ptr [eax]");                          // 0x0075b9e2    8b10
    asm("{disp32} mov       bx, word ptr [esi + 0x000000f4]");               // 0x0075b9e4    668b9ef4000000
    asm("push               0x0");                                           // 0x0075b9eb    6a00
    asm("mov.s              ecx, eax");                                      // 0x0075b9ed    8bc8
    asm("call               dword ptr [edx + 0x98]");                        // 0x0075b9ef    ff9298000000
    asm("movsx              ecx, bx");                                       // 0x0075b9f5    0fbfcb
    asm("add.s              eax, ecx");                                      // 0x0075b9f8    03c1
    asm("cmp.s              eax, edi");                                      // 0x0075b9fa    3bc7
    asm("pop                ebx");                                           // 0x0075b9fc    5b
    asm(".byte              0x72, 0x27");// {disp8} jb _jmp_addr_0x0075ba26  // 0x0075b9fd    7227
    asm("{disp32} mov       al, byte ptr [esi + 0x000000e0]");               // 0x0075b9ff    8a86e0000000
    asm("mov                edx, dword ptr [esi]");                          // 0x0075ba05    8b16
    asm("and                al, 0x04");                                      // 0x0075ba07    2404
    asm("neg                al");                                            // 0x0075ba09    f6d8
    asm("sbb.s              al, al");                                        // 0x0075ba0b    1ac0
    asm("and                al, 0x52");                                      // 0x0075ba0d    2452
    asm("add                al, 0x24");                                      // 0x0075ba0f    0424
    asm("mov.s              ecx, esi");                                      // 0x0075ba11    8bce
    asm("push               eax");                                           // 0x0075ba13    50
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075ba14    ff92e8080000
    asm("pop                edi");                                           // 0x0075ba1a    5f
    asm("pop                esi");                                           // 0x0075ba1b    5e
    asm("mov                eax, 0x00000001");                               // 0x0075ba1c    b801000000
    asm("pop                ebp");                                           // 0x0075ba21    5d
    asm("add                esp, 0x0c");                                     // 0x0075ba22    83c40c
    asm("ret");                                                              // 0x0075ba25    c3
    asm("_jmp_addr_0x0075ba26:");
    asm("mov.s              ecx, esi");                                      // 0x0075ba26    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x0075ba28    e8e364ffff
    asm("test               eax, eax");                                      // 0x0075ba2d    85c0
    asm("{disp8} je         _jmp_addr_0x0075ba75");                          // 0x0075ba2f    7444
    asm("mov.s              ecx, esi");                                      // 0x0075ba31    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x0075ba33    e8d864ffff
    asm("mov                edx, dword ptr [eax]");                          // 0x0075ba38    8b10
    asm("mov.s              ecx, eax");                                      // 0x0075ba3a    8bc8
    asm("call               dword ptr [edx + 0xd4]");                        // 0x0075ba3c    ff92d4000000
    asm("test               eax, eax");                                      // 0x0075ba42    85c0
    asm("{disp8} je         _jmp_addr_0x0075ba75");                          // 0x0075ba44    742f
    asm("mov.s              ecx, esi");                                      // 0x0075ba46    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x0075ba48    e8c364ffff
    asm("mov                edx, dword ptr [eax]");                          // 0x0075ba4d    8b10
    asm("push               0x0");                                           // 0x0075ba4f    6a00
    asm("mov.s              ecx, eax");                                      // 0x0075ba51    8bc8
    asm("call               dword ptr [edx + 0x98]");                        // 0x0075ba53    ff9298000000
    asm("cmp.s              eax, edi");                                      // 0x0075ba59    3bc7
    asm(".byte              0x72, 0x53");// {disp8} jb _jmp_addr_0x0075bab0  // 0x0075ba5b    7253
    asm("mov                eax, dword ptr [esi]");                          // 0x0075ba5d    8b06
    asm("push               0x21");                                          // 0x0075ba5f    6a21
    asm("mov.s              ecx, esi");                                      // 0x0075ba61    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075ba63    ff90e8080000
    asm("pop                edi");                                           // 0x0075ba69    5f
    asm("pop                esi");                                           // 0x0075ba6a    5e
    asm("mov                eax, 0x00000001");                               // 0x0075ba6b    b801000000
    asm("pop                ebp");                                           // 0x0075ba70    5d
    asm("add                esp, 0x0c");                                     // 0x0075ba71    83c40c
    asm("ret");                                                              // 0x0075ba74    c3
    asm("_jmp_addr_0x0075ba75:");
    asm("push               0x0");                                           // 0x0075ba75    6a00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x0075ba77    8d4c2410
    asm("push               ecx");                                           // 0x0075ba7b    51
    asm("mov.s              ecx, esi");                                      // 0x0075ba7c    8bce
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                          // 0x0075ba7e    e89d83ffff
    asm("push               0x0");                                           // 0x0075ba83    6a00
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x0075ba85    8d5614
    asm("push               edx");                                           // 0x0075ba88    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x0075ba89    8d4c2414
    asm("call               @IsCloseToEqual__9MapCoordsCFRC9MapCoordsf@16"); // 0x0075ba8d    e82e99eaff
    asm("test               eax, eax");                                      // 0x0075ba92    85c0
    asm("{disp8} jne        _jmp_addr_0x0075bab0");                          // 0x0075ba94    751a
    asm("push               0x22");                                          // 0x0075ba96    6a22
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075ba98    8d442410
    asm("push               eax");                                           // 0x0075ba9c    50
    asm("mov.s              ecx, esi");                                      // 0x0075ba9d    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075ba9f    e8ec6de9ff
    asm("pop                edi");                                           // 0x0075baa4    5f
    asm("pop                esi");                                           // 0x0075baa5    5e
    asm("mov                eax, 0x00000001");                               // 0x0075baa6    b801000000
    asm("pop                ebp");                                           // 0x0075baab    5d
    asm("add                esp, 0x0c");                                     // 0x0075baac    83c40c
    asm("ret");                                                              // 0x0075baaf    c3
    asm("_jmp_addr_0x0075bab0:");
    asm("cmp                word ptr [esi + 0x000000f4], 0x00");             // 0x0075bab0    6683bef400000000
    asm("{disp8} je         _jmp_addr_0x0075bad1");                          // 0x0075bab8    7417
    asm("_jmp_addr_0x0075baba:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075baba    8b16
    asm("push               ebp");                                           // 0x0075babc    55
    asm("mov.s              ecx, esi");                                      // 0x0075babd    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075babf    ff92e8080000
    asm("pop                edi");                                           // 0x0075bac5    5f
    asm("pop                esi");                                           // 0x0075bac6    5e
    asm("mov                eax, 0x00000001");                               // 0x0075bac7    b801000000
    asm("pop                ebp");                                           // 0x0075bacc    5d
    asm("add                esp, 0x0c");                                     // 0x0075bacd    83c40c
    asm("ret");                                                              // 0x0075bad0    c3
    asm("_jmp_addr_0x0075bad1:");
    asm("pop                edi");                                           // 0x0075bad1    5f
    asm("pop                esi");                                           // 0x0075bad2    5e
    asm("xor.s              eax, eax");                                      // 0x0075bad3    33c0
    asm("pop                ebp");                                           // 0x0075bad5    5d
    asm("add                esp, 0x0c");                                     // 0x0075bad6    83c40c
    asm("ret");                                                              // 0x0075bad9    c3
    __builtin_unreachable();
}

float __fastcall CalculateLifeDesire__8VillagerFv(struct Living* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075bae0    8b01
    asm("call               dword ptr [eax + 0x11c]");                       // 0x0075bae2    ff901c010000
    asm("{disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]");   // 0x0075bae8    dc2d80b68a00
    asm("ret");                                                              // 0x0075baee    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckHungryAtHome__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall GetDesireToPickupFood__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x0075bb00    8b4128
    asm("{disp32} mov       cx, word ptr [ecx + 0x000000f4]");               // 0x0075bb03    668b89f4000000
    asm("sub                esp, 0x08");                                     // 0x0075bb0a    83ec08
    asm("cmp                cx, word ptr [eax + 0x000002d8]");               // 0x0075bb0d    663b88d8020000
    asm("{disp8} jge        _jmp_addr_0x0075bb41");                          // 0x0075bb14    7d2b
    asm("{disp32} mov       edx, dword ptr [eax + 0x000002d8]");             // 0x0075bb16    8b90d8020000
    asm("movsx              ecx, cx");                                       // 0x0075bb1c    0fbfc9
    asm("{disp8} mov        dword ptr [esp + 0x00], ecx");                   // 0x0075bb1f    894c2400
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");            // 0x0075bb23    c744240400000000
    asm("{disp8} fild       dword ptr [esp + 0x00]");                        // 0x0075bb2b    db442400
    asm("{disp8} mov        dword ptr [esp + 0x00], edx");                   // 0x0075bb2f    89542400
    asm("{disp8} fidiv      dword ptr [esp + 0x00]");                        // 0x0075bb33    da742400
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075bb37    d82d90a38a00
    asm("add                esp, 0x08");                                     // 0x0075bb3d    83c408
    asm("ret");                                                              // 0x0075bb40    c3
    asm("_jmp_addr_0x0075bb41:");
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075bb41    d90598a38a00
    asm("add                esp, 0x08");                                     // 0x0075bb47    83c408
    asm("ret");                                                              // 0x0075bb4a    c3
    __builtin_unreachable();
}

float __fastcall GetDesireForFood__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000000e8]");             // 0x0075bb50    8b81e8000000
    asm("push               eax");                                           // 0x0075bb56    50
    asm("call               _POWER_f___FfUl");                               // 0x0075bb57    e804000000
    asm("ret");                                                              // 0x0075bb5c    c3
    __builtin_unreachable();
}

float __cdecl POWER_f___FfUl(float param_0, uint32_t param_1)
{
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x0075bb60    d9442404
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075bb64    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x0075bb6a    dfe0
    asm("test               ah, 0x01");                                      // 0x0075bb6c    f6c401
    asm("{disp8} je         _jmp_addr_0x0075bb77");                          // 0x0075bb6f    7406
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x0075bb71    d9442404
    asm("{disp8} jmp        _jmp_addr_0x0075bb7d");                          // 0x0075bb75    eb06
    asm("_jmp_addr_0x0075bb77:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075bb77    d90590a38a00
    asm("_jmp_addr_0x0075bb7d:");
    asm("{disp8} fst        dword ptr [esp + 0x04]");                        // 0x0075bb7d    d9542404
    asm("mov                eax, 0x00000002");                               // 0x0075bb81    b802000000
    asm("_jmp_addr_0x0075bb86:");
    asm("dec                eax");                                           // 0x0075bb86    48
    asm("{disp8} fmul       dword ptr [esp + 0x04]");                        // 0x0075bb87    d84c2404
    asm("{disp8} jne        _jmp_addr_0x0075bb86");                          // 0x0075bb8b    75f9
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075bb8d    d82d90a38a00
    asm("ret                0x0004");                                        // 0x0075bb93    c20400
    __builtin_unreachable();
}

void __fastcall GetDesireForLife__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075bba0    56
    asm("mov.s              esi, ecx");                                      // 0x0075bba1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x0075bba3    8b06
    asm("call               dword ptr [eax + 0x11c]");                       // 0x0075bba5    ff901c010000
    asm("push               ecx");                                           // 0x0075bbab    51
    asm("mov.s              ecx, esi");                                      // 0x0075bbac    8bce
    asm("fstp               dword ptr [esp]");                               // 0x0075bbae    d91c24
    asm("call               ?GetLifeDesireFromLife@Villager@@QAEMM@Z");      // 0x0075bbb1    e80a000000
    asm("pop                esi");                                           // 0x0075bbb6    5e
    asm("ret");                                                              // 0x0075bbb7    c3
    __builtin_unreachable();
}

float __fastcall GetLifeDesireFromLife__8VillagerFf(struct Villager* this, const void* edx, float param_1)
{
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x28]");                   // 0x0075bbc0    8b4928
    asm("{disp32} fld       dword ptr [ecx + 0x0000035c]");                  // 0x0075bbc3    d9815c030000
    asm("{disp8} fcomp      dword ptr [esp + 0x04]");                        // 0x0075bbc9    d85c2404
    asm("fnstsw             ax");                                            // 0x0075bbcd    dfe0
    asm("test               ah, 0x01");                                      // 0x0075bbcf    f6c401
    asm("{disp8} je         _jmp_addr_0x0075bbdc");                          // 0x0075bbd2    7408
    asm("{disp32} fld       dword ptr [ecx + 0x0000035c]");                  // 0x0075bbd4    d9815c030000
    asm("{disp8} jmp        _jmp_addr_0x0075bbe0");                          // 0x0075bbda    eb04
    asm("_jmp_addr_0x0075bbdc:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x0075bbdc    d9442404
    asm("_jmp_addr_0x0075bbe0:");
    asm("{disp8} fsubr      dword ptr [esp + 0x04]");                        // 0x0075bbe0    d86c2404
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075bbe4    d90590a38a00
    asm("{disp32} fsub      dword ptr [ecx + 0x0000035c]");                  // 0x0075bbea    d8a15c030000
    asm("fdivp              st(1), st");                                     // 0x0075bbf0    def9
    asm("fld                st(0)");                                         // 0x0075bbf2    d9c0
    asm("fmulp              st(1), st");                                     // 0x0075bbf4    dec9
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075bbf6    d82d90a38a00
    asm("ret                0x0004");                                        // 0x0075bbfc    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetAmountOfFoodRequiredForMeal__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075bc00    56
    asm("mov.s              esi, ecx");                                      // 0x0075bc01    8bf1
    asm("call               ?GetAmountOfFoodToEat@Villager@@QAEIXZ");        // 0x0075bc03    e818000000
    asm("movsx              ecx, word ptr [esi + 0x000000f4]");              // 0x0075bc08    0fbf8ef4000000
    asm("sub.s              eax, ecx");                                      // 0x0075bc0f    2bc1
    asm("xor.s              edx, edx");                                      // 0x0075bc11    33d2
    asm("test               eax, eax");                                      // 0x0075bc13    85c0
    asm("setle              dl");                                            // 0x0075bc15    0f9ec2
    asm("pop                esi");                                           // 0x0075bc18    5e
    asm("dec                edx");                                           // 0x0075bc19    4a
    asm("and.s              eax, edx");                                      // 0x0075bc1a    23c2
    asm("ret");                                                              // 0x0075bc1c    c3
    __builtin_unreachable();
}

uint32_t __fastcall GetAmountOfFoodToEat__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x0075bc20    83ec08
    asm("push               esi");                                           // 0x0075bc23    56
    asm("mov.s              esi, ecx");                                      // 0x0075bc24    8bf1
    asm("push               edi");                                           // 0x0075bc26    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x0075bc27    8b7e28
    asm("call               ?GetDesireForFood@Villager@@QAEMXZ");            // 0x0075bc2a    e821ffffff
    asm("{disp32} mov       eax, dword ptr [edi + 0x000002d8]");             // 0x0075bc2f    8b87d8020000
    asm("mov                edx, dword ptr [esi]");                          // 0x0075bc35    8b16
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x0075bc37    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075bc3b    c744240c00000000
    asm("{disp8} fimul      dword ptr [esp + 0x08]");                        // 0x0075bc43    da4c2408
    asm("mov.s              ecx, esi");                                      // 0x0075bc47    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075bc49    d95c2408
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075bc4d    ff5248
    asm("test               eax, eax");                                      // 0x0075bc50    85c0
    asm("{disp8} je         _jmp_addr_0x0075bca8");                          // 0x0075bc52    7454
    asm("mov                eax, dword ptr [esi]");                          // 0x0075bc54    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075bc56    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075bc58    ff5048
    asm("{disp32} fld       dword ptr [eax + 0x0000014c]");                  // 0x0075bc5b    d9804c010000
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075bc61    d81598a38a00
    asm("fnstsw             ax");                                            // 0x0075bc67    dfe0
    asm("test               ah, 0x01");                                      // 0x0075bc69    f6c401
    asm("{disp8} je         _jmp_addr_0x0075bc78");                          // 0x0075bc6c    740a
    asm("fstp               st(0)");                                         // 0x0075bc6e    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075bc70    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x0075bc8d");                          // 0x0075bc76    eb15
    asm("_jmp_addr_0x0075bc78:");
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x0075bc78    d81590a38a00
    asm("fnstsw             ax");                                            // 0x0075bc7e    dfe0
    asm("test               ah, 0x41");                                      // 0x0075bc80    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075bc8d");                          // 0x0075bc83    7508
    asm("fstp               st(0)");                                         // 0x0075bc85    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075bc87    d90590a38a00
    asm("_jmp_addr_0x0075bc8d:");
    asm("{disp32} fmul      dword ptr [__real@3e999999]");                   // 0x0075bc8d    d80d3cb28a00
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075bc93    d82d90a38a00
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                        // 0x0075bc99    d84c2408
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075bc9d    e85e570400
    asm("pop                edi");                                           // 0x0075bca2    5f
    asm("pop                esi");                                           // 0x0075bca3    5e
    asm("add                esp, 0x08");                                     // 0x0075bca4    83c408
    asm("ret");                                                              // 0x0075bca7    c3
    asm("_jmp_addr_0x0075bca8:");
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x0075bca8    d9442408
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075bcac    e84f570400
    asm("pop                edi");                                           // 0x0075bcb1    5f
    asm("pop                esi");                                           // 0x0075bcb2    5e
    asm("add                esp, 0x08");                                     // 0x0075bcb3    83c408
    asm("ret");                                                              // 0x0075bcb6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckHungry__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x0075bcc0    83ec0c
    asm("push               ebx");                                           // 0x0075bcc3    53
    asm("push               esi");                                           // 0x0075bcc4    56
    asm("mov.s              esi, ecx");                                      // 0x0075bcc5    8bf1
    asm("xor.s              ebx, ebx");                                      // 0x0075bcc7    33db
    asm("call               ?GetGameTurnsSinceLastChecked@Villager@@QAEIXZ");// 0x0075bcc9    e8a249ffff
    asm("test               eax, eax");                                      // 0x0075bcce    85c0
    asm("{disp32} je        _jmp_addr_0x0075beef");                          // 0x0075bcd0    0f8419020000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x0075bcd6    8b4e28
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0075bcd9    8944240c
    asm("xor.s              eax, eax");                                      // 0x0075bcdd    33c0
    asm("{disp8} mov        ax, word ptr [esi + 0x5a]");                     // 0x0075bcdf    668b465a
    asm("{disp8} mov        dword ptr [esp + 0x10], ebx");                   // 0x0075bce3    895c2410
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                        // 0x0075bce7    df6c240c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075bceb    8b16
    asm("{disp32} fmul      dword ptr [ecx + 0x000002bc]");                  // 0x0075bced    d889bc020000
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0075bcf3    8944240c
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075bcf7    d95c2408
    asm("{disp8} fild       dword ptr [esp + 0x0c]");                        // 0x0075bcfb    db44240c
    asm("{disp32} fidiv     dword ptr [ecx + 0x00000104]");                  // 0x0075bcff    dab104010000
    asm("mov.s              ecx, esi");                                      // 0x0075bd05    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0075bd07    d95c240c
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0075bd0b    ff521c
    asm("test               eax, eax");                                      // 0x0075bd0e    85c0
    asm("{disp8} je         _jmp_addr_0x0075bd24");                          // 0x0075bd10    7412
    asm("mov                eax, dword ptr [esi]");                          // 0x0075bd12    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075bd14    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0075bd16    ff501c
    asm("{disp8} fld        dword ptr [eax + 0x74]");                        // 0x0075bd19    d94074
    asm("{disp8} fdivr      dword ptr [esp + 0x08]");                        // 0x0075bd1c    d87c2408
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075bd20    d95c2408
    asm("_jmp_addr_0x0075bd24:");
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x0075bd24    d944240c
    asm("{disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]");   // 0x0075bd28    dc1d80b68a00
    asm("fnstsw             ax");                                            // 0x0075bd2e    dfe0
    asm("test               ah, 0x41");                                      // 0x0075bd30    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075bd4f");                          // 0x0075bd33    751a
    asm("mov                edx, dword ptr [esi]");                          // 0x0075bd35    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075bd37    8bce
    asm("call               dword ptr [edx + 0x174]");                       // 0x0075bd39    ff9274010000
    asm("test               eax, eax");                                      // 0x0075bd3f    85c0
    asm("{disp8} je         _jmp_addr_0x0075bd4f");                          // 0x0075bd41    740c
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x0075bd43    d944240c
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                        // 0x0075bd47    d84c2408
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075bd4b    d95c2408
    asm("_jmp_addr_0x0075bd4f:");
    asm("{disp32} fld       dword ptr [esi + 0x000000e8]");                  // 0x0075bd4f    d986e8000000
    asm("{disp8} fsub       dword ptr [esp + 0x08]");                        // 0x0075bd55    d8642408
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075bd59    d81598a38a00
    asm("{disp32} fst       dword ptr [esi + 0x000000e8]");                  // 0x0075bd5f    d996e8000000
    asm("fnstsw             ax");                                            // 0x0075bd65    dfe0
    asm("test               ah, 0x01");                                      // 0x0075bd67    f6c401
    asm("{disp8} je         _jmp_addr_0x0075bd74");                          // 0x0075bd6a    7408
    asm("fstp               st(0)");                                         // 0x0075bd6c    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075bd6e    d90598a38a00
    asm("_jmp_addr_0x0075bd74:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x0075bd74    8b4628
    asm("{disp32} fst       dword ptr [esi + 0x000000e8]");                  // 0x0075bd77    d996e8000000
    asm("{disp32} fcomp     dword ptr [eax + 0x000002c0]");                  // 0x0075bd7d    d898c0020000
    asm("push               edi");                                           // 0x0075bd83    57
    asm("fnstsw             ax");                                            // 0x0075bd84    dfe0
    asm("test               ah, 0x01");                                      // 0x0075bd86    f6c401
    asm("{disp8} je         _jmp_addr_0x0075bd92");                          // 0x0075bd89    7407
    asm("mov                edi, 0x00000001");                               // 0x0075bd8b    bf01000000
    asm("{disp8} jmp        _jmp_addr_0x0075bda6");                          // 0x0075bd90    eb14
    asm("_jmp_addr_0x0075bd92:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075bd92    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075bd94    8bce
    asm("xor.s              edi, edi");                                      // 0x0075bd96    33ff
    asm("call               dword ptr [edx + 0x4a4]");                       // 0x0075bd98    ff92a4040000
    asm("test               al, al");                                        // 0x0075bd9e    84c0
    asm("{disp32} je        _jmp_addr_0x0075bedf");                          // 0x0075bda0    0f8439010000
    asm("_jmp_addr_0x0075bda6:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x0075bda6    8b4e28
    asm("{disp32} fld       dword ptr [ecx + 0x000002c0]");                  // 0x0075bda9    d981c0020000
    asm("{disp32} fdivr     dword ptr [esi + 0x000000e8]");                  // 0x0075bdaf    d8bee8000000
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075bdb5    d82d90a38a00
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x0075bdbb    d81590a38a00
    asm("fnstsw             ax");                                            // 0x0075bdc1    dfe0
    asm("test               ah, 0x41");                                      // 0x0075bdc3    f6c441
    asm("{disp8} je         _jmp_addr_0x0075bdd0");                          // 0x0075bdc6    7408
    asm("fstp               st(0)");                                         // 0x0075bdc8    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075bdca    d90590a38a00
    asm("_jmp_addr_0x0075bdd0:");
    asm("{disp32} fmul      dword ptr [ecx + 0x000002d0]");                  // 0x0075bdd0    d889d0020000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075bdd6    8b06
    asm("push               0x0");                                           // 0x0075bdd8    6a00
    asm("push               ecx");                                           // 0x0075bdda    51
    asm("fstp               dword ptr [esp]");                               // 0x0075bddb    d91c24
    asm("mov.s              ecx, esi");                                      // 0x0075bdde    8bce
    asm("call               dword ptr [eax + 0x5b8]");                       // 0x0075bde0    ff90b8050000
    asm("fstp               st(0)");                                         // 0x0075bde6    ddd8
    asm("test               edi, edi");                                      // 0x0075bde8    85ff
    asm("{disp32} je        _jmp_addr_0x0075bedf");                          // 0x0075bdea    0f84ef000000
    asm("mov                edx, dword ptr [esi]");                          // 0x0075bdf0    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075bdf2    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x0075bdf4    ff92040b0000
    asm("and                eax, 0x000000ff");                               // 0x0075bdfa    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x0075bdff    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x0075be01    8d0449
    asm("shl                eax, 3");                                        // 0x0075be04    c1e003
    asm("sub.s              eax, ecx");                                      // 0x0075be07    2bc1
    asm("lea                edi, dword ptr [eax + eax * 0x2]");              // 0x0075be09    8d3c40
    asm("shl                edi, 2");                                        // 0x0075be0c    c1e702
    asm("{disp32} mov       eax, dword ptr [edi + 0x00db9f48]");             // 0x0075be0f    8b87489fdb00
    asm("test               eax, eax");                                      // 0x0075be15    85c0
    asm("{disp8} je         _jmp_addr_0x0075be4d");                          // 0x0075be17    7434
    asm("xor.s              eax, eax");                                      // 0x0075be19    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x0075be1b    668b86e0000000
    asm("shr                eax, 9");                                        // 0x0075be22    c1e809
    asm("test               al, 0x01");                                      // 0x0075be25    a801
    asm("{disp8} je         _jmp_addr_0x0075be44");                          // 0x0075be27    741b
    asm("xor.s              eax, eax");                                      // 0x0075be29    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");               // 0x0075be2b    8a86f2000000
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x0075be31    8d0cc500000000
    asm("sub.s              ecx, eax");                                      // 0x0075be38    2bc8
    asm("cmp                dword ptr [ecx * 0x4 + 0x0099a204], 0x01");      // 0x0075be3a    833c8d04a2990001
    asm("{disp8} je         _jmp_addr_0x0075be4d");                          // 0x0075be42    7409
    asm("_jmp_addr_0x0075be44:");
    asm("mov.s              ecx, esi");                                      // 0x0075be44    8bce
    asm("call               ?ChangeStateToFindFoodToEat@Villager@@QAE_NXZ"); // 0x0075be46    e845fbffff
    asm("mov.s              ebx, eax");                                      // 0x0075be4b    8bd8
    asm("_jmp_addr_0x0075be4d:");
    asm("{disp8} mov        edx, dword ptr [esi + 0x28]");                   // 0x0075be4d    8b5628
    asm("{disp32} fld       dword ptr [esi + 0x000000e8]");                  // 0x0075be50    d986e8000000
    asm("{disp32} fcomp     dword ptr [edx + 0x000002c4]");                  // 0x0075be56    d89ac4020000
    asm("fnstsw             ax");                                            // 0x0075be5c    dfe0
    asm("test               ah, 0x01");                                      // 0x0075be5e    f6c401
    asm("{disp8} je         _jmp_addr_0x0075be7a");                          // 0x0075be61    7417
    asm("{disp32} mov       eax, dword ptr [edi + 0x00db9f4c]");             // 0x0075be63    8b874c9fdb00
    asm("test               eax, eax");                                      // 0x0075be69    85c0
    asm("{disp8} je         _jmp_addr_0x0075be7a");                          // 0x0075be6b    740d
    asm("test               ebx, ebx");                                      // 0x0075be6d    85db
    asm("{disp8} jne        _jmp_addr_0x0075be7a");                          // 0x0075be6f    7509
    asm("mov.s              ecx, esi");                                      // 0x0075be71    8bce
    asm("call               ?ChangeStateToFindFoodToEat@Villager@@QAE_NXZ"); // 0x0075be73    e818fbffff
    asm("mov.s              ebx, eax");                                      // 0x0075be78    8bd8
    asm("_jmp_addr_0x0075be7a:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075be7a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075be7c    8bce
    asm("call               dword ptr [eax + 0x11c]");                       // 0x0075be7e    ff901c010000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075be84    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075be8a    dfe0
    asm("test               ah, 0x41");                                      // 0x0075be8c    f6c441
    asm("{disp8} je         _jmp_addr_0x0075bedf");                          // 0x0075be8f    744e
    asm("mov                edx, dword ptr [esi]");                          // 0x0075be91    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075be93    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x0075be95    ff92040b0000
    asm("cmp                al, -0x08");                                     // 0x0075be9b    3cf8
    asm("{disp8} je         _jmp_addr_0x0075beb5");                          // 0x0075be9d    7416
    asm("cmp                al, -0x07");                                     // 0x0075be9f    3cf9
    asm("{disp8} je         _jmp_addr_0x0075beb5");                          // 0x0075bea1    7412
    asm("cmp                al, -0x06");                                     // 0x0075bea3    3cfa
    asm("{disp8} je         _jmp_addr_0x0075beb5");                          // 0x0075bea5    740e
    asm("test               byte ptr [esi + 0x000000e0], 0x02");             // 0x0075bea7    f686e000000002
    asm("mov                edi, 0x00000001");                               // 0x0075beae    bf01000000
    asm("{disp8} je         _jmp_addr_0x0075beba");                          // 0x0075beb3    7405
    asm("_jmp_addr_0x0075beb5:");
    asm("mov                edi, 0x00000004");                               // 0x0075beb5    bf04000000
    asm("_jmp_addr_0x0075beba:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075beba    8b06
    asm("push               0x1");                                           // 0x0075bebc    6a01
    asm("mov.s              ecx, esi");                                      // 0x0075bebe    8bce
    asm("call               dword ptr [eax + 0x11c]");                       // 0x0075bec0    ff901c010000
    asm("mov                edx, dword ptr [esi]");                          // 0x0075bec6    8b16
    asm("push               ecx");                                           // 0x0075bec8    51
    asm("mov.s              ecx, esi");                                      // 0x0075bec9    8bce
    asm("fstp               dword ptr [esp]");                               // 0x0075becb    d91c24
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0075bece    ff521c
    asm("push               eax");                                           // 0x0075bed1    50
    asm("push               edi");                                           // 0x0075bed2    57
    asm("mov.s              ecx, esi");                                      // 0x0075bed3    8bce
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                          // 0x0075bed5    e8e647ffff
    asm("mov                ebx, 0x00000001");                               // 0x0075beda    bb01000000
    asm("_jmp_addr_0x0075bedf:");
    asm("mov.s              ecx, esi");                                      // 0x0075bedf    8bce
    asm("call               ?SetGameTurnLastChecked@Villager@@QAEXXZ");      // 0x0075bee1    e8ba47ffff
    asm("pop                edi");                                           // 0x0075bee6    5f
    asm("pop                esi");                                           // 0x0075bee7    5e
    asm("mov.s              eax, ebx");                                      // 0x0075bee8    8bc3
    asm("pop                ebx");                                           // 0x0075beea    5b
    asm("add                esp, 0x0c");                                     // 0x0075beeb    83c40c
    asm("ret");                                                              // 0x0075beee    c3
    asm("_jmp_addr_0x0075beef:");
    asm("pop                esi");                                           // 0x0075beef    5e
    asm("mov.s              eax, ebx");                                      // 0x0075bef0    8bc3
    asm("pop                ebx");                                           // 0x0075bef2    5b
    asm("add                esp, 0x0c");                                     // 0x0075bef3    83c40c
    asm("ret");                                                              // 0x0075bef6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyOwnFoodDesire__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075bf00    56
    asm("mov.s              esi, ecx");                                      // 0x0075bf01    8bf1
    asm("call               ?IsHungry@Villager@@QAE_NXZ");                   // 0x0075bf03    e8f866ffff
    asm("test               eax, eax");                                      // 0x0075bf08    85c0
    asm("{disp8} je         _jmp_addr_0x0075bf15");                          // 0x0075bf0a    7409
    asm("mov.s              ecx, esi");                                      // 0x0075bf0c    8bce
    asm("call               ?ChangeStateToFindFoodToEat@Villager@@QAE_NXZ"); // 0x0075bf0e    e87dfaffff
    asm("pop                esi");                                           // 0x0075bf13    5e
    asm("ret");                                                              // 0x0075bf14    c3
    asm("_jmp_addr_0x0075bf15:");
    asm("xor.s              eax, eax");                                      // 0x0075bf15    33c0
    asm("pop                esi");                                           // 0x0075bf17    5e
    asm("ret");                                                              // 0x0075bf18    c3
    __builtin_unreachable();
}

bool32_t __fastcall EatFoodHeld__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x0075bf20    83ec0c
    asm("push               esi");                                           // 0x0075bf23    56
    asm("mov.s              esi, ecx");                                      // 0x0075bf24    8bf1
    asm("call               ?GetAmountOfFoodToEat@Villager@@QAEIXZ");        // 0x0075bf26    e8f5fcffff
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x0075bf2b    89442408
    asm("movsx              eax, word ptr [esi + 0x000000f4]");              // 0x0075bf2f    0fbf86f4000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075bf36    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x0075bf3e    89442404
    asm("{disp8} fild       qword ptr [esp + 0x08]");                        // 0x0075bf42    df6c2408
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x0075bf46    d95c2408
    asm("{disp8} fild       dword ptr [esp + 0x04]");                        // 0x0075bf4a    db442404
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x0075bf4e    d9442408
    asm("fcomp              st(1)");                                         // 0x0075bf52    d8d9
    asm("fnstsw             ax");                                            // 0x0075bf54    dfe0
    asm("test               ah, 0x01");                                      // 0x0075bf56    f6c401
    asm("{disp8} je         _jmp_addr_0x0075bf67");                          // 0x0075bf59    740c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075bf5b    8b4c2408
    asm("fstp               st(0)");                                         // 0x0075bf5f    ddd8
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x0075bf61    894c2404
    asm("{disp8} jmp        _jmp_addr_0x0075bf6b");                          // 0x0075bf65    eb04
    asm("_jmp_addr_0x0075bf67:");
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x0075bf67    d95c2404
    asm("_jmp_addr_0x0075bf6b:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x0075bf6b    d9442404
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075bf6f    e88c540400
    asm("mov.s              ecx, esi");                                      // 0x0075bf74    8bce
    asm("push               eax");                                           // 0x0075bf76    50
    asm("call               ?DropFood@Villager@@QAEGG@Z");                   // 0x0075bf77    e86452ffff
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x0075bf7c    d9442404
    asm("{disp8} fdiv       dword ptr [esp + 0x08]");                        // 0x0075bf80    d8742408
    asm("{disp8} mov        edx, dword ptr [esi + 0x28]");                   // 0x0075bf84    8b5628
    asm("{disp32} fmul      dword ptr [edx + 0x000002b8]");                  // 0x0075bf87    d88ab8020000
    asm("{disp32} fadd      dword ptr [esi + 0x000000e8]");                  // 0x0075bf8d    d886e8000000
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075bf93    d81598a38a00
    asm("{disp32} fst       dword ptr [esi + 0x000000e8]");                  // 0x0075bf99    d996e8000000
    asm("fnstsw             ax");                                            // 0x0075bf9f    dfe0
    asm("test               ah, 0x01");                                      // 0x0075bfa1    f6c401
    asm("{disp8} je         _jmp_addr_0x0075bfb4");                          // 0x0075bfa4    740e
    asm("fstp               st(0)");                                         // 0x0075bfa6    ddd8
    asm("{disp32} mov       dword ptr [esi + 0x000000e8], 0x00000000");      // 0x0075bfa8    c786e800000000000000
    asm("{disp8} jmp        _jmp_addr_0x0075bfcb");                          // 0x0075bfb2    eb17
    asm("_jmp_addr_0x0075bfb4:");
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075bfb4    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x0075bfba    dfe0
    asm("test               ah, 0x41");                                      // 0x0075bfbc    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075bfcb");                          // 0x0075bfbf    750a
    asm("{disp32} mov       dword ptr [esi + 0x000000e8], 0x3f800000");      // 0x0075bfc1    c786e80000000000803f
    asm("_jmp_addr_0x0075bfcb:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075bfcb    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075bfcd    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075bfcf    ff5048
    asm("test               eax, eax");                                      // 0x0075bfd2    85c0
    asm("{disp8} je         _jmp_addr_0x0075bfee");                          // 0x0075bfd4    7418
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x0075bfd6    d9442404
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075bfda    e821540400
    asm("mov                edx, dword ptr [esi]");                          // 0x0075bfdf    8b16
    asm("push               eax");                                           // 0x0075bfe1    50
    asm("mov.s              ecx, esi");                                      // 0x0075bfe2    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075bfe4    ff5248
    asm("mov.s              ecx, eax");                                      // 0x0075bfe7    8bc8
    asm("call               _jmp_addr_0x0073b5e0");                          // 0x0075bfe9    e8f2f5fdff
    asm("_jmp_addr_0x0075bfee:");
    asm("{disp32} fld       dword ptr [esi + 0x000000e8]");                  // 0x0075bfee    d986e8000000
    asm("pop                esi");                                           // 0x0075bff4    5e
    asm("add                esp, 0x0c");                                     // 0x0075bff5    83c40c
    asm("ret");                                                              // 0x0075bff8    c3
    __builtin_unreachable();
}

bool32_t __fastcall EatFood__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075c000    56
    asm("mov.s              esi, ecx");                                      // 0x0075c001    8bf1
    asm("call               ?EatFoodHeld@Villager@@QAEIXZ");                 // 0x0075c003    e818ffffff
    asm("fstp               st(0)");                                         // 0x0075c008    ddd8
    asm("mov                eax, dword ptr [esi]");                          // 0x0075c00a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075c00c    8bce
    asm("call               dword ptr [eax + 0x4a4]");                       // 0x0075c00e    ff90a4040000
    asm("neg                al");                                            // 0x0075c014    f6d8
    asm("push               0x1");                                           // 0x0075c016    6a01
    asm("mov.s              ecx, esi");                                      // 0x0075c018    8bce
    asm("sbb.s              eax, eax");                                      // 0x0075c01a    1bc0
    asm("and                eax, 0x31");                                     // 0x0075c01c    83e031
    asm("add                eax, 0x000000a3");                               // 0x0075c01f    05a3000000
    asm("push               eax");                                           // 0x0075c024    50
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x0075c025    e8960ae9ff
    asm("mov                eax, 0x00000001");                               // 0x0075c02a    b801000000
    asm("pop                esi");                                           // 0x0075c02f    5e
    asm("ret");                                                              // 0x0075c030    c3
    __builtin_unreachable();
}

bool32_t __fastcall GetFoodFromHome__8VillagerFUl(struct Villager* this, const void* edx, unsigned long param_1)
{
    asm("push               esi");                                           // 0x0075c040    56
    asm("push               edi");                                           // 0x0075c041    57
    asm("mov.s              edi, ecx");                                      // 0x0075c042    8bf9
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075c044    e81761ffff
    asm("mov.s              esi, eax");                                      // 0x0075c049    8bf0
    asm("test               esi, esi");                                      // 0x0075c04b    85f6
    asm("{disp8} je         _jmp_addr_0x0075c084");                          // 0x0075c04d    7435
    asm("mov                eax, dword ptr [esi]");                          // 0x0075c04f    8b06
    asm("push               0x0");                                           // 0x0075c051    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075c053    8bce
    asm("call               dword ptr [eax + 0x98]");                        // 0x0075c055    ff9098000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x0075c05b    8b4c240c
    asm("cmp.s              ecx, eax");                                      // 0x0075c05f    3bc8
    asm(".byte              0x72, 0xe");// {disp8} jb _jmp_addr_0x0075c071   // 0x0075c061    720e
    asm("mov                edx, dword ptr [esi]");                          // 0x0075c063    8b16
    asm("push               0x0");                                           // 0x0075c065    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075c067    8bce
    asm("call               dword ptr [edx + 0x98]");                        // 0x0075c069    ff9298000000
    asm("mov.s              ecx, eax");                                      // 0x0075c06f    8bc8
    asm("_jmp_addr_0x0075c071:");
    asm("push               ecx");                                           // 0x0075c071    51
    asm("push               0x0");                                           // 0x0075c072    6a00
    asm("push               esi");                                           // 0x0075c074    56
    asm("mov.s              ecx, edi");                                      // 0x0075c075    8bcf
    asm("call               ?GetResourceFrom@Villager@@QAEIPAVObject@@W4RESOURCE_TYPE@@F@Z");                          // 0x0075c077    e81473ffff
    asm("mov.s              ecx, edi");                                      // 0x0075c07c    8bcf
    asm("push               eax");                                           // 0x0075c07e    50
    asm("call               ?PickupFood@Villager@@QAEXF@Z");                 // 0x0075c07f    e80c54ffff
    asm("_jmp_addr_0x0075c084:");
    asm("pop                edi");                                           // 0x0075c084    5f
    asm("pop                esi");                                           // 0x0075c085    5e
    asm("ret                0x0004");                                        // 0x0075c086    c20400
    __builtin_unreachable();
}

bool32_t __fastcall EatFoodAtHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075c090    56
    asm("mov.s              esi, ecx");                                      // 0x0075c091    8bf1
    asm("push               edi");                                           // 0x0075c093    57
    asm("{disp32} mov       di, word ptr [esi + 0x000000f4]");               // 0x0075c094    668bbef4000000
    asm("call               ?GetAmountOfFoodToEat@Villager@@QAEIXZ");        // 0x0075c09b    e880fbffff
    asm("movsx              ecx, di");                                       // 0x0075c0a0    0fbfcf
    asm("sub.s              eax, ecx");                                      // 0x0075c0a3    2bc1
    asm("test               eax, eax");                                      // 0x0075c0a5    85c0
    asm("{disp8} jle        _jmp_addr_0x0075c0b1");                          // 0x0075c0a7    7e08
    asm("push               eax");                                           // 0x0075c0a9    50
    asm("mov.s              ecx, esi");                                      // 0x0075c0aa    8bce
    asm("call               ?GetFoodFromHome@Villager@@QAEIK@Z");            // 0x0075c0ac    e88fffffff
    asm("_jmp_addr_0x0075c0b1:");
    asm("mov.s              ecx, esi");                                      // 0x0075c0b1    8bce
    asm("call               ?EatFoodHeld@Villager@@QAEIXZ");                 // 0x0075c0b3    e868feffff
    asm("fstp               st(0)");                                         // 0x0075c0b8    ddd8
    asm("mov                edx, dword ptr [esi]");                          // 0x0075c0ba    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075c0bc    8bce
    asm("call               dword ptr [edx + 0x4a4]");                       // 0x0075c0be    ff92a4040000
    asm("mov                edx, dword ptr [esi]");                          // 0x0075c0c4    8b16
    asm("neg                al");                                            // 0x0075c0c6    f6d8
    asm("mov.s              ecx, esi");                                      // 0x0075c0c8    8bce
    asm("sbb.s              eax, eax");                                      // 0x0075c0ca    1bc0
    asm("and                eax, 0x000000ae");                               // 0x0075c0cc    25ae000000
    asm("add                eax, 0x26");                                     // 0x0075c0d1    83c026
    asm("push               eax");                                           // 0x0075c0d4    50
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075c0d5    ff92e8080000
    asm("pop                edi");                                           // 0x0075c0db    5f
    asm("mov                eax, 0x00000001");                               // 0x0075c0dc    b801000000
    asm("pop                esi");                                           // 0x0075c0e1    5e
    asm("ret");                                                              // 0x0075c0e2    c3
    __builtin_unreachable();
}

bool32_t __fastcall HomelessEatDinner__8VillagerFv(struct Villager* this)
{
    return 1;
}
