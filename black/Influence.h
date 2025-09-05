#ifndef BW1_DECOMP_INFLUENCE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "BaseInfo.h" /* For struct BaseInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct GPlayer;
struct MapCoords;

struct InfluenceRing
{
  struct GameThingWithPos super;  /* 0x0 */
  struct BaseInfo info;  /* 0x28 */
  struct GPlayer* player;  /* 0x34 */
  float field_0x38;
  int field_0x3c;
  uint32_t field_0x40;
};
static_assert(sizeof(struct InfluenceRing) == 0x44, "Data type is of wrong size");

// win1.41 008ea3c8 mac 10744e50 InfluenceRing::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13InfluenceRing asm("??_R4InfluenceRing@@6B@");

// win1.41 008ea3cc mac 10744e58 InfluenceRing::`vftable'
extern const struct GameThingWithPosVftable __vt__13InfluenceRing asm("??_7InfluenceRing@@6B@");

// Constructors

// win1.41 005cd760 mac 100fd0a4 InfluenceRing::InfluenceRing(MapCoords const &, GPlayer *, float, int)
struct InfluenceRing* __fastcall __ct__13InfluenceRingFRC9MapCoordsP7GPlayerfi(struct InfluenceRing* this, const void* edx, const struct MapCoords* coords, struct GPlayer* player, float param_4, int param_5);
// win1.41 005cd800 mac 100fce54 InfluenceRing::InfluenceRing(GameThingWithPos *, GPlayer *, float, int)
struct InfluenceRing* __fastcall __ct__13InfluenceRingFP16GameThingWithPosP7GPlayerfi(struct InfluenceRing* this, const void* edx, struct GameThingWithPos* thing, struct GPlayer* player, float param_4, int param_5);

DECLARE_LH_LIST_HEAD(InfluenceRing);

#endif /* BW1_DECOMP_INFLUENCE_INCLUDED_H */
