#ifndef BW1_DECOMP_ANIMAL_COW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_COW_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Animal.h" /* For struct Animal */

struct Cow
{
  struct Animal super;  /* 0x0 */
};
static_assert(sizeof(struct Cow) == 0x148, "Data type is of wrong size");

// win1.41 008ad058 mac 1074b2d0 Cow::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__3Cow asm("??_R4Cow@@6B@");

// win1.41 008ad05c mac 1074b318 Cow::`vftable'
extern const struct LivingVftable __vt__3Cow asm("??_7Cow@@6B@");

#endif /* BW1_DECOMP_ANIMAL_COW_INCLUDED_H */
