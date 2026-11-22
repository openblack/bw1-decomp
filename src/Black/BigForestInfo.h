#ifndef BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GObjectInfo;

class GBigForestInfo : public GMultiMapFixedInfo
{
public:
	MESH_LIST Mesh;            /* 0x120 */
	uint32_t  CarriedTreeType; /* 0x124 */

	// Override methods

	// BW1W120 00438c50 BW1M119 010b5090
	virtual MESH_LIST GetMesh() const { return Mesh; }

	// Static data

	// BW1W120 00c58678
	static GBigForestInfo Infos[BIG_FOREST_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 010b66e0
	static GBigForestInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in BigForest.h.
	INFO_DATA_BLOCK(Mesh, CarriedTreeType)
	INFO_DERIVED_LOADERS(14, "BigForest.h", GMultiMapFixedInfo)
};

#endif /* BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H */
