#ifndef BW1_DECOMP_FIELD_INFO_INCLUDED_H
#define BW1_DECOMP_FIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GFieldInfo : public GMultiMapFixedInfo
{
public:
	uint8_t field_0x120[0x2c];

	// Override methods

	// BW1W120 00527cc0 BW1M119 010da9e0
	virtual ~GFieldInfo();

	// Static data

	// BW1W120 00ccf868
	static GFieldInfo Infos[2];

	// Static methods

	// BW1W120 inlined BW1M119 010da8e0
	static GFieldInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Field.h.
	INFO_DATA_BLOCK(field_0x120, field_0x120)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "Field.h", 29)
};

#endif /* BW1_DECOMP_FIELD_INFO_INCLUDED_H */
