#include "AbodeInfo.h"
#include "SetupThing.h"

const float abode_info_float_0x008a99dc = 10.0f;
const float abode_info_num_days_in_year_0x008a99e0 = 365.25f;
const float abode_info_seconds_in_day_0x008a99e4 = 86400.0f;
const float abode_info_float_0x008a99e8 = 10.0f;
const float abode_info_float_0x008a99ec = 1000.0f;
const float abode_info_float_0x008a99f0 = 512.0f;

const struct RTTICompleteObjectLocator* const p__RTTICompleteObjectLocator__10GAbodeInfo = &__RTTICompleteObjectLocator__10GAbodeInfo;

const struct GMultiMapFixedInfoVftable __vt__10GAbodeInfo = {
    Serialise__4BaseFR7Archive,
    __dt__10GAbodeInfoFUi,
    Delete__4BaseFv,
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
