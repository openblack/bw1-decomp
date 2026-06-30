#include "Abode.h"
#include "Town.h"
#include "AbodeInfo.h"

Abode* Abode::CastAbode()
{
    return this;
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

void Abode::SetToZero()
{
  field_0xb6 = 0;
  adult_count = 0;
  field_0xb7 = 0;
  field_0x94 = 0;
  resources[RESOURCE_TYPE_FOOD] = 0;
  resources[RESOURCE_TYPE_WOOD] = 0;
  smoke = NULL;
  destruction_mesh = NULL;
  field_0x7c = 0;
  field_0xb0 = 0;
  field_0xb5 = 0;
  field_0xb9 = 0;
}
