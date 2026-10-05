#ifndef BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
struct MapCoords;

class GFieldTypeInfo : public GMultiMapFixedInfo
{
public:
	uint8_t  field_0x120[0x14];
	uint32_t Capacity;
	uint8_t  field_0x138[0x1c];

	// Override methods

	// BW1W120 00527da0 BW1M119 010d6540
	virtual ~GFieldTypeInfo();
	// BW1W120 00527d30 BW1M119 010d63c0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00528e50 BW1M119 010d8a90
	virtual bool IsOkToCreateAtPos(const MapCoords& param_1, float param_2, float param_3) const;

	// Static data

	// BW1W120 00ccf070
	static GFieldTypeInfo Infos[FIELD_INFO_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 010da840
	static GFieldTypeInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Field.h.
	INFO_DATA_BLOCK(field_0x120, field_0x138)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "Field.h", 49)
};

#endif /* BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H */
