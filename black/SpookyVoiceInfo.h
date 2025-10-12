#ifndef BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSpookyVoiceInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GSpookyVoiceInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c228a8 mac inlined GSpookyVoiceInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GSpookyVoiceInfo asm("??_R0?AVGSpookyVoiceInfo@@@8");
// win1.41 009b9788 mac inlined GSpookyVoiceInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GSpookyVoiceInfo asm("??_R1A@?0A@A@GSpookyVoiceInfo@@8");
// win1.41 009b97a0 mac inlined GSpookyVoiceInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GSpookyVoiceInfo asm("??_R2GSpookyVoiceInfo@@8");
// win1.41 009b97b0 mac inlined GSpookyVoiceInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GSpookyVoiceInfo asm("??_R3GSpookyVoiceInfo@@8");

// Override methods

// win1.41 0072e220 mac 10149010 GSpookyVoiceInfo::_dt(void)
void __fastcall __dt__16GSpookyVoiceInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpookyVoiceInfo@@UAEPAXI@Z");
// win1.41 0072e1c0 mac 10149130 GSpookyVoiceInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GSpookyVoiceInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpookyVoiceInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H */
