#ifndef BW1_DECOMP_POT_INFO_INCLUDED_H
#define BW1_DECOMP_POT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For POT_INFO_LAST */
#include <re_common.h>   /* For bool32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */
#include "InfoLoaders.h"      /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

enum POT_CLASS
{
	POT_CLASS_POT = 0,
	POT_CLASS_FOOD_PILE = 1,
	POT_CLASS_WOOD_PILE = 2
};

class GPotInfo : public GMobileObjectInfo
{
public:
	POT_CLASS     PotClass; /* 0x114 */
	RESOURCE_TYPE ResourceType;
	uint32_t      MaxResource;
	uint32_t      ScaleDivisor;
	POT_INFO      CappedPotInfo;
	REACTION      ReactionType;
	bool32_t      CanBecomePhysicsObject;
	uint32_t      StartMultiPickupAmount;
	uint32_t      MinMultiPickupAmount; /* 0x134 */
	uint32_t      MaxMultiPickupAmount;
	int           MaxHandResource;
	float         ChangeOverSeconds;

	// Static data

	// BW1W120 00d4c660
	static GPotInfo InfoList[POT_INFO_LAST];

	// Override methods

	// BW1W120 0066cbd0 BW1M119 01126640
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = POT_INFO_LAST;
		return InfoList;
	}

	// Static methods

	// The Mac build keeps the table as a function-local static of this function instead.
	// BW1W120 inlined BW1M119 0102d2a0
	static GPotInfo* GetInfo() { return InfoList; }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01002ac0
	POT_INFO GetPotType() const { return (POT_INFO)(this - GetInfo()); }
	// BW1W120 0066cc70 BW1M119 011264b0
	float GetResourceValue() const;
	// BW1W120 0066cce0 BW1M119 inlined
	uint32_t GetMinMultiPickupAmount() const;
	// BW1W120 0066ccf0 BW1M119 inlined
	uint32_t GetMaxMultiPickupAmount() const;
	// BW1W120 0066cd00 BW1M119 01126420
	int GetTicksToChangeOver() const;
	// BW1W120 0066cd30 BW1M119 01126300
	int GetAmountToPickUpDuringMultiPickup(long ticks) const;
	// BW1W120 0066cde0 BW1M119 01126200
	float GetSoundFractionThroughMultiPickUp(long ticks) const;

	// TODO(#377): The original declared this class in Pot.h.
	INFO_DATA_BLOCK(PotClass, ChangeOverSeconds)
	INFO_DERIVED_LOADERS(23, "Pot.h", GMobileObjectInfo)
};
#ifdef VERSION_BW1WCI
static_assert(sizeof(GPotInfo) == 0x148, "GPotInfo size is incorrect");
#else
static_assert(sizeof(GPotInfo) == 0x144, "GPotInfo size is incorrect");
#endif

#endif /* BW1_DECOMP_POT_INFO_INCLUDED_H */
