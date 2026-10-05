#ifndef BW1_DECOMP_FURNITURE_INFO_INCLUDED_H
#define BW1_DECOMP_FURNITURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h"  /* For struct GObjectInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GFurnitureInfo : public GObjectInfo
{
public:
	uint32_t field_0x100;

	// Override methods

	// BW1W120 0054a3c0 BW1M119 010fbda0
	virtual ~GFurnitureInfo();
	// BW1W120 0054a350 BW1M119 010fbeb0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00cd1690
	static GFurnitureInfo Infos[FURNITURE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 010fbca0
	static GFurnitureInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Furniture.h.
	INFO_DATA_BLOCK(field_0x100, field_0x100)
	INFO_DERIVED_LOADERS(GObjectInfo, "Furniture.h", 18)
};

#endif /* BW1_DECOMP_FURNITURE_INFO_INCLUDED_H */
