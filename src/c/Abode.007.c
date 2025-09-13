#include "Abode.h"

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsWonder__5AbodeFv(struct GameThingWithPos* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x004061c0    8b4128
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000120]");             // 0x004061c3    8b9020010000
    asm("xor.s              ecx, ecx");                                      // 0x004061c9    33c9
    asm("cmp                edx, 0x00000100");                               // 0x004061cb    81fa00010000
    asm("sete               cl");                                            // 0x004061d1    0f94c1
    asm("mov.s              eax, ecx");                                      // 0x004061d4    8bc1
    asm("ret");                                                              // 0x004061d6    c3
    __builtin_unreachable();
}
