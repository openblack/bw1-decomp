#ifndef BW1_DECOMP_FIELD_INFO_INCLUDED_H
#define BW1_DECOMP_FIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;

struct GFieldInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GFieldInfo) == 0x120, "Data type is of wrong size");

// Override methods

// win1.41 00527cc0 mac 100d5dc0 GFieldInfo::_dt(void)
void __fastcall __dt__10GFieldInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFieldInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_FIELD_INFO_INCLUDED_H */
