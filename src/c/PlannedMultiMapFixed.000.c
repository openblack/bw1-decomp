#include "PlannedMultiMapFixed.h"

float __fastcall GetScale__20PlannedMultiMapFixedFv(const struct GameThingWithPos* this)
{
    return ((const struct PlannedMultiMapFixed*)this)->scale;
}

void __fastcall SetScale__20PlannedMultiMapFixedFf(struct GameThingWithPos* this, const void* edx, float scale)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x004050d0    8b442404
    asm("{disp8} mov        dword ptr [ecx + 0x2c], eax");                   // 0x004050d4    89412c
    asm("ret                0x0004");                                        // 0x004050d7    c20400
    asm("call               dword ptr [?GetTransportInfo@LHConnection@@QAE?AW4LH_RETURN@@PAVLHTransportInfo@@H@Z]");               // 0x004050da    ff1570948a00
    __builtin_unreachable();
}
