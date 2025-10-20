#ifndef BW1_DECOMP_JOB_INFO_INCLUDED_H
#define BW1_DECOMP_JOB_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GJobInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GJobInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf3328 mac inlined GJobInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8GJobInfo asm("??_R0?AVGJobInfo@@@8");
// win1.41 009b17d8 mac inlined GJobInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8GJobInfo asm("??_R1A@?0A@A@GJobInfo@@8");
// win1.41 009b17f0 mac inlined GJobInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8GJobInfo asm("??_R2GJobInfo@@8");
// win1.41 009b1800 mac inlined GJobInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8GJobInfo asm("??_R3GJobInfo@@8");

// Non-virtual methods

// win1.41 005e1740 mac 100fe450 GJobInfo::GetJobActivity(void) const
uint32_t __fastcall GetJobActivity__8GJobInfoCFv(const struct GJobInfo* this) asm("?GetJobActivity@GJobInfo@@QBEIXZ");

// Override methods

// win1.41 005e1720 mac 100fe5c0 GJobInfo::_dt(void)
void __fastcall __dt__8GJobInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGJobInfo@@UAEPAXI@Z");
// win1.41 005e16c0 mac 100fe6d0 GJobInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__8GJobInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GJobInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_JOB_INFO_INCLUDED_H */
