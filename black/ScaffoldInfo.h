#ifndef BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H
#define BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

struct Base;

struct GScaffoldInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GScaffoldInfo) == 0x114, "Data type is of wrong size");

// Override methods

// win1.41 006e8360 mac 10144060 GScaffoldInfo::_dt(void)
void __fastcall __dt__13GScaffoldInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGScaffoldInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H */
