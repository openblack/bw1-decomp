#ifndef BW1_DECOMP_ARROW_INFO_INCLUDED_H
#define BW1_DECOMP_ARROW_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */
#include "InfoLoaders.h"      /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GArrowInfo : public GMobileObjectInfo
{
public:
	uint8_t field_0x114[0x1c];

	// Override methods

	// BW1W120 00425980 BW1M119 010b00c0
	virtual ~GArrowInfo();
	// BW1W120 00425930 BW1M119 010b03b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c56010
	static GArrowInfo Infos[1];

	// Static methods

	// BW1W120 inlined BW1M119 010b0030
	static GArrowInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Arrow.h.
	INFO_DATA_BLOCK(field_0x114, field_0x114)
	INFO_DERIVED_LOADERS(GMobileObjectInfo, "Arrow.h", 13)
};

#endif /* BW1_DECOMP_ARROW_INFO_INCLUDED_H */
