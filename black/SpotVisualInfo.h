#ifndef BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H
#define BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSpotVisualInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GSpotVisualInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfe000 mac inlined GSpotVisualInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GSpotVisualInfo asm("??_R0?AVGSpotVisualInfo@@@8");
// win1.41 009b2e80 mac inlined GSpotVisualInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GSpotVisualInfo asm("??_R1A@?0A@A@GSpotVisualInfo@@8");
// win1.41 009b2e98 mac inlined GSpotVisualInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GSpotVisualInfo asm("??_R2GSpotVisualInfo@@8");
// win1.41 009b2ea8 mac inlined GSpotVisualInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GSpotVisualInfo asm("??_R3GSpotVisualInfo@@8");

// Override methods

// win1.41 0063e070 mac 101102f0 GSpotVisualInfo::_dt(void)
void __fastcall __dt__15GSpotVisualInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpotVisualInfo@@UAEPAXI@Z");
// win1.41 0063e020 mac 10110f10 GSpotVisualInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__15GSpotVisualInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpotVisualInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H */
