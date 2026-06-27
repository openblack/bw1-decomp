#include "Abode.h"
#include "Town.h"
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


Abode::Abode(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood)
    : MultiMapFixed(coords, info, y_angle, scale, food, wood)
    , drinking_water(0, 0, 0.0f)
    , town(NULL)
    , next(NULL)
    , villagers()
{
    SetToZero();
    if (town)
    {
        town->AddStructureToTown(this);
        index = town->abode_list.count + 0xff;
    }
    FindNearestDrinkingWater(200.0f);
}
