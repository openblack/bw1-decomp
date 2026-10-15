#ifndef BW1_DECOMP_TOWN_STATS_INCLUDED_H
#define BW1_DECOMP_TOWN_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For VILLAGER_DISCIPLE_LAST, enum DEATH_REASON, enum VILLAGER_DISCIPLE */

#include "Base.h" /* For struct Base */

// Forward Declares

struct BaseVftable;
class Abode;
class BuildingSite;
class GPlayer;
class PlannedMultiMapFixed;
class Villager;

#define TOWN_STATS_PLAYER_COUNT 8

class TownStats : public Base
{
public:
	uint32_t NumAdults;
	int      NumChildren;
	uint32_t NumAbodes;
	uint32_t NumPlannedBuildings;
	uint32_t NumBuildingSites;
	uint32_t NumCivicBuildings;
	uint32_t NumCivicBuildingSites;
	uint32_t NumPlannedCivicBuildings;
	uint32_t NumPlannedWonders;
	uint32_t NumWonderSites;
	uint32_t TotalSpaceLeftInAbodes;
	int      MaxVillagersInAbodes;
	uint32_t RecentDeaths;
	uint32_t NumChildrenAdded;
	uint32_t MaxChildrenInAbodes;
	int      NumAbodesAdded;
	int      NumWonders;
	uint32_t VillagerSpaceLeftInAbodes;
	uint32_t ChildSpaceLeftInAbodes;
	uint32_t NumMales;
	uint32_t NumFemales;
	uint32_t DeathsByOwner[TOWN_STATS_PLAYER_COUNT];
	uint32_t Deaths[DEATH_REASON_LAST];
	uint32_t DeathsByKiller[TOWN_STATS_PLAYER_COUNT + 1];
	uint8_t  NumDisciples[VILLAGER_DISCIPLE_LAST];
	uint32_t LastDeathTurn;
	uint32_t NumDeaths;
	uint32_t LastAbodeAddedTurn;
	float    FoodReqiredForDinner;
	float    FoodUsed;
	float    WoodUsed;
	float    AverageFoodUsed;
	float    AverageWoodUsed;
	float    TotalFood;
	float    TotalWood;
	float    TotalBuildingSiteCost;
	uint32_t NumWounded;
	uint8_t  NumAbodesOfNumber[ABODE_NUMBER_LAST];

	// Override methods

	// BW1W120 007391a0 BW1M119 01561e60
	virtual ~TownStats() {}

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	TownStats() { SetToZero(); }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 null
	uint32_t GetVillagerSpaceLeftInAbodes() const { return VillagerSpaceLeftInAbodes; }
	// BW1W120 inlined BW1M119 null
	uint32_t GetMaxVillagersInAbodes() const { return MaxVillagersInAbodes; }
	// BW1W120 inlined BW1M119 null
	uint32_t GetPopulation() const { return NumAdults + NumChildren; }
	// BW1W120 007491f0 BW1M119 0156bd60
	void SetToZero();
	// BW1W120 007492e0 BW1M119 0156bbf0
	void Add(Villager* villager);
	// BW1W120 007493c0 BW1M119 0156ba80
	void Remove(Villager* villager);
	// BW1W120 00749490 BW1M119 0156b9e0
	void ChildToAdult(Villager* villager);
	// BW1W120 007494c0 BW1M119 0156b930
	void VillagerMoveOutOfAbode(Villager* villager);
	// BW1W120 00749500 BW1M119 0156b880
	void VillagerMoveIntoAbode(Villager* villager);
	// BW1W120 00749780 BW1M119 0156b770
	void VillagerDead(Villager* villager, DEATH_REASON reason, GPlayer* player, float);
	// BW1W120 00749800 BW1M119 0156b670
	void ProcessBirthday();
	// BW1W120 007498c0 BW1M119 0156b4c0
	void Add(Abode* abode);
	// BW1W120 00749990 BW1M119 0156b320
	void Remove(Abode* abode);
	// BW1W120 00749a60 BW1M119 0156b250
	void Add(PlannedMultiMapFixed* planned);
	// BW1W120 00749aa0 BW1M119 0156b140
	void Add(BuildingSite* param_1);
	// BW1W120 00749b10 BW1M119 0156b070
	void Remove(PlannedMultiMapFixed* planned);
	// BW1W120 00749b50 BW1M119 0156af60
	void Remove(BuildingSite* site);
	// BW1W120 00749c60 BW1M119 0156ae50
	void IncrementNumOfDisciples(VILLAGER_DISCIPLE disciple);
	// BW1W120 00749c80 BW1M119 0156ade0
	void DecrementNumOfDisciples(VILLAGER_DISCIPLE disciple);
};

#endif /* BW1_DECOMP_TOWN_STATS_INCLUDED_H */
