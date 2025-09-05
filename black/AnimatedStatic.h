#ifndef BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Feature.h" /* For struct Feature */

struct AnimatedStatic
{
  struct Feature super;  /* 0x0 */
  uint8_t field_0x7c[0x1c];
};
static_assert(sizeof(struct AnimatedStatic) == 0x98, "Data type is of wrong size");

// win1.41 008c1a0c mac 10735450 AnimatedStatic::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14AnimatedStatic asm("??_R4AnimatedStatic@@6B@");

// win1.41 008c1a10 mac 10735458 AnimatedStatic::`vftable'
extern const struct MultiMapFixedVftable __vt__14AnimatedStatic asm("??_7AnimatedStatic@@6B@");

DECLARE_LH_LINKED_LIST(AnimatedStatic);

#endif /* BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H */
