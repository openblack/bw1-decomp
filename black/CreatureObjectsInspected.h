#ifndef BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H
#define BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct CreatureObjectsInspected
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8[0x18];
};
static_assert(sizeof(struct CreatureObjectsInspected) == 0x68, "Data type is of wrong size");

// win1.41 008d0544 mac 10787634 CreatureObjectsInspected::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__24CreatureObjectsInspected asm("??_R4CreatureObjectsInspected@@6B@");

// win1.41 008d0548 mac 1078763c CreatureObjectsInspected::`vftable'
extern const struct BaseVftable __vt__24CreatureObjectsInspected asm("??_7CreatureObjectsInspected@@6B@");

#endif /* BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H */
