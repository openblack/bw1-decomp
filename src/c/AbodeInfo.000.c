#include "AbodeInfo.h"

const float floats_0x008a99dc[] = {
    10.0f,
    365.25f,
    86400.0f,
    10.0f,
    1000.0f,
    512.0f,
};

struct RTTICompleteObjectLocator* const p__RTTICompleObjectLocator__10GAbodeInfo = &__RTTICompleObjectLocator__10GAbodeInfo;

const struct GMultiMapFixedInfoVftable __vt__10GAbodeInfo = {
    Serialise__4BaseFR7Archive,
    __dt__10GAbodeInfoFv,
    Delete__4BaseFi,
    ToBeDeleted__4BaseFi,
    Get3DSoundPos__4BaseFP7LHPoint,
    CleanUpForSerialisation__4BaseFv,
    Dump__4BaseFv,
    GetDebugText__11GObjectInfoCFv,
    GetDebugColor__9GBaseInfoCFv,
    GetBaseInfo__10GAbodeInfoFRUl,
    UpdateValue__9GBaseInfoFfUlUl,
    GetMesh__10GAbodeInfoCFv,
    GetMesh__11GObjectInfoCF10TRIBE_TYPE,
    GetAlignmentType__11GObjectInfoCFv,
    GetFoodType__11GObjectInfoCFv,
    IsOkToCreateAtPos__18GMultiMapFixedInfoCFRC9MapCoordsff,
    GetAbodeType__10GAbodeInfoCFv,
    GetAbodeNumber__10GAbodeInfoCFv,
};

// Inlined so that the first object file to be compiles (AbodeInfo.o is before Base.o) has these definitions first

void __fastcall Serialise__4BaseFR7Archive(struct Base* this, const void* edx, struct Archive* param_1)
{
}

void __fastcall Delete__4BaseFi(struct Base* this, const void* edx, int param_1)
{
  if (this)
  {
    // this->vftable->__dt(this, edx, 1);
    __asm__(
        "mov              eax, dword ptr [ecx]\n"            // 0x004011c4    8b01
        "push             0x1\n"                             // 0x004011c6    6a01
        "call             dword ptr [eax + 4]\n"             // 0x004011c8    ff5004
    );
  }
  __asm__("ret");                                            // 0x004011cb    c3
  // Mystery bytes
  __asm__(".byte 0x45, 0x16, 0xa1, 0x03");                   // 0x004011cc
  __builtin_unreachable();
}

// __attribute__((disable_tail_calls))
void __fastcall ToBeDeleted__4BaseFi(struct Base* this, const void* edx, int param_1)
{
  __asm__(
      "mov              eax, dword ptr [ecx]\n"              // 0x004011d0    8b01
      "call             dword ptr [eax + 8]\n"               // 0x004011d2    ff5008
  );
  // this->vftable->Delete(this, edx, param_1);
}

int __fastcall Get3DSoundPos__4BaseFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1)
{
  //return 0;

  asm(
    "xor.s            eax, eax\n"                          // 0x004011e0    33c0
    "ret              0x0004\n"                            // 0x004011e2    c20400
  );
  __builtin_unreachable();
}

void __fastcall CleanUpForSerialisation__4BaseFv(struct Base* this)
{
}

void __fastcall Dump__4BaseFv(struct Base* this)
{
}

struct Base* __fastcall __dt__4BaseFv(struct Base* this, const void* edx, uint8_t param_1)
{
    __asm__(
        "push             esi\n"                               // 0x00401210    56
        "mov.s            esi, ecx\n"                          // 0x00401211    8bf1
        "call             _jmp_addr_0x00436960\n"              // 0x00401213    e848570300
        "test             byte ptr [esp + 0x08], 0x01\n"       // 0x00401218    f644240801
        "{disp8} je       _jmp_addr_0x0040122a\n"              // 0x0040121d    740b
        "push             0x8\n"                               // 0x0040121f    6a08
        "push             esi\n"                               // 0x00401221    56
        "call             _jmp_addr_0x00436970\n"              // 0x00401222    e849570300
        "add              esp, 0x08\n"                         // 0x00401227    83c408
        "_jmp_addr_0x0040122a:\n"
        "mov.s            eax, esi\n"                          // 0x0040122a    8bc6
        "pop              esi\n"                               // 0x0040122c    5e
        "ret              0x0004\n"                            // 0x0040122d    c20400
    );
    __builtin_unreachable();
}

// void __fastcall UpdateValue__9GBaseInfoFfUlUl(struct GBaseInfo* this, const void* edx, float param_1, uint32_t param_2, uint32_t param_3)
// {
//     __asm__("ret");
//     __asm__("ret");
//     __asm__("ret");
//     __asm__("ret");
//     __asm__("ret");
// }

// uint32_t __fastcall GetMesh__10GAbodeInfoCFv(const struct GObjectInfo* this)
// {
//     __asm__("{disp32} mov     eax, dword ptr [ecx + 0x0000015c]");
//     __asm__("ret");

//     __builtin_unreachable();
// }
