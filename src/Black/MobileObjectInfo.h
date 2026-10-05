#ifndef BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum MOBILE_OBJECT_INFO */

#include "BaseInfo.h"    /* For class GBaseInfo */
#include "MobileInfo.h"  /* For struct GMobileInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GMobileObjectInfo : public GMobileInfo
{
public:
	MOBILE_OBJECT_INFO MobileObjectType; /* 0x104 */
	uint32_t           field_0x108;
	uint32_t           field_0x10c;
	float              field_0x110;

	// Static data

	// BW1W120 00d38448
	static GMobileObjectInfo InfoList[MOBILE_OBJECT_INFO_LAST];

	// Override methods

	// BW1W120 00606da0 BW1M119 010b0350
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = MOBILE_OBJECT_INFO_LAST;
		return GetInfo();
	}
	// BW1W120 00425920 BW1M119 010b0310
	virtual MESH_LIST GetMesh() const;

	// Static methods

	// BW1W120 inlined BW1M119 013c5e40
	static GMobileObjectInfo* GetInfo() { return InfoList; }

	// TODO(#377): The original declared this class in MobileObject.h.
	INFO_DATA_BLOCK(MobileObjectType, field_0x110)
	INFO_DERIVED_LOADERS(GMobileInfo, "MobileObject.h", 21)
};

#endif /* BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H */
