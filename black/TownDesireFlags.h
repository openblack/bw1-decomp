#ifndef BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Object.h" /* For struct Object */

// Forward Declares

struct MapCoords;

struct TownDesireFlags
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x44];
};
static_assert(sizeof(struct TownDesireFlags) == 0x98, "Data type is of wrong size");

static struct ObjectVftable* __vt__15TownDesireFlags = (struct ObjectVftable*)0x008e9b6c;

// Override methods

// win1.41 00746dc0 mac 1055d830 TownDesireFlags::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__15TownDesireFlagsFRC9MapCoords(struct TownDesireFlags* this, const void* edx, const struct MapCoords* coords);

#endif /* BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H */
