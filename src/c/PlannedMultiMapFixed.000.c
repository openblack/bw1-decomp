#include "PlannedMultiMapFixed.h"

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__20PlannedMultiMapFixed = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVPlannedMultiMapFixed@@",
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20PlannedMultiMapFixed = {
    .pTypeDescriptor = &__RTTITypeDescriptor__20PlannedMultiMapFixed,
    .numContainedBases = 0x00000003,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

float __fastcall GetScale__20PlannedMultiMapFixedFv(struct GameThingWithPos* this)
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
