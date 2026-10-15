#ifndef BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H
#define BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <string.h> /* For memcpy */

#include <re_common.h> /* For bool32_t */

#include <chlasm/Enum.h>          /* For enum CREATURE_ACTION_KNOWN_ABOUT */
#include <chlasm/GStates.h>       /* For VILLAGER_STATE_LAST_STATE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For struct LHFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>   /* For operator new(size_t, const char*, uint32_t) */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

class GVillagerStateTableInfo : public GBaseInfo
{
public:
	// Static data

	// BW1W120 00db9e68 BW1M119 01b9a988
	static GVillagerStateTableInfo Infos[VILLAGER_STATE_LAST_STATE];

	int                         Anim;
	int                         TownDesireType;
	float                       TownDesireAmount;
	bool32_t                    isFinalState;
	bool32_t                    isTransientState;
	bool32_t                    isMovingForAnimation;
	uint32_t                    isScriptState;
	uint32_t                    isScriptInterruptableState;
	int                         ReturnState;
	uint32_t                    SpeedId;
	char                        name[0x80];
	int                         AvailableState;
	uint32_t                    field_0xbc;
	bool32_t                    CanBeCalledToDinner;
	uint32_t                    field_0xc4;
	bool32_t                    isReactiveState;
	uint32_t                    field_0xcc;
	int                         field_0xd0;
	bool32_t                    CanPauseForASecond;
	float                       FoodInterestMultiplier;
	float                       WoodInterestMultiplier;
	uint32_t                    field_0xe0;
	uint32_t                    field_0xe4;
	bool32_t                    IsWorshipState;
	int                         CarriedObject;
	CREATURE_ACTION_KNOWN_ABOUT ActionKnownAbout;
	bool32_t                    PerformsLivingChecks;
	bool32_t                    CanGoHomeWhenHurt;
	bool32_t                    canReact;
	bool32_t                    SkipOutofAnimation;
	uint32_t                    field_0x104;
	float                       LifeReductionPerTurn;
	uint32_t                    StateHelpText;
	HELP_TEXT                   QueryHelpText;

	// Override methods

	// BW1W120 007695f0 BW1M119 015a3490
	virtual ~GVillagerStateTableInfo();
	// BW1W120 00769580 BW1M119 015a35b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& count);

	// Static methods

	// BW1W120 inlined BW1M119 0104d9a0
	static GVillagerStateTableInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in VillagerStates.h.
	INFO_DATA_BLOCK(Anim, QueryHelpText)
	INFO_ROOT_LOADERS("VillagerStates.h", 23)
};

#endif /* BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H */
