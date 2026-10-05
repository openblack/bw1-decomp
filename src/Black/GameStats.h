#ifndef BW1_DECOMP_GAME_STATS_INCLUDED_H
#define BW1_DECOMP_GAME_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "EverlastingGraph.h" /* For class EverlastingGraph */
#include "GameThing.h"        /* For struct GameThing */

// Forward Declares

class Abode;
struct GameStatsPackage;
class Base;
class GPlayer;

class GameStats : public GameThing
{
public:
	// BW1W120 00564b40 BW1M119 01323d20
	void Init(GPlayer& player);
	// BW1W120 00564d90 BW1M119 01323ab0
	static void ClearAll();
	// Original static names unrecovered; shared by EndTurn and the stats subsystem.
	// BW1W120 008ffdb8
	static const uint32_t UpdateInterval;
	// BW1W120 00d06040
	static float MaxFrameRate;
	// BW1W120 00d06044
	static float MinFrameRate;
	// BW1W120 00565110 BW1M119 01099f40
	static void AddToTotalLinesOfCodeExecuted();

	uint8_t                          field_0x14[0x34];
	unsigned long                    TotalBirths;
	unsigned long                    TotalDeaths;
	uint8_t                          field_0x50[0x18];
	unsigned long                    TotalPeopleConverted;
	uint8_t                          field_0x6c[0x8];
	unsigned long                    TotalAbodesBuilt;
	uint8_t                          field_0x78[0x8];
	unsigned long                    TotalWondersBuilt;
	uint8_t                          field_0x84[0x20];
	uint32_t                         FoodUsed;
	uint32_t                         WoodUsed;
	EverlastingGraph<float, 500, 50> InfluenceGraph;
	EverlastingGraph<float, 500, 50> PopulationGraph;
	uint8_t                          field_0x1064[0x8];
	uint32_t                         VillagersKilled;
	uint8_t                          field_0x1070[0x10];
	uint32_t                         field_0x1080;
	uint8_t                          field_0x1084[0xa4];

	// Override methods

	// BW1W120 00564b00 BW1M119 01323e00
	virtual ~GameStats();
	// BW1W120 00564ac0 BW1M119 01318e50
	virtual GPlayer* GetPlayer();
	// BW1W120 00564ad0 BW1M119 01318e90
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 00564af0 BW1M119 01318f10
	virtual char* GetDebugText();

	// Non-virtual methods

	// BW1W120 0056a3f0 BW1M119 01319480
	void IncrementAllBuildingsBuilt(Abode* abode);

	// Constructors

	// BW1W120 00564a40 BW1M119 01323e90
	GameStats();

	// BW1W120 0056a320 BW1M119 0102e2b0
	void CheckAllPopulationTotals(unsigned long births, unsigned long deaths);
	// BW1W120 00566890 BW1M119 0131e9a0
	static GameStatsPackage* GetPackage();
	// BW1W120 0056a6d0 BW1M119 01318f50
	static void PlayerLostTheGame(GPlayer& player, int param_2);
};

#endif /* BW1_DECOMP_GAME_STATS_INCLUDED_H */
