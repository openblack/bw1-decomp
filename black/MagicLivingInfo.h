#ifndef BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GMagicLivingInfo
{
  struct GLivingInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicLivingInfo) == 0x1f4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf3ea0 mac inlined GMagicLivingInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GMagicLivingInfo asm("??_R0?AVGMagicLivingInfo@@@8");
// win1.41 009b1b30 mac inlined GMagicLivingInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GMagicLivingInfo asm("??_R1A@?0A@A@GMagicLivingInfo@@8");
// win1.41 009b1b48 mac inlined GMagicLivingInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GMagicLivingInfo asm("??_R2GMagicLivingInfo@@8");
// win1.41 009b1b68 mac inlined GMagicLivingInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GMagicLivingInfo asm("??_R3GMagicLivingInfo@@8");

// Override methods

// win1.41 005fb980 mac inlined GMagicLivingInfo::_dt(void)
void __fastcall __dt__16GMagicLivingInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicLivingInfo@@UAEPAXI@Z");
// win1.41 005fb910 mac inlined GMagicLivingInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GMagicLivingInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GMagicLivingInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 005fb900 mac inlined GMagicLivingInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__16GMagicLivingInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GMagicLivingInfo@@UBEIXZ");

#endif /* BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H */
