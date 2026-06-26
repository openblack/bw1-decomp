#include "Abode.h"
#include "AbodeInfo.h"

Abode* Abode::CastAbode()
{
    return this;
}

bool32_t Abode::IsAbode()
{
    return 1;
}

Town* Abode::GetTown()
{
    return town;
}
