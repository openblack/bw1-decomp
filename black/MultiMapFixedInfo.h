#ifndef BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

struct GMultiMapFixedInfoVftable
{
  struct GObjectInfoVftable super;  /* 0x0 */
  uintptr_t field_0x3c;
  uintptr_t field_0x40;
  uintptr_t field_0x44;
};
static_assert(sizeof(struct GMultiMapFixedInfoVftable) == 0x48, "Data type is of wrong size");

struct GMultiMapFixedInfo
{
  struct GObjectInfo super;  /* 0x0 */
  enum MESH_LIST editorMesh;  /* 0x100 */
  uint32_t woodRequiredPerBuild;
  uint32_t timeToBuild;
  uint32_t scaffoldsRequired;
  uint32_t maxVillagerNeededToBuild;  /* 0x110 */
  float desireToBeBuilt;
  float desireToBeRepaired;
  float influence;
};
static_assert(sizeof(struct GMultiMapFixedInfo) == 0x120, "Data type is of wrong size");

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H */
