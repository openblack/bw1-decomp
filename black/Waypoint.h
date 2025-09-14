#ifndef BW1_DECOMP_WAYPOINT_INCLUDED_H
#define BW1_DECOMP_WAYPOINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct Waypoint
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x28[0x4];
};
static_assert(sizeof(struct Waypoint) == 0x2c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 0099b4a8 mac 1075f65c Waypoint::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8Waypoint asm("??_R4Waypoint@@6B@");
// win1.41 0099b4ac mac 1075f664 Waypoint::`vftable'
extern const struct GameThingWithPosVftable __vt__8Waypoint asm("??_7Waypoint@@6B@");

DECLARE_LH_LIST_HEAD(Waypoint);

#endif /* BW1_DECOMP_WAYPOINT_INCLUDED_H */
