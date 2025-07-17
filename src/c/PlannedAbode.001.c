#include "PlannedAbode.h"

struct PlannedAbode* __fastcall __ct__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct PlannedAbode* this, const void* edx, const struct MapCoords* coords, const struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5) 
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00405080    8b442414
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00405084    8b542408
    asm("push               esi");                                           // 0x00405088    56
    asm("push               eax");                                           // 0x00405089    50
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x0040508a    8b44240c
    asm("mov.s              esi, ecx");                                      // 0x0040508e    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x00405090    8b4c2418
    asm("push               ecx");                                           // 0x00405094    51
    asm("push               edx");                                           // 0x00405095    52
    asm("push               eax");                                           // 0x00405096    50
    asm("mov.s              ecx, esi");                                      // 0x00405097    8bce
    asm("call               @__ct__20PlannedMultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfoff@24");                          // 0x00405099    e8e2362400
    asm("{disp8} mov        dword ptr [esi + 0x48], 0x00000000");            // 0x0040509e    c7464800000000
    asm("mov                dword ptr [esi], 0x008aa3bc");                   // 0x004050a5    c706bca38a00
    asm("mov.s              eax, esi");                                      // 0x004050ab    8bc6
    asm("pop                esi");                                           // 0x004050ad    5e
    asm("ret                0x0014");                                        // 0x004050ae    c21400
    __builtin_unreachable();
}
