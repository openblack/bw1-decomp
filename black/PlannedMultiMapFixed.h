#ifndef BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H
#define BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct GFootpathLink;
struct GMultiMapFixedInfo;
struct GObjectInfo;
struct MapCoords;

struct PlannedMultiMapFixed
{
  struct GameThingWithPos super;  /* 0x0 */
  float field_0x28;
  float field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  struct GFootpathLink* footpath_link;
  int creation_turn;
  struct GObjectInfo* info;  /* 0x40 */
  struct PlannedMultiMapFixed* next;
};
static_assert(sizeof(struct PlannedMultiMapFixed) == 0x48, "Data type is of wrong size");

static struct GameThingWithPosVftable* __vt__20PlannedMultiMapFixed = (struct GameThingWithPosVftable*)0x008f3154;

// Constructors

// win1.41 00648780 mac 10115620 PlannedMultiMapFixed::PlannedMultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float)
struct PlannedMultiMapFixed* __fastcall __ct__20PlannedMultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfoff(struct PlannedMultiMapFixed* this, const void* edx, const struct MapCoords* coords, const struct GMultiMapFixedInfo* info, float param_3, float param_4);

DECLARE_LH_LIST_HEAD(PlannedMultiMapFixed);

#endif /* BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H */
