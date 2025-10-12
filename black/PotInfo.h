#ifndef BW1_DECOMP_POT_INFO_INCLUDED_H
#define BW1_DECOMP_POT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GPotInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPotInfo) == 0x114, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02018 mac inlined GPotInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8GPotInfo asm("??_R0?AVGPotInfo@@@8");
// win1.41 009b33e8 mac inlined GPotInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8GPotInfo asm("??_R1A@?0A@A@GPotInfo@@8");
// win1.41 009b3400 mac inlined GPotInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8GPotInfo asm("??_R2GPotInfo@@8");
// win1.41 009b3420 mac inlined GPotInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8GPotInfo asm("??_R3GPotInfo@@8");

// Override methods

// win1.41 0066cc40 mac 10117210 GPotInfo::_dt(void)
void __fastcall __dt__8GPotInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPotInfo@@UAEPAXI@Z");
// win1.41 0066cbd0 mac 1011d400 GPotInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__8GPotInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPotInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_POT_INFO_INCLUDED_H */
