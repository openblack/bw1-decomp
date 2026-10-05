#ifndef BW1_DECOMP_EFFECT_INFO_INCLUDED_H
#define BW1_DECOMP_EFFECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For EFFECT_INFO_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GEffectInfo : public GBaseInfo
{
public:
	float    field_0x10;
	float    field_0x14;
	float    field_0x18;
	float    field_0x1c;
	uint32_t field_0x20;
	float    field_0x24;
	uint32_t field_0x28;
	float    field_0x2c;
	uint32_t field_0x30;

	// Override methods

	// BW1W120 00524dd0 BW1M119 010d0950
	virtual ~GEffectInfo();
	// BW1W120 00524d70 BW1M119 010d0f00
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Constructors

	// BW1W120 00524d40 BW1M119 010d09f0
	GEffectInfo();

	// Static data

	// BW1W120 00cc94c8
	static GEffectInfo Infos[EFFECT_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 010d0db0
	static GEffectInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Effect.h.
	INFO_DATA_BLOCK(field_0x10, field_0x30)
	INFO_ROOT_LOADERS("Effect.h", 27)
};

#endif /* BW1_DECOMP_EFFECT_INFO_INCLUDED_H */
