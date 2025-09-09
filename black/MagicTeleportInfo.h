#ifndef BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicTeleportInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicTeleportInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 004356c0 mac 103b2190 GMagicTeleportInfo::_dt(void)
void __fastcall __dt__18GMagicTeleportInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicTeleportInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H */
