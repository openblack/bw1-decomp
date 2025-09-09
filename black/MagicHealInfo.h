#ifndef BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicHealInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicHealInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 004356a0 mac 103ae460 GMagicHealInfo::_dt(void)
void __fastcall __dt__14GMagicHealInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicHealInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H */
