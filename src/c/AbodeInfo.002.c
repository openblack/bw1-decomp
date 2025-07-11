#include "AbodeInfo.h"
#include "SetupThing.h"



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
    return ((const struct GAbodeInfo*)this)->meshId;
}

enum ABODE_TYPE __fastcall GetAbodeType__10GAbodeInfoCFv(const struct GMultiMapFixedInfo* this)
{
    return ((const struct GAbodeInfo*)this)->abodeType;
}

enum ABODE_NUMBER __fastcall GetAbodeNumber__10GAbodeInfoCFv(const struct GMultiMapFixedInfo* this)
{
    return ((const struct GAbodeInfo*)this)->abodeNumber;
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
    __dt__10GAbodeInfoFUi,
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
