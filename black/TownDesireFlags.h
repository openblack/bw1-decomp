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

// win1.41 008e9b68 mac 1098d0cc TownDesireFlags::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15TownDesireFlags asm("??_R4TownDesireFlags@@6B@");

// win1.41 008e9b6c mac 106f814c TownDesireFlags::`vftable'
extern const struct ObjectVftable __vt__15TownDesireFlags asm("??_7TownDesireFlags@@6B@");

// Override methods

// win1.41 00746dc0 mac 1055d830 TownDesireFlags::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__15TownDesireFlagsFRC9MapCoords(struct TownDesireFlags* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@TownDesireFlags@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H */
