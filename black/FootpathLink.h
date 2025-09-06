#ifndef BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Footpath.h" /* For struct GFootpath */
#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct GFootpathNode;
struct GameOSFile;
struct GameThingWithPos;
struct Living;
struct MapCoords;

struct GFootpathLink
{
  struct GameThing super;  /* 0x0 */
  struct LHLinkedList__GFootpath footpath_list;  /* 0x14 */
};
static_assert(sizeof(struct GFootpathLink) == 0x1c, "Data type is of wrong size");

// win1.41 008d3e84 mac 10743230 GFootpathLink::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13GFootpathLink asm("??_R4GFootpathLink@@6B@");

// win1.41 008d3e88 mac 10743238 GFootpathLink::`vftable'
extern const struct GameThingVftable __vt__13GFootpathLink asm("??_7GFootpathLink@@6B@");

// Constructors

// win1.41 inlined mac inlined GFootpathLink::GFootpathLink(void)
struct GFootpathLink* __fastcall __ct__13GFootpathLinkFv(struct GFootpathLink* this);

// Non-virtual methods

// win1.41 00536110 mac 100ec590 GFootpathLink::GetNearestPathTo(MapCoords const &, MapCoords const &, float, int &, GFootpathNode **)
struct GFootpath* __fastcall GetNearestPathTo__13GFootpathLinkFRC9MapCoordsRC9MapCoordsfRiPP13GFootpathNode(struct GFootpathLink* this, const void* edx, const struct MapCoords* param_1, const struct MapCoords* param_2, float param_3, int* param_4, struct GFootpathNode** param_5);
// win1.41 005361f0 mac 100ec3e0 GFootpathLink::GetNearestPathToQuick(MapCoords const &, MapCoords const &, float, int &, GFootpathNode **)
struct GFootpath* __fastcall GetNearestPathToQuick__13GFootpathLinkFRC9MapCoordsRC9MapCoordsfRiPP13GFootpathNode(struct GFootpathLink* this, const void* edx, const struct MapCoords* param_1, const struct MapCoords* param_2, float param_3, int* param_4, struct GFootpathNode** param_5);
// win1.41 005362e0 mac 100ebe90 GFootpathLink::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char, GameThingWithPos *)
uint32_t __fastcall UseFootpathIfNecessary__13GFootpathLinkFP6LivingRC9MapCoordsUcP16GameThingWithPos(struct GFootpathLink* this, const void* edx, struct Living* living, const struct MapCoords* coord, uint32_t param_4, struct GameThingWithPos* game_thing_with_pos);

// Override methods

// win1.41 005365a0 mac 100eb8e0 GFootpathLink::Load(GameOSFile &)
uint32_t __fastcall Load__13GFootpathLinkFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file);

#endif /* BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H */
