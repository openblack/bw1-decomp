#ifndef BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

struct Base;

struct GMapShieldInfo
{
  struct GSingleMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMapShieldInfo) == 0x100, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c227a8 mac inlined GMapShieldInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GMapShieldInfo asm("??_R0?AVGMapShieldInfo@@@8");
// win1.41 009b95a8 mac inlined GMapShieldInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GMapShieldInfo asm("??_R1A@?0A@A@GMapShieldInfo@@8");
// win1.41 009b95c0 mac inlined GMapShieldInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GMapShieldInfo asm("??_R2GMapShieldInfo@@8");
// win1.41 009b95d8 mac inlined GMapShieldInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GMapShieldInfo asm("??_R3GMapShieldInfo@@8");

// Override methods

// win1.41 0072bdf0 mac 10531f60 GMapShieldInfo::_dt(void)
void __fastcall __dt__14GMapShieldInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMapShieldInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H */
