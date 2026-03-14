#include "Abode.h"

#include "AbodeInfo.h"

// win1.41 004061c0 mac 1014d0e0 Abode::IsWonder(void)
bool32_tcorrect Abode::IsWonder()
{
    return ((GAbodeInfo*)info)->abodeType == ABODE_TYPE_WONDER;
}
