#ifndef BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h>      /* For enum ABODE_NUMBER, enum ABODE_TYPE */

#include "ObjectInfo.h"  /* For struct GObjectInfo, struct GObjectInfoVftable */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

struct MapCoords;

class GMultiMapFixedInfo : public GObjectInfo
{
public:
	MESH_LIST EditorMesh; /* 0x100 */
	uint32_t  WoodRequiredPerBuild;
	uint32_t  TimeToBuild;
	uint32_t  ScaffoldsRequired;
	uint32_t  MaxVillagerNeededToBuild; /* 0x110 */
	float     DesireToBeBuilt;
	float     DesireToBeRepaired;
	float     influence;

	// Override methods

	// BW1W120 0052eb60 BW1M119 010e4fa0
	virtual bool IsOkToCreateAtPos(const MapCoords& pos, float param_2, float param_3) const;
	// BW1W120 00421e80 BW1M119 010ab480
	virtual ABODE_TYPE GetAbodeType() const { return ABODE_TYPE_GENERAL; }
	// BW1W120 00421e90 BW1M119 010ab4c0
	virtual ABODE_NUMBER GetAbodeNumber() const { return ABODE_NUMBER_INVALID; }

	// TODO(#377): The original declared this class in Fixed.h.
	// Out of line: LoadBinary at 004303d0, Load at 00430360.
	INFO_DATA_BLOCK(EditorMesh, influence)
	INFO_DERIVED_LOADERS(GObjectInfo, "Fixed.h", 92)
};

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H */
