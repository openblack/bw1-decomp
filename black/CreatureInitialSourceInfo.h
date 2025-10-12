#ifndef BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct CreatureInitialSourceInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureInitialSourceInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf588 mac inlined CreatureInitialSourceInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25CreatureInitialSourceInfo asm("??_R0?AVCreatureInitialSourceInfo@@@8");
// win1.41 009aacc0 mac inlined CreatureInitialSourceInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25CreatureInitialSourceInfo asm("??_R1A@?0A@A@CreatureInitialSourceInfo@@8");
// win1.41 009aacd8 mac inlined CreatureInitialSourceInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25CreatureInitialSourceInfo asm("??_R2CreatureInitialSourceInfo@@8");
// win1.41 009aace8 mac inlined CreatureInitialSourceInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25CreatureInitialSourceInfo asm("??_R3CreatureInitialSourceInfo@@8");

// Override methods

// win1.41 004dd2c0 mac 1025d520 CreatureInitialSourceInfo::_dt(void)
void __fastcall __dt__25CreatureInitialSourceInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureInitialSourceInfo@@UAEPAXI@Z");
// win1.41 004dd260 mac 1025eee0 CreatureInitialSourceInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__25CreatureInitialSourceInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureInitialSourceInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H */
