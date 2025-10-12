#ifndef BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

struct Base;

struct GAnimatedStaticInfo
{
  struct GFeatureInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GAnimatedStaticInfo) == 0x120, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9520 mac inlined GAnimatedStaticInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19GAnimatedStaticInfo asm("??_R0?AVGAnimatedStaticInfo@@@8");
// win1.41 009a78d0 mac inlined GAnimatedStaticInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19GAnimatedStaticInfo asm("??_R1A@?0A@A@GAnimatedStaticInfo@@8");
// win1.41 009a78e8 mac inlined GAnimatedStaticInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19GAnimatedStaticInfo asm("??_R2GAnimatedStaticInfo@@8");
// win1.41 009a7908 mac inlined GAnimatedStaticInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19GAnimatedStaticInfo asm("??_R3GAnimatedStaticInfo@@8");

// Override methods

// win1.41 00421f20 mac 100a67f0 GAnimatedStaticInfo::_dt(void)
void __fastcall __dt__19GAnimatedStaticInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGAnimatedStaticInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H */
