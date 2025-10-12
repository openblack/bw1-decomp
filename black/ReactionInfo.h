#ifndef BW1_DECOMP_REACTION_INFO_INCLUDED_H
#define BW1_DECOMP_REACTION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum GUIDANCE_ALIGNMENT, enum TOWN_DESIRE_INFO */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

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

// Object Oriented datastructures

// win1.41 00c0bb40 mac inlined ReactionInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12ReactionInfo asm("??_R0?AVReactionInfo@@@8");
// win1.41 009b8c48 mac inlined ReactionInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12ReactionInfo asm("??_R1A@?0A@A@ReactionInfo@@8");
// win1.41 009b8c60 mac inlined ReactionInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12ReactionInfo asm("??_R2ReactionInfo@@8");
// win1.41 009b8c70 mac inlined ReactionInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12ReactionInfo asm("??_R3ReactionInfo@@8");
// win1.41 009417e8 mac 1075963c ReactionInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12ReactionInfo asm("??_R4ReactionInfo@@6B@");
// win1.41 009417ec mac 10759644 ReactionInfo::`vftable'
extern const struct GBaseInfoVftable __vt__12ReactionInfo asm("??_7ReactionInfo@@6B@");

// Override methods

// win1.41 006e0e60 mac 10135410 ReactionInfo::_dt(void)
void __fastcall __dt__12ReactionInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GReactionInfo@@UAEPAXI@Z");
// win1.41 006e0e00 mac 101368d0 ReactionInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__12ReactionInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@ReactionInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_REACTION_INFO_INCLUDED_H */
