#include "TownStats.h"

#include "Game.h"         /* For class GGame */
#include "Player.h"       /* For class GPlayer */
#include "Villager.h"     /* For class Villager */
#include "VillagerInfo.h" /* For class GVillagerInfo */

void TownStats::SetToZero()
{
	int i;
	NumAdults = 0;
	NumChildren = 0;
	NumAbodes = 0;
	NumWonders = 0;
	NumPlannedWonders = 0;
	NumPlannedBuildings = 0;
	NumBuildingSites = 0;
	NumCivicBuildings = 0;
	NumCivicBuildingSites = 0;
	NumPlannedCivicBuildings = 0;
	NumWonderSites = 0;
	TotalSpaceLeftInAbodes = 0;
	MaxVillagersInAbodes = 0;
	RecentDeaths = 0;
	NumChildrenAdded = 0;
	MaxChildrenInAbodes = 0;
	NumAbodesAdded = 0;
	VillagerSpaceLeftInAbodes = 0;
	ChildSpaceLeftInAbodes = 0;
	LastDeathTurn = 0;
	NumDeaths = 0;
	LastAbodeAddedTurn = 0;
	FoodReqiredForDinner = 0;
	FoodUsed = 0;
	WoodUsed = 0;
	AverageFoodUsed = 0;
	AverageWoodUsed = 0;
	TotalFood = 0;
	TotalWood = 0;
	TotalBuildingSiteCost = 0;
	NumWounded = 0;
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
	for (i = 0; i < TOWN_STATS_PLAYER_COUNT; i++)
	{
		DeathsByOwner[i] = 0;
	}
	for (i = 0; i < DEATH_REASON_LAST; i++)
	{
		Deaths[i] = 0;
	}
	for (i = 0; i < TOWN_STATS_PLAYER_COUNT + 1; i++)
	{
		DeathsByKiller[i] = 0;
	}
}

void TownStats::Add(Villager* villager)
{
	if (villager->IsChild())
	{
		NumChildrenAdded++;
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

void TownStats::ChildToAdult(Villager* villager)
{
	if (villager->GetAbode())
	{
		VillagerSpaceLeftInAbodes--;
		ChildSpaceLeftInAbodes++;
	}
	NumChildren--;
	NumAdults++;
}

void TownStats::VillagerMoveOutOfAbode(Villager* villager)
{
	if (villager->IsChild())
	{
		ChildSpaceLeftInAbodes++;
		TotalSpaceLeftInAbodes++;
	}
	else
	{
		VillagerSpaceLeftInAbodes++;
		TotalSpaceLeftInAbodes++;
	}
}

void TownStats::VillagerMoveIntoAbode(Villager* villager)
{
	if (villager->IsChild())
	{
		ChildSpaceLeftInAbodes--;
		TotalSpaceLeftInAbodes--;
	}
	else
	{
		VillagerSpaceLeftInAbodes--;
		TotalSpaceLeftInAbodes--;
	}
}

void TownStats::IncrementNumOfDisciples(VILLAGER_DISCIPLE disciple)
{
	if (disciple)
	{
		NumDisciples[disciple]++;
	}
}

void TownStats::DecrementNumOfDisciples(VILLAGER_DISCIPLE disciple)
{
	if (disciple)
	{
		NumDisciples[disciple]--;
	}
}

void TownStats::VillagerDead(Villager* villager, DEATH_REASON reason, GPlayer* player, float)
{
	LastDeathTurn = GGame::g_game->data.GameTurn;
	NumDeaths++;
	if (player == NULL)
	{
		player = &GGame::g_game->players[GGame::g_game->NeutralPlayerIndex];
	}
	DeathsByKiller[player->GetPlayerNumber()]++;
	Deaths[reason]++;
	DeathsByOwner[0]++;
	RecentDeaths++;
}

void TownStats::ProcessBirthday()
{
	if (AverageFoodUsed != 0.0f)
	{
		AverageFoodUsed = (FoodUsed / (NumAdults + NumChildren) + AverageFoodUsed) * 0.5f;
	}
	else if (NumAdults + NumChildren != 0)
	{
		AverageFoodUsed = FoodUsed / (NumAdults + NumChildren);
	}
	if (AverageWoodUsed != 0.0f)
	{
		FoodUsed = 0.0f;
		AverageWoodUsed = (AverageWoodUsed + WoodUsed) * 0.5f;
		WoodUsed = 0.0f;
	}
	else
	{
		AverageWoodUsed = WoodUsed;
		FoodUsed = 0.0f;
		WoodUsed = 0.0f;
	}
}
