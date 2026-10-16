#ifndef BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Citadel;
struct MapCoords;

class GCitadelPartInfo : public GMultiMapFixedInfo
{
public:
	uint32_t  field_0x120;
	MESH_LIST mesh;
	float     life;
	uint32_t  field_0x12c;
	float     field_0x130;

	// Override methods

	// BW1W120 00464370 BW1M119 011c22c0
	virtual MESH_LIST GetMesh() const { return mesh; }
	// BW1W120 00464380 BW1M119 011c9760
	virtual ABODE_TYPE GetAbodeType() const { return ABODE_TYPE_CITADEL; }

	// Non-virtual methods

	// BW1W120 004695e0 BW1M119 011ca9c0
	bool32_t IsOkToCreateAtPos(const MapCoords& coords, float y_angle, float scale, Citadel* citadel) const;

	// TODO(#377): The original declared this class in CitadelPart.h.
	INFO_DATA_BLOCK(field_0x120, field_0x130)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "CitadelPart.h", 14)
};

#endif /* BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H */
