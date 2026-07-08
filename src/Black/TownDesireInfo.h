#ifndef BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h>     /* For enum MESH_LIST */
#include <chlasm/Enum.h>          /* For enum VILLAGER_BASIC_INFO */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;
class GPrayerIconInfo;
struct GTownDesireFunction;

class GTownDesireInfo : public GBaseInfo
{
public:
	GPrayerIconInfo*    AssociatedPrayerSite; /* 0x10 */
	float               ShowsAfterPercent;
	float               DesireTriggersVillagerAction;
	float               DesireTriggersVillagerEmergencyAction;
	VILLAGER_BASIC_INFO AssociatedVillagerBirth[0x3]; /* 0x20 */
	MESH_LIST           WorshipSiteMesh;
	int                 WorshipSiteSlot; /* 0x30 */
	float               WorshipSiteScale;
	float               DesireToBeliefScale;
	float               DesireAffectsBeliefAfter;
	float               DesireBuildWonderReducer; /* 0x40 */
	float               DesireValueGreaterCausesDecayInBelief;
	float               DesireToBeliefThresholdDecay;
	float               DesireAffectsAlignmentAfter;
	float               HowImportantDesireIsToAlignment; /* 0x50 */
	uint32_t            MaxTimeForAlignmentChange;
	float               TribeMultiplier[0x9];
	HELP_TEXT           HelpStartEnum; /* 0x7c */
	HELP_TEXT           HelpEndEnum;   /* 0x80 */
	HELP_TEXT           HelpStatEnum;
	uint32_t            HelpMessage;
	uint32_t            HelpCondition;

	// Override methods

	// BW1W120 00744b90 BW1M100 1055d6c0 GTownDesireInfo::_dt(void)
	virtual ~GTownDesireInfo();
	// BW1W120 00744b20 BW1M100 1055ef20 GTownDesireInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);

	// Non-virtual methods

	// BW1W120 00746580 BW1M100 1005ebc0 GTownDesireInfo::GetDesireFunctions(void) const
	GTownDesireFunction* GetDesireFunctions();
};

#endif /* BW1_DECOMP_TOWN_DESIRE_INFO_INCLUDED_H */
