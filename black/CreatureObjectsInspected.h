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

static struct BaseVftable* const __vt__24CreatureObjectsInspected = (struct BaseVftable* const)0x008d0548;

#endif /* BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H */
