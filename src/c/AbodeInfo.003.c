#include "AbodeInfo.h"

#include "Object.h"

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassArray __RTTIBaseClassArray__4Base = {
    .arrayOfBaseClassDescriptors = {
        (void*)0x009a6308,//&__RTTIBaseClassDescriptor__4Base,
        NULL,
    }
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Base = {
  .signature = 0x00000000,
  .attributes = 0x00000000,
  .numBaseClasses = 0x00000001,
  .pBaseClassArray = &__RTTIBaseClassArray__4Base,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Base = {
  .signature = 0x00000000,
  .offset = 0x00000000,
  .cdOffset = 0x00000000,
  .pTypeDescriptor = &__RTTITypeDescriptor__4Base,
  .pClassDescriptor = &__RTTIClassHierarchyDescriptor__4Base,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Base = {
    .pTypeDescriptor = &__RTTITypeDescriptor__4Base,
    .numContainedBases = 0x00000000,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

const struct RTTICompleteObjectLocator* const p__RTTICompleteObjectLocator__4Base = &__RTTICompleteObjectLocator__4Base;

const struct BaseVftable __vt__4Base = {
    Serialise__4BaseFR7Archive,
    __dt__4BaseFUi,
    Delete__4BaseFv,
    ToBeDeleted__4BaseFi,
    Get3DSoundPos__4BaseFP7LHPoint,
    CleanUpForSerialisation__4BaseFv,
    Dump__4BaseFv,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GBaseInfo = {
    .pTypeDescriptor = &__RTTITypeDescriptor__9GBaseInfo,
    .numContainedBases = 0x00000001,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

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

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__18GMultiMapFixedInfo = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVGMultiMapFixedInfo@@",
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18GMultiMapFixedInfo = {
    .pTypeDescriptor = &__RTTITypeDescriptor__18GMultiMapFixedInfo,
    .numContainedBases = 0x00000003,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__10GAbodeInfo = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVGAbodeInfo@@",
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GAbodeInfo = {
    .pTypeDescriptor = &__RTTITypeDescriptor__10GAbodeInfo,
    .numContainedBases = 0x00000004,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassArray __RTTIBaseClassArray__10GAbodeInfo = {
    .arrayOfBaseClassDescriptors = {
        (void*)0x009a6368,
        &__RTTIBaseClassDescriptor__18GMultiMapFixedInfo,
        &__RTTIBaseClassDescriptor__11GObjectInfo,
        &__RTTIBaseClassDescriptor__9GBaseInfo,
        &__RTTIBaseClassDescriptor__4Base,
        NULL,
    }
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GAbodeInfo = {
  .signature = 0x00000000,
  .attributes = 0x00000000,
  .numBaseClasses = 0x00000005,
  .pBaseClassArray = &__RTTIBaseClassArray__10GAbodeInfo,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GAbodeInfo = {
  .signature = 0x00000000,
  .offset = 0x00000000,
  .cdOffset = 0x00000000,
  .pTypeDescriptor = &__RTTITypeDescriptor__10GAbodeInfo,
  .pClassDescriptor = &__RTTIClassHierarchyDescriptor__10GAbodeInfo,
};

void __cdecl crt_global_destruction_register_for_AbodeInfos__10GAbodeInfoFv(void)
{
    asm("push 0x004012e0");
    asm("call _atexit");
    // atexit(dynamic_atexit_destructor_for_AbodeInfos__10GAbodeInfoFv);
    __asm__("pop ecx");                      // 0x004012da    59
    __asm__("ret");                          // 0x004012db    c3
    // SEH?
    __asm__(".byte 0x90, 0x25, 0xa2, 0x03"); // 0x004012dc
    __builtin_unreachable();
}

void __cdecl dynamic_atexit_destructor_for_AbodeInfos__10GAbodeInfoFv(void)
{
    asm("{disp32} mov       cl, byte ptr [_abode_info_bool_00c3c680]");     // 0x004012e0    8a0d80c6c300
    asm("mov                al, 0x01");                                     // 0x004012e6    b001
    asm("test               al, cl");                                       // 0x004012e8    84c8
    asm("{disp8} jne        .L_jmp_addr_0x00401312");                         // 0x004012ea    7526
    asm("push               esi");                                          // 0x004012ec    56
    asm("or.s               cl, al");                                       // 0x004012ed    0ac8
    asm("push               edi");                                          // 0x004012ef    57
    asm("{disp32} mov       byte ptr [_abode_info_bool_00c3c680], cl");     // 0x004012f0    880d80c6c300
    asm("mov                esi, OFFSET ?AbodeInfos@GAbodeInfo@@2PAV1@A + 0x93 * 0x1c8;");      // 0x004012f6    be68ccc400
    asm("mov                edi, 0x93");                                    // 0x004012fb    bf93000000
    asm(".L_jmp_addr_0x00401300:");
    asm("sub                esi, 0x1c8");                                   // 0x00401300    81eec8010000
    asm("mov.s              ecx, esi");                                     // 0x00401306    8bce
    asm("call               _jmp_addr_0x00436960");                         // 0x00401308    e853560300
    asm("dec                edi");                                          // 0x0040130d    4f
    asm("{disp8} jne        .L_jmp_addr_0x00401300");                         // 0x0040130e    75f0
    asm("pop                edi");                                          // 0x00401310    5f
    asm("pop                esi");                                          // 0x00401311    5e
    asm(".L_jmp_addr_0x00401312:");
    asm("ret");                                                             // 0x00401312    c3
    __builtin_unreachable();
}

void __fastcall __dt__10GAbodeInfoFUi(struct Base* this, const void* edx, uint32_t param_1)
{
    asm("push               esi");                                          // 0x00401320    56
    asm("mov.s              esi, ecx");                                     // 0x00401321    8bf1
    asm("call               _jmp_addr_0x00436960");                         // 0x00401323    e838560300
    asm("test               byte ptr [esp + 0x08], 0x01");                  // 0x00401328    f644240801
    asm("{disp8} je         .L_jmp_addr_0x0040133d");                         // 0x0040132d    740e
    asm("push               0x000001c8");                                   // 0x0040132f    68c8010000
    asm("push               esi");                                          // 0x00401334    56
    asm("call               ??3Base@@SAXPAXK@Z");                         // 0x00401335    e836560300
    asm("add                esp, 0x08");                                    // 0x0040133a    83c408
    asm(".L_jmp_addr_0x0040133d:");
    asm("mov.s              eax, esi");                                     // 0x0040133d    8bc6
    asm("pop                esi");                                          // 0x0040133f    5e
}
