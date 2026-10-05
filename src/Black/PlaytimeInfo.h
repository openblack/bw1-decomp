#ifndef BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For PLAYTIME_INFO_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GPlaytimeInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x14];

	// Override methods

	// BW1W120 0066c330 BW1M119 0111f7f0
	virtual ~GPlaytimeInfo();
	// BW1W120 0066c2d0 BW1M119 0111f9b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d4c598
	static GPlaytimeInfo Infos[PLAYTIME_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0111f910
	static GPlaytimeInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in PlaytimeDance.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("PlaytimeDance.h", 32)
};

#endif /* BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H */
