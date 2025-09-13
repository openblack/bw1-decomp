#include "PlannedAbode.h"

enum ABODE_TYPE __fastcall GetAbodeType__12PlannedAbodeFv(struct PlannedMultiMapFixed* this)
{
    asm("call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");                          // 0x004061e0    e8ebf4ffff
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000120]");             // 0x004061e5    8b8020010000
    asm("ret");                                                              // 0x004061eb    c3
    __builtin_unreachable();
}
