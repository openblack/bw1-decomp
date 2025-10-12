#ifndef BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GAlignmentInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GAlignmentInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8340 mac inlined GAlignmentInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GAlignmentInfo asm("??_R0?AVGAlignmentInfo@@@8");
// win1.41 009a69c8 mac inlined GAlignmentInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GAlignmentInfo asm("??_R1A@?0A@A@GAlignmentInfo@@8");
// win1.41 009a69e0 mac inlined GAlignmentInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GAlignmentInfo asm("??_R2GAlignmentInfo@@8");
// win1.41 009a69f0 mac inlined GAlignmentInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GAlignmentInfo asm("??_R3GAlignmentInfo@@8");

// Override methods

// win1.41 00414120 mac 100a42b0 GAlignmentInfo::_dt(void)
void __fastcall __dt__14GAlignmentInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGAlignmentInfo@@UAEPAXI@Z");
// win1.41 004140c0 mac 100a4bb0 GAlignmentInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GAlignmentInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GAlignmentInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H */
