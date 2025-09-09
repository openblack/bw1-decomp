#ifndef BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicForestInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicForestInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 004356e0 mac 103ac990 GMagicForestInfo::_dt(void)
void __fastcall __dt__16GMagicForestInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicForestInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H */
