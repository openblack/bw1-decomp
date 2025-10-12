#ifndef BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum ABODE_NUMBER, enum ABODE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTITypeDescriptor */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

// Forward Declares

struct GMultiMapFixedInfo;
struct MapCoords;

struct GMultiMapFixedInfoVftable
{
  struct GObjectInfoVftable super;  /* 0x0 */
  bool (__fastcall* IsOkToCreateAtPos)(const struct GMultiMapFixedInfo* this, const void* edx, const struct MapCoords* pos, float param_2, float param_3);  /* 0x3c */
  enum ABODE_TYPE (__fastcall* GetAbodeType)(const struct GMultiMapFixedInfo* this);  /* 0x40 */
  enum ABODE_NUMBER (__fastcall* GetAbodeNumber)(const struct GMultiMapFixedInfo* this);
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

// Object Oriented datastructures

// win1.41 009c7ed0 mac inlined GMultiMapFixedInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18GMultiMapFixedInfo asm("??_R0?AVGMultiMapFixedInfo@@@8");
// win1.41 009a6350 mac inlined GMultiMapFixedInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18GMultiMapFixedInfo asm("??_R1A@?0A@A@GMultiMapFixedInfo@@8");

// Override methods

// win1.41 0052eb60 mac 100dffe0 GMultiMapFixedInfo::IsOkToCreateAtPos(const MapCoords&, float, float) const
bool __fastcall IsOkToCreateAtPos__18GMultiMapFixedInfoCFRC9MapCoordsff(const struct GMultiMapFixedInfo* this, const void* edx, const struct MapCoords* pos, float param_2, float param_3) asm("?IsOkToCreateAtPos@GMultiMapFixedInfo@@UBE_NABUMapCoords@@MM@Z");

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INFO_INCLUDED_H */
