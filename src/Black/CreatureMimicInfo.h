#ifndef BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class CreatureMimicInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0xb0];

	// Override methods

	// BW1W120 004e9cf0 BW1M119 012728c0
	virtual ~CreatureMimicInfo();
	// BW1W120 004e9c80 BW1M119 01273df0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00cab190
	static CreatureMimicInfo Infos[DETECTED_PLAYER_ACTION_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01273d40
	static CreatureMimicInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in CreatureMimic.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("CreatureMimic.h", 27)
};

#endif /* BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H */
