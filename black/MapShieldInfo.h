#ifndef BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

struct Base;

struct GMapShieldInfo
{
  struct GSingleMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMapShieldInfo) == 0x100, "Data type is of wrong size");

// Override methods

// win1.41 0072bdf0 mac 10531f60 GMapShieldInfo::_dt(void)
void __fastcall __dt__14GMapShieldInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMapShieldInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H */
