#ifndef BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H
#define BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

struct Base;

struct GLeashSelectorInfo
{
  struct GObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GLeashSelectorInfo) == 0x100, "Data type is of wrong size");

// Override methods

// win1.41 0042b3d0 mac 10182f90 GLeashSelectorInfo::_dt(void)
void __fastcall __dt__18GLeashSelectorInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGLeashSelectorInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H */
