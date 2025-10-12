#ifndef BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSpellSystemInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GSpellSystemInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22738 mac inlined GSpellSystemInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GSpellSystemInfo asm("??_R0?AVGSpellSystemInfo@@@8");
// win1.41 009b94a0 mac inlined GSpellSystemInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GSpellSystemInfo asm("??_R1A@?0A@A@GSpellSystemInfo@@8");
// win1.41 009b94b8 mac inlined GSpellSystemInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GSpellSystemInfo asm("??_R2GSpellSystemInfo@@8");
// win1.41 009b94c8 mac inlined GSpellSystemInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GSpellSystemInfo asm("??_R3GSpellSystemInfo@@8");

// Override methods

// win1.41 0072ae00 mac 1052de00 GSpellSystemInfo::_dt(void)
void __fastcall __dt__16GSpellSystemInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpellSystemInfo@@UAEPAXI@Z");
// win1.41 0072adb0 mac 1052dea0 GSpellSystemInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GSpellSystemInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpellSystemInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H */
