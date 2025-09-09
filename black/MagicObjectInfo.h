#ifndef BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicObjectInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicObjectInfo) == 0x58, "Data type is of wrong size");

// Override methods

// win1.41 00435830 mac 1018fa30 GMagicObjectInfo::_dt(void)
void __fastcall __dt__16GMagicObjectInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicObjectInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H */
