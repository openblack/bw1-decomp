#ifndef BW1_DECOMP_REACTION_INFO_INCLUDED_H
#define BW1_DECOMP_REACTION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum GUIDANCE_ALIGNMENT, enum TOWN_DESIRE_INFO */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class ReactionInfo : public GBaseInfo
{
public:
	uint32_t           priority; /* 0x10 */
	uint32_t           numGameTurnsForNormalThingsToReact;
	uint32_t           numGameTurnsForNormalThingsBeforeReactingAgain;
	uint32_t           numGameTurnsForCreatureToReact;
	uint32_t           numGameTurnsForCreatureBeforeReactingAgain; /* 0x20 */
	uint32_t           whetherItImpresses;
	uint32_t           whetherReactionFinishesIfInitiatorInHand;
	float              maxReactionDistance;
	float              howImportantIsDistance; /* 0x30 */
	uint32_t           whetherReactionGrows;
	float              reactionGrowthPerGameTurn;
	uint32_t           stealthRandomChance;
	float              minDistanceToRunAwayFromObject; /* 0x40 */
	float              maxDistanceToRunAwayFromObject;
	float              defaultReactionImpressiveMultiplier;
	float              additionToTownBoredomMultipliers;
	TOWN_DESIRE_INFO   correspondingTownDesire; /* 0x50 */
	TOWN_DESIRE_INFO   correspondingTownDesireForAlignment;
	float              alignmentModifier;
	GUIDANCE_ALIGNMENT alignmentForSFX;
	uint32_t           missing4bytesfromwhere; /* 0x60 */

	// Override methods

	// BW1W120 006e0e60 BW1M100 10135410 ReactionInfo::_dt(void)
	virtual ~ReactionInfo();
	// BW1W120 006e0e00 BW1M100 101368d0 ReactionInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_REACTION_INFO_INCLUDED_H */
