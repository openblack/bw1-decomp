#include "Abode.h"
#include "AbodeInfo.h"
#include "Object.h"
#include "Town.h"
#include "Game.h"

extern "C" GGame* game;

GAbodeInfo infossss[0x93];

// win1.41 00401350 mac 1033b330 Abode::Abode(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
Abode::Abode(const MapCoords& coords, const GAbodeInfo* info, Town* _town, float y_angle, float scale, float food, int wood)
    : MultiMapFixed(coords, (const GMultiMapFixedInfo*)info, y_angle, scale, food, wood)
{
    SetToZero();
    if (_town)
    {
        _town->AddStructureToTown(this);
        index = (uint8_t)town.payload->abode_list.count - 1;
    }

    game->map.field_0x8 |= 1;

    FindNearestDrinkingWater(200.0f);
}
