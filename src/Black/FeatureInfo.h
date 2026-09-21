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

	// BW1W120 00527320 BW1M119 010aa100
	virtual ~GFeatureInfo();
	// BW1W120 00421eb0 BW1M119 010ab420
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00421ea0 BW1M119 010a8550
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00421e80 BW1M119 inlined
	virtual ABODE_TYPE GetAbodeType() const;
	// BW1W120 00421e90 BW1M119 inlined
	virtual ABODE_NUMBER GetAbodeNumber() const;
};

#endif /* BW1_DECOMP_FEATURE_INFO_INCLUDED_H */
