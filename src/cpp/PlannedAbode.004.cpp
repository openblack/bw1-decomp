#include "PlannedAbode.h"

#include "AbodeInfo.h"

// win1.41 004061e0 mac 10007c40 PlannedAbode::GetAbodeType(void)
ABODE_TYPE PlannedAbode::GetAbodeType()
{
    return GetInfo()->abodeType;
}
