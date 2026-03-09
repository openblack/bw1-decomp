#include "AbodeInfo.h"
#include "SetupThing.h"

extern struct GAbodeInfo AbodeInfos[0x93]; // 0x00c3c690-00c4cc68

// win1.41 00401240 mac 1019a370 GAbodeInfo::GetMesh() const
uint32_t GAbodeInfo::GetMesh() const
{
    return meshId;
}

// win1.41 00401250 mac 106fde70 GAbodeInfo::GetAbodeType() const
ABODE_TYPE GAbodeInfo::GetAbodeType() const
{
    return abodeType;
}

// win1.41 00401260 mac 100984c0 GAbodeInfo::GetAbodeNumber() const
ABODE_NUMBER GAbodeInfo::GetAbodeNumber() const
{
    return abodeNumber;
}

// win1.41 00401270 mac 103d3790 GAbodeInfo::GetBaseInfo(ulong&)
GBaseInfo* GAbodeInfo::GetBaseInfo(uint32_t& index)
{
    index = sizeof(AbodeInfos) / sizeof(AbodeInfos[0]);
    return AbodeInfos;
}
