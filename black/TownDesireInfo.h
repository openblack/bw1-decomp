#ifndef BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum VILLAGER_BASIC_INFO */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;
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

// Object Oriented datastructures

// win1.41 00c22c98 mac inlined GTownDesireInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GTownDesireInfo asm("??_R0?AVGTownDesireInfo@@@8");
// win1.41 009b9bd8 mac inlined GTownDesireInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GTownDesireInfo asm("??_R1A@?0A@A@GTownDesireInfo@@8");
// win1.41 009b9bf0 mac inlined GTownDesireInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GTownDesireInfo asm("??_R2GTownDesireInfo@@8");
// win1.41 009b9c00 mac inlined GTownDesireInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GTownDesireInfo asm("??_R3GTownDesireInfo@@8");
// win1.41 0099a094 mac 109e57f0 GTownDesireInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15GTownDesireInfo asm("??_R4GTownDesireInfo@@6B@");
// win1.41 0099a098 mac 109e57f8 GTownDesireInfo::`vftable'
extern const struct GBaseInfoVftable __vt__15GTownDesireInfo asm("??_7GTownDesireInfo@@6B@");

// Non-virtual methods

// win1.41 00746580 mac 1005ebc0 GTownDesireInfo::GetDesireFunctions(void) const
struct GTownDesireFunction* __fastcall GetDesireFunctions__15GTownDesireInfoCFv(const struct GTownDesireInfo* this) asm("?GetDesireFunctions@GTownDesireInfo@@QBEPAUGTownDesireFunction@@XZ");

// Override methods

// win1.41 00744b90 mac 1055d6c0 GTownDesireInfo::_dt(void)
void __fastcall __dt__15GTownDesireInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGTownDesireInfo@@UAEPAXI@Z");
// win1.41 00744b20 mac 1055ef20 GTownDesireInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__15GTownDesireInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GTownDesireInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H */
