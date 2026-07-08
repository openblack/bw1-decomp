#ifndef BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H
#define BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GTotemStatueInfo : public GMultiMapFixedInfo
{
public:
	uint32_t field_0x120;

	// Override methods

	// BW1W120 00737af0 BW1M100 10545400 GTotemStatueInfo::_dt(void)
	virtual ~GTotemStatueInfo();
	// BW1W120 00737a80 BW1M100 10545af0 GTotemStatueInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
	// BW1W120 00737a70 BW1M100 10543c90 GTotemStatueInfo::GetMesh( const(void))
	virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H */
