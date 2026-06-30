#include "Abode.h"

#include "AbodeInfo.h"
#include "chlasm/Enum.h"
#include "Creche.h"
#include "Field.h"
#include "Football.h"
#include "Game.h"
#include "GraveYard.h"
#include "SpellDispenser.h"
#include "StoragePit.h"
#include "Totem.h"
#include "Town.h"
#include "TownCentre.h"
#include "Windmill.h"
#include "Wonder.h"
#include "Workshop.h"

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
        index = town->abode_list.count - 1;
    }
    GGame::g_game->map.field_0x8 |= 1;
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

Abode* Abode::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, uint32_t param_6, uint32_t param_7, float food, int wood, int param_10)
{

  Abode* result = NULL;

  switch (info->abodeType) {
  case ABODE_TYPE_WINDMILL:
    result = Windmill::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_TOTEM:
    result = Totem::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_STORAGE_PIT:
    result = StoragePit::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_CRECHE:
    result = Creche::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_WORKSHOP:
    result = Workshop::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_FOOTBALL_PITCH:
    result = Football::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_GRAVEYARD:
    result = Graveyard::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_TOWN_CENTRE:
    result = TownCentre::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_SPELL_DISPENSER:
    result = SpellDispenser::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  case ABODE_TYPE_FIELD:
    return Field::Create(coords, (const GFieldTypeInfo*)info, town, y_angle, scale, wood);
  case ABODE_TYPE_WONDER:
    result = Wonder::Create(coords, info, town, y_angle, scale, food, wood);
    break;
  default:
    result = Abode::CreateWithoutSpecial(coords, info, town, y_angle, scale, food, wood);
    break;
  }

  if (result != NULL) {
    result->Init(param_10, param_6, param_7);
    result->CreateAbodeSurroundingObjects();
  }

  return result;
}
