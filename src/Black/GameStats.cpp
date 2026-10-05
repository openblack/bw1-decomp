#include <float.h> /* For FLT_MAX */

// The FLT_MAX constant of CellSize.h. That header cannot be included here: its fabricated GetCellSize() would put
// CellSize into this unit's .rdata, which only holds MaxFloat.
const float MaxFloat = FLT_MAX;

const float BeliefStatsScale = 1000.0f;

#include "GameTimeConstants.h"
#include "GameStats.h"

#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strcat, strcpy, strlen */
#include <time.h>   /* For time */

#include <Lionhead/LHLib/ver5.0/LHListHead.h>        /* For LHListHeadTail */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>        /* For LHListNode */
#include <Lionhead/LHLib/ver5.0/LHWin.h>             /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>         /* For LHSPrintf */
#include <Lionhead/LHLog/ver4.0/LHVersion.h>         /* For LHVersion */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h> /* For LHSession */

#include "ColourConstants.h" /* For White */

#include "Abode.h"
#include "Alignment.h"
#include "Creature.h"
#include "CreaturePhysical.h"
#include "Game.h"
#include "GameOSFile.h"
#include "GameStatsList.h"
#include "HelpProfile.h"
#include "LHNetBase.h"
#include "Player.h"
#include "Rand.h"
#include "Script.h"
#include "ScriptDLL.h"
#include "Town.h"
#include "Artifact.h"

#if defined(VERSION_BW1W100)
#define GAME_STATS_SOURCE_FILE "C:\\dev\\black\\GameStats.cpp"
#elif defined(VERSION_BW1W110)
#define GAME_STATS_SOURCE_FILE "C:\\dev\\Black\\GameStats.cpp"
#else
#define GAME_STATS_SOURCE_FILE "C:\\dev\\MP\\Black\\GameStats.cpp"
#endif

const uint32_t   GameStats::UpdateInterval = 10;
uint32_t         GameStats::StatsVersion = 113;
uint32_t         GameStats::TotalLinesOfCodeExecuted = 0;
float            GameStats::MaxFrameRate = 0.0f;
float            GameStats::MinFrameRate = 0.0f;
uint32_t         GameStats::NumBaseAllocations = 0;
time_t           GameStats::StartTime = 0;
uint32_t         GameStats::NumTownsAtStart = 0;
uint32_t         GameStats::NumPlayersThatHaveLeftTheGame = 0;
GameStatsPackage GameStats::Package;

GameStats::GameStats()
{
	SetToZero();
}

GameStats::~GameStats() {}

void GameStats::Init(GPlayer& player)
{
	SetPlayer(&player);
	StartAlignment = player.GetAlignmentValue();
	StartCreatureAlignment = player.creature.Get() != NULL ? player.creature.Get()->alignment->value : 0.0f;
	time(&StartTime);
	NumTownsAtStart = GGame::g_game->GameLists.TownList.count;
}

void GameStats::SetToZero()
{
	Player = NULL;
	NumPlayersThatHaveLeftTheGame = 0;
	Position = 0;
	LossReason = 0;
	TotalBirths = 0;
	TotalDeaths = 0;
	MaxTotalPopulation = 0;
	MaxMalePopulation = 0;
	MaxFemalePopulation = 0;
	MinTotalPopulation = -1;
	MinMalePopulation = -1;
	MinFemalePopulation = -1;
	TotalPeopleConverted = 0;
	TotalVillagerSatisfaction = 0.0f;
	NumVillagerSatisfactionSamples = 0;
	TotalBuildingsBuilt = 0;
	TotalAbodesBuilt = 0;
	TotalCivicBuildingsBuilt = 0;
	TotalWondersBuilt = 0;
	NumDiscipleFarmers = 0;
	NumDiscipleForesters = 0;
	NumDiscipleFishermen = 0;
	NumDiscipleBuilders = 0;
	NumDiscipleBreeders = 0;
	NumDiscipleTraders = 0;
	NumDiscipleMissionaries = 0;
	NumDiscipleCraftsmen = 0;
	FoodUsed = 0;
	WoodUsed = 0;
	NumGodsDefeated = 0;
	StartAlignment = 0.0f;
	VillagersKilled = 0;
	MaxTotalBelief = 0.0f;
	MinTotalBelief = MaxFloat;
	StartCreatureSize = 0.0f;
	StartCreatureAlignment = 0.0f;
	BuildingsDestroyed = 0;
	TotalLinesOfCodeExecuted = 0;
	MaxFrameRate = 0.0f;
	MinFrameRate = 0.0f;
	NumBaseAllocations = 0;
	StartTime = 0;
	NumFireballCast = 0;
	NumFireballPU1Cast = 0;
	NumFireballPU2Cast = 0;
	NumLightningCast = 0;
	NumLightningPU1Cast = 0;
	NumLightningPU2Cast = 0;
	NumExplosionCast = 0;
	NumExplosionPU1Cast = 0;
	NumExplosionPU2Cast = 0;
	NumHealCast = 0;
	NumHealPU1Cast = 0;
	NumTeleportCast = 0;
	NumMagicForestCast = 0;
	NumMagicFoodCast = 0;
	NumMagicFoodPU1Cast = 0;
	NumStormWindRainCast = 0;
	NumStormWindRainLightningCast = 0;
	NumTornadoCast = 0;
	NumMagicShieldCast = 0;
	NumPhysicalShieldCast = 0;
	NumMagicWoodCast = 0;
	NumMagicWaterCast = 0;
	NumMagicWaterPU1Cast = 0;
	NumFlockFlyingCast = 0;
	NumFlockGroundCast = 0;
	NumCreatureFreezeCast = 0;
	NumCreatureSmallCast = 0;
	NumCreatureBigCast = 0;
	NumCreatureWeakCast = 0;
	NumCreatureStrongCast = 0;
	NumCreatureFatCast = 0;
	NumCreatureThinCast = 0;
	NumCreatureInvisibleCast = 0;
	NumCreatureCompassionCast = 0;
	NumCreatureAngryCast = 0;
	NumCreatureItchyCast = 0;
	TotalChantsUsed = 0.0f;
	TotalNumSacrifices = 0;
	TownStats.SetToZero();
	NumTownsAtStart = 0;
}

void GameStats::TownStatsStructure::SetToZero()
{
	LastUpdateTurn = 0;
	FinalTotalPopulation = 0;
	FinalMalePopulation = 0;
	FinalFemalePopulation = 0;
	FinalTotalPopulationCapacity = 0;
	TownsOwned = 0;
	TotalBuildings = 0;
	TotalAbodes = 0;
	TotalCivicBuildings = 0;
	TotalWonders = 0;
}

void GameStats::ClearAll()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		player->game_stats->SetToZero();
		player->game_stats->SetPlayer(player);
	}
}

bool32_t GameStats::TownStatsStructure::IsValid()
{
	if (LastUpdateTurn == GGame::g_game->data.GameTurn && LastUpdateTurn > 0)
	{
		return true;
	}
	return false;
}

void GameStats::FillInTownStatsStructure()
{
	TownStats.SetToZero();
	for (Town* town = GetPlayer()->towns.Get(); town != NULL; town = town->next)
	{
		TownStats.FinalTotalPopulation += town->stats.GetPopulation();
		TownStats.FinalMalePopulation += town->stats.NumMales;
		TownStats.FinalFemalePopulation += town->stats.NumFemales;
		TownStats.FinalTotalPopulationCapacity += town->stats.MaxVillagersInAbodes;
		TownStats.FinalTotalPopulationCapacity += town->stats.field_0x40;
		TownStats.TownsOwned++;
		TownStats.TotalCivicBuildings += town->stats.field_0x1c;
		TownStats.TotalAbodes += town->stats.field_0x10;
		TownStats.TotalBuildings += TownStats.TotalAbodes + TownStats.TotalCivicBuildings;
		TownStats.TotalWonders += town->stats.NumAbodesOfNumber[ABODE_NUMBER_WONDER];
	}
	TownStats.LastUpdateTurn = GGame::g_game->data.GameTurn;
}

uint32_t GameStats::GetFinalTotalPopulation()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.FinalTotalPopulation;
}

uint32_t GameStats::GetFinalMalePopulation()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.FinalMalePopulation;
}

uint32_t GameStats::GetFinalFemalePopulation()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.FinalFemalePopulation;
}

uint32_t GameStats::GetFinalTotalPopulationCapacity()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.FinalTotalPopulationCapacity;
}

uint32_t GameStats::GetTownsOwned()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.TownsOwned;
}

uint32_t GameStats::GetTotalBuildings()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.TotalBuildings;
}

uint32_t GameStats::GetTotalAbodes()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.TotalAbodes;
}

uint32_t GameStats::GetTotalCivicBuildings()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.TotalCivicBuildings;
}

uint32_t GameStats::GetTotalWonders()
{
	if (!TownStats.IsValid())
	{
		FillInTownStatsStructure();
	}
	return TownStats.TotalWonders;
}

float GameStats::GetAlignmentChange()
{
	return GetPlayer()->GetAlignmentValue() - StartAlignment;
}

float GameStats::GetFinalTotalBelief()
{
	float total = 0.0f;
	for (LHLinkedNode<Town*>* node = GGame::g_game->GameLists.TownList.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		total += node->payload->GetBeliefInPlayer(GetPlayer());
	}
	return BeliefStatsScale * total;
}

float GameStats::GetFinalAreaOfInfluence()
{
	return GetPlayer()->InfluencePower;
}

float GameStats::GetCreatureGrowth()
{
	if (GetPlayer() != NULL && GetPlayer()->GetCreature() != NULL && StartCreatureSize > 0.0f)
	{
		return GetPlayer()->GetCreature()->GetSize() / StartCreatureSize - 1.0f;
	}
	return 0.0f;
}

float GameStats::GetCreatureAlignmentChange()
{
	if (GetPlayer() != NULL && GetPlayer()->GetCreature() != NULL)
	{
		return GetPlayer()->GetCreature()->alignment->value - StartCreatureAlignment;
	}
	return 0.0f;
}

void GameStats::AddToTotalLinesOfCodeExecuted()
{
	double lines = NumTownsAtStart * 10130.0;
	TotalLinesOfCodeExecuted += (uint32_t)(lines + GRand::LocalRand((long)(lines * 0.2)));
}

uint32_t GameStats::GetTimePlayed()
{
	return GGame::g_game->data.GameTurn / 10;
}

uint32_t GameStats::GetInstructionCount()
{
	return GScript::g_scriptDLL->GetScriptInstructionCount();
}

uint32_t GameStats::GetDistanceDragged()
{
	return GGame::g_game->help_profile->accumulators[33].GetTotal() * 3.0f;
}

uint32_t GameStats::GetTimeLookingAtSky()
{
	return GGame::g_game->help_profile->accumulators[46].GetTotal();
}

uint32_t GameStats::GetTimeLookingAtGround()
{
	return GGame::g_game->help_profile->accumulators[44].GetTotal();
}

uint32_t GameStats::GetGesturesDone()
{
	return GGame::g_game->help_profile->accumulators[24].GetTotal();
}

uint32_t GameStats::GetZoomCount()
{
	return GGame::g_game->help_profile->accumulators[29].GetTotal() * 9.0f;
}

uint32_t GameStats::GetRotateCount()
{
	return GGame::g_game->help_profile->accumulators[25].GetTotal();
}

uint32_t GameStats::GetPitchCount()
{
	return GGame::g_game->help_profile->accumulators[28].GetTotal();
}

uint32_t GameStats::GetTotalInterfaceActions()
{
	return GGame::g_game->help_profile->accumulators[43].GetTotal();
}

uint32_t GameStats::GetTotalObjectsThrown()
{
	return GGame::g_game->help_profile->accumulators[4].GetTotal();
}

uint32_t GameStats::GetTotalThingsPickedUp()
{
	return GGame::g_game->help_profile->accumulators[2].GetTotal();
}

uint32_t GameStats::GetNumFightAttacks()
{
	return GGame::g_game->help_profile->accumulators[37].GetTotal();
}

uint32_t GameStats::GetNumFightBlocks()
{
	return GGame::g_game->help_profile->accumulators[36].GetTotal();
}

uint32_t GameStats::GetNumFightSteps()
{
	return GGame::g_game->help_profile->accumulators[39].GetTotal();
}

uint32_t GameStats::GetCreatureAge()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->GetAge();
	}
	return 0;
}

float GameStats::GetCreatureAlignment()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->alignment->value;
	}
	return 0.0f;
}

uint32_t GameStats::GetCreatureNumPeopleKilled()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->NumPeopleKilled;
	}
	return 0;
}

uint32_t GameStats::GetCreatureNumAnimalsKilled()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->NumAnimalsKilled;
	}
	return 0;
}

uint32_t GameStats::GetCreatureNumCreaturesKilled()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->NumCreaturesKilled;
	}
	return 0;
}

uint32_t GameStats::GetCreatureNumBattlesFought()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->NumBattlesFought;
	}
	return 0;
}

uint32_t GameStats::GetCreatureNumBattlesWon()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->NumBattlesWon;
	}
	return 0;
}

float GameStats::GetCreatureDamage()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return (1.0f - creature->GetLife()) * 100.0f;
	}
	return 0.0f;
}

float GameStats::GetCreatureHunger()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return (1.0f - creature->physical->GetEnergy()) * 100.0f;
	}
	return 0.0f;
}

float GameStats::GetCreatureTiredness()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->physical->GetExhaustion() * 100.0f;
	}
	return 0.0f;
}

uint32_t GameStats::GetCreatureNumPoos()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->NumPoos;
	}
	return 0;
}

uint32_t GameStats::GetCreatureNumMushroomsEaten()
{
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		return creature->NumMushroomsEaten;
	}
	return 0;
}

uint32_t GameStats::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadPtr((GameThing**)&Player);
		file.ReadIt(NumPlayersThatHaveLeftTheGame);
		file.ReadIt(Position);
		file.ReadIt(LossReason);
		file.ReadIt(TownStats);
		file.ReadIt(TotalBirths);
		file.ReadIt(TotalDeaths);
		file.ReadIt(MaxTotalPopulation);
		file.ReadIt(MaxMalePopulation);
		file.ReadIt(MaxFemalePopulation);
		file.ReadIt(MinTotalPopulation);
		file.ReadIt(MinMalePopulation);
		file.ReadIt(MinFemalePopulation);
		file.ReadIt(TotalPeopleConverted);
		file.ReadIt(TotalVillagerSatisfaction);
		file.ReadIt(NumVillagerSatisfactionSamples);
		file.ReadIt(TotalBuildingsBuilt);
		file.ReadIt(TotalAbodesBuilt);
		file.ReadIt(TotalCivicBuildingsBuilt);
		file.ReadIt(TotalWondersBuilt);
		file.ReadIt(NumDiscipleFarmers);
		file.ReadIt(NumDiscipleForesters);
		file.ReadIt(NumDiscipleFishermen);
		file.ReadIt(NumDiscipleBuilders);
		file.ReadIt(NumDiscipleBreeders);
		file.ReadIt(NumDiscipleTraders);
		file.ReadIt(NumDiscipleMissionaries);
		file.ReadIt(NumDiscipleCraftsmen);
		file.ReadIt(FoodUsed);
		file.ReadIt(WoodUsed);
		file.ReadIt(InfluenceGraph);
		file.ReadIt(PopulationGraph);
		file.ReadIt(NumGodsDefeated);
		file.ReadIt(StartAlignment);
		file.ReadIt(VillagersKilled);
		file.ReadIt(MaxTotalBelief);
		file.ReadIt(MinTotalBelief);
		file.ReadIt(StartCreatureSize);
		file.ReadIt(StartCreatureAlignment);
		file.ReadIt(BuildingsDestroyed);
		file.ReadIt(field_0x1084);
		file.ReadIt(field_0x1088);
		file.ReadIt(field_0x108c);
		file.ReadIt(TotalLinesOfCodeExecuted);
		file.ReadIt(MaxFrameRate);
		file.ReadIt(MinFrameRate);
		file.ReadIt(NumBaseAllocations);
		file.ReadIt(StartTime);
		file.ReadIt(StatsVersion);
		file.ReadIt(NumFireballCast);
		file.ReadIt(NumFireballPU1Cast);
		file.ReadIt(NumFireballPU2Cast);
		file.ReadIt(NumLightningCast);
		file.ReadIt(NumLightningPU1Cast);
		file.ReadIt(NumLightningPU2Cast);
		file.ReadIt(NumExplosionCast);
		file.ReadIt(NumExplosionPU1Cast);
		file.ReadIt(NumExplosionPU2Cast);
		file.ReadIt(NumHealCast);
		file.ReadIt(NumHealPU1Cast);
		file.ReadIt(NumTeleportCast);
		file.ReadIt(NumMagicForestCast);
		file.ReadIt(NumMagicFoodCast);
		file.ReadIt(NumMagicFoodPU1Cast);
		file.ReadIt(NumStormWindRainCast);
		file.ReadIt(NumStormWindRainLightningCast);
		file.ReadIt(NumTornadoCast);
		file.ReadIt(NumMagicShieldCast);
		file.ReadIt(NumPhysicalShieldCast);
		file.ReadIt(NumMagicWoodCast);
		file.ReadIt(NumMagicWaterCast);
		file.ReadIt(NumMagicWaterPU1Cast);
		file.ReadIt(NumFlockFlyingCast);
		file.ReadIt(NumFlockGroundCast);
		file.ReadIt(NumCreatureFreezeCast);
		file.ReadIt(NumCreatureSmallCast);
		file.ReadIt(NumCreatureBigCast);
		file.ReadIt(NumCreatureWeakCast);
		file.ReadIt(NumCreatureStrongCast);
		file.ReadIt(NumCreatureFatCast);
		file.ReadIt(NumCreatureThinCast);
		file.ReadIt(NumCreatureInvisibleCast);
		file.ReadIt(NumCreatureCompassionCast);
		file.ReadIt(NumCreatureAngryCast);
		file.ReadIt(NumCreatureItchyCast);
		file.ReadIt(TotalChantsUsed);
		file.ReadIt(TotalNumSacrifices);
		file.ReadIt(NumTownsAtStart);
		return 1;
	}
	return 0;
}

uint32_t GameStats::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WritePtr(Player);
		file.WriteIt(NumPlayersThatHaveLeftTheGame);
		file.WriteIt(Position);
		file.WriteIt(LossReason);
		file.WriteIt(TownStats);
		file.WriteIt(TotalBirths);
		file.WriteIt(TotalDeaths);
		file.WriteIt(MaxTotalPopulation);
		file.WriteIt(MaxMalePopulation);
		file.WriteIt(MaxFemalePopulation);
		file.WriteIt(MinTotalPopulation);
		file.WriteIt(MinMalePopulation);
		file.WriteIt(MinFemalePopulation);
		file.WriteIt(TotalPeopleConverted);
		file.WriteIt(TotalVillagerSatisfaction);
		file.WriteIt(NumVillagerSatisfactionSamples);
		file.WriteIt(TotalBuildingsBuilt);
		file.WriteIt(TotalAbodesBuilt);
		file.WriteIt(TotalCivicBuildingsBuilt);
		file.WriteIt(TotalWondersBuilt);
		file.WriteIt(NumDiscipleFarmers);
		file.WriteIt(NumDiscipleForesters);
		file.WriteIt(NumDiscipleFishermen);
		file.WriteIt(NumDiscipleBuilders);
		file.WriteIt(NumDiscipleBreeders);
		file.WriteIt(NumDiscipleTraders);
		file.WriteIt(NumDiscipleMissionaries);
		file.WriteIt(NumDiscipleCraftsmen);
		file.WriteIt(FoodUsed);
		file.WriteIt(WoodUsed);
		file.WriteIt(InfluenceGraph);
		file.WriteIt(PopulationGraph);
		file.WriteIt(NumGodsDefeated);
		file.WriteIt(StartAlignment);
		file.WriteIt(VillagersKilled);
		file.WriteIt(MaxTotalBelief);
		file.WriteIt(MinTotalBelief);
		file.WriteIt(StartCreatureSize);
		file.WriteIt(StartCreatureAlignment);
		file.WriteIt(BuildingsDestroyed);
		file.WriteIt(field_0x1084);
		file.WriteIt(field_0x1088);
		file.WriteIt(field_0x108c);
		file.WriteIt(TotalLinesOfCodeExecuted);
		file.WriteIt(MaxFrameRate);
		file.WriteIt(MinFrameRate);
		file.WriteIt(NumBaseAllocations);
		file.WriteIt(StartTime);
		file.WriteIt(StatsVersion);
		file.WriteIt(NumFireballCast);
		file.WriteIt(NumFireballPU1Cast);
		file.WriteIt(NumFireballPU2Cast);
		file.WriteIt(NumLightningCast);
		file.WriteIt(NumLightningPU1Cast);
		file.WriteIt(NumLightningPU2Cast);
		file.WriteIt(NumExplosionCast);
		file.WriteIt(NumExplosionPU1Cast);
		file.WriteIt(NumExplosionPU2Cast);
		file.WriteIt(NumHealCast);
		file.WriteIt(NumHealPU1Cast);
		file.WriteIt(NumTeleportCast);
		file.WriteIt(NumMagicForestCast);
		file.WriteIt(NumMagicFoodCast);
		file.WriteIt(NumMagicFoodPU1Cast);
		file.WriteIt(NumStormWindRainCast);
		file.WriteIt(NumStormWindRainLightningCast);
		file.WriteIt(NumTornadoCast);
		file.WriteIt(NumMagicShieldCast);
		file.WriteIt(NumPhysicalShieldCast);
		file.WriteIt(NumMagicWoodCast);
		file.WriteIt(NumMagicWaterCast);
		file.WriteIt(NumMagicWaterPU1Cast);
		file.WriteIt(NumFlockFlyingCast);
		file.WriteIt(NumFlockGroundCast);
		file.WriteIt(NumCreatureFreezeCast);
		file.WriteIt(NumCreatureSmallCast);
		file.WriteIt(NumCreatureBigCast);
		file.WriteIt(NumCreatureWeakCast);
		file.WriteIt(NumCreatureStrongCast);
		file.WriteIt(NumCreatureFatCast);
		file.WriteIt(NumCreatureThinCast);
		file.WriteIt(NumCreatureInvisibleCast);
		file.WriteIt(NumCreatureCompassionCast);
		file.WriteIt(NumCreatureAngryCast);
		file.WriteIt(NumCreatureItchyCast);
		file.WriteIt(TotalChantsUsed);
		file.WriteIt(TotalNumSacrifices);
		file.WriteIt(NumTownsAtStart);
		return 1;
	}
	return 0;
}

void GameStats::SaveExtraData(GameOSFile& file)
{
	uint32_t playerNumber = GetPlayer()->GetPlayerNumber();
	file.WriteIt(playerNumber);
}

uint32_t GameStats::GetNumPlayersInGame()
{
	uint32_t count = 0;
	for (uint32_t i = 0; i < 8; i++)
	{
		GPlayer* player = GGame::g_game->GetPlayer(i);
		if ((player->type == PLAYER_TYPE_HUMAN || player->type == PLAYER_TYPE_COMPUTER) && player->player_number < 4)
		{
			count++;
		}
	}
	return count;
}

GameStatsPackage* GameStats::GetPackage()
{
	Package.SetToZero();
	Package.NumPlayers = min(GetNumPlayersInGame(), 4);
	for (uint32_t i = 0; i < 4; i++)
	{
		GGame::g_game->GetPlayer(i)->GetStats()->FillInGameStatsPerPlayer(Package.PerPlayer[i]);
	}
	AddToTotalLinesOfCodeExecuted();
	Package.TotalLinesOfCodeExecuted = TotalLinesOfCodeExecuted;
	Package.MaxFrameRate = MaxFrameRate;
	Package.MinFrameRate = MinFrameRate;
	Package.NumBaseAllocations = NumBaseAllocations;
	Package.TimePlayed = GGame::g_game->MyPlayer()->GetStats()->GetTimePlayed();
	Package.InstructionCount = GGame::g_game->MyPlayer()->GetStats()->GetInstructionCount();
	Package.StatsVersion = StatsVersion;
	Package.DistanceDragged = GGame::g_game->MyPlayer()->GetStats()->GetDistanceDragged();
	Package.TimeLookingAtSky = GGame::g_game->MyPlayer()->GetStats()->GetTimeLookingAtSky();
	Package.TimeLookingAtGround = GGame::g_game->MyPlayer()->GetStats()->GetTimeLookingAtGround();
	Package.GesturesDone = GGame::g_game->MyPlayer()->GetStats()->GetGesturesDone();
	Package.ZoomCount = GGame::g_game->MyPlayer()->GetStats()->GetZoomCount();
	Package.RotateCount = GGame::g_game->MyPlayer()->GetStats()->GetRotateCount();
	Package.PitchCount = GGame::g_game->MyPlayer()->GetStats()->GetPitchCount();
	Package.TotalInterfaceActions = GGame::g_game->MyPlayer()->GetStats()->GetTotalInterfaceActions();
	Package.TotalObjectsThrown = GGame::g_game->MyPlayer()->GetStats()->GetTotalObjectsThrown();
	Package.TotalThingsPickedUp = GGame::g_game->MyPlayer()->GetStats()->GetTotalThingsPickedUp();
	Package.NumFightAttacks = GGame::g_game->MyPlayer()->GetStats()->GetNumFightAttacks();
	Package.NumFightBlocks = GGame::g_game->MyPlayer()->GetStats()->GetNumFightBlocks();
	Package.NumFightSteps = GGame::g_game->MyPlayer()->GetStats()->GetNumFightSteps();
	return &Package;
}

// BW1W120 inlined BW1M119 inlined
static inline void CopyGraph(EverlastingGraph<float, 500, 50>& graph, GameStatsPackage::GameStatsGraph& out)
{
	graph.Data[graph.Index] = 0.0f;
	memcpy(out.Data, graph.Data, sizeof(out.Data));
	out.Index = graph.Index;
}

void GameStats::FillInGameStatsPerPlayer(GameStatsPackage::GameStatsPerPlayer& stats)
{
	stats.Colour = GetPlayer()->GetPlayer3DColor();
	stats.field_0xc = 0.0f;
	for (int k = 0; k < 4; k++)
	{
		stats.field_0x10[k] = 0.0f;
	}
	stats.Position = Position;
	stats.LossReason = LossReason;
	stats.TotalBirths = TotalBirths;
	stats.TotalDeaths = TotalDeaths;
	stats.FinalTotalPopulation = GetFinalTotalPopulation();
	stats.FinalMalePopulation = GetFinalMalePopulation();
	stats.FinalFemalePopulation = GetFinalFemalePopulation();
	stats.FinalTotalPopulationCapacity = GetFinalTotalPopulationCapacity();
	stats.MaxTotalPopulation = MaxTotalPopulation;
	stats.MaxMalePopulation = MaxMalePopulation;
	stats.MaxFemalePopulation = MaxFemalePopulation;
	stats.MinTotalPopulation = MinTotalPopulation;
	stats.MinMalePopulation = MinMalePopulation;
	stats.MinFemalePopulation = MinFemalePopulation;
	stats.TotalPeopleConverted = TotalPeopleConverted;
	stats.AverageSatisfactionOfVillagers =
		NumVillagerSatisfactionSamples != 0 ? TotalVillagerSatisfaction / NumVillagerSatisfactionSamples : 0.0f;
	stats.TownsOwned = GetTownsOwned();
	stats.TotalBuildings = GetTotalBuildings();
	stats.TotalAbodes = GetTotalAbodes();
	stats.TotalCivicBuildings = GetTotalCivicBuildings();
	stats.TotalWonders = GetTotalWonders();
	stats.TotalBuildingsBuilt = TotalBuildingsBuilt;
	stats.TotalAbodesBuilt = TotalAbodesBuilt;
	stats.TotalCivicBuildingsBuilt = TotalCivicBuildingsBuilt;
	stats.TotalWondersBuilt = TotalWondersBuilt;
	stats.NumDiscipleFarmers = NumDiscipleFarmers;
	stats.NumDiscipleForesters = NumDiscipleForesters;
	stats.NumDiscipleFishermen = NumDiscipleFishermen;
	stats.NumDiscipleBuilders = NumDiscipleBuilders;
	stats.NumDiscipleBreeders = NumDiscipleBreeders;
	stats.NumDiscipleTraders = NumDiscipleTraders;
	stats.NumDiscipleMissionaries = NumDiscipleMissionaries;
	stats.NumDiscipleCraftsmen = NumDiscipleCraftsmen;
	stats.TotalFoodEaten = FoodUsed;
	stats.WoodUsed = WoodUsed;
	stats.NumGodsDefeated = NumGodsDefeated;
	stats.AligmentChange = GetAlignmentChange();
	stats.TotalPeopleKilled = VillagersKilled;
	stats.FinalTotalBelief = GetFinalTotalBelief();
	stats.MaxTotalBelief = BeliefStatsScale * MaxTotalBelief;
	stats.MinTotalBelief = BeliefStatsScale * MinTotalBelief;
	stats.FinalAreaOfInfluence = GetFinalAreaOfInfluence();
	stats.NumOfArtifacts = GetNumOfArtifacts();
	stats.CreatureGrowth = GetCreatureGrowth();
	stats.CreatureAlignmentChange = GetCreatureAlignmentChange();
	stats.BuildingsDestroyed = BuildingsDestroyed;
	stats.TotalAgressiveSpellsCast = GetTotalAgressiveSpellsCast();
	stats.TotalNiceSpellsCast = GetTotalNiceSpellsCast();
	stats.TotalCreatureSpellsCast = GetTotalCreatureSpellsCast();
	stats.NumFireballCast = NumFireballCast;
	stats.NumFireballPU1Cast = NumFireballPU1Cast;
	stats.NumFireballPU2Cast = NumFireballPU2Cast;
	stats.NumLightningCast = NumLightningCast;
	stats.NumLightningPU1Cast = NumLightningPU1Cast;
	stats.NumLightningPU2Cast = NumLightningPU2Cast;
	stats.NumExplosionCast = NumExplosionCast;
	stats.NumExplosionPU1Cast = NumExplosionPU1Cast;
	stats.NumExplosionPU2Cast = NumExplosionPU2Cast;
	stats.NumHealCast = NumHealCast;
	stats.NumHealPU1Cast = NumHealPU1Cast;
	stats.NumTeleportCast = NumTeleportCast;
	stats.NumMagicForestCast = NumMagicForestCast;
	stats.NumMagicFoodCast = NumMagicFoodCast;
	stats.NumMagicFoodPU1Cast = NumMagicFoodPU1Cast;
	stats.NumStormWindRainCast = NumStormWindRainCast;
	stats.NumStormWindRainLightningCast = NumStormWindRainLightningCast;
	stats.NumTornadoCast = NumTornadoCast;
	stats.NumMagicShieldCast = NumMagicShieldCast;
	stats.NumPhysicalShieldCast = NumPhysicalShieldCast;
	stats.NumMagicWoodCast = NumMagicWoodCast;
	stats.NumMagicWaterCast = NumMagicWaterCast;
	stats.NumMagicWaterPU1Cast = NumMagicWaterPU1Cast;
	stats.NumFlockFlyingCast = NumFlockFlyingCast;
	stats.NumFlockGroundCast = NumFlockGroundCast;
	stats.NumCreatureFreezeCast = NumCreatureFreezeCast;
	stats.NumCreatureSmallCast = NumCreatureSmallCast;
	stats.NumCreatureBigCast = NumCreatureBigCast;
	stats.NumCreatureWeakCast = NumCreatureWeakCast;
	stats.NumCreatureStrongCast = NumCreatureStrongCast;
	stats.NumCreatureFatCast = NumCreatureFatCast;
	stats.NumCreatureThinCast = NumCreatureThinCast;
	stats.NumCreatureInvisibleCast = NumCreatureInvisibleCast;
	stats.NumCreatureCompassionCast = NumCreatureCompassionCast;
	stats.NumCreatureAngryCast = NumCreatureAngryCast;
	stats.NumCreatureItchyCast = NumCreatureItchyCast;
	stats.TotalChantsUsed = GetTotalChantsUsed();
	stats.TotalNumSacrifices = TotalNumSacrifices;
	stats.CreatureTiredness = GetCreatureTiredness();
	stats.CreatureHunger = GetCreatureHunger();
	stats.CreatureDamage = GetCreatureDamage();
	stats.CreatureAge = GetCreatureAge();
	stats.CreatureAlignment = GetCreatureAlignment();
	stats.CreatureNumPeopleKilled = GetCreatureNumPeopleKilled();
	stats.CreatureNumAnimalsKilled = GetCreatureNumAnimalsKilled();
	stats.CreatureNumCreaturesKilled = GetCreatureNumCreaturesKilled();
	stats.CreatureNumBattlesFought = GetCreatureNumBattlesFought();
	stats.CreatureNumBattlesWon = GetCreatureNumBattlesWon();
	stats.CreatureNumPoos = GetCreatureNumPoos();
	stats.CreatureNumMushroomsEaten = GetCreatureNumMushroomsEaten();
	CopyGraph(InfluenceGraph, stats.InfluenceGraph);
	CopyGraph(PopulationGraph, stats.PopulationGraph);
}

char* GameStats::GetDatabaseStatsString()
{
	GameStatsPackage* package = GetPackage();
	if (package != NULL)
	{
		return package->GetDatabaseStatsString();
	}
	return NULL;
}

void GameStatsPackage::SetToZero()
{
	NumPlayers = 0;
	for (int i = 0; i < 4; i++)
	{
		GameStatsPerPlayer& stats = PerPlayer[i];
		stats.Colour.a = 0xff;
		stats.Colour.r = 0;
		stats.Colour.g = 0;
		stats.Colour.b = 0;
		stats.Position = 0;
		stats.LossReason = 0;
		stats.field_0xc = 0.0f;
		for (int k = 0; k < 4; k++)
		{
			stats.field_0x10[k] = 0.0f;
		}
		memset(stats.InfluenceGraph.Data, 0, sizeof(stats.InfluenceGraph.Data));
		memset(stats.PopulationGraph.Data, 0, sizeof(stats.PopulationGraph.Data));
		stats.TotalBirths = 0;
		stats.TotalDeaths = 0;
		stats.FinalTotalPopulation = 0;
		stats.FinalMalePopulation = 0;
		stats.FinalFemalePopulation = 0;
		stats.FinalTotalPopulationCapacity = 0;
		stats.MaxTotalPopulation = 0;
		stats.MaxMalePopulation = 0;
		stats.MaxFemalePopulation = 0;
		stats.MinTotalPopulation = 0;
		stats.MinMalePopulation = 0;
		stats.MinFemalePopulation = 0;
		stats.TotalPeopleConverted = 0;
		stats.AverageSatisfactionOfVillagers = 0.0f;
		stats.TownsOwned = 0;
		stats.TotalBuildings = 0;
		stats.TotalAbodes = 0;
		stats.TotalCivicBuildings = 0;
		stats.TotalWonders = 0;
		stats.TotalBuildingsBuilt = 0;
		stats.TotalAbodesBuilt = 0;
		stats.TotalCivicBuildingsBuilt = 0;
		stats.TotalWondersBuilt = 0;
		stats.NumDiscipleFarmers = 0;
		stats.NumDiscipleForesters = 0;
		stats.NumDiscipleFishermen = 0;
		stats.NumDiscipleBuilders = 0;
		stats.NumDiscipleBreeders = 0;
		stats.NumDiscipleTraders = 0;
		stats.NumDiscipleMissionaries = 0;
		stats.NumDiscipleCraftsmen = 0;
		stats.TotalFoodEaten = 0;
		stats.WoodUsed = 0;
		stats.NumGodsDefeated = 0;
		stats.AligmentChange = 0.0f;
		stats.TotalPeopleKilled = 0;
		stats.FinalTotalBelief = 0.0f;
		stats.MaxTotalBelief = 0.0f;
		stats.MinTotalBelief = 0.0f;
		stats.FinalAreaOfInfluence = 0.0f;
		stats.NumOfArtifacts = 0;
		stats.CreatureGrowth = 0.0f;
		stats.CreatureAlignmentChange = 0.0f;
		stats.BuildingsDestroyed = 0;
		stats.TotalAgressiveSpellsCast = 0;
		stats.TotalNiceSpellsCast = 0;
		stats.TotalCreatureSpellsCast = 0;
		stats.NumFireballCast = 0;
		stats.NumFireballPU1Cast = 0;
		stats.NumFireballPU2Cast = 0;
		stats.NumLightningCast = 0;
		stats.NumLightningPU1Cast = 0;
		stats.NumLightningPU2Cast = 0;
		stats.NumExplosionCast = 0;
		stats.NumExplosionPU1Cast = 0;
		stats.NumExplosionPU2Cast = 0;
		stats.NumHealCast = 0;
		stats.NumHealPU1Cast = 0;
		stats.NumTeleportCast = 0;
		stats.NumMagicForestCast = 0;
		stats.NumMagicFoodCast = 0;
		stats.NumMagicFoodPU1Cast = 0;
		stats.NumStormWindRainCast = 0;
		stats.NumStormWindRainLightningCast = 0;
		stats.NumTornadoCast = 0;
		stats.NumMagicShieldCast = 0;
		stats.NumPhysicalShieldCast = 0;
		stats.NumMagicWoodCast = 0;
		stats.NumMagicWaterCast = 0;
		stats.NumMagicWaterPU1Cast = 0;
		stats.NumFlockFlyingCast = 0;
		stats.NumFlockGroundCast = 0;
		stats.NumCreatureFreezeCast = 0;
		stats.NumCreatureSmallCast = 0;
		stats.NumCreatureBigCast = 0;
		stats.NumCreatureWeakCast = 0;
		stats.NumCreatureStrongCast = 0;
		stats.NumCreatureFatCast = 0;
		stats.NumCreatureThinCast = 0;
		stats.NumCreatureInvisibleCast = 0;
		stats.NumCreatureCompassionCast = 0;
		stats.NumCreatureAngryCast = 0;
		stats.NumCreatureItchyCast = 0;
		stats.TotalChantsUsed = 0.0f;
		stats.TotalNumSacrifices = 0;
		stats.CreatureTiredness = 0.0f;
		stats.CreatureHunger = 0.0f;
		stats.CreatureDamage = 0.0f;
		stats.CreatureAge = 0;
		stats.CreatureAlignment = 0.0f;
		stats.CreatureNumPeopleKilled = 0;
		stats.CreatureNumAnimalsKilled = 0;
		stats.CreatureNumCreaturesKilled = 0;
		stats.CreatureNumBattlesFought = 0;
		stats.CreatureNumBattlesWon = 0;
		stats.CreatureNumPoos = 0;
		stats.CreatureNumMushroomsEaten = 0;
	}
	TotalLinesOfCodeExecuted = 0;
	MaxFrameRate = 0.0f;
	MinFrameRate = 0.0f;
	NumBaseAllocations = 0;
	TimePlayed = 0;
	InstructionCount = 0;
	StatsVersion = 0;
	DistanceDragged = 0;
	TimeLookingAtSky = 0;
	TimeLookingAtGround = 0;
	GesturesDone = 0;
	ZoomCount = 0;
	RotateCount = 0;
	PitchCount = 0;
	TotalInterfaceActions = 0;
	TotalObjectsThrown = 0;
	TotalThingsPickedUp = 0;
	NumFightAttacks = 0;
	NumFightBlocks = 0;
	NumFightSteps = 0;
}

char* GameStatsPackage::GetDatabaseStatsString()
{
	GameStatsStringList list;
	unsigned long       length = 0;
	unsigned long       users[4];
	memset(users, 0, sizeof(users));
	GameStatsListString* string;
	for (unsigned long i = 0; i < 4; i++)
	{
		if (LHNetBase::Instance.Session != NULL)
		{
			unsigned long clan = 0;
			for (unsigned long j = 0; j < 4; j++)
			{
				users[j] = LHNetBase::Instance.Session->GamePlayerInfo[i][j].UserID;
				if (users[j] > 0)
				{
					clan = LHNetBase::Instance.Session->GamePlayerInfo[i][j].ClanID;
				}
			}
			string = new (GAME_STATS_SOURCE_FILE, 1165) GameStatsListString;
			sprintf(string->GetString(), "CLAN_%ld:", clan);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1170) GameStatsListString;
			sprintf(string->GetString(), "USERS_%ld_%ld_%ld_%ld:", users[0], users[1], users[2], users[3]);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1175) GameStatsListString;
			sprintf(string->GetString(), "POSITION_%ld:", PerPlayer[i].Position);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1180) GameStatsListString;
			sprintf(string->GetString(), "LOHOA_%ld:", PerPlayer[i].LossReason);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1185) GameStatsListString;
			strcpy(string->GetString(), "DATA:");
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1191) GameStatsListString;
			sprintf(string->GetString(), "TotalBirths=%ld;", PerPlayer[i].TotalBirths);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1196) GameStatsListString;
			sprintf(string->GetString(), "TotalDeaths=%ld;", PerPlayer[i].TotalDeaths);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1201) GameStatsListString;
			sprintf(string->GetString(), "FinalTotalPopulation=%ld;", PerPlayer[i].FinalTotalPopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1206) GameStatsListString;
			sprintf(string->GetString(), "FinalMalePopulation=%ld;", PerPlayer[i].FinalMalePopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1211) GameStatsListString;
			sprintf(string->GetString(), "FinalFemalePopulation=%ld;", PerPlayer[i].FinalFemalePopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1216) GameStatsListString;
			sprintf(string->GetString(), "FinalTotalPopulationCapacity=%ld;",
			        PerPlayer[i].FinalTotalPopulationCapacity);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1221) GameStatsListString;
			sprintf(string->GetString(), "MaxTotalPopulation=%ld;", PerPlayer[i].MaxTotalPopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1226) GameStatsListString;
			sprintf(string->GetString(), "MaxMalePopulation=%ld;", PerPlayer[i].MaxMalePopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1231) GameStatsListString;
			sprintf(string->GetString(), "MaxFemalePopulation=%ld;", PerPlayer[i].MaxFemalePopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1236) GameStatsListString;
			sprintf(string->GetString(), "MinTotalPopulation=%ld;", PerPlayer[i].MinTotalPopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1241) GameStatsListString;
			sprintf(string->GetString(), "MinMalePopulation=%ld;", PerPlayer[i].MinMalePopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1246) GameStatsListString;
			sprintf(string->GetString(), "MinFemalePopulation=%ld;", PerPlayer[i].MinFemalePopulation);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1251) GameStatsListString;
			sprintf(string->GetString(), "TotalPeopleConverted=%ld;", PerPlayer[i].TotalPeopleConverted);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1256) GameStatsListString;
			sprintf(string->GetString(), "AverageSatisfactionOfVillagers=%.2f;",
			        PerPlayer[i].AverageSatisfactionOfVillagers);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1261) GameStatsListString;
			sprintf(string->GetString(), "TownsOwned=%ld;", PerPlayer[i].TownsOwned);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1266) GameStatsListString;
			sprintf(string->GetString(), "TotalBuildings=%ld;", PerPlayer[i].TotalBuildings);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1271) GameStatsListString;
			sprintf(string->GetString(), "TotalAbodes=%ld;", PerPlayer[i].TotalAbodes);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1276) GameStatsListString;
			sprintf(string->GetString(), "TotalCivicBuildings=%ld;", PerPlayer[i].TotalCivicBuildings);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1281) GameStatsListString;
			sprintf(string->GetString(), "TotalWonders=%ld;", PerPlayer[i].TotalWonders);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1286) GameStatsListString;
			sprintf(string->GetString(), "TotalBuildingsBuilt=%ld;", PerPlayer[i].TotalBuildingsBuilt);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1291) GameStatsListString;
			sprintf(string->GetString(), "TotalAbodesBuilt=%ld;", PerPlayer[i].TotalAbodesBuilt);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1296) GameStatsListString;
			sprintf(string->GetString(), "TotalCivicBuildingsBuilt=%ld;", PerPlayer[i].TotalCivicBuildingsBuilt);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1301) GameStatsListString;
			sprintf(string->GetString(), "TotalWondersBuilt=%ld;", PerPlayer[i].TotalWondersBuilt);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1306) GameStatsListString;
			sprintf(string->GetString(), "NumDiscipleFarmers=%ld;", PerPlayer[i].NumDiscipleFarmers);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1311) GameStatsListString;
			sprintf(string->GetString(), "NumDiscipleForesters=%ld;", PerPlayer[i].NumDiscipleForesters);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1316) GameStatsListString;
			sprintf(string->GetString(), "NumDiscipleFishermen=%ld;", PerPlayer[i].NumDiscipleFishermen);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1321) GameStatsListString;
			sprintf(string->GetString(), "NumDiscipleBuilders=%ld;", PerPlayer[i].NumDiscipleBuilders);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1326) GameStatsListString;
			sprintf(string->GetString(), "NumDiscipleBreeders=%ld;", PerPlayer[i].NumDiscipleBreeders);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1331) GameStatsListString;
			sprintf(string->GetString(), "NumDiscipleTraders=%ld;", PerPlayer[i].NumDiscipleTraders);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1336) GameStatsListString;
			sprintf(string->GetString(), "NumDiscipleMissionaries=%ld;", PerPlayer[i].NumDiscipleMissionaries);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1341) GameStatsListString;
			sprintf(string->GetString(), "NumDiscipleCraftsmen=%ld;", PerPlayer[i].NumDiscipleCraftsmen);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1346) GameStatsListString;
			sprintf(string->GetString(), "TotalFoodEaten=%ld;", PerPlayer[i].TotalFoodEaten);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1351) GameStatsListString;
			sprintf(string->GetString(), "WoodUsed=%ld;", PerPlayer[i].WoodUsed);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1356) GameStatsListString;
			sprintf(string->GetString(), "NumGodsDefeated=%ld;", PerPlayer[i].NumGodsDefeated);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1361) GameStatsListString;
			sprintf(string->GetString(), "AligmentChange=%.2f;", PerPlayer[i].AligmentChange);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1366) GameStatsListString;
			sprintf(string->GetString(), "TotalPeopleKilled=%ld;", PerPlayer[i].TotalPeopleKilled);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1371) GameStatsListString;
			sprintf(string->GetString(), "FinalTotalBelief=%.2f;", PerPlayer[i].FinalTotalBelief);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1376) GameStatsListString;
			sprintf(string->GetString(), "MaxTotalBelief=%.2f;", PerPlayer[i].MaxTotalBelief);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1381) GameStatsListString;
			sprintf(string->GetString(), "MinTotalBelief=%.2f;", PerPlayer[i].MinTotalBelief);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1386) GameStatsListString;
			sprintf(string->GetString(), "FinalAreaOfInfluence=%.2f;", PerPlayer[i].FinalAreaOfInfluence);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1391) GameStatsListString;
			sprintf(string->GetString(), "NumOfArtifacts=%ld;", PerPlayer[i].NumOfArtifacts);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1396) GameStatsListString;
			sprintf(string->GetString(), "CreatureGrowth=%.2f;", PerPlayer[i].CreatureGrowth);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1401) GameStatsListString;
			sprintf(string->GetString(), "CreatureAlignmentChange=%.2f;", PerPlayer[i].CreatureAlignmentChange);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1406) GameStatsListString;
			sprintf(string->GetString(), "BuildingsDestroyed=%ld;", PerPlayer[i].BuildingsDestroyed);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1411) GameStatsListString;
			sprintf(string->GetString(), "TotalAgressiveSpellsCast=%ld;", PerPlayer[i].TotalAgressiveSpellsCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1416) GameStatsListString;
			sprintf(string->GetString(), "TotalNiceSpellsCast=%ld;", PerPlayer[i].TotalNiceSpellsCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1421) GameStatsListString;
			sprintf(string->GetString(), "TotalCreatureSpellsCast=%ld;", PerPlayer[i].TotalCreatureSpellsCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1426) GameStatsListString;
			sprintf(string->GetString(), "NumFireballCast=%ld;", PerPlayer[i].NumFireballCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1431) GameStatsListString;
			sprintf(string->GetString(), "NumFireballPU1Cast=%ld;", PerPlayer[i].NumFireballPU1Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1436) GameStatsListString;
			sprintf(string->GetString(), "NumFireballPU2Cast=%ld;", PerPlayer[i].NumFireballPU2Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1441) GameStatsListString;
			sprintf(string->GetString(), "NumLightningCast=%ld;", PerPlayer[i].NumLightningCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1446) GameStatsListString;
			sprintf(string->GetString(), "NumLightningPU1Cast=%ld;", PerPlayer[i].NumLightningPU1Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1451) GameStatsListString;
			sprintf(string->GetString(), "NumLightningPU2Cast=%ld;", PerPlayer[i].NumLightningPU2Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1456) GameStatsListString;
			sprintf(string->GetString(), "NumExplosionCast=%ld;", PerPlayer[i].NumExplosionCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1461) GameStatsListString;
			sprintf(string->GetString(), "NumExplosionPU1Cast=%ld;", PerPlayer[i].NumExplosionPU1Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1466) GameStatsListString;
			sprintf(string->GetString(), "NumExplosionPU2Cast=%ld;", PerPlayer[i].NumExplosionPU2Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1471) GameStatsListString;
			sprintf(string->GetString(), "NumHealCast=%ld;", PerPlayer[i].NumHealCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1476) GameStatsListString;
			sprintf(string->GetString(), "NumHealPU1Cast=%ld;", PerPlayer[i].NumHealPU1Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1481) GameStatsListString;
			sprintf(string->GetString(), "NumTeleportCast=%ld;", PerPlayer[i].NumTeleportCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1486) GameStatsListString;
			sprintf(string->GetString(), "NumMagicForestCast=%ld;", PerPlayer[i].NumMagicForestCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1491) GameStatsListString;
			sprintf(string->GetString(), "NumMagicFoodCast=%ld;", PerPlayer[i].NumMagicFoodCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1496) GameStatsListString;
			sprintf(string->GetString(), "NumMagicFoodPU1Cast=%ld;", PerPlayer[i].NumMagicFoodPU1Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1501) GameStatsListString;
			sprintf(string->GetString(), "NumStormWindRainCast=%ld;", PerPlayer[i].NumStormWindRainCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1506) GameStatsListString;
			sprintf(string->GetString(), "NumStormWindRainLightningCast=%ld;",
			        PerPlayer[i].NumStormWindRainLightningCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1511) GameStatsListString;
			sprintf(string->GetString(), "NumTornadoCast=%ld;", PerPlayer[i].NumTornadoCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1516) GameStatsListString;
			sprintf(string->GetString(), "NumMagicShieldCast=%ld;", PerPlayer[i].NumMagicShieldCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1521) GameStatsListString;
			sprintf(string->GetString(), "NumPhysicalShieldCast=%ld;", PerPlayer[i].NumPhysicalShieldCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1526) GameStatsListString;
			sprintf(string->GetString(), "NumMagicWoodCast=%ld;", PerPlayer[i].NumMagicWoodCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1531) GameStatsListString;
			sprintf(string->GetString(), "NumMagicWaterCast=%ld;", PerPlayer[i].NumMagicWaterCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1536) GameStatsListString;
			sprintf(string->GetString(), "NumMagicWaterPU1Cast=%ld;", PerPlayer[i].NumMagicWaterPU1Cast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1541) GameStatsListString;
			sprintf(string->GetString(), "NumFlockFlyingCast=%ld;", PerPlayer[i].NumFlockFlyingCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1546) GameStatsListString;
			sprintf(string->GetString(), "NumFlockGroundCast=%ld;", PerPlayer[i].NumFlockGroundCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1551) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureFreezeCast=%ld;", PerPlayer[i].NumCreatureFreezeCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1556) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureSmallCast=%ld;", PerPlayer[i].NumCreatureSmallCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1561) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureBigCast=%ld;", PerPlayer[i].NumCreatureBigCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1566) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureWeakCast=%ld;", PerPlayer[i].NumCreatureWeakCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1571) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureStrongCast=%ld;", PerPlayer[i].NumCreatureStrongCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1576) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureFatCast=%ld;", PerPlayer[i].NumCreatureFatCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1581) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureThinCast=%ld;", PerPlayer[i].NumCreatureThinCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1586) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureInvisibleCast=%ld;", PerPlayer[i].NumCreatureInvisibleCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1591) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureCompassionCast=%ld;", PerPlayer[i].NumCreatureCompassionCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1596) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureAngryCast=%ld;", PerPlayer[i].NumCreatureAngryCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1601) GameStatsListString;
			sprintf(string->GetString(), "NumCreatureItchyCast=%ld;", PerPlayer[i].NumCreatureItchyCast);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1606) GameStatsListString;
			sprintf(string->GetString(), "TotalChantsUsed=%.2f;", PerPlayer[i].TotalChantsUsed);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1611) GameStatsListString;
			sprintf(string->GetString(), "TotalNumSacrifices=%ld;", PerPlayer[i].TotalNumSacrifices);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1616) GameStatsListString;
			sprintf(string->GetString(), "CreatureAge=%ld;", PerPlayer[i].CreatureAge);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1621) GameStatsListString;
			sprintf(string->GetString(), "CreatureAlignment=%.2f;", PerPlayer[i].CreatureAlignment);
			list.AddToTail(string);
			length += strlen(string->GetString());

#ifndef VERSION_BW1W120
			string = new (GAME_STATS_SOURCE_FILE, 1626) GameStatsListString;
			sprintf(string->GetString(), "CreatureNumPeopleKilled=%ld;", PerPlayer[i].CreatureNumPeopleKilled);
			list.AddToTail(string);
			length += strlen(string->GetString());
#endif

			string = new (GAME_STATS_SOURCE_FILE, 1631) GameStatsListString;
			sprintf(string->GetString(), "CreatureNumAnimalsKilled=%ld;", PerPlayer[i].CreatureNumAnimalsKilled);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1636) GameStatsListString;
			sprintf(string->GetString(), "CreatureNumCreaturesKilled=%ld;", PerPlayer[i].CreatureNumCreaturesKilled);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1641) GameStatsListString;
			sprintf(string->GetString(), "CreatureNumBattlesFought=%ld;", PerPlayer[i].CreatureNumBattlesFought);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1646) GameStatsListString;
			sprintf(string->GetString(), "CreatureNumBattlesWon=%ld;", PerPlayer[i].CreatureNumBattlesWon);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1651) GameStatsListString;
			sprintf(string->GetString(), "CreatureNumPoos=%ld;", PerPlayer[i].CreatureNumPoos);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1656) GameStatsListString;
			sprintf(string->GetString(), "CreatureDamage=%.2f;", PerPlayer[i].CreatureDamage);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1661) GameStatsListString;
			sprintf(string->GetString(), "CreatureTiredness=%.2f;", PerPlayer[i].CreatureTiredness);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1666) GameStatsListString;
			sprintf(string->GetString(), "CreatureHunger=%.2f;", PerPlayer[i].CreatureHunger);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1671) GameStatsListString;
			sprintf(string->GetString(), "CreatureNumMushroomsEaten=%ld;", PerPlayer[i].CreatureNumMushroomsEaten);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1676) GameStatsListString;
			sprintf(string->GetString(), "TimePlayed=%ld;", TimePlayed);
			list.AddToTail(string);
			length += strlen(string->GetString());

			string = new (GAME_STATS_SOURCE_FILE, 1681) GameStatsListString;
			strcpy(string->GetString(), "EODP:");
			list.AddToTail(string);
			length += strlen(string->GetString());
		}
	}

	char* result = new (GAME_STATS_SOURCE_FILE, 1690) char[length + 1000];
	strcpy(result, "!!STATSCALC:");
	unsigned long gameDataLength = GGame::g_game->network.session->GetGameDataLength();
	char*         mapName;
	if (gameDataLength == 0)
	{
		mapName = new (GAME_STATS_SOURCE_FILE, 1696) char[0x100];
		strcpy(mapName, "NULL");
	}
	else
	{
		mapName = (char*)GGame::g_game->network.session->GetGameData();
	}
	strcat(result, LHSPrintf("MAPNAME_%s:", mapName));
	if (gameDataLength == 0)
	{
		delete mapName;
	}
	unsigned long major;
	unsigned long minor;
	if (LHVersion::GetMajorMinor("Black", &major, &minor) != LH_OK)
	{
		major = 0;
		minor = 0;
	}
	strcat(result, LHSPrintf("VERSION_%d_%d_%d:", major, minor, LHVersion::GetModuleChecksum()));
	for (string = list.Get(); string != NULL; string = string->next.Get())
	{
		strcat(result, string->GetString());
	}
	strcat(result, "EOQ");
	list.DeleteEach();
	return result;
}

uint32_t GameStats::GetTotalAgressiveSpellsCast()
{
	return NumFireballCast + NumFireballPU1Cast + NumFireballPU2Cast + NumLightningCast + NumLightningPU1Cast +
	       NumLightningPU2Cast + NumExplosionCast + NumExplosionPU1Cast + NumExplosionPU2Cast + NumStormWindRainCast +
	       NumStormWindRainLightningCast + NumTornadoCast + NumFlockGroundCast;
}

uint32_t GameStats::GetTotalNiceSpellsCast()
{
	return NumHealCast + NumHealPU1Cast + NumTeleportCast + NumMagicForestCast + NumMagicFoodCast +
	       NumMagicFoodPU1Cast + NumMagicShieldCast + NumPhysicalShieldCast + NumMagicWoodCast + NumMagicWaterCast +
	       NumMagicWaterPU1Cast + NumFlockFlyingCast;
}

uint32_t GameStats::GetTotalCreatureSpellsCast()
{
	return NumCreatureFreezeCast + NumCreatureSmallCast + NumCreatureBigCast + NumCreatureWeakCast +
	       NumCreatureStrongCast + NumCreatureFatCast + NumCreatureThinCast + NumCreatureInvisibleCast +
	       NumCreatureCompassionCast + NumCreatureAngryCast + NumCreatureItchyCast;
}

uint32_t GameStats::GetNumOfArtifacts()
{
	uint32_t count = 0;
	for (LHLinkedNode<Town*>* node = GGame::g_game->GameLists.TownList.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		for (TownArtifact* artifact = node->payload->ArtifactList.head; artifact != NULL; artifact = artifact->next)
		{
			if (artifact->GetPlayer() == GetPlayer())
			{
				count++;
			}
		}
	}
	return count;
}

void GameStats::CheckAllPopulationTotals(unsigned long males, unsigned long females)
{
	CheckNewMaxMinTotalPopulation(males + females);
	CheckNewMaxMinMalePopulation(males);
	CheckNewMaxMinFemalePopulation(females);
}

void GameStats::CheckNewMaxMinTotalPopulation(unsigned long population)
{
	if (population > MaxTotalPopulation)
	{
		MaxTotalPopulation = population;
	}
	else if (population < MinTotalPopulation)
	{
		MinTotalPopulation = population;
	}
}

void GameStats::CheckNewMaxMinMalePopulation(unsigned long population)
{
	if (population > MaxMalePopulation)
	{
		MaxMalePopulation = population;
	}
	else if (population < MinMalePopulation)
	{
		MinMalePopulation = population;
	}
}

void GameStats::CheckNewMaxMinFemalePopulation(unsigned long population)
{
	if (population > MaxFemalePopulation)
	{
		MaxFemalePopulation = population;
	}
	else if (population < MinFemalePopulation)
	{
		MinFemalePopulation = population;
	}
}

void GameStats::CheckNewMaxMinTotalBelief(float belief)
{
	if (belief > MaxTotalBelief)
	{
		MaxTotalBelief = belief;
	}
	else if (belief < MinTotalBelief)
	{
		MinTotalBelief = belief;
	}
}

void GameStats::IncrementAllBuildingsBuilt(Abode* abode)
{
	TotalBuildingsBuilt++;
	if (abode->GetAbodeType() & ABODE_TYPE_LIVING_QUARTERS)
	{
		TotalAbodesBuilt++;
	}
	else if (abode->GetAbodeType() & ABODE_TYPE_CIVIC)
	{
		TotalCivicBuildingsBuilt++;
	}
	else if (abode->GetAbodeType() & ABODE_TYPE_WONDER)
	{
		TotalWondersBuilt++;
	}
}

void GameStats::IncrementCorrectDisciple(VILLAGER_DISCIPLE disciple)
{
	switch (disciple)
	{
	case VILLAGER_DISCIPLE_FARMER:
		NumDiscipleFarmers++;
		break;
	case VILLAGER_DISCIPLE_FORESTER:
		NumDiscipleForesters++;
		break;
	case VILLAGER_DISCIPLE_FISHERMAN:
		NumDiscipleFishermen++;
		break;
	case VILLAGER_DISCIPLE_BUILDER:
		NumDiscipleBuilders++;
		break;
	case VILLAGER_DISCIPLE_BREEDER:
		NumDiscipleBreeders++;
		break;
	case VILLAGER_DISCIPLE_MISSIONARY:
		NumDiscipleMissionaries++;
		break;
	case VILLAGER_DISCIPLE_CRAFTSMAN:
		NumDiscipleCraftsmen++;
		break;
	case VILLAGER_DISCIPLE_TRADER:
		NumDiscipleTraders++;
		break;
	}
}

void GameStats::IncrementCorrectSpell(MAGIC_TYPE magic_type)
{
	switch (magic_type)
	{
	case MAGIC_TYPE_FIREBALL:
		NumFireballCast++;
		break;
	case MAGIC_TYPE_FIREBALL_PU_ONE:
		NumFireballPU1Cast++;
		break;
	case MAGIC_TYPE_FIREBALL_PU_TWO:
		NumFireballPU2Cast++;
		break;
	case MAGIC_TYPE_LIGHTNING_BOLT:
		NumLightningCast++;
		break;
	case MAGIC_TYPE_LIGHTNING_BOLT_PU_ONE:
		NumLightningPU1Cast++;
		break;
	case MAGIC_TYPE_LIGHTNING_BOLT_PU_TWO:
		NumLightningPU2Cast++;
		break;
	case MAGIC_TYPE_EXPLOSION_ONE:
		NumExplosionCast++;
		break;
	case MAGIC_TYPE_EXPLOSION_ONE_PU_ONE:
		NumExplosionPU1Cast++;
		break;
	case MAGIC_TYPE_EXPLOSION_ONE_PU_TWO:
		NumExplosionPU2Cast++;
		break;
	case MAGIC_TYPE_HEAL:
		NumHealCast++;
		break;
	case MAGIC_TYPE_HEAL_PU_ONE:
		NumHealPU1Cast++;
		break;
	case MAGIC_TYPE_TELEPORT:
		NumTeleportCast++;
		break;
	case MAGIC_TYPE_FOREST:
		NumMagicForestCast++;
		break;
	case MAGIC_TYPE_FOOD:
		NumMagicFoodCast++;
		break;
	case MAGIC_TYPE_FOOD_PU_ONE:
		NumMagicFoodPU1Cast++;
		break;
	case MAGIC_TYPE_STORM_WIND_RAIN:
		NumStormWindRainCast++;
		break;
	case MAGIC_TYPE_STORM_WIND_RAIN_LIGHTNING:
		NumStormWindRainLightningCast++;
		break;
	case MAGIC_TYPE_TORNADO:
		NumTornadoCast++;
		break;
	case MAGIC_TYPE_SHIELD:
		NumMagicShieldCast++;
		break;
	case MAGIC_TYPE_PHYSICAL_SHIELD:
		NumPhysicalShieldCast++;
		break;
	case MAGIC_TYPE_WOOD:
		NumMagicWoodCast++;
		break;
	case MAGIC_TYPE_WATER:
		NumMagicWaterCast++;
		break;
	case MAGIC_TYPE_WATER_PU_ONE:
		NumMagicWaterPU1Cast++;
		break;
	case MAGIC_TYPE_FLOCK_FLYING:
		NumFlockFlyingCast++;
		break;
	case MAGIC_TYPE_FLOCK_GROUND:
		NumFlockGroundCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_FREEZE:
		NumCreatureFreezeCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_SMALL:
		NumCreatureSmallCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_BIG:
		NumCreatureBigCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_WEAK:
		NumCreatureWeakCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_STRONG:
		NumCreatureStrongCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_FAT:
		NumCreatureFatCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_THIN:
		NumCreatureThinCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_INVISIBLE:
		NumCreatureInvisibleCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_COMPASSION:
		NumCreatureCompassionCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_ANGRY:
		NumCreatureAngryCast++;
		break;
	case MAGIC_TYPE_CREATURE_SPELL_ITCHY:
		NumCreatureItchyCast++;
		break;
	}
}

void GameStats::PlayerLostTheGame(GPlayer& player, int reason)
{
	GPlayer* lastOpponent = NULL;
	for (GPlayer* other = GGame::g_game->GetNextActivePlayer(NULL); other != NULL;
	     other = GGame::g_game->GetNextActivePlayer(other))
	{
		if (other != &player && !other->HasLost && other->type == PLAYER_TYPE_HUMAN)
		{
			lastOpponent = other;
#ifdef VERSION_BW1W120
			if (player.type == PLAYER_TYPE_HUMAN || GGame::g_game->SkirmishGame)
#else
			if (player.type == PLAYER_TYPE_HUMAN)
#endif
			{
				other->GetStats()->NumGodsDefeated++;
			}
		}
	}
	if (player.type == PLAYER_TYPE_HUMAN)
	{
		player.GetStats()->Position = IncrementNumPlayersThatHaveLeftTheGame();
		player.GetStats()->LossReason = reason;
	}
	if (GGame::g_game->GetNumberOfPlayersThatHaveLost() == GGame::g_game->GetNoPlayers() - 1 && lastOpponent != NULL)
	{
		lastOpponent->GetStats()->Position = IncrementNumPlayersThatHaveLeftTheGame();
	}
}
