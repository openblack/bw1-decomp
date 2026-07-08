#ifndef BW1_DECOMP_FEATURE_INFO_INCLUDED_H
#define BW1_DECOMP_FEATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_NUMBER, enum ABODE_TYPE */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GFeatureInfo : public GMultiMapFixedInfo
{
public:
	// Override methods

	// BW1W120 00527320 BW1M100 100a6900 GFeatureInfo::_dt(void)
	virtual ~GFeatureInfo();
	// BW1W120 00421eb0 BW1M100 100a7c10 GFeatureInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
	// BW1W120 00421ea0 BW1M100 100a5310 GFeatureInfo::GetMesh( const(void))
	virtual uint32_t GetMesh();
	// BW1W120 00421e80 BW1M100 inlined GFeatureInfo::GetAbodeType( const(void))
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 00421e90 BW1M100 inlined GFeatureInfo::GetAbodeNumber( const(void))
	virtual ABODE_NUMBER GetAbodeNumber();
};

#endif /* BW1_DECOMP_FEATURE_INFO_INCLUDED_H */
