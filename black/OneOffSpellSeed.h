#ifndef BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MobileObject.h" /* For struct MobileObject */

struct OneOffSpellSeed
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0x14];
};
static_assert(sizeof(struct OneOffSpellSeed) == 0x7c, "Data type is of wrong size");

// win1.41 008f3770 mac 1099eba8 OneOffSpellSeed::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15OneOffSpellSeed asm("??_R4OneOffSpellSeed@@6B@");

// win1.41 008f3774 mac 106f8cd0 OneOffSpellSeed::`vftable'
extern const struct ObjectVftable __vt__15OneOffSpellSeed asm("??_7OneOffSpellSeed@@6B@");

#endif /* BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H */
