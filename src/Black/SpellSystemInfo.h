#ifndef BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GSpellSystemInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x3c];

	// Override methods

	// BW1W120 0072ae00 BW1M119 015366a0
	virtual ~GSpellSystemInfo();
	// BW1W120 0072adb0 BW1M119 01536740
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00da0560
	static GSpellSystemInfo Infos[SPELL_SYSTEM_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01074fa0
	static GSpellSystemInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in SpellSeedInfo.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("SpellSeedInfo.h", 21)
};

#endif /* BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H */
