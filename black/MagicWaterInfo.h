#ifndef BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicWaterInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicWaterInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 004357a0 mac 103ac480 GMagicWaterInfo::_dt(void)
void __fastcall __dt__15GMagicWaterInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicWaterInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H */
