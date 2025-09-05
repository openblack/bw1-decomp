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

// win1.41 00981fbc mac 109dd91c SpellSeed::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9SpellSeed asm("??_R4SpellSeed@@6B@");

// win1.41 00981fc0 mac 109dd924 SpellSeed::`vftable'
extern const struct ObjectVftable __vt__9SpellSeed asm("??_7SpellSeed@@6B@");

#endif /* BW1_DECOMP_SPELL_SEED_INCLUDED_H */
