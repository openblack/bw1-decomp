#ifndef BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicObjectInfo.h" /* For struct GMagicObjectInfo */

// Forward Declares

struct Base;

struct GMagicResourceInfo
{
  struct GMagicObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicResourceInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 00435700 mac 103ac8f0 GMagicResourceInfo::_dt(void)
void __fastcall __dt__18GMagicResourceInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicResourceInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H */
