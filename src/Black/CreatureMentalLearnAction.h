#ifndef BW1_DECOMP_CREATURE_MENTAL_LEARN_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_LEARN_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION, enum DEVELOPMENT_PHASE */
#include <chlasm/Enum.h>         /* For CREATURE_ACTION_KNOWN_ABOUT_LAST, MAGIC_TYPE_LAST */
#include <re_common.h>           /* For bool32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

class CreatureActionKnownAboutEntry : public GBaseInfo
{
public:
	char              Name[0x40];
	uint32_t          field_0x50;
	uint32_t          field_0x54;
	float             SecondsToLearn;
	uint32_t          field_0x5c;
	DEVELOPMENT_PHASE DevelopmentPhase;
	bool32_t          CanBeTaughtByComputerPlayer;

	// Static data

	// BW1W120 00caaee0
	static CreatureActionKnownAboutEntry NormalActionKnownAboutInfo[CREATURE_ACTION_KNOWN_ABOUT_LAST];

	// Override methods

	// BW1W120 004e2db0 BW1M119 0126b4a0
	virtual ~CreatureActionKnownAboutEntry();
	// BW1W120 004e2d50 BW1M119 0126b710
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static methods

	// BW1W120 inlined BW1M119 0126b550
	static CreatureActionKnownAboutEntry* GetNormalActionKnownAboutInfo() { return NormalActionKnownAboutInfo; }

	INFO_DATA_BLOCK(Name, CanBeTaughtByComputerPlayer)
	INFO_ROOT_LOADERS("CreatureMentalLearnAction.h", 18)
};
static_assert(sizeof(CreatureActionKnownAboutEntry) == 0x68, "Data type is of wrong size");

class CreatureMagicActionKnownAboutEntry : public CreatureActionKnownAboutEntry
{
public:
	CREATURE_ACTION MimickingAction;
	uint32_t        field_0x6c;

	// Static data

	// BW1W120 00ca9c70
	static CreatureMagicActionKnownAboutEntry MagicActionKnownAboutInfo[MAGIC_TYPE_LAST];

	// Override methods

	// BW1W120 004e2e50 BW1M119 0126b370
	virtual ~CreatureMagicActionKnownAboutEntry();

	// Static methods

	// BW1W120 inlined BW1M119 0126b240
	static CreatureMagicActionKnownAboutEntry* GetMagicActionKnownAboutInfo() { return MagicActionKnownAboutInfo; }

	INFO_DATA_BLOCK(MimickingAction, field_0x6c)
	INFO_DERIVED_LOADERS(CreatureActionKnownAboutEntry, "CreatureMentalLearnAction.h", 27)
};
static_assert(sizeof(CreatureMagicActionKnownAboutEntry) == 0x70, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_MENTAL_LEARN_ACTION_INCLUDED_H */
