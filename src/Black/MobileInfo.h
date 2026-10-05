#ifndef BW1_DECOMP_MOBILE_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h"  /* For struct GObjectInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

class GMobileInfo : public GObjectInfo
{
public:
	uint32_t field_0x100;

	// TODO(#377): The original declared this class in Mobile.h.
	// Out of line: LoadBinary at 0042e380, Load at 0042e230.
	INFO_DATA_BLOCK(field_0x100, field_0x100)
	INFO_DERIVED_LOADERS(GObjectInfo, "Mobile.h", 12)
};

#endif /* BW1_DECOMP_MOBILE_INFO_INCLUDED_H */
