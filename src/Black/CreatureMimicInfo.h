#ifndef BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum DETECTED_PLAYER_ACTION, enum CREATURE_ACTION */
#include <chlasm/Enum.h>         /* For enum CREATURE_DESIRES */
#include <re_common.h>           /* For bool32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

#define MAX_NUM_MIMICKING_ACTIONS 6

// Forward Declares

class Base;

class CreatureMimicInfo : public GBaseInfo
{
public:
	char             Name[0x80];
	float            Priority;
	bool32_t         MimickedOnlyOnLeash;
	CREATURE_ACTION  NoticingAction;
	CREATURE_ACTION  CopyingActions[MAX_NUM_MIMICKING_ACTIONS];
	CREATURE_DESIRES Desire;
	uint32_t         NumActionsPerStage;
	bool32_t         CopiesDesire;

	// Override methods

	// BW1W120 004e9c80 BW1M119 01273df0
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count)
	{
		info_count = DETECTED_PLAYER_ACTION_LAST;
		return Infos;
	}

	// Static data

	// BW1W120 00cab190
	static CreatureMimicInfo Infos[DETECTED_PLAYER_ACTION_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01273d40
	static CreatureMimicInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in CreatureMimic.h.
	INFO_DATA_BLOCK(Name, CopiesDesire)
	INFO_ROOT_LOADERS("CreatureMimic.h", 27)
};
static_assert(sizeof(CreatureMimicInfo) == 0xc0, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H */
