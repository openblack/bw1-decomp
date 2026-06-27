#ifndef BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum ABODE_NUMBER, enum ABODE_TYPE */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

// Forward Declares

struct MapCoords;

class GMultiMapFixedInfo: public GObjectInfo
{
public:
    MESH_LIST editorMesh; /* 0x100 */
    uint32_t woodRequiredPerBuild;
    uint32_t timeToBuild;
    uint32_t scaffoldsRequired;
    uint32_t maxVillagerNeededToBuild; /* 0x110 */
    float desireToBeBuilt;
    float desireToBeRepaired;
    float influence;

    // Override methods

    // BW1W120 0052eb60 BW1M100 100dffe0 GMultiMapFixedInfo::IsOkToCreateAtPos(const MapCoords&, float, float) const
    virtual bool IsOkToCreateAtPos(const MapCoords* pos, float param_2, float param_3);
};

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H */
