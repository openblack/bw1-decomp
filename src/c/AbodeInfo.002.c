#include "AbodeInfo.h"

__attribute__((section(".data$Z"))) int abode_info_bool_00c3c680 = 0;
__attribute__((section(".bss"))) float abode_info_float_0x00c3c684;
__attribute__((section(".bss"))) float abode_info_float_0x00c3c688;
__attribute__((section(".bss"))) float abode_info_float_0x00c3c68c;
__attribute__((section(".bss"))) struct GAbodeInfo AbodeInfos[0x93]; // 0x00c3c690-00c4cc68

const float abode_info_float_0x008a99dc = 10.0f;
const float abode_info_float_0x008a99e0 = 365.25f;
const float abode_info_float_0x008a99e4 = 86400.0f;
const float abode_info_float_0x008a99e8 = 10.0f;
const float abode_info_float_0x008a99ec = 1000.0f;
const float abode_info_float_0x008a99f0 = 512.0f;

uint32_t __fastcall GetMesh__10GAbodeInfoCFv(const struct GObjectInfo* this)
{
    __asm__("{disp32} mov     eax, dword ptr [ecx + 0x0000015c]"); // 0x00401240    8b815c010000
    __asm__("ret");                                                // 0x00401246    c3

    __builtin_unreachable();
}

enum ABODE_TYPE __fastcall GetAbodeType__10GAbodeInfoCFv(const struct GMultiMapFixedInfo* this)
{
  __asm__("{disp32} mov     eax, dword ptr [ecx + 0x00000120]");   // 0x00401250    8b8120010000
  __asm__("ret");                                                  // 0x00401256    c3

  __builtin_unreachable();
}

enum ABODE_NUMBER __fastcall GetAbodeNumber__10GAbodeInfoCFv(const struct GMultiMapFixedInfo* this)
{
  __asm__("{disp32} mov     eax, dword ptr [ecx + 0x00000124]");   // 0x00401260    8b8124010000
  __asm__("ret");                                                  // 0x00401266    c3

  __builtin_unreachable();
}

struct GBaseInfo* __fastcall GetBaseInfo__10GAbodeInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1)
{
  __asm__("{disp8} mov      eax, dword ptr [esp + 0x04]");         // 0x00401270    8b442404
  __asm__("mov              dword ptr [eax], 0x00000093");         // 0x00401274    c70093000000
  __asm__("mov              eax, OFFSET _AbodeInfos");             // 0x0040127a    b890c6c300
  __asm__("ret 0x0004");                                           // 0x0040127f    c20400

  __builtin_unreachable();
}

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
