#include "ObjectInfo.h"

#include "Object.h"

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__11GObjectInfo = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVGObjectInfo@@",
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GObjectInfo = {
    .pTypeDescriptor = &__RTTITypeDescriptor__11GObjectInfo,
    .numContainedBases = 0x00000002,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetMesh__11GObjectInfoCF10TRIBE_TYPE(const struct GObjectInfo* this, const void* edx, enum TRIBE_TYPE tribe)
{
    return 0;
}

enum ALIGNMENT_TYPE __fastcall GetAlignmentType__11GObjectInfoCFv(const struct GObjectInfo* this)
{
    __asm__("mov     eax, dword ptr [ecx + 0x14]"); // 0x004012a0    8b4114
    __asm__("ret");                                 // 0x004012a3    c3
  
    // SEH code path?
    __asm__("mov   eax, 0xfffff9cc");               // 0x004012a4    b8ccf9ffff
    __asm__("pop   ecx");                           // 0x004012a9    59
    __asm__("add.s eax, ecx");                      // 0x004012aa    03c1
    __asm__("mov   eax, dword ptr [eax]");          // 0x004012ac    8b00
    __asm__("jmp   eax");                           // 0x004012ae    ffe0

    __builtin_unreachable();
}

enum FOOD_TYPE __fastcall GetFoodType__11GObjectInfoCFv(const struct GObjectInfo* this)
{
    __asm__("{disp8} mov      eax, dword ptr [ecx + 0x70]"); // 0x004012b0    8b4170
    __asm__("ret");                                          // 0x004012b3    c3
    
    // SEH code path?
    __asm__("mov   eax, 0xfffffa5c");                        // 0x004012b4    b85cfaffff
    __asm__("pop   ecx");                                    // 0x004012b9    59
    __asm__("add.s eax, ecx");                               // 0x004012ba    03c1
    __asm__("mov   eax, dword ptr [eax]");                   // 0x004012bc    8b00
    __asm__("jmp   eax");                                    // 0x004012be    ffe0
    __builtin_unreachable();
}

const char* __fastcall GetDebugText__11GObjectInfoCFv(const struct GBaseInfo* this)
{
    return ((const struct GObjectInfo*)this)->debugString;
}