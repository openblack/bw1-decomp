#ifndef BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H
#define BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For SPOT_VISUAL_TYPE_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GSpotVisualInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x44];

	// Override methods

	// BW1W120 0063e070 BW1M119 01119ad0
	virtual ~GSpotVisualInfo();
	// BW1W120 0063e020 BW1M119 0111a740
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d44470
	static GSpotVisualInfo Infos[SPOT_VISUAL_TYPE_LAST];

	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("SpotVisualInfo.h", 7)
};

#endif /* BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H */
