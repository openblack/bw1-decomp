#ifndef BW1_DECOMP_ARROW_INFO_INCLUDED_H
#define BW1_DECOMP_ARROW_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GArrowInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GArrowInfo) == 0x114, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9678 mac inlined GArrowInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GArrowInfo asm("??_R0?AVGArrowInfo@@@8");
// win1.41 009a7b00 mac inlined GArrowInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GArrowInfo asm("??_R1A@?0A@A@GArrowInfo@@8");
// win1.41 009a7b18 mac inlined GArrowInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GArrowInfo asm("??_R2GArrowInfo@@8");
// win1.41 009a7b38 mac inlined GArrowInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GArrowInfo asm("??_R3GArrowInfo@@8");

// Override methods

// win1.41 00425980 mac 100ad540 GArrowInfo::_dt(void)
void __fastcall __dt__10GArrowInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGArrowInfo@@UAEPAXI@Z");
// win1.41 00425930 mac 100ad830 GArrowInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__10GArrowInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GArrowInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_ARROW_INFO_INCLUDED_H */
