#ifndef BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum VILLAGER_BASIC_INFO */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct GPrayerIconInfo;
struct GTownDesireFunction;

struct GTownDesireInfo
{
  struct GBaseInfo super;  /* 0x0 */
  struct GPrayerIconInfo* associatedPrayerSite;  /* 0x10 */
  float showsAfterPercent;
  float desireTriggersVillagerAction;
  float desireTriggersVillagerEmergencyAction;
  enum VILLAGER_BASIC_INFO associatedVillagerBirth[0x3];  /* 0x20 */
  enum MESH_LIST worshipSiteMesh;
  int worshipSiteSlot;  /* 0x30 */
  float worshipSiteScale;
  float desireToBeliefScale;
  float desireAffectsBeliefAfter;
  float desireBuildWonderReducer;  /* 0x40 */
  float desireValueGreaterCausesDecayInBelief;
  float desireToBeliefThresholdDecay;
  float desireAffectsAlignmentAfter;
  float howImportantDesireIsToAlignment;  /* 0x50 */
  uint32_t maxTimeForAlignmentChange;
  float tribeMultiplier[0x9];
  enum HELP_TEXT helpStartEnum;  /* 0x7c */
  enum HELP_TEXT helpEndEnum;  /* 0x80 */
  enum HELP_TEXT helpStatEnum;
  uint32_t helpMessage;
  uint32_t helpCondition;
};
static_assert(sizeof(struct GTownDesireInfo) == 0x90, "Data type is of wrong size");

static struct GBaseInfoVftable* const __vt__15GTownDesireInfo = (struct GBaseInfoVftable* const)0x0099a098;

// Non-virtual methods

// win1.41 00746580 mac 1005ebc0 GTownDesireInfo::GetDesireFunctions(void) const
struct GTownDesireFunction* __fastcall GetDesireFunctions__15GTownDesireInfoCFv(const struct GTownDesireInfo* this);

#endif /* BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H */
