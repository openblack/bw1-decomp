#ifndef BW1_DECOMP_CLIMATE_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "GameThing.h" /* For struct GameThing */

struct GClimate
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x74];
};
static_assert(sizeof(struct GClimate) == 0x88, "Data type is of wrong size");

// win1.41 008f9f98 mac 109ea018 GClimate::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8GClimate asm("??_R4GClimate@@6B@");

// win1.41 008f9f9c mac 109ea020 GClimate::`vftable'
extern const struct GameThingVftable __vt__8GClimate asm("??_7GClimate@@6B@");

DECLARE_LH_LINKED_LIST(GClimate);

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
