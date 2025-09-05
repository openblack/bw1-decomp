#ifndef BW1_DECOMP_SPELL_SHIELD_INCLUDED_H
#define BW1_DECOMP_SPELL_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

struct GMagicInfo;

struct SpellShield
{
  struct SpellWithObjects super;  /* 0x0 */
  uint8_t field_0xf4[0x18];
};
static_assert(sizeof(struct SpellShield) == 0x10c, "Data type is of wrong size");

// win1.41 009828d4 mac 109e09bc SpellShield::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__11SpellShield asm("??_R4SpellShield@@6B@");

// win1.41 009828d8 mac 109e09c4 SpellShield::`vftable'
extern const struct SpellWithObjectsVftable __vt__11SpellShield asm("??_7SpellShield@@6B@");

// Non-virtual methods

// win1.41 0072b820 mac 10532f60 SpellShield::GetMagicInfo(void) const
struct GMagicInfo* __fastcall GetMagicInfo__11SpellShieldCFv(struct SpellShield* this);

#endif /* BW1_DECOMP_SPELL_SHIELD_INCLUDED_H */
