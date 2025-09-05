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

// win1.41 008f5538 mac 109dacc8 SpellWater::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10SpellWater asm("??_R4SpellWater@@6B@");

// win1.41 008f553c mac 109dacd0 SpellWater::`vftable'
extern const struct SpellVftable __vt__10SpellWater asm("??_7SpellWater@@6B@");

#endif /* BW1_DECOMP_SPELL_WATER_INCLUDED_H */
