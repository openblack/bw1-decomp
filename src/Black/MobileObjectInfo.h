#ifndef BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MobileInfo.h" /* For struct GMobileInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GMobileObjectInfo : public GMobileInfo
{
public:
	uint8_t field_0x104[0x10];

	// Override methods

	// BW1W120 00606e10 BW1M119 010b0200
	virtual ~GMobileObjectInfo();
	// BW1W120 00606da0 BW1M119 010b0350
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00425920 BW1M119 010b0310
	virtual MESH_LIST GetMesh() const;

	// Constructors

	// BW1W120 inlined BW1M119 010b02a0
	GMobileObjectInfo();
};

#endif /* BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H */
