#ifndef BW1_DECOMP_FURNITURE_INFO_INCLUDED_H
#define BW1_DECOMP_FURNITURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GFurnitureInfo : public GObjectInfo
{
public:
	// Override methods

	// BW1W120 0054a3c0 BW1M100 100f2b20 GFurnitureInfo::_dt(void)
	virtual ~GFurnitureInfo();
	// BW1W120 0054a350 BW1M100 100f2c30 GFurnitureInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_FURNITURE_INFO_INCLUDED_H */
