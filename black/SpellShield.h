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

static struct SpellWithObjectsVftable* __vt__11SpellShield = (struct SpellWithObjectsVftable*)0x009828d8;

// Non-virtual methods

// win1.41 0072b820 mac 10532f60 SpellShield::GetMagicInfo(void) const
struct GMagicInfo* __fastcall GetMagicInfo__11SpellShieldCFv(struct SpellShield* this);

#endif /* BW1_DECOMP_SPELL_SHIELD_INCLUDED_H */
