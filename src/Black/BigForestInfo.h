#ifndef BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GObjectInfo;

class GBigForestInfo : public GMultiMapFixedInfo
{
public:
	uint8_t field_0x120[0x8];

	// Override methods

	// BW1W120 00438cb0 BW1M119 010b5f30
	virtual ~GBigForestInfo();
	// BW1W120 00438c50 BW1M119 010b5090
	virtual MESH_LIST GetMesh() const;
};

#endif /* BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H */
