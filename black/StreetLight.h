#ifndef BW1_DECOMP_STREET_LIGHT_INCLUDED_H
#define BW1_DECOMP_STREET_LIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct GStreetLight
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
};
static_assert(sizeof(struct GStreetLight) == 0x2c, "Data type is of wrong size");

// win1.41 008eb134 mac 109e1864 GStreetLight::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12GStreetLight asm("??_R4GStreetLight@@6B@");

// win1.41 008eb138 mac 109e186c GStreetLight::`vftable'
extern const struct GameThingWithPosVftable __vt__12GStreetLight asm("??_7GStreetLight@@6B@");

DECLARE_LH_LIST_HEAD(GStreetLight);

#endif /* BW1_DECOMP_STREET_LIGHT_INCLUDED_H */
