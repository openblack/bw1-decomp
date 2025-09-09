#ifndef BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicFlockGroundInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicFlockGroundInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 004357e0 mac 1051ece0 GMagicFlockGroundInfo::_dt(void)
void __fastcall __dt__21GMagicFlockGroundInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicFlockGroundInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H */
