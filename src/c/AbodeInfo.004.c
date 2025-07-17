#include "AbodeInfo.h"

bool __fastcall IsOkToCreateAtPos__10GAbodeInfoCFRC9MapCoordsffP4Town(const struct GAbodeInfo* this, const void* edx, const struct MapCoords* coords, float param_2, float param_3, struct Town* town)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x00404b10    8b44240c
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00404b14    8b542408
    asm("push               eax");                                           // 0x00404b18    50
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00404b19    8b442414
    asm("push               edx");                                           // 0x00404b1d    52
    asm("mov                edx, dword ptr [ecx]");                          // 0x00404b1e    8b11
    asm("push               eax");                                           // 0x00404b20    50
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00404b21    ff522c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00404b24    8b4c2410
    asm("push               eax");                                           // 0x00404b28    50
    asm("call               _jmp_addr_0x00603860");                          // 0x00404b29    e832ed1f00
    asm("neg                eax");                                           // 0x00404b2e    f7d8
    asm("sbb.s              eax, eax");                                      // 0x00404b30    1bc0
    asm("neg                eax");                                           // 0x00404b32    f7d8
    asm("ret                0x0010");                                        // 0x00404b34    c21000
    __builtin_unreachable();
}
