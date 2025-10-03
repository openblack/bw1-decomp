#include "SpecialVillager.h"

uint32_t __fastcall GetSaveType__15SpecialVillagerFv(struct GameThing* this)
{
    return 0x76;
}

char* __fastcall GetDebugText__15SpecialVillagerFv(struct GameThing* this)
{
    // FIXME: clang doesn't output correct assemly yet
    // return (char*)debug_text_SpecialVillager;
    asm("mov  eax, 0x00bee13c");  // 0x00560fd0    b83ce1be00
    asm("ret");                   // 0x00560fd5    c3
    __builtin_unreachable();
}

void __fastcall __dt__15SpecialVillagerFv(struct Base* this, const void* edx, uint32_t param_1)
{
    asm("push               esi");                                            // 0x00560fe0    56
    asm("mov.s              esi, ecx");                                       // 0x00560fe1    8bf1
    asm("call               _jmp_addr_0x0071f170");                           // 0x00560fe3    e888e11b00
    asm("test               byte ptr [esp + 0x08], 0x01");                    // 0x00560fe8    f644240801
    asm("{disp8} je         _jmp_addr_0x00560ffd");                           // 0x00560fed    740e
    asm("push               0x00000134");                                     // 0x00560fef    6834010000
    asm("push               esi");                                            // 0x00560ff4    56
    asm("call               ??3Base@@SAXPAXK@Z");                           // 0x00560ff5    e87659edff
    asm("add                esp, 0x08");                                      // 0x00560ffa    83c408
    asm("_jmp_addr_0x00560ffd:");
    asm("mov.s              eax, esi");                                       // 0x00560ffd    8bc6
    asm("pop                esi");                                            // 0x00560fff    5e
    asm("ret                0x0004");                                         // 0x00561000    c20400
    __builtin_unreachable();
}
