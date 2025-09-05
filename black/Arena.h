#ifndef BW1_DECOMP_ARENA_INCLUDED_H
#define BW1_DECOMP_ARENA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct GArena
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x28[0x24];
};
static_assert(sizeof(struct GArena) == 0x4c, "Data type is of wrong size");

// win1.41 008c2c94 mac 10735f14 GArena::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__6GArena asm("??_R4GArena@@6B@");

// win1.41 008c2c98 mac 106f5c54 GArena::`vftable'
extern const struct GameThingVftable __vt__6GArena asm("??_7GArena@@6B@");

DECLARE_LH_LIST_HEAD(GArena);

#endif /* BW1_DECOMP_ARENA_INCLUDED_H */
