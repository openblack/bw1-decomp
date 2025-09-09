#ifndef BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicRadiusSpellInfo.h" /* For struct GMagicRadiusSpellInfo */

// Forward Declares

struct Base;

struct GMagicShieldInfo
{
  struct GMagicRadiusSpellInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicShieldInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 00435780 mac 103aeca0 GMagicShieldInfo::_dt(void)
void __fastcall __dt__16GMagicShieldInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicShieldInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H */
