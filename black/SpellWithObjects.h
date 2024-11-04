#ifndef BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H
#define BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "Spell.h" /* For struct Spell, struct SpellVftable */

struct SpellWithObjectsVftable
{
  struct SpellVftable super;  /* 0x0 */
  uintptr_t field_0x554;
};
static_assert(sizeof(struct SpellWithObjectsVftable) == 0x558, "Data type is of wrong size");

struct SpellWithObjects
{
  struct Spell super;  /* 0x0 */
  uint8_t field_0xec[0x8];
};
static_assert(sizeof(struct SpellWithObjects) == 0xf4, "Data type is of wrong size");

static struct SpellWithObjectsVftable* const __vt__16SpellWithObjects = (struct SpellWithObjectsVftable* const)0x008f4530;

#endif /* BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H */
