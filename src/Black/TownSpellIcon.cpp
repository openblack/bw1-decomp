#include <re_common.h> /* For ARRAY_SIZE */

#include "GameTimeConstants.h"
#include "TownSpellIcon.h"

#include "Game.h"             /* For class GGame */
#include "GameOSFile.h"       /* For class GameOSFile */
#include "Player.h"           /* For class GPlayer */
#include "SpellSeedGraphic.h" /* For class SpellSeedGraphic */
#include "Town.h"             /* For class Town */
#include "TownStats.h"        /* For class TownStats */
#include "Villager.h"         /* For class Villager */
#include "VillagerInfo.h"     /* For class GVillagerInfo */

TownSpellIcon::~TownSpellIcon() {}

void TownSpellIcon::ToBeDeleted(int param_1)
{
	if (GetTown())
	{
		GetTown()->RemoveSpellIcon(this);
		town = NULL;
	}
	SpellIcon::ToBeDeleted(param_1);
}

GPlayer* TownSpellIcon::GetPlayer()
{
	if (GetTown())
	{
		return GetTown()->GetPlayer();
	}
	return NULL;
}

uint32_t TownSpellIcon::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 1;
}

WorshipSite* TownSpellIcon::GetWorshipSite()
{
	if (GetTown())
	{
		return GetTown()->GetWorshipSite();
	}
	return NULL;
}

uint32_t TownSpellIcon::Save(GameOSFile& file)
{
	if (SpellIcon::Save(file))
	{
		file.WritePtr(town.Get());
		return 1;
	}
	return 0;
}

uint32_t TownSpellIcon::Load(GameOSFile& file)
{
	if (SpellIcon::Load(file))
	{
		file.ReadPtr((GameThing**)&town);
		return 1;
	}
	return 0;
}

TownCentreSpellIcon::~TownCentreSpellIcon() {}

void TownCentreSpellIcon::SetToZero()
{
	for (int i = 0; i < POWER_UP_TYPE_LAST; i++)
	{
		PowerUpEnabled[i] = 0;
	}
}

void TownCentreSpellIcon::SetPULevel(POWER_UP_TYPE power_up_type, bool enabled)
{
	PowerUpEnabled[power_up_type] = enabled;
	UpdateGraphicWithPULevels();
}

void TownCentreSpellIcon::UpdateGraphicWithPULevels()
{
	POWER_UP_TYPE level = POWER_UP_TYPE_NONE;
	for (int i = 0; i < POWER_UP_TYPE_LAST; i++)
	{
		if (PowerUpEnabled[i])
		{
			level = (POWER_UP_TYPE)i;
		}
	}
	if (graphic.Get())
	{
		graphic.Get()->SetPowerUpType(level);
	}
}

void TownStats::SetToZero()
{
	int i;
	NumAdults = 0;
	NumChildren = 0;
	field_0x10 = 0;
	field_0x48 = 0;
	field_0x28 = 0;
	field_0x14 = 0;
	field_0x18 = 0;
	field_0x1c = 0;
	field_0x20 = 0;
	field_0x24 = 0;
	field_0x2c = 0;
	field_0x30 = 0;
	MaxVillagersInAbodes = 0;
	field_0x38 = 0;
	field_0x3c = 0;
	field_0x40 = 0;
	NumAbodesAdded = 0;
	VillagerSpaceLeftInAbodes = 0;
	field_0x50 = 0;
	field_0xd8 = 0;
	field_0xdc = 0;
	field_0xe0 = 0;
	FoodReqiredForDinner = 0;
	FoodUsed = 0;
	WoodUsed = 0;
	field_0xf0 = 0;
	field_0xf4 = 0;
	TotalFood = 0;
	TotalWood = 0;
	field_0x100 = 0;
	field_0x104 = 0;
	NumMales = 0;
	NumFemales = 0;
	for (i = 0; i < VILLAGER_DISCIPLE_LAST; i++)
	{
		NumDisciples[i] = 0;
	}
	for (i = 0; i < ABODE_NUMBER_LAST; i++)
	{
		NumAbodesOfNumber[i] = 0;
	}
	for (i = 0; i < ARRAY_SIZE(field_0x5c); i++)
	{
		field_0x5c[i] = 0;
	}
	for (i = 0; i < DEATH_REASON_LAST; i++)
	{
		Deaths[i] = 0;
	}
	for (i = 0; i < ARRAY_SIZE(field_0xa4); i++)
	{
		field_0xa4[i] = 0;
	}
}

void TownStats::Add(Villager* villager)
{
	if (villager->IsChild())
	{
		field_0x3c++;
		NumChildren++;
	}
	else
	{
		NumAdults++;
	}
	(&NumMales)[((const GVillagerInfo*)villager->info)->sex]++;
	FoodReqiredForDinner += ((const GVillagerInfo*)villager->info)->FoodReqiredForDinner;
	TotalFood += villager->ResourceHeld[RESOURCE_TYPE_FOOD];
	TotalWood += villager->ResourceHeld[RESOURCE_TYPE_WOOD];
	if (villager->Flags & VILLAGER_FLAG_DISCIPLE)
	{
		NumDisciples[villager->DiscipleType]++;
	}
}

void TownStats::Remove(Villager* villager)
{
	if (villager->IsChild())
	{
		NumChildren--;
	}
	else
	{
		NumAdults--;
	}
	(&NumMales)[((const GVillagerInfo*)villager->info)->sex]--;
	FoodReqiredForDinner -= ((const GVillagerInfo*)villager->info)->FoodReqiredForDinner;
	TotalFood -= villager->ResourceHeld[RESOURCE_TYPE_FOOD];
	TotalWood -= villager->ResourceHeld[RESOURCE_TYPE_WOOD];
	if (villager->Flags & VILLAGER_FLAG_DISCIPLE)
	{
		NumDisciples[villager->DiscipleType]--;
	}
}

void TownStats::ChildToAdult(Villager* param_1)
{
	if (param_1->GetAbode())
	{
		VillagerSpaceLeftInAbodes--;
		field_0x50++;
	}
	NumChildren--;
	NumAdults++;
}

void TownStats::VillagerMoveOutOfAbode(Villager* villager)
{
	if (villager->IsChild())
	{
		field_0x50++;
		field_0x30++;
	}
	else
	{
		VillagerSpaceLeftInAbodes++;
		field_0x30++;
	}
}

void TownStats::VillagerMoveIntoAbode(Villager* villager)
{
	if (villager->IsChild())
	{
		field_0x50--;
		field_0x30--;
	}
	else
	{
		VillagerSpaceLeftInAbodes--;
		field_0x30--;
	}
}

void TownStats::IncrementNumOfDisciples(VILLAGER_DISCIPLE param_1)
{
	if (param_1)
	{
		NumDisciples[param_1]++;
	}
}

void TownStats::DecrementNumOfDisciples(VILLAGER_DISCIPLE param_1)
{
	if (param_1)
	{
		NumDisciples[param_1]--;
	}
}

void TownStats::VillagerDead(Villager* villager, DEATH_REASON reason, GPlayer* player, float param_4)
{
	field_0xd8 = GGame::g_game->data.GameTurn;
	field_0xdc++;
	if (player == NULL)
	{
		player = &GGame::g_game->players[GGame::g_game->NeutralPlayerIndex];
	}
	field_0xa4[player->GetPlayerNumber()]++;
	Deaths[reason]++;
	field_0x5c[0]++;
	field_0x38++;
}

void TownStats::ProcessBirthday()
{
	if (field_0xf0 != 0.0f)
	{
		field_0xf0 = (FoodUsed / (NumAdults + NumChildren) + field_0xf0) * 0.5f;
	}
	else if (NumAdults + NumChildren != 0)
	{
		field_0xf0 = FoodUsed / (NumAdults + NumChildren);
	}
	if (field_0xf4 != 0.0f)
	{
		FoodUsed = 0.0f;
		field_0xf4 = (field_0xf4 + WoodUsed) * 0.5f;
		WoodUsed = 0.0f;
	}
	else
	{
		field_0xf4 = WoodUsed;
		FoodUsed = 0.0f;
		WoodUsed = 0.0f;
	}
}
