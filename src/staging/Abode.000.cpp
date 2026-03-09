#include "Abode.h"
#include "Object.h"
#include "Town.h"
#include "Game.h"

extern GGame* _game = (GGame*)0x00d0195c;

// win1.41 00401350 mac 1033b330 Abode::Abode(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
Abode::Abode(const MapCoords& coords, const GAbodeInfo* info, Town* _town, float y_angle, float scale, float food, int wood)
    : MultiMapFixed(coords, (const GMultiMapFixedInfo*)info, y_angle, scale, food, wood)
{
    SetToZero();
    if (_town)
    {
        _town->AddStructureToTown(this);
        index = town.payload->abode_list.count + 0xff;
    }

    // _game->map.field_0x8 |= 1;
    __asm mov eax, _game
    __asm or BYTE PTR [eax + 0x059bc + 0x4], 1

    FindNearestDrinkingWater(200.0f);
}
