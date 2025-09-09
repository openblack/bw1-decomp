#ifndef BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

struct Base;

struct GAnimatedStaticInfo
{
  struct GFeatureInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GAnimatedStaticInfo) == 0x120, "Data type is of wrong size");

// Override methods

// win1.41 00421f20 mac 100a67f0 GAnimatedStaticInfo::_dt(void)
void __fastcall __dt__19GAnimatedStaticInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGAnimatedStaticInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H */
