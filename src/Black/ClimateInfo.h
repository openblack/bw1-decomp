#ifndef BW1_DECOMP_CLIMATE_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For CLIMATE_INFO_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GClimateInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x90];

	// Override methods

	// BW1W120 00770ff0 BW1M119 015a8590
	virtual ~GClimateInfo();
	// BW1W120 00770f80 BW1M119 015aa480
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00dcb198
	static GClimateInfo Infos[CLIMATE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 015a9ef0
	static GClimateInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Weather.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("Weather.h", 61)
};

#endif /* BW1_DECOMP_CLIMATE_INFO_INCLUDED_H */
