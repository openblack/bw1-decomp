#ifndef BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "GameThing.h" /* For struct GameThing */
#include "Living.h" /* For struct Living */
#include "MapCoords.h" /* For struct MapCoords */

struct GFootpathNode
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14;
  struct MapCoords coords;
  struct GFootpathNode* next;  /* 0x24 */
  struct LHLinkedList__Living followers;
};
static_assert(sizeof(struct GFootpathNode) == 0x30, "Data type is of wrong size");

static struct GameThingVftable* const __vt__13GFootpathNode = (struct GameThingVftable* const)0x008ddfbc;

// Constructors

// win1.41 inlined mac inlined GFootpathNode::GFootpathNode(void)
struct GFootpathNode* __fastcall __ct__13GFootpathNodeFv(struct GFootpathNode* this);
// win1.41 00534cf0 mac 100eed50 GFootpathNode::GFootpathNode(MapCoords const &, int, int)
struct GFootpathNode* __fastcall __ct__13GFootpathNodeFRC9MapCoordsii(struct GFootpathNode* this, const void* edx, struct MapCoords* coords, int param_2, int param_3);

// Non-virtual methods

// win1.41 005389d0 mac 100e90a0 GFootpathNode::PurgeFollowerList(void)
void __fastcall PurgeFollowerList__13GFootpathNodeFv(struct GFootpathNode* this);
// win1.41 00538b10 mac 100e8d10 GFootpathNode::ClearFromPreviousNode(void)
void __fastcall ClearFromPreviousNode__13GFootpathNodeFv(struct GFootpathNode* this);

#endif /* BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H */
