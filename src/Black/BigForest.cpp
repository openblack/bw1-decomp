#include "GameTimeConstants.h"
#include "BigForest.h"
#include "BigForestInfo.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Forest.h"
#include "InterfaceStatus.h" /* For class GInterfaceStatus */
#include "Villager.h"        /* For class Villager */
#include "Game.h"            /* For class GGame */
#include "Game3DObject.h"
#include "InterfaceStatus.h"
#include "MapCoords.h"
#include "Rand.h"
#include "Script.h"
#include "Setup.h"
#include "TreeInfo.h"
#include "Utils.h"
#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For TWO_PI */
#include <stdio.h>
#include <string.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For NEW */

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) < 190 ? (line) : (line) - 8)
#endif

GBigForestInfo GBigForestInfo::Infos[BIG_FOREST_INFO_LAST];

BigForest::BigForest(const MapCoords& coords, const GBigForestInfo* info, uint32_t forest_id, float y_angle,
                     float scale)
	: MultiMapFixed(coords, info, y_angle, scale, 0.0f, 0)
{
	GGame::g_game->GameLists.BigForests.AddToFirst(this);
	forest = NEW(51) Forest(Pos, 0);
	forest->BigForestObject = this;
}

BigForest::~BigForest() {}

void BigForest::ToBeDeleted(bool32_t delete_now)
{
	GGame::g_game->GameLists.BigForests.Remove(this);
	if (forest != NULL)
	{
		forest->BigForestObject = NULL;
	}
	MultiMapFixed::ToBeDeleted(delete_now);
}

BigForest* BigForest::Create(const MapCoords& coords, const GBigForestInfo* info, unsigned long forest_id,
                             float y_angle, float scale)
{
	BigForest* bigForest = NEW(79) BigForest(coords, info, forest_id, y_angle, scale);
	if (bigForest != NULL)
	{
		bigForest->CallVirtualFunctionsForCreation(coords);
		bigForest->WoodAmount = bigForest->GetScale() * (float)info->WoodValue;
	}
	return bigForest;
}

bool32_t BigForest::CreatureMustAvoid(Creature* creature)
{
	return IsOnFire();
}

void BigForest::Draw()
{
	MultiMapFixed::Draw();
}

uint32_t BigForest::SaveObject(LHOSFile& file, const MapCoords* origin)
{
	char text[200];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		if (origin != NULL)
		{
			Pos - *origin;
		}
		const GBigForestInfo* bigForestInfo = (const GBigForestInfo*)info;
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_NEW_BIG_FOREST),
		        Pos.ConvertToText(coordText), bigForestInfo - GBigForestInfo::Infos, 0, GetYAngle(), GetScale());
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return saved;
}

void BigForest::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	MultiMapFixed::CallVirtualFunctionsForCreation(Pos);
	Game3dObject->UpdateMelting();
	Game3dObject->SetDynamicLighting(false);
	Game3dObject->SetShadowOnTexture(true);
	Game3dObject->SetShadowOnTextureChroma(true);
	Game3dObject->SetCastDynamicShadow(false);
}

bool BigForest::InteractsWithPhysicsObjects()
{
	return false;
}

float BigForest::GetWoodValue()
{
	return GetLife() * WoodAmount;
}

uint32_t BigForest::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned)
{
	if (type == RESOURCE_TYPE_WOOD)
	{
		float fraction = (float)amount / GetLife();
		if (GetWoodValue() <= fraction)
		{
			uint32_t removed = (uint32_t)GetWoodValue();
			WoodAmount = 0;
			ToBeDeleted(false);
			return removed;
		}
		WoodAmount -= fraction;
		float woodValue = (float)((const GBigForestInfo*)info)->WoodValue;
		float expected = GetLife() * GetScale() * woodValue;
		if (fabs(GetWoodValue() - expected) > BIG_FOREST_RESCALE_THRESHOLD)
		{
			float value = (float)((const GBigForestInfo*)info)->WoodValue;
			float scale = GetWoodValue() / (GetLife() * value);
			SetScale(scale);
			AddTreeAround();
		}
		return amount;
	}
	return 0;
}

void BigForest::AddTreeAround()
{
	float radius = GetRadius();
	for (uint32_t attempt = 0; attempt < BIG_FOREST_TREE_ATTEMPTS; attempt++)
	{
		float     angle = GAME_FLOAT_RAND(178, TWO_PI);
		MapCoords pos = Pos + GUtils::GetPosFromAngle(angle, radius);
#ifdef VERSION_BW1WCI
		if (pos.IsLand() && Tree::IsOkToCreateAtPos(pos))
		{
			float targetScale = GAME_FLOAT_RAND(193, BIG_FOREST_TREE_SCALE_RANDOM);
			targetScale += BIG_FOREST_TREE_SCALE_BASE;
			Tree::Create(pos, &GTreeInfo::Infos[TREE_INFO_PINE], forest, targetScale, (GAME_FLOAT_RAND(194, TWO_PI)),
			             BIG_FOREST_TREE_INITIAL_SCALE);
			return;
		}
#else
		if (pos.IsLand())
		{
			Object* object = pos.FindType(OBJECT_TYPE_ANY, NULL);
			while (object != NULL)
			{
				if (object->Pos.GetDistance(pos) + object->GetRadius() < BIG_FOREST_TREE_CLEARANCE)
				{
					break;
				}
				object = pos.FindType(OBJECT_TYPE_ANY, object);
			}
			if (object == NULL)
			{
				float targetScale = GAME_FLOAT_RAND(193, BIG_FOREST_TREE_SCALE_RANDOM);
				targetScale += BIG_FOREST_TREE_SCALE_BASE;
				Tree::Create(pos, &GTreeInfo::Infos[TREE_INFO_PINE], forest, targetScale,
				             (GAME_FLOAT_RAND(194, TWO_PI)), BIG_FOREST_TREE_INITIAL_SCALE);
				return;
			}
		}
#endif
	}
}

MapCoords BigForest::GetArrivePos(Villager* villager)
{
	float angle = GUtils::Get3DAngleFromXZ(Pos, villager->Pos);
	float distance = GetRadius() * BIG_FOREST_ARRIVE_RADIUS_SCALE;
	return Pos + GUtils::GetPosFromAngle(angle, distance);
}

bool32_t BigForest::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	RemoveResource(RESOURCE_TYPE_WOOD, (uint32_t)(float)GTreeInfo::Infos[TREE_INFO_CONIFER].WoodValue, NULL, NULL);
	Tree* tree = Tree::Create(Pos, &GTreeInfo::Infos[TREE_INFO_CONIFER], forest, 1.0f, 0.0f, 1.0f);
	if (tree != NULL)
	{
		status->PlaceObjectInMagicHand(tree);
	}
	return false;
}

void BigForest::SaveAll(LHOSFile& file, const MapCoords& coords)
{
	for (BigForest* bigForest = GGame::g_game->GameLists.BigForests.Get(); bigForest != NULL;
	     bigForest = bigForest->next)
	{
		bigForest->SaveObject(file, &coords);
	}
}

bool32_t BigForest::Save(GameOSFile& file)
{
	if (MultiMapFixed::Save(file))
	{
		file.WritePtr(forest);
		file.WriteIt(WoodAmount);
		return true;
	}
	return false;
}

bool32_t BigForest::Load(GameOSFile& file)
{
	if (MultiMapFixed::Load(file))
	{
		file.ReadPtr((GameThing**)&forest);
		file.ReadIt(WoodAmount);
		return true;
	}
	return false;
}

uint32_t BigForest::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	if (status->GetPlayer() == villager->GetPlayer())
	{
		return VILLAGER_DISCIPLE_FORESTER;
	}
	return VILLAGER_DISCIPLE_NONE;
}

void BigForest::CreateCollideData()
{
	MultiMapFixed::ReleaseCollideData();
}
