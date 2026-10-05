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

class TownStats : public Base
{
public:
	uint32_t NumAdults;
	int      NumChildren;
	uint32_t field_0x10;
	uint32_t field_0x14;
	uint32_t field_0x18;
	uint32_t field_0x1c;
	uint32_t field_0x20;
	uint32_t field_0x24;
	uint32_t field_0x28;
	uint32_t field_0x2c;
	uint32_t field_0x30;
	int      MaxVillagersInAbodes;
	uint32_t field_0x38;
	uint32_t field_0x3c;
	uint32_t field_0x40;
	int      NumAbodesAdded;
	int      field_0x48;
	uint32_t VillagerSpaceLeftInAbodes;
	uint32_t field_0x50;
	uint32_t NumMales;
	uint32_t NumFemales;
	uint32_t field_0x5c[0x8];
	uint32_t Deaths[DEATH_REASON_LAST];
	uint32_t field_0xa4[0x9];
	uint8_t  NumDisciples[VILLAGER_DISCIPLE_LAST];
	uint32_t field_0xd8;
	uint32_t field_0xdc;
	uint32_t field_0xe0;
	float    FoodReqiredForDinner;
	float    FoodUsed;
	float    WoodUsed;
	float    field_0xf0;
	float    field_0xf4;
	float    TotalFood;
	float    TotalWood;
	uint32_t field_0x100;
	uint32_t field_0x104;
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
	void ChildToAdult(Villager* param_1);
	// BW1W120 007494c0 BW1M119 0156b930
	void VillagerMoveOutOfAbode(Villager* villager);
	// BW1W120 00749500 BW1M119 0156b880
	void VillagerMoveIntoAbode(Villager* villager);
	// BW1W120 00749780 BW1M119 0156b770
	void VillagerDead(Villager* villager, DEATH_REASON reason, GPlayer* player, float param_4);
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
	void IncrementNumOfDisciples(VILLAGER_DISCIPLE param_1);
	// BW1W120 00749c80 BW1M119 0156ade0
	void DecrementNumOfDisciples(VILLAGER_DISCIPLE param_1);
};

#endif /* BW1_DECOMP_TOWN_STATS_INCLUDED_H */
