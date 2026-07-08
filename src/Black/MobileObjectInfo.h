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

	// BW1W120 00606e10 BW1M100 100ad680 GMobileObjectInfo::_dt(void)
	virtual ~GMobileObjectInfo();
	// BW1W120 00606da0 BW1M100 100ad7d0 GMobileObjectInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
	// BW1W120 00425920 BW1M100 100ad790 GMobileObjectInfo::GetMesh( const(void))
	virtual uint32_t GetMesh();

	// Constructors

	// BW1W120 inlined BW1M100 100ad720 GMobileObjectInfo::GMobileObjectInfo(void)
	GMobileObjectInfo();
};

#endif /* BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H */
