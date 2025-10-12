#ifndef BW1_DECOMP_SOUND_INFO_INCLUDED_H
#define BW1_DECOMP_SOUND_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSoundInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GSoundInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c223b0 mac inlined GSoundInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GSoundInfo asm("??_R0?AVGSoundInfo@@@8");
// win1.41 009b91a8 mac inlined GSoundInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GSoundInfo asm("??_R1A@?0A@A@GSoundInfo@@8");
// win1.41 009b91c0 mac inlined GSoundInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GSoundInfo asm("??_R2GSoundInfo@@8");
// win1.41 009b91d0 mac inlined GSoundInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GSoundInfo asm("??_R3GSoundInfo@@8");

// Override methods

// win1.41 0071d6b0 mac 105135d0 GSoundInfo::_dt(void)
void __fastcall __dt__10GSoundInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSoundInfo@@UAEPAXI@Z");
// win1.41 0071d660 mac 10513590 GSoundInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__10GSoundInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSoundInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SOUND_INFO_INCLUDED_H */
