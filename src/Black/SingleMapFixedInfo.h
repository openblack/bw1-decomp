#ifndef BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

// Forward Declares

class Base;
class GBaseInfo;

class GSingleMapFixedInfo : public GObjectInfo
{
public:
	// Override methods

	// BW1W120 0052dd50 BW1M119 010e7160
	virtual ~GSingleMapFixedInfo();
	// BW1W120 0052dce0 BW1M119 010e75b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 0052dcd0 BW1M119 010c68e0
	virtual MESH_LIST GetMesh() const;
};

#endif /* BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H */
