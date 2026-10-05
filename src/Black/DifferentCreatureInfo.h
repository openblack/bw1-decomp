#ifndef BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For CREATURE_TYPE_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class DifferentCreatureInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x5c];

	// Override methods

	// BW1W120 00472d50 BW1M119 011d9c40
	virtual ~DifferentCreatureInfo();
	// BW1W120 00472cf0 BW1M119 011ea060
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c5fd30
	static DifferentCreatureInfo Infos[CREATURE_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 011e9db0
	static DifferentCreatureInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Creature.h.
	// Out of line: LoadBinary at 0042e7e0, Load at 0042e7a0.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("Creature.h", 169)
};

#endif /* BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H */
