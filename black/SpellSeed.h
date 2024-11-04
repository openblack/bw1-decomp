#ifndef BW1_DECOMP_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Object.h" /* For struct Object */

struct SpellSeed
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x4c];
};
static_assert(sizeof(struct SpellSeed) == 0xa0, "Data type is of wrong size");

static struct ObjectVftable* const __vt__9SpellSeed = (struct ObjectVftable* const)0x00981fc0;

#endif /* BW1_DECOMP_SPELL_SEED_INCLUDED_H */
