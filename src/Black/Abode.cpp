#include "Abode.h"

#include "Lionhead/LH3DLib/development/LH3DSmoke.h"

#include "AbodeInfo.h"
#include "chlasm/Enum.h"
#include "Creche.h"
#include "Field.h"
#include "Football.h"
#include "FootpathNode.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GraveYard.h"
#include "Rand.h"
#include "SpellDispenser.h"
#include "StoragePit.h"
#include "Totem.h"
#include "Town.h"
#include "TownCentre.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "Windmill.h"
#include "Wonder.h"
#include "Workshop.h"

#define M_PI 3.14159265358979323846

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

void Abode::Init(int param_1, uint32_t food_amount, uint32_t wood_amount)
{
    AddResource(RESOURCE_TYPE_FOOD, food_amount, NULL, false, NULL, 0);
    AddResource(RESOURCE_TYPE_WOOD, wood_amount, NULL, false, NULL, 0);
    if (IsBuilt())
    {
        MakeFunctional();
    }
}

void Abode::CallVirtualFunctionsForCreation(const MapCoords& coords_)
{
    MultiMapFixed::CallVirtualFunctionsForCreation(coords_);
    LHPoint chimney_pos;
    if (game_3d_object->GetChimneyPos(&chimney_pos))
    {
        smoke = LH3DSmoke::Create(NULL);
        smoke->pos = chimney_pos;
        if (IsWorkshop())
        {
            smoke->color = LH3DColor(0x00808080);
        }
    }

    if (game_3d_object->IsStaticMorphable())
    {
        coords.altitude = max(game_3d_object->GetAltitudeFondation(), -max(0.8f, Get2DRadius() * 0.2f));
    }
    LHPoint position = GLandscape::ConvertMapCoordToLandscapePoint(coords_);
    game_3d_object->SetPosition(&position, GetYAngle(), GetScale());
}

void Abode::CreateAbodeSurroundingObjects()
{
    LHPoint point;
    if (((GAbodeInfo*)info)->didYouKnow != 0)
    {
        if (GetNewEp(ABODE_EPP_SCRIPT_HIGHLIGHT, &point))
        {
            // TODO
            return;
        }
    }
    if (GetNewEp(ABODE_EPP_LANTERN, &point))
    {
        // TODO
    }
}

void Abode::InsertMapObject()
{
    MultiMapFixed::InsertMapObject();
}

int Abode::GetRoomLeftForChildren()
{
    return ((GAbodeInfo*)info)->maxVillagersInAbode - (int)adult_count;
}

void Abode::MakeFunctional()
{
    Town* town = GetTown();
    if (town)
    {

        field_0x58 = (IsRepaired() == 0) << 2 | field_0x58 & 0xfb;
        if ((field_0x7c & 2) == 0)
        {
            field_0x7c |= 2;
            town->AddAbodeToTownStats(this);
        }
        if (GetRoomLeftForAdults() != 0)
        {
            town->AllVillagersCheckNeedNewAbode();
        }
        if (IsRepaired() && IsBuilt())
        {
            town->RemoveBuildingSite(this);
        }

        if (town->GetStoragePit() && town->GetStoragePit() != this && GGame::g_game->data.game_turn != 0)
        {
            GFootpath* footpath = new(__FILE__, __LINE__) GFootpath(NULL, NULL);
            MapCoords town_coords = GetArrivePos();
            StoragePit* storage_pit = town->GetStoragePit();
            MapCoords pit_coords = storage_pit->GetArrivePos();
            footpath->AddPos(town_coords);
            footpath->AddPos(pit_coords);

            GFootpathNode* end = NULL;
            for (GFootpathNode* walker = footpath->nodes; walker != NULL; walker = walker->next)
            {
                end = walker;
            }

            if (footpath->AttemptRerenderFootpathWithCreatureRP(footpath->nodes, end, NULL) == NULL)
            {
                footpath->ToBeDeleted(0);
            }
            else
            {
                AddFootpath(footpath);
                storage_pit->AddFootpath(footpath);
            }

            // FUN_00404960();
        }
    }
}

float Abode::CalculateScoreForAddingVillagerToAbode(Villager* villager)
{
    float score = 1.0f;
    if (!villager->IsChild())
    {
        int max_adults = ((GAbodeInfo*)info)->maxVillagersInAbode;
        if (max_adults == 0)
        {
            return 0.0f;
        }
        float adult_ratio = (float)adult_count / (float)max_adults;
        if (adult_ratio < 1.0f)
        {
            score = adult_ratio;
        }
    }
    else
    {
        int max_children = ((GAbodeInfo*)info)->maxChildrenInAbode;
        if (max_children == 0)
        {
            return 0.0f;
        }
        float child_ratio = (float)field_0xb7 / (float)max_children;
        if (child_ratio < 1.0f)
        {
           score = child_ratio;
        }
    }
    score = 1.0f - score;
    if (score > 0.0f)
    {
        Villager* villager_iter = villagers.head;
        float same_sex_count = 0.0f;
        while (villager_iter != NULL)
        {
            if (((GVillagerInfo*)villager_iter->info)->sex == ((GVillagerInfo*)villager->info)->sex)
            {
                same_sex_count += 1.0f;
            }
            villager_iter = villager_iter->next;
        }
        float sex_modifier = 1.0f;
        if (villagers.count != 0)
        {
            sex_modifier = (((1.0f - same_sex_count / (float)villagers.count) + 1.0f) * 0.5f);
        }
        float distance = GUtils::GetDistanceInMetres(coords, villager->coords);
        float distance_modifier = GUtils::GetDistanceModifier(distance, 500.0f);
        score = (distance_modifier + 1.0f) * 0.50f * sex_modifier * score;
    }
    return score;
}

TRIBE_TYPE Abode::GetTribeType()
{
    return town->tribe_type;
}

void Abode::FindNearestDrinkingWater(float max_dist)
{
    field_0x7c |= GUtils::FindNearestDrinkingWater(coords, drinking_water, max_dist) ? 1 : 0;
}

MapCoords Abode::GetPosOutside(float param_2, float param_3, float param_4)
{
    MapCoords coords = GetArrivePos();
    float fVar1 = GRand::GameFloatRand(2.0f * (float)M_PI / param_2, __FILE__, __LINE__);
    float fVar3 = GUtils::Get3DAngleFromXZ(coords, coords);
    float fVar2 = GRand::GameFloatRand(param_4, __FILE__, __LINE__);

    return coords + GUtils::GetPosFromAngle(fVar3 + fVar1 - 2.0f * (float)M_PI / (2.0f * param_2), fVar2 + param_3);
}
