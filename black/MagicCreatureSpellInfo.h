#ifndef BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicCreatureSpellInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicCreatureSpellInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 00435800 mac 103aba10 GMagicCreatureSpellInfo::_dt(void)
void __fastcall __dt__23GMagicCreatureSpellInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicCreatureSpellInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H */
