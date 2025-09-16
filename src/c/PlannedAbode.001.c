#include "PlannedAbode.h"

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__12PlannedAbode = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVPlannedAbode@@",
};

__attribute__((aligned(4)))
char debug_text_PlannedAbode[] = "Planned Abode\0";

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12PlannedAbode = {
    .pTypeDescriptor = &__RTTITypeDescriptor__12PlannedAbode,
    .numContainedBases = 0x00000004,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassArray __RTTIBaseClassArray__12PlannedAbode = {
    .arrayOfBaseClassDescriptors = {
        (void*)0x009a64b0,
        &__RTTIBaseClassDescriptor__20PlannedMultiMapFixed,
        &__RTTIBaseClassDescriptor__16GameThingWithPos,
        &__RTTIBaseClassDescriptor__9GameThing,
        &__RTTIBaseClassDescriptor__4Base,
        NULL,
    }
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12PlannedAbode = {
  .signature = 0x00000000,
  .attributes = 0x00000000,
  .numBaseClasses = 0x00000005,
  .pBaseClassArray = &__RTTIBaseClassArray__12PlannedAbode,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12PlannedAbode = {
  .signature = 0x00000000,
  .offset = 0x00000000,
  .cdOffset = 0x00000000,
  .pTypeDescriptor = &__RTTITypeDescriptor__12PlannedAbode,
  .pClassDescriptor = &__RTTIClassHierarchyDescriptor__12PlannedAbode,
};

struct Town* __fastcall GetTown__12PlannedAbodeFv(struct GameThing* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004050e0    8b4148
    asm("ret");                                                              // 0x004050e3    c3
    __builtin_unreachable();
}

uint32_t __fastcall GetSaveType__12PlannedAbodeFv(struct GameThing* this)
{
    return 0x61;
}

char* __fastcall GetDebugText__12PlannedAbodeFv(struct GameThing* this)
{
    asm("mov                eax, OFFSET _debug_text_PlannedAbode");          // 0x00405100    b81c809c00
    asm("ret");                                                              // 0x00405105    c3
    __builtin_unreachable();
}

void __fastcall __dt__12PlannedAbodeFUi(struct Base* this, const void* edx, uint32_t param_1)
{
    asm("push               esi");                                           // 0x00405110    56
    asm("mov.s              esi, ecx");                                      // 0x00405111    8bf1
    asm("call               _jmp_addr_0x0056fa80");                          // 0x00405113    e868a91600
    asm("test               byte ptr [esp + 0x08], 0x01");                   // 0x00405118    f644240801
    asm("{disp8} je         _jmp_addr_0x0040512a");                          // 0x0040511d    740b
    asm("push               0x4c");                                          // 0x0040511f    6a4c
    asm("push               esi");                                           // 0x00405121    56
    asm("call               ??3Base@@SAXPAXK@Z");                          // 0x00405122    e849180300
    asm("add                esp, 0x08");                                     // 0x00405127    83c408
    asm("_jmp_addr_0x0040512a:");
    asm("mov.s              eax, esi");                                      // 0x0040512a    8bc6
    asm("pop                esi");                                           // 0x0040512c    5e
    asm("ret                0x0004");                                        // 0x0040512d    c20400
    __builtin_unreachable();
}
