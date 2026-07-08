#ifndef BW1_DECOMP_TOWN_STATS_INCLUDED_H
#define BW1_DECOMP_TOWN_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For VILLAGER_DISCIPLE_LAST, enum VILLAGER_DISCIPLE */

#include "Base.h" /* For struct Base */

// Forward Declares

struct BaseVftable;
class BuildingSite;
class PlannedMultiMapFixed;
class Villager;

class TownStats : public Base
{
public:
	int          NumAdults; /* 0x8 */
	int          NumChildren;
	uint32_t     field_0x10;
	uint32_t     field_0x14;
	uint32_t     field_0x18;
	uint32_t     field_0x1c;
	uint32_t     field_0x20;
	uint32_t     field_0x24;
	uint32_t     field_0x28;
	uint32_t     field_0x2c;
	uint32_t     field_0x30;
	uint32_t     field_0x34;
	uint32_t     field_0x38;
	uint32_t     field_0x3c;
	uint32_t     field_0x40;
	int          field_0x44;
	int          field_0x48;
	uint32_t     field_0x4c;
	uint32_t     field_0x50;
	uint32_t     field_0x54;
	uint32_t     field_0x58;
	uint32_t     field_0x5c[0x8];
	uint32_t     field_0x7c[0xa];
	uint32_t     field_0xa4[0x9];
	uint8_t      NumDisciples[VILLAGER_DISCIPLE_LAST]; /* 0xc8 */
	uint32_t     field_0xd8;
	uint32_t     field_0xdc;
	uint32_t     field_0xe0;
	uint32_t     field_0xe4;
	uint32_t     field_0xe8;
	float        WoodUsed;
	float        field_0xf0;
	float        field_0xf4;
	float        TotalFood;
	float        TotalWood;
	uint32_t     field_0x100;
	uint32_t     field_0x104;
	uint32_t     field_0x108;
	BaseVftable* field_0x10c;
	uint32_t     field_0x110;
	uint32_t     field_0x114;

	// Override methods

	// BW1W120 007391a0 BW1M100 10558800 TownStats::_dt(void)
	virtual ~TownStats();

	// Non-virtual methods

	// BW1W120 007493c0 BW1M100 10562b60 TownStats::Remove(Villager *)
	void Remove(Villager* villager);
	// BW1W120 00749490 BW1M100 10562ac0 TownStats::ChildToAdult(Villager *)
	void ChildToAdult(Villager* param_1);
	// BW1W120 007494c0 BW1M100 10562a10 TownStats::VillagerMoveOutOfAbode(Villager *)
	void VillagerMoveOutOfAbode(Villager* villager);
	// BW1W120 00749a60 BW1M100 10562330 TownStats::Add(PlannedMultiMapFixed *)
	void Add(PlannedMultiMapFixed* planned);
	// BW1W120 00749aa0 BW1M100 10562220 TownStats::Add(BuildingSite *)
	void Add(BuildingSite* param_1);
	// BW1W120 00749c60 BW1M100 10561dd0 TownStats::IncrementNumOfDisciples(VILLAGER_DISCIPLE)
	void IncrementNumOfDisciples(VILLAGER_DISCIPLE param_1);
	// BW1W120 00749c80 BW1M100 10561d60 TownStats::DecrementNumOfDisciples(VILLAGER_DISCIPLE)
	void DecrementNumOfDisciples(VILLAGER_DISCIPLE param_1);
};

#endif /* BW1_DECOMP_TOWN_STATS_INCLUDED_H */
