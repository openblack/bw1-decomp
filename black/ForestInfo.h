#ifndef BW1_DECOMP_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

struct Base;

struct GForestInfo
{
  struct GContainerInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GForestInfo) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 005399c0 mac 100f2980 GForestInfo::_dt(void)
void __fastcall __dt__11GForestInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGForestInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_FOREST_INFO_INCLUDED_H */
