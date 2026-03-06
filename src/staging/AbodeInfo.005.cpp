#include "AbodeInfo.h"

// win1.41 00405a60 mac inlined GAbodeInfo::GetDescription(void)
const char* GAbodeInfo::GetDescription()
{
    return NULL;
}

// win1.41 00405a70 mac 101ca0c0 GAbodeInfo::GetInfoFromText(char *)
int GAbodeInfo::GetInfoFromText(const char* text)
{
    return 0;
}

// win1.41 00405b30 mac 1006f680 GAbodeInfo::Find(TRIBE_TYPE, ABODE_NUMBER)
GAbodeInfo* GAbodeInfo::Find(TRIBE_TYPE tribe_type, ABODE_NUMBER abode_number)
{
    return NULL;
}
