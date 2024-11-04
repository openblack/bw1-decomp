#ifndef BW1_DECOMP_SPELL_WATER_INCLUDED_H
#define BW1_DECOMP_SPELL_WATER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Spell.h" /* For struct Spell */

struct SpellWater
{
  struct Spell super;  /* 0x0 */
  uint8_t field_0xec[0x8];
};
static_assert(sizeof(struct SpellWater) == 0xf4, "Data type is of wrong size");

static struct SpellVftable* const __vt__10SpellWater = (struct SpellVftable* const)0x008f553c;

#endif /* BW1_DECOMP_SPELL_WATER_INCLUDED_H */
