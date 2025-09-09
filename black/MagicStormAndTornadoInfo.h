#ifndef BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicRadiusSpellInfo.h" /* For struct GMagicRadiusSpellInfo */

// Forward Declares

struct Base;

struct GMagicStormAndTornadoInfo
{
  struct GMagicRadiusSpellInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicStormAndTornadoInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 00435740 mac 103aebf0 GMagicStormAndTornadoInfo::_dt(void)
void __fastcall __dt__25GMagicStormAndTornadoInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicStormAndTornadoInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H */
