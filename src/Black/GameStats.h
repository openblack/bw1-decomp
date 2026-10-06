#ifndef BW1_DECOMP_GAME_STATS_INCLUDED_H
#define BW1_DECOMP_GAME_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <time.h>   /* For time_t */

#include <chlasm/Enum.h>                            /* For enum MAGIC_TYPE, enum VILLAGER_DISCIPLE */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <re_common.h>                              /* For bool32_t */

#include "EverlastingGraph.h" /* For class EverlastingGraph */
#include "GameThing.h"        /* For struct GameThing */

// Forward Declares

class Abode;
class GPlayer;
class GameOSFile;

struct GameStatsPackage
{
	struct GameStatsGraph
	{
		float         Data[500];
		unsigned long Index;
	};

	struct GameStatsPerPlayer
	{
		LH3DColor      Colour;
		unsigned long  Position;
		unsigned long  LossReason;
		float          field_0xc;
		float          field_0x10[4];
		unsigned long  TotalBirths;
		unsigned long  TotalDeaths;
		unsigned long  FinalTotalPopulation;
		unsigned long  FinalMalePopulation;
		unsigned long  FinalFemalePopulation;
		unsigned long  FinalTotalPopulationCapacity;
		unsigned long  MaxTotalPopulation;
		unsigned long  MaxMalePopulation;
		unsigned long  MaxFemalePopulation;
		unsigned long  MinTotalPopulation;
		unsigned long  MinMalePopulation;
		unsigned long  MinFemalePopulation;
		unsigned long  TotalPeopleConverted;
		float          AverageSatisfactionOfVillagers;
		unsigned long  TownsOwned;
		unsigned long  TotalBuildings;
		unsigned long  TotalAbodes;
		unsigned long  TotalCivicBuildings;
		unsigned long  TotalWonders;
		unsigned long  TotalBuildingsBuilt;
		unsigned long  TotalAbodesBuilt;
		unsigned long  TotalCivicBuildingsBuilt;
		unsigned long  TotalWondersBuilt;
		unsigned long  NumDiscipleFarmers;
		unsigned long  NumDiscipleForesters;
		unsigned long  NumDiscipleFishermen;
		unsigned long  NumDiscipleBuilders;
		unsigned long  NumDiscipleBreeders;
		unsigned long  NumDiscipleTraders;
		unsigned long  NumDiscipleMissionaries;
		unsigned long  NumDiscipleCraftsmen;
		unsigned long  TotalFoodEaten;
		unsigned long  WoodUsed;
		unsigned long  NumGodsDefeated;
		float          AligmentChange;
		unsigned long  TotalPeopleKilled;
		float          FinalTotalBelief;
		float          MaxTotalBelief;
		float          MinTotalBelief;
		float          FinalAreaOfInfluence;
		unsigned long  NumOfArtifacts;
		float          CreatureGrowth;
		float          CreatureAlignmentChange;
		unsigned long  BuildingsDestroyed;
		unsigned long  TotalAgressiveSpellsCast;
		unsigned long  TotalNiceSpellsCast;
		unsigned long  TotalCreatureSpellsCast;
		unsigned long  NumFireballCast;
		unsigned long  NumFireballPU1Cast;
		unsigned long  NumFireballPU2Cast;
		unsigned long  NumLightningCast;
		unsigned long  NumLightningPU1Cast;
		unsigned long  NumLightningPU2Cast;
		unsigned long  NumExplosionCast;
		unsigned long  NumExplosionPU1Cast;
		unsigned long  NumExplosionPU2Cast;
		unsigned long  NumHealCast;
		unsigned long  NumHealPU1Cast;
		unsigned long  NumTeleportCast;
		unsigned long  NumMagicForestCast;
		unsigned long  NumMagicFoodCast;
		unsigned long  NumMagicFoodPU1Cast;
		unsigned long  NumStormWindRainCast;
		unsigned long  NumStormWindRainLightningCast;
		unsigned long  NumTornadoCast;
		unsigned long  NumMagicShieldCast;
		unsigned long  NumPhysicalShieldCast;
		unsigned long  NumMagicWoodCast;
		unsigned long  NumMagicWaterCast;
		unsigned long  NumMagicWaterPU1Cast;
		unsigned long  NumFlockFlyingCast;
		unsigned long  NumFlockGroundCast;
		unsigned long  NumCreatureFreezeCast;
		unsigned long  NumCreatureSmallCast;
		unsigned long  NumCreatureBigCast;
		unsigned long  NumCreatureWeakCast;
		unsigned long  NumCreatureStrongCast;
		unsigned long  NumCreatureFatCast;
		unsigned long  NumCreatureThinCast;
		unsigned long  NumCreatureInvisibleCast;
		unsigned long  NumCreatureCompassionCast;
		unsigned long  NumCreatureAngryCast;
		unsigned long  NumCreatureItchyCast;
		float          TotalChantsUsed;
		unsigned long  TotalNumSacrifices;
		GameStatsGraph InfluenceGraph;
		GameStatsGraph PopulationGraph;
		unsigned long  CreatureAge;
		float          CreatureAlignment;
		unsigned long  CreatureNumPeopleKilled;
		unsigned long  CreatureNumAnimalsKilled;
		unsigned long  CreatureNumCreaturesKilled;
		unsigned long  CreatureNumBattlesFought;
		unsigned long  CreatureNumBattlesWon;
		unsigned long  CreatureNumPoos;
		unsigned long  CreatureNumMushroomsEaten;
		float          CreatureHunger;
		float          CreatureDamage;
		float          CreatureTiredness;

		// BW1W120 inlined BW1M119 013240b0
		GameStatsPerPlayer() {}
	};

	short              NumPlayers;
	GameStatsPerPlayer PerPlayer[4];
	unsigned long      TotalLinesOfCodeExecuted;
	float              MaxFrameRate;
	float              MinFrameRate;
	unsigned long      NumBaseAllocations;
	unsigned long      TimePlayed;
	unsigned long      InstructionCount;
	unsigned long      StatsVersion;
	unsigned long      DistanceDragged;
	unsigned long      TimeLookingAtSky;
	unsigned long      TimeLookingAtGround;
	unsigned long      GesturesDone;
	unsigned long      ZoomCount;
	unsigned long      RotateCount;
	unsigned long      PitchCount;
	unsigned long      TotalInterfaceActions;
	unsigned long      TotalObjectsThrown;
	unsigned long      TotalThingsPickedUp;
	unsigned long      NumFightAttacks;
	unsigned long      NumFightBlocks;
	unsigned long      NumFightSteps;

	// BW1W120 inlined BW1M119 inlined
	GameStatsPackage() { SetToZero(); }
	// BW1W120 inlined BW1M119 01324040
	~GameStatsPackage() {}

	// BW1W120 005670f0 BW1M119 0131e020
	void SetToZero();
	// BW1W120 005673d0 BW1M119 01319a90
	char* GetDatabaseStatsString();
};

static_assert(sizeof(GameStatsPackage::GameStatsPerPlayer) == 0x114c, "Data type is of wrong size");
static_assert(sizeof(GameStatsPackage) == 0x4584, "Data type is of wrong size");

class GameStats : public GameThing
{
public:
	struct TownStatsStructure
	{
		uint32_t LastUpdateTurn;
		uint32_t FinalTotalPopulation;
		uint32_t FinalMalePopulation;
		uint32_t FinalFemalePopulation;
		uint32_t FinalTotalPopulationCapacity;
		uint32_t TownsOwned;
		uint32_t TotalBuildings;
		uint32_t TotalAbodes;
		uint32_t TotalCivicBuildings;
		uint32_t TotalWonders;

		// BW1W120 00564d70 BW1M119 inlined
		void SetToZero();
		// BW1W120 00564dd0 BW1M119 01323a00
		bool32_t IsValid();
	};

	// Static data

	// BW1W120 008ffdb8
	static const uint32_t UpdateInterval;
	// BW1W120 00bee568
	static uint32_t StatsVersion;
	// BW1W120 00d0603c
	static uint32_t TotalLinesOfCodeExecuted;
	// BW1W120 00d06040
	static float MaxFrameRate;
	// BW1W120 00d06044
	static float MinFrameRate;
	// BW1W120 00d06048
	static uint32_t NumBaseAllocations;
	// BW1W120 00d0604c
	static time_t StartTime;
	// BW1W120 00d06050
	static uint32_t NumTownsAtStart;
	// BW1W120 00d06054
	static uint32_t NumPlayersThatHaveLeftTheGame;
	// BW1W120 00d01ab0
	static GameStatsPackage Package;

	GPlayer*                         Player;
	uint32_t                         Position;
	uint32_t                         LossReason;
	TownStatsStructure               TownStats;
	uint32_t                         TotalBirths;
	uint32_t                         TotalDeaths;
	uint32_t                         MaxTotalPopulation;
	uint32_t                         MaxMalePopulation;
	uint32_t                         MaxFemalePopulation;
	uint32_t                         MinTotalPopulation;
	uint32_t                         MinMalePopulation;
	uint32_t                         MinFemalePopulation;
	uint32_t                         TotalPeopleConverted;
	float                            TotalVillagerSatisfaction;
	uint32_t                         NumVillagerSatisfactionSamples;
	uint32_t                         TotalBuildingsBuilt;
	uint32_t                         TotalAbodesBuilt;
	uint32_t                         TotalCivicBuildingsBuilt;
	uint32_t                         TotalWondersBuilt;
	uint32_t                         NumDiscipleFarmers;
	uint32_t                         NumDiscipleForesters;
	uint32_t                         NumDiscipleFishermen;
	uint32_t                         NumDiscipleBuilders;
	uint32_t                         NumDiscipleBreeders;
	uint32_t                         NumDiscipleTraders;
	uint32_t                         NumDiscipleMissionaries;
	uint32_t                         NumDiscipleCraftsmen;
	uint32_t                         FoodUsed;
	uint32_t                         WoodUsed;
	EverlastingGraph<float, 500, 50> InfluenceGraph;
	EverlastingGraph<float, 500, 50> PopulationGraph;
	uint32_t                         NumGodsDefeated;
	float                            StartAlignment;
	uint32_t                         VillagersKilled;
	float                            MaxTotalBelief;
	float                            MinTotalBelief;
	float                            StartCreatureSize;
	float                            StartCreatureAlignment;
	uint32_t                         BuildingsDestroyed;
	uint32_t                         field_0x1084;
	uint32_t                         field_0x1088;
	uint32_t                         field_0x108c;
	uint32_t                         NumFireballCast;
	uint32_t                         NumFireballPU1Cast;
	uint32_t                         NumFireballPU2Cast;
	uint32_t                         NumLightningCast;
	uint32_t                         NumLightningPU1Cast;
	uint32_t                         NumLightningPU2Cast;
	uint32_t                         NumExplosionCast;
	uint32_t                         NumExplosionPU1Cast;
	uint32_t                         NumExplosionPU2Cast;
	uint32_t                         NumHealCast;
	uint32_t                         NumHealPU1Cast;
	uint32_t                         NumTeleportCast;
	uint32_t                         NumMagicForestCast;
	uint32_t                         NumMagicFoodCast;
	uint32_t                         NumMagicFoodPU1Cast;
	uint32_t                         NumStormWindRainCast;
	uint32_t                         NumStormWindRainLightningCast;
	uint32_t                         NumTornadoCast;
	uint32_t                         NumMagicShieldCast;
	uint32_t                         NumPhysicalShieldCast;
	uint32_t                         NumMagicWoodCast;
	uint32_t                         NumMagicWaterCast;
	uint32_t                         NumMagicWaterPU1Cast;
	uint32_t                         NumFlockFlyingCast;
	uint32_t                         NumFlockGroundCast;
	uint32_t                         NumCreatureFreezeCast;
	uint32_t                         NumCreatureSmallCast;
	uint32_t                         NumCreatureBigCast;
	uint32_t                         NumCreatureWeakCast;
	uint32_t                         NumCreatureStrongCast;
	uint32_t                         NumCreatureFatCast;
	uint32_t                         NumCreatureThinCast;
	uint32_t                         NumCreatureInvisibleCast;
	uint32_t                         NumCreatureCompassionCast;
	uint32_t                         NumCreatureAngryCast;
	uint32_t                         NumCreatureItchyCast;
	float                            TotalChantsUsed;
	uint32_t                         TotalNumSacrifices;

	// Constructors

	// BW1W120 00564a40 BW1M119 01323e90
	GameStats();

	// Override methods

	// BW1W120 00564ac0 BW1M119 01318e50
	virtual GPlayer* GetPlayer() { return Player; }
	// BW1W120 00564ad0 BW1M119 01318e90
	virtual void SetPlayer(GPlayer* player) { Player = player; }
	// BW1W120 00564ae0 BW1M119 01318ed0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GAME_STATS; }
	// BW1W120 00564af0 BW1M119 01318f10
	virtual char* GetDebugText() { return "GameStats:"; }
	// BW1W120 00564b30 BW1M119 01323e00
	virtual ~GameStats();
	// BW1W120 005654f0 BW1M119 013209a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00565e70 BW1M119 0131ef20
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005667f0 BW1M119 0131ee50
	virtual void SaveExtraData(GameOSFile& file);

	// Static methods

	// BW1W120 00564d90 BW1M119 01323ab0
	static void ClearAll();
	// BW1W120 00565110 BW1M119 01099f40
	static void AddToTotalLinesOfCodeExecuted();
	// BW1W120 00566850 BW1M119 0131ed90
	static uint32_t GetNumPlayersInGame();
	// BW1W120 00566890 BW1M119 0131e9a0
	static GameStatsPackage* GetPackage();
	// BW1W120 0056a6d0 BW1M119 01318f50
	static void PlayerLostTheGame(GPlayer& player, int reason);
	// BW1W120 inlined BW1M119 01319090
	static uint32_t IncrementNumPlayersThatHaveLeftTheGame() { return ++NumPlayersThatHaveLeftTheGame; }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	float GetTotalChantsUsed() { return TotalChantsUsed; }
	// BW1W120 00564b40 BW1M119 01323d20
	void Init(GPlayer& player);
	// BW1W120 00564ba0 BW1M119 01323b50
	void SetToZero();
	// BW1W120 00564df0 BW1M119 01323880
	void FillInTownStatsStructure();
	// BW1W120 00564ec0 BW1M119 01323800
	uint32_t GetFinalTotalPopulation();
	// BW1W120 00564ee0 BW1M119 01323780
	uint32_t GetFinalMalePopulation();
	// BW1W120 00564f00 BW1M119 01323700
	uint32_t GetFinalFemalePopulation();
	// BW1W120 00564f20 BW1M119 01323670
	uint32_t GetFinalTotalPopulationCapacity();
	// BW1W120 00564f40 BW1M119 013235f0
	uint32_t GetTownsOwned();
	// BW1W120 00564f60 BW1M119 01323570
	uint32_t GetTotalBuildings();
	// BW1W120 00564f80 BW1M119 013234f0
	uint32_t GetTotalAbodes();
	// BW1W120 00564fa0 BW1M119 01323470
	uint32_t GetTotalCivicBuildings();
	// BW1W120 00564fc0 BW1M119 013233f0
	uint32_t GetTotalWonders();
	// BW1W120 00564fe0 BW1M119 inlined
	float GetAlignmentChange();
	// BW1W120 00565000 BW1M119 01323310
	float GetFinalTotalBelief();
	// BW1W120 00565050 BW1M119 013232a0
	float GetFinalAreaOfInfluence();
	// BW1W120 00565060 BW1M119 013231a0
	float GetCreatureGrowth();
	// BW1W120 005650c0 BW1M119 013230b0
	float GetCreatureAlignmentChange();
	// BW1W120 00565170 BW1M119 01323000
	uint32_t GetTimePlayed();
	// BW1W120 00565190 BW1M119 inlined
	uint32_t GetInstructionCount();
	// BW1W120 005651a0 BW1M119 01322f60
	uint32_t GetDistanceDragged();
	// BW1W120 005651c0 BW1M119 01322ef0
	uint32_t GetTimeLookingAtSky();
	// BW1W120 005651e0 BW1M119 01322e80
	uint32_t GetTimeLookingAtGround();
	// BW1W120 00565200 BW1M119 01322e10
	uint32_t GetGesturesDone();
	// BW1W120 00565220 BW1M119 01322d70
	uint32_t GetZoomCount();
	// BW1W120 00565240 BW1M119 01322d00
	uint32_t GetRotateCount();
	// BW1W120 00565260 BW1M119 01322c90
	uint32_t GetPitchCount();
	// BW1W120 00565280 BW1M119 01322c20
	uint32_t GetTotalInterfaceActions();
	// BW1W120 005652a0 BW1M119 01322bb0
	uint32_t GetTotalObjectsThrown();
	// BW1W120 005652c0 BW1M119 01322b40
	uint32_t GetTotalThingsPickedUp();
	// BW1W120 005652e0 BW1M119 01322ad0
	uint32_t GetNumFightAttacks();
	// BW1W120 00565300 BW1M119 01322a60
	uint32_t GetNumFightBlocks();
	// BW1W120 00565320 BW1M119 013229b0
	uint32_t GetNumFightSteps();
	// BW1W120 00565340 BW1M119 01322920
	uint32_t GetCreatureAge();
	// BW1W120 00565360 BW1M119 01322890
	float GetCreatureAlignment();
	// BW1W120 00565380 BW1M119 01322800
	uint32_t GetCreatureNumPeopleKilled();
	// BW1W120 005653a0 BW1M119 01322770
	uint32_t GetCreatureNumAnimalsKilled();
	// BW1W120 005653c0 BW1M119 013226e0
	uint32_t GetCreatureNumCreaturesKilled();
	// BW1W120 005653e0 BW1M119 01322650
	uint32_t GetCreatureNumBattlesFought();
	// BW1W120 00565400 BW1M119 013225c0
	uint32_t GetCreatureNumBattlesWon();
	// BW1W120 00565420 BW1M119 01322510
	float GetCreatureDamage();
	// BW1W120 00565450 BW1M119 01322470
	float GetCreatureHunger();
	// BW1W120 00565480 BW1M119 013223d0
	float GetCreatureTiredness();
	// BW1W120 005654b0 BW1M119 01322350
	uint32_t GetCreatureNumPoos();
	// BW1W120 005654d0 BW1M119 013222c0
	uint32_t GetCreatureNumMushroomsEaten();
	// BW1W120 00566bc0 BW1M119 0131e370
	void FillInGameStatsPerPlayer(GameStatsPackage::GameStatsPerPlayer& stats);
	// BW1W120 005670d0 BW1M119 0131e300
	char* GetDatabaseStatsString();
	// BW1W120 0056a1c0 BW1M119 inlined
	uint32_t GetTotalAgressiveSpellsCast();
	// BW1W120 0056a220 BW1M119 inlined
	uint32_t GetTotalNiceSpellsCast();
	// BW1W120 0056a270 BW1M119 inlined
	uint32_t GetTotalCreatureSpellsCast();
	// BW1W120 0056a2c0 BW1M119 013199b0
	uint32_t GetNumOfArtifacts();
	// BW1W120 0056a320 BW1M119 0102e2b0
	void CheckAllPopulationTotals(unsigned long males, unsigned long females);
	// BW1W120 0056a350 BW1M119 inlined
	void CheckNewMaxMinTotalPopulation(unsigned long population);
	// BW1W120 0056a370 BW1M119 inlined
	void CheckNewMaxMinMalePopulation(unsigned long population);
	// BW1W120 0056a390 BW1M119 inlined
	void CheckNewMaxMinFemalePopulation(unsigned long population);
	// BW1W120 0056a3b0 BW1M119 0108c0e0
	void CheckNewMaxMinTotalBelief(float belief);
	// BW1W120 0056a3f0 BW1M119 01319480
	void IncrementAllBuildingsBuilt(Abode* abode);
	// BW1W120 0056a450 BW1M119 01319390
	void IncrementCorrectDisciple(VILLAGER_DISCIPLE disciple);
	// BW1W120 0056a4d0 BW1M119 013190f0
	void IncrementCorrectSpell(MAGIC_TYPE magic_type);
};

static_assert(sizeof(GameStats) == 0x1128, "Data type is of wrong size");

#endif /* BW1_DECOMP_GAME_STATS_INCLUDED_H */
