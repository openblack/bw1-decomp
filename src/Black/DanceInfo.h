#ifndef BW1_DECOMP_DANCE_INFO_INCLUDED_H
#define BW1_DECOMP_DANCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For DANCE_INFO_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GDanceInfo : public GBaseInfo
{
public:
	uint32_t field_0x10;
	uint32_t field_0x14;
	uint8_t  field_0x18[0x8c];
	uint32_t field_0xa4;
	uint8_t  field_0xa8[0x8];

	// Override methods

	// BW1W120 0050b670 BW1M119 012abf40
	virtual ~GDanceInfo();
	// BW1W120 0050b600 BW1M119 012ad780
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00cc4b80
	static GDanceInfo Infos[DANCE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 012ad6e0
	static GDanceInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Dance.h.
	INFO_DATA_BLOCK(field_0x10, field_0xa8)
	INFO_ROOT_LOADERS("Dance.h", 39)
};

#endif /* BW1_DECOMP_DANCE_INFO_INCLUDED_H */
