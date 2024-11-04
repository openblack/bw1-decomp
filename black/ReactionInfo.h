#ifndef BW1_DECOMP_REACTION_INFO_INCLUDED_H
#define BW1_DECOMP_REACTION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum GUIDANCE_ALIGNMENT, enum TOWN_DESIRE_INFO */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct ReactionInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint32_t priority;  /* 0x10 */
  uint32_t numGameTurnsForNormalThingsToReact;
  uint32_t numGameTurnsForNormalThingsBeforeReactingAgain;
  uint32_t numGameTurnsForCreatureToReact;
  uint32_t numGameTurnsForCreatureBeforeReactingAgain;  /* 0x20 */
  uint32_t whetherItImpresses;
  uint32_t whetherReactionFinishesIfInitiatorInHand;
  float maxReactionDistance;
  float howImportantIsDistance;  /* 0x30 */
  uint32_t whetherReactionGrows;
  float reactionGrowthPerGameTurn;
  uint32_t stealthRandomChance;
  float minDistanceToRunAwayFromObject;  /* 0x40 */
  float maxDistanceToRunAwayFromObject;
  float defaultReactionImpressiveMultiplier;
  float additionToTownBoredomMultipliers;
  enum TOWN_DESIRE_INFO correspondingTownDesire;  /* 0x50 */
  enum TOWN_DESIRE_INFO correspondingTownDesireForAlignment;
  float alignmentModifier;
  enum GUIDANCE_ALIGNMENT alignmentForSFX;
  uint32_t missing4bytesfromwhere;  /* 0x60 */
};
static_assert(sizeof(struct ReactionInfo) == 0x64, "Data type is of wrong size");

static struct GBaseInfoVftable* __vt__12ReactionInfo = (struct GBaseInfoVftable*)0x009417ec;

#endif /* BW1_DECOMP_REACTION_INFO_INCLUDED_H */
