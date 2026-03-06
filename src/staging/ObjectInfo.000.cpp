#include "ObjectInfo.h"

#include "Object.h"

// win1.41 00401290 mac 1016e3a0 GObjectInfo::GetMesh(TRIBE_TYPE) const
uint32_t GObjectInfo::GetMesh(TRIBE_TYPE tribe) const
{
    return 0;
}

// win1.41 004012a0 mac 1016de30 GObjectInfo::GetAlignmentType(void) const
ALIGNMENT_TYPE GObjectInfo::GetAlignmentType() const
{
    return ALIGNMENT_TYPE_LAST;
}

// win1.41 004012b0 mac 100627a0 GObjectInfo::GetFoodType(void) const
FOOD_TYPE GObjectInfo::GetFoodType() const
{
    return (FOOD_TYPE)0;
}

// win1.41 004012c0 mac 10511e08 GObjectInfo::GetDebugText(void)
const char* GObjectInfo::GetDebugText()
{
    return debugString;
}