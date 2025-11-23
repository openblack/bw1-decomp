#include "Villager.h"

const float villager_trader_num_days_in_year_0x0099aa50 = 365.25f;
const float villager_trader_seconds_in_day_0x0099aa54 = 86400.0f;
const float villager_trader_float0p7_0x0099aa58 = 0.7f;

uint32_t villager_trader_uint_0x00dcb160;
uint32_t villager_trader_uint_0x00dcb164;
float villager_trader_seconds_in_year_0x00dcb168;


void __cdecl globl_ct_0x0076b920(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x0076b920    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0076b926    b001
    asm("test               al, cl");                                        // 0x0076b928    84c8
    asm("{disp8} jne        _jmp_addr_0x0076b934");                          // 0x0076b92a    7508
    asm("or.s               cl, al");                                        // 0x0076b92c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0076b92e    880d34c9fa00
    asm("_jmp_addr_0x0076b934:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0076b940");   // 0x0076b934    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0076b940(void)
{
    asm("push               0x00407870");                                    // 0x0076b940    6870784000
    asm("call               _atexit");                                       // 0x0076b945    e8479e0500
    asm("pop                ecx");                                           // 0x0076b94a    59
}

void __cdecl globl_ct_0x0076b950(void)
{
    asm("{disp32} jmp       _FUN_0076b960__8VillagerFv");                    // 0x0076b950    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0076b960__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_trader_seconds_in_day_0x0099aa54]");   // 0x0076b960    d90554aa9900
    asm("{disp32} fmul dword ptr [_villager_trader_num_days_in_year_0x0099aa50]"); // 0x0076b966    d80d50aa9900
    asm("{disp32} fstp dword ptr [_villager_trader_seconds_in_year_0x00dcb168]");  // 0x0076b96c    d91d68b1dc00
}

bool32_t __fastcall ArrivesInAbodeToPickUpExcess__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall ArrivesInAbodeToTrade__8VillagerFv(struct Villager* this)
{
    return 1;
}

void __fastcall SetupFoodForWoodTrade__8VillagerFl(struct Villager* this, const void* edx, long param_1)
{
    return;
}

bool32_t __fastcall ExcessFood__8VillagerFv(struct Villager* this)
{
    return 1;
}

void __fastcall SetupWoodForFoodTrade__8VillagerFl(struct Villager* this, const void* edx, long param_1)
{
    return;
}

bool32_t __fastcall ExcessWood__8VillagerFv(struct Villager* this)
{
    return 1;
}
