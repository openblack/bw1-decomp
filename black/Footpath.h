#ifndef BW1_DECOMP_FOOTPATH_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct GFootpathNode;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Point2D;
struct RPHolder;
struct RPlan;

struct GFootpath
{
  struct GameThing super;  /* 0x0 */
  struct GFootpathNode* nodes;  /* 0x14 */
  int node_count;
  struct GFootpath* next;
  uint32_t field_0x20;
};
static_assert(sizeof(struct GFootpath) == 0x24, "Data type is of wrong size");

static struct GameThingVftable* const __vt__9GFootpath = (struct GameThingVftable* const)0x008de0bc;

// Static methods

// win1.41 00535a80 mac inlined GFootpath::FUN_00535a80(Point2D *, MultiMapFixed *, float, float)
void __cdecl FUN_00535a80__9GFootpathFP7Point2DP13MultiMapFixedff(struct Point2D* param_1, struct MultiMapFixed* param_2, float point_x, float point_y);
// win1.41 00537290 mac 100ea6f0 GFootpath::SendFootpathsAroundObsticle(float, MapCoords const &)
void __cdecl SendFootpathsAroundObsticle__9GFootpathFfRC9MapCoords(float radius, struct MapCoords* coords);
// win1.41 00538340 mac 100e95b0 GFootpath::ConvertCreaturePlanToFootpath(RPHolder &, RPlan &, GFootpathNode *, GFootpathNode *, MapCoords const &)
void __cdecl ConvertCreaturePlanToFootpath__9GFootpathFR8RPHolderR5RPlanP13GFootpathNodeP13GFootpathNodeRC9MapCoords(struct RPHolder* holder, struct RPlan* plan, struct GFootpathNode* start, struct GFootpathNode* end, struct MapCoords* coord);
// win1.41 005387d0 mac 100e93a0 GFootpath::AttemptRerenderFootpathWithCreatureRP(GFootpathNode *, GFootpathNode *, MapCoords const &)
uint32_t __cdecl AttemptRerenderFootpathWithCreatureRP__9GFootpathFP13GFootpathNodeP13GFootpathNodeRC9MapCoords(struct GFootpathNode* start, struct GFootpathNode* end, struct MapCoords* coord);

// Constructors

// win1.41 00534dc0 mac 100eecb0 GFootpath::GFootpath(void)
struct GFootpath* __fastcall __ct__9GFootpathFv(struct GFootpath* this);
// win1.41 00534eb0 mac 100ee9b0 GFootpath::GFootpath(GameThingWithPos *, GameThingWithPos *)
struct GFootpath* __fastcall __ct__9GFootpathFP16GameThingWithPosP16GameThingWithPos(struct GFootpath* this, const void* edx, struct GameThingWithPos* param_2, struct GameThingWithPos* param_3);

// Non-virtual methods

// win1.41 00534fc0 mac 100ee4c0 GFootpath::AddPos(MapCoords const &)
void __fastcall AddPos__9GFootpathFRC9MapCoords(struct GFootpath* this, const void* edx, struct MapCoords* coords);
// win1.41 005351a0 mac 100ee290 GFootpath::GetNextNode(GFootpathNode *, int)
struct GFootpathNode* __fastcall GetNextNode__9GFootpathFP13GFootpathNodei(struct GFootpath* this, const void* edx, struct GFootpathNode* node, int backwards);
// win1.41 005351f0 mac 100ee190 GFootpath::GetNextPos(MapCoords const &, GFootpathNode *&, MapCoords &, int, float)
uint32_t __fastcall GetNextPos__9GFootpathFRC9MapCoordsRP13GFootpathNodeR9MapCoordsif(struct GFootpath* this, const void* edx, struct MapCoords* current_pos, struct GFootpathNode** next_node, struct MapCoords* next_pos, int backwards, float max_t);
// win1.41 00535270 mac 100ee0d0 GFootpath::GetNextPos(GFootpathNode *&, MapCoords &, int)
uint32_t __fastcall GetNextPos__9GFootpathFRP13GFootpathNodeR9MapCoordsi(struct GFootpath* this, const void* edx, struct GFootpathNode** next_node, struct MapCoords* next_pos, int backwards);
// win1.41 005352c0 mac 100edfa0 GFootpath::GetNearestPos(MapCoords const &, int)
struct GFootpathNode* __fastcall GetNearestPos__9GFootpathFRC9MapCoordsi(struct GFootpath* this, const void* edx, const struct MapCoords* coords, int param_3);

DECLARE_LH_LINKED_LIST(GFootpath);
DECLARE_LH_LIST_HEAD(GFootpath);

#endif /* BW1_DECOMP_FOOTPATH_INCLUDED_H */
